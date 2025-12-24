#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script to generate batch commands to extract missing formula entries.

This script parses validation output to find missing formula entries,
searches for them in O:\_*.frm files, and outputs batch commands to extract them.

Usage:
    python find-missing-formulas.py <validation_output_file> [formula_directory]
    
Arguments:
    validation_output_file : Path to the output file from validate-par.py
    formula_directory      : Directory containing formula files (default: O:\)
    
Output:
    Prints batch commands to stdout that can be used to extract formula entries
"""
import sys
import os
import re
from collections import defaultdict
from file_entry import parse_file_entries, find_entry_by_name


def parse_validation_output(filename):
    """
    Parse validation output file to extract missing formula entries.
    
    Returns:
        dict: Dictionary mapping formula files to lists of (param_name, line, entry_name) tuples
    """
    missing_entries = defaultdict(list)
    
    try:
        with open(filename, 'r', encoding='utf-8') as f:
            for line in f:
                # Match lines like: "bug5(143): Formula entry 'bill_err7' not found in file '96_msg_3.frm'"
                match = re.match(r"^\s*([^(]+)\((\d+)\):\s*Formula entry '([^']+)' not found in file '([^']+)'", line)
                if match:
                    param_name = match.group(1).strip()
                    line_num = match.group(2)
                    entry_name = match.group(3)
                    formula_file = match.group(4)
                    missing_entries[formula_file].append((param_name, line_num, entry_name))
        
    except FileNotFoundError:
        print(f"REM Error: File '{filename}' not found", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print(f"REM Error reading file '{filename}': {e}", file=sys.stderr)
        sys.exit(1)
    
    return missing_entries


def find_frm_files(directory):
    """
    Find all _*.frm files in the specified directory.
    
    Returns:
        list: List of paths to formula files
    """
    frm_files = []
    
    if not os.path.isdir(directory):
        print(f"REM Error: '{directory}' is not a directory", file=sys.stderr)
        return frm_files
    
    try:
        for filename in os.listdir(directory):
            if filename.lower().startswith('_') and filename.lower().endswith('.frm'):
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
        entry = find_entry_by_name(entries, entry_name, case_sensitive=False)
        
        if entry:
            results.append((frm_file, entry))
    
    return results


def generate_batch_commands(found_entries, target_file):
    """
    Generate batch commands to extract formula entries.
    
    Args:
        found_entries: dict mapping entry names to list of (filename, entry) tuples
        target_file: the target formula file (used only for comments)
    """
    commands = []
    
    for entry_name in sorted(found_entries.keys(), key=str.lower):
        for frm_file, entry in found_entries[entry_name]:
            start_line = entry.start_line
            end_line = entry.end_line
            
            # Generate batch command using PowerShell to extract and output specific lines
            # Use Get-Content with -TotalCount and -Skip to extract line ranges
            lines_to_skip = start_line - 1
            lines_to_read = end_line - start_line + 1
            
            cmd = f'powershell -Command "Get-Content \'{frm_file}\' | Select-Object -Skip {lines_to_skip} -First {lines_to_read}"'
            commands.append(cmd)
            
            # Add a blank line separator
            commands.append("echo.")
    
    return commands


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)
    
    validation_file = sys.argv[1]
    formula_dir = sys.argv[2] if len(sys.argv) >= 3 else 'O:\\'
    
    print(f"@echo off", file=sys.stderr)
    print(f"REM Extracting missing formulas from validation output: {validation_file}", file=sys.stderr)
    
    missing_entries = parse_validation_output(validation_file)
    
    if not missing_entries:
        print("REM No missing formula entries found in validation output.", file=sys.stderr)
        sys.exit(0)
    
    print(f"REM Found {sum(len(v) for v in missing_entries.values())} missing formula references", file=sys.stderr)
    print(f"REM   across {len(missing_entries)} formula files", file=sys.stderr)
    
    print(f"REM Searching for formulas in: {formula_dir}", file=sys.stderr)
    frm_files = find_frm_files(formula_dir)
    
    if not frm_files:
        print(f"REM No _*.frm files found in {formula_dir}", file=sys.stderr)
        sys.exit(1)
    
    print(f"REM Found {len(frm_files)} formula files to search", file=sys.stderr)
    print(f"REM", file=sys.stderr)
    
    # Track what we find
    found_entries = {}
    not_found = []
    
    # Group missing entries by entry name for more efficient searching
    all_missing = {}
    for formula_file, entries in missing_entries.items():
        for param_name, line_num, entry_name in entries:
            if entry_name not in all_missing:
                all_missing[entry_name] = []
            all_missing[entry_name].append((formula_file, param_name, line_num))
    
    print(f"REM Searching for {len(all_missing)} unique formula entries...", file=sys.stderr)
    
    for entry_name in sorted(all_missing.keys(), key=str.lower):
        results = search_for_entry(entry_name, frm_files)
        
        if results:
            found_entries[entry_name] = results
            print(f"REM Found: {entry_name}", file=sys.stderr)
            for frm_file, entry in results:
                print(f"REM   in {os.path.basename(frm_file)} (lines {entry.start_line}-{entry.end_line})", file=sys.stderr)
        else:
            not_found.append(entry_name)
            print(f"REM NOT FOUND: {entry_name}", file=sys.stderr)
    
    # Determine target file - extract from first missing entry reference
    target_file = None
    for formula_file in missing_entries.keys():
        target_file = formula_file
        break
    
    if not target_file:
        target_file = "96_msg_3.frm"
    
    print(f"REM", file=sys.stderr)
    print(f"REM Summary:", file=sys.stderr)
    print(f"REM   Found:     {len(found_entries)} / {len(all_missing)} formula entries", file=sys.stderr)
    print(f"REM   Not found: {len(not_found)} / {len(all_missing)} formula entries", file=sys.stderr)
    print(f"REM", file=sys.stderr)
    print(f"REM Generating batch commands to extract formulas", file=sys.stderr)
    print(f"REM", file=sys.stderr)
    
    # Output the batch script header
    print("@echo off")
    print("REM")
    print("REM Script to extract missing formula entries")
    print(f"REM Generated from: {validation_file}")
    print("REM")
    print()
    
    # Generate batch commands
    commands = generate_batch_commands(found_entries, target_file)
    
    if commands:
        print(f"REM Extract {len(found_entries)} formula entries")
        print()
        for cmd in commands:
            print(cmd)
    else:
        print("REM No formulas found to extract")
    
    print()
    print("REM End of extraction script")
    
    return 0 if not not_found else 1


if __name__ == '__main__':
    sys.exit(main())
