#!/usr/bin/env python3
"""
Analyze PAR files and create a histogram of fractal types used.

Usage:
    python fractal-histogram.py [directory] [-o output_file]
    
Arguments:
    directory    : Directory to search for PAR files (default: current directory)
    -o filename  : Save output to file instead of printing to console
"""
import os
import sys
from collections import Counter
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


def parse_par_file(filepath):
    """Parse a PAR file and extract all fractal types used."""
    fractal_types = []
    
    try:
        # Parse the parameter file using the unified parser
        entries, parse_errors = parse_file_entries(filepath)
        
        if parse_errors:
            print(f"Warning: Errors parsing {filepath}:", file=sys.stderr)
            for error in parse_errors[:3]:  # Show first 3 errors
                print(f"  {error}", file=sys.stderr)
        
        # Extract fractal type from each entry
        for entry in entries:
            param_set = ParamSet(entry)
            fractal_type = param_set.get('type')
            if fractal_type:
                fractal_types.append(fractal_type.lower())
    
    except Exception as e:
        print(f"Error reading {filepath}: {e}", file=sys.stderr)
    
    return fractal_types


def print_histogram(type_counts, total_count, output_file=None):
    """Print a histogram of fractal types."""
    # If output_file is specified, write to file; otherwise print to console
    output = sys.stdout if output_file is None else output_file
    
    if not type_counts:
        print("No fractal types found.", file=output)
        return
    
    # Sort by count (descending) then by name (ascending)
    sorted_types = sorted(type_counts.items(), key=lambda x: (-x[1], x[0]))
    
    # Find the longest type name for formatting
    max_name_len = max(len(name) for name, _ in sorted_types)
    max_count_len = len(str(sorted_types[0][1]))
    
    # Print header
    print("\nFractal Type Histogram", file=output)
    print("=" * (max_name_len + max_count_len + 20), file=output)
    print(f"{'Type':<{max_name_len}}  {'Count':>{max_count_len}}  {'Percent':>7}  Bar", file=output)
    print("-" * (max_name_len + max_count_len + 20), file=output)
    
    # Calculate the scale for the bar chart
    max_count = sorted_types[0][1]
    bar_width = 50
    
    # Print each type with its count and bar
    for fractal_type, count in sorted_types:
        percentage = (count / total_count) * 100
        bar_length = int((count / max_count) * bar_width)
        bar = '#' * bar_length
        
        print(f"{fractal_type:<{max_name_len}}  {count:>{max_count_len}}  {percentage:6.2f}%  {bar}", file=output)
    
    # Print summary
    print("-" * (max_name_len + max_count_len + 20), file=output)
    print(f"{'Total':<{max_name_len}}  {total_count:>{max_count_len}}  100.00%", file=output)
    print(f"\nUnique fractal types: {len(type_counts)}", file=output)


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
    
    print(f"Found {len(par_files)} PAR file(s)\n")
    
    # Parse all PAR files and collect fractal types
    all_types = []
    files_processed = 0
    
    for par_file in sorted(par_files):
        types = parse_par_file(par_file)
        if types:
            all_types.extend(types)
            files_processed += 1
            print(f"Processed: {par_file} ({len(types)} entries)")
    
    print(f"\nProcessed {files_processed} file(s) with parameter entries")
    
    # Count fractal types
    type_counts = Counter(all_types)
    
    # Print histogram
    if output_filename:
        try:
            with open(output_filename, 'w', encoding='utf-8') as f:
                print_histogram(type_counts, len(all_types), f)
            print(f"\nHistogram saved to: {output_filename}")
        except Exception as e:
            print(f"Error writing to {output_filename}: {e}", file=sys.stderr)
            sys.exit(1)
    else:
        print_histogram(type_counts, len(all_types))


if __name__ == '__main__':
    main()
