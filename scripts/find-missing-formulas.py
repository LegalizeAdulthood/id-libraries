#!/usr/bin/env python3
# -*- coding: ascii -*-
"""
Script to generate batch commands to extract missing formula entries.

This script parses validation output to find missing formula entries,
searches for them in O:\_*.frm files, and outputs batch commands to extract them.

Usage:
    python validate-par.py <par_file> | python find-missing-formulas.py [formula_directory]
    python find-missing-formulas.py [formula_directory] < validation_output.txt
    
Arguments:
    formula_directory      : Directory containing formula files (default: O:\)
    
Output:
    Prints batch commands to stdout that can be used to extract formula entries
"""
import sys
import os
import re
from collections import defaultdict
from file_entry import parse_file_entries, find_entry_by_name


def parse_validation_output(input_source):
    """
    Parse validation output to extract missing formula entries.
    
    Args:
        input_source: file object or iterable of lines
    
    Returns:
        dict: Dictionary mapping formula files to lists of (param_name, line, entry_name) tuples
    """
    missing_entries = defaultdict(list)
    
    try:
        for line in input_source:
            # Match lines like: "bug5(143): Formula entry 'bill_err7' not found in file '96_msg_3.frm'"
            match = re.match(r"^\s*([^(]+)\((\d+)\):\s*Formula entry '([^']+)' not found in file '([^']+)'", line)
            if match:
                param_name = match.group(1).strip()
                line_num = match.group(2)
                entry_name = match.group(3)
                formula_file = match.group(4)
                missing_entries[formula_file].append((param_name, line_num, entry_name))
    except Exception as e:
        print(f"REM Error reading validation output: {e}", file=sys.stderr)
        sys.exit(1)
    
    return missing_entries


def find_frm_files(directory, underscore_only=True):
    """
    Find formula files in the specified directory.
    
    Args:
        directory: Directory to search
        underscore_only: If True, only return _*.frm files; if False, return all .frm files
    
    Returns:
        list: List of paths to formula files
    """
    frm_files = []
    
    if not os.path.isdir(directory):
        print(f"REM Error: '{directory}' is not a directory", file=sys.stderr)
        return frm_files
    
    # Pattern to match _*_dup.frm files (case-insensitive)
    dup_pattern = re.compile(r'^_.*_dup\.frm$', re.IGNORECASE)
    
    try:
        for filename in os.listdir(directory):
            if filename.lower().endswith('.frm'):
                # Skip files matching the _*_dup.frm pattern
                if dup_pattern.match(filename):
                    continue
                
                # Filter based on underscore prefix if requested
                if underscore_only:
                    if filename.lower().startswith('_'):
                        frm_files.append(os.path.join(directory, filename))
                else:
                    if not filename.lower().startswith('_'):
                        frm_files.append(os.path.join(directory, filename))
    except OSError as e:
        print(f"REM Error listing directory '{directory}': {e}", file=sys.stderr)
    
    return sorted(frm_files)


def search_for_entry(entry_name, frm_files):
    """
    Search for a formula entry in the given formula files.
    
    Returns:
        list: List of (filename, entry) tuples where entry was found
    """
    results = []
    
    for frm_file in frm_files:
        entries, _, errors = parse_file_entries(frm_file)
        
        if errors:
            continue
        
        # Search case-insensitively
        entry = find_entry_by_name(entries, entry_name)
        
        if entry:
            results.append((frm_file, entry))
    
    return results


def generate_batch_commands(found_entries, target_files):
    """
    Generate batch commands to extract formula entries.
    
    Args:
        found_entries: dict mapping entry names to (target_file, list of (filename, entry) tuples)
        target_files: dict mapping entry names to target formula files
    """
    # Group commands by target file
    commands_by_file = defaultdict(list)
    
    for entry_name in sorted(found_entries.keys(), key=str.lower):
        target_file = target_files.get(entry_name)
        if not target_file:
            continue
            
        for frm_file, entry in found_entries[entry_name]:
            start_line = entry.start_line
            end_line = entry.end_line
            
            # Generate batch command using PowerShell to extract and append specific lines
            lines_to_skip = start_line - 1
            lines_to_read = end_line - start_line + 1
            
            target_path = f"..\\formula\\{target_file}"
            
            cmd = f'powershell -Command "Get-Content \'{frm_file}\' | Select-Object -Skip {lines_to_skip} -First {lines_to_read} | Add-Content -Path \'{target_path}\'"'
            commands_by_file[target_file].append(cmd)
            
            # Add a blank line separator
            commands_by_file[target_file].append(f'echo. >> "{target_path}"')
    
    return commands_by_file


