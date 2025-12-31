#!/usr/bin/env python3
"""
Analyze PAR files and formula files to identify orphaned formulas.

Orphaned formulas are defined in a formula file but not referenced by any parameter file.

Usage:
    python orphan-formulas.py [directory] [-o output_file]
    
Arguments:
    directory    : Directory to search for PAR files (default: current directory)
    -o filename  : Save output to file instead of printing to console
"""
import os
import sys
from collections import defaultdict
from pathlib import Path
from file_entry import parse_file_entries, ParamSet


def find_par_files(directory='.'):
    """Find all .par files in the given directory and subdirectories."""
    par_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.lower().endswith('.par'):
                par_files.append(os.path.join(root, file))
    return par_files


def find_formula_dirs(par_files):
    """Determine unique formula directories from PAR files."""
    formula_dirs = set()
    for par_file in par_files:
        formula_dir = os.path.join(os.path.dirname(par_file), '..', 'formula')
        formula_dirs.add(formula_dir)
    return list(formula_dirs)


def find_frm_files(formula_dirs):
    """Find all .frm files in the formula directories."""
    frm_files = []
    for formula_dir in formula_dirs:
        if os.path.isdir(formula_dir):
            for root, dirs, files in os.walk(formula_dir):
                for file in files:
                    if file.lower().endswith('.frm'):
                        frm_files.append(os.path.join(root, file))
    return frm_files


def collect_referenced_formulas(par_files):
    """Collect all formula references from PAR files."""
    referenced = set()
    for par_file in par_files:
        try:
            entries, _, _ = parse_file_entries(par_file)
            for entry in entries:
                param_set = ParamSet(entry)
                if param_set.get('type', '').lower() == 'formula':
                    formulafile = param_set.get('formulafile')
                    formulaname = param_set.get('formulaname')
                    if formulafile and formulaname:
                        referenced.add((formulafile.lower(), formulaname.lower()))
        except Exception as e:
            print(f"Error parsing {par_file}: {e}", file=sys.stderr)
    return referenced


def find_orphaned_formulas(frm_files, referenced):
    """Find orphaned formulas in formula files."""
    orphaned = defaultdict(list)
    for frm_file in frm_files:
        try:
            entries, _, _ = parse_file_entries(frm_file)
            basename = os.path.basename(frm_file)
            for entry in entries:
                if entry.name.lower() == 'comment' or entry.name.strip() == '':
                    continue
                key = (basename, entry.name.lower())
                if key not in referenced:
                    orphaned[frm_file].append(entry.name)
        except Exception as e:
            print(f"Error parsing {frm_file}: {e}", file=sys.stderr)
    return orphaned


def print_orphaned_formulas(orphaned, output_file=None):
    """Print a report of orphaned formulas."""
    output = sys.stdout if output_file is None else output_file
    
    if not orphaned:
        print("No orphaned formulas found.", file=output)
        return
    
    total_orphaned = sum(len(entries) for entries in orphaned.values())
    
    print(f"\nOrphaned Formulas Report", file=output)
    print(f"Total orphaned formulas: {total_orphaned}", file=output)
    print(f"Files with orphaned formulas: {len(orphaned)}", file=output)
    
    for frm_file in sorted(orphaned.keys()):
        entries = orphaned[frm_file]
        print(f"\n{os.path.basename(frm_file)} ({len(entries)} orphaned):", file=output)
        for entry in sorted(entries):
            print(f"  {entry}", file=output)


def parse_arguments():
    """Parse command line arguments."""
    args = sys.argv[1:]
    search_dir = '.'
    output_filename = None
    
    i = 0
    while i < len(args):
        if args[i] == '-o' and i + 1 < len(args):
            output_filename = args[i + 1]
            i += 2
        elif args[i] == '-h' or args[i] == '--help':
            print(__doc__)
            sys.exit(0)
        elif not args[i].startswith('-'):
            search_dir = args[i]
            i += 1
        else:
            print(f"Unknown option: {args[i]}", file=sys.stderr)
            print("Use -h or --help for usage information", file=sys.stderr)
            sys.exit(1)
    
    return search_dir, output_filename


def main():
    # Parse command line arguments
    search_dir, output_filename = parse_arguments()
    
    if not os.path.isdir(search_dir):
        print(f"Error: '{search_dir}' is not a directory.", file=sys.stderr)
        sys.exit(1)
    
    print(f"Searching for PAR files in: {os.path.abspath(search_dir)}")
    
    # Find all PAR files
    par_files = find_par_files(search_dir)
    
    if not par_files:
        print("No PAR files found.")
        sys.exit(0)
    
    print(f"Found {len(par_files)} PAR file(s)")
    
    # Determine formula directories
    formula_dirs = find_formula_dirs(par_files)
    print(f"Formula directories: {len(formula_dirs)}")
    
    # Find all formula files
    frm_files = find_frm_files(formula_dirs)
    print(f"Found {len(frm_files)} formula file(s)")
    
    # Collect referenced formulas
    referenced = collect_referenced_formulas(par_files)
    print(f"Referenced formulas: {len(referenced)}")
    
    # Find orphaned formulas
    orphaned = find_orphaned_formulas(frm_files, referenced)
    
    # Print report
    output_handle = None
    if output_filename:
        try:
            output_handle = open(output_filename, 'w', encoding='utf-8')
        except Exception as e:
            print(f"Error opening {output_filename}: {e}", file=sys.stderr)
            sys.exit(1)
    
    try:
        print_orphaned_formulas(orphaned, output_handle)
        
        if output_filename:
            print(f"\nReport saved to: {output_filename}")
    
    finally:
        if output_handle:
            output_handle.close()


if __name__ == '__main__':
    main()