def main():
    # Determine input source and formula directory
    input_source = sys.stdin
    formula_dir = 'O:\\'
    validation_file_name = "stdin"
    
    # Override default formula directory
    if len(sys.argv) == 2:
        formula_dir = sys.argv[1]
    elif len(sys.argv) > 2:
        print(__doc__)
        sys.exit(1)
    
    print(f"@echo off", file=sys.stderr)
    print(f"REM Extracting missing formulas from validation output: {validation_file_name}", file=sys.stderr)
    
    missing_entries = parse_validation_output(input_source)
    
    # Close file if we opened one
    if input_source != sys.stdin and hasattr(input_source, 'close'):
        input_source.close()
    
    if not missing_entries:
        print("REM No missing formula entries found in validation output.", file=sys.stderr)
        sys.exit(0)
    
    print(f"REM Found {sum(len(v) for v in missing_entries.values())} missing formula references", file=sys.stderr)
    print(f"REM   across {len(missing_entries)} formula files", file=sys.stderr)
    
    print(f"REM Searching for formulas in: {formula_dir}", file=sys.stderr)
    
    # First, search in _*.frm files
    frm_files_underscore = find_frm_files(formula_dir, underscore_only=True)
    
    if not frm_files_underscore:
        print(f"REM No _*.frm files found in {formula_dir}", file=sys.stderr)
    else:
        print(f"REM Found {len(frm_files_underscore)} _*.frm files to search", file=sys.stderr)
    
    print(f"REM", file=sys.stderr)
    
    # Track what we find
    found_entries = {}
    not_found = []
    target_files = {}  # Maps entry_name to target formula file
    
    # Group missing entries by entry name for more efficient searching
    all_missing = {}
    for formula_file, entries in missing_entries.items():
        for param_name, line_num, entry_name in entries:
            if entry_name not in all_missing:
                all_missing[entry_name] = []
            all_missing[entry_name].append((formula_file, param_name, line_num))
            # Map entry name to its target formula file
            target_files[entry_name] = formula_file
    
    print(f"REM Searching for {len(all_missing)} unique formula entries in _*.frm files...", file=sys.stderr)
    
    # First pass: search in _*.frm files
    for entry_name in sorted(all_missing.keys(), key=str.lower):
        results = search_for_entry(entry_name, frm_files_underscore)
        
        if results:
            found_entries[entry_name] = results
            print(f"REM Found: {entry_name}", file=sys.stderr)
            for frm_file, entry in results:
                print(f"REM   in {os.path.basename(frm_file)} (lines {entry.start_line}-{entry.end_line})", file=sys.stderr)
        else:
            not_found.append(entry_name)
    
    # Second pass: search in non-underscore files for entries not found
    if not_found:
        print(f"REM", file=sys.stderr)
        print(f"REM {len(not_found)} entries not found in _*.frm files", file=sys.stderr)
        print(f"REM Searching in other .frm files...", file=sys.stderr)
        
        frm_files_other = find_frm_files(formula_dir, underscore_only=False)
        
        if frm_files_other:
            print(f"REM Found {len(frm_files_other)} other .frm files to search", file=sys.stderr)
            
            still_not_found = []
            for entry_name in not_found:
                results = search_for_entry(entry_name, frm_files_other)
                
                if results:
                    found_entries[entry_name] = results
                    print(f"REM Found: {entry_name}", file=sys.stderr)
                    for frm_file, entry in results:
                        print(f"REM   in {os.path.basename(frm_file)} (lines {entry.start_line}-{entry.end_line})", file=sys.stderr)
                else:
                    still_not_found.append(entry_name)
            
            not_found = still_not_found
        else:
            print(f"REM No other .frm files found in {formula_dir}", file=sys.stderr)
    
    # Print final not found list
    if not_found:
        print(f"REM", file=sys.stderr)
        print(f"REM Still not found after searching all files:", file=sys.stderr)
        for entry_name in not_found:
            print(f"REM NOT FOUND: {entry_name}", file=sys.stderr)
    
    print(f"REM", file=sys.stderr)
    print(f"REM Summary:", file=sys.stderr)
    print(f"REM   Found:     {len(found_entries)} / {len(all_missing)} formula entries", file=sys.stderr)
    print(f"REM   Not found: {len(not_found)} / {len(all_missing)} formula entries", file=sys.stderr)
    print(f"REM", file=sys.stderr)
    print(f"REM Generating batch commands to extract formulas to ../formula/", file=sys.stderr)
    print(f"REM", file=sys.stderr)
    
    # Output the batch script header
    print("@echo off")
    print("REM")
    print("REM Script to extract missing formula entries")
    print(f"REM Generated from: {validation_file_name}")
    print("REM")
    print()
    
    # Generate batch commands
    commands_by_file = generate_batch_commands(found_entries, target_files)
    
    if commands_by_file:
        print(f"REM Extract {len(found_entries)} formula entries to {len(commands_by_file)} formula files")
        print()
        
        for target_file in sorted(commands_by_file.keys()):
            print(f"REM Appending to ../formula/{target_file}")
            for cmd in commands_by_file[target_file]:
                print(cmd)
            print()
    else:
        print("REM No formulas found to extract")
    
    print("REM End of extraction script")
    
    return 0 if not not_found else 1


if __name__ == '__main__':
    sys.exit(main())
