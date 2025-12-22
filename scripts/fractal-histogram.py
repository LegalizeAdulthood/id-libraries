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
import re
import hashlib
from collections import Counter, defaultdict
from pathlib import Path
from file_entry import parse_file_entries, ParamSet, strip_comment


def find_par_files(directory='.'):
    """Find all .par files in the given directory and subdirectories."""
    par_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.lower().endswith('.par'):
                par_files.append(os.path.join(root, file))
    return par_files


def normalize_formula_line(line):
    """Normalize a formula line for fingerprinting."""
    # Strip comments
    line = strip_comment(line)
    # Strip leading and trailing whitespace
    line = line.strip()
    # Crush multiple whitespace into single space
    line = re.sub(r'\s+', ' ', line)
    # Convert to lowercase
    line = line.lower()
    return line


def compute_formula_fingerprint(body_lines):
    """Compute MD5 fingerprint of formula body content."""
    # Normalize each line
    normalized_lines = []
    for line in body_lines:
        normalized = normalize_formula_line(line)
        if normalized:  # Only include non-empty lines
            normalized_lines.append(normalized)
    
    # Join with commas
    fingerprint_text = ','.join(normalized_lines)
    
    # Compute MD5 hash
    md5_hash = hashlib.md5(fingerprint_text.encode('utf-8')).hexdigest()
    return md5_hash


def find_formula_file(formula_filename, search_dir):
    """Find a formula file in the directory tree."""
    # If search_dir ends with 'par', search from parent to find sibling directories
    if os.path.basename(search_dir).lower() == 'par':
        search_dir = os.path.dirname(search_dir)
    
    # Search in the directory tree for the formula file
    for root, dirs, files in os.walk(search_dir):
        for file in files:
            if file.lower() == formula_filename.lower():
                return os.path.join(root, file)
    return None


def load_formula_entry(formula_filename, entry_name, search_dir, formula_cache):
    """Load a specific formula entry and compute its fingerprint."""
    # Check if we've already loaded this file
    cache_key = formula_filename.lower()
    
    if cache_key not in formula_cache:
        # Find and parse the formula file
        formula_path = find_formula_file(formula_filename, search_dir)
        
        if not formula_path:
            formula_cache[cache_key] = {}  # Mark as not found
            return None
        
        try:
            entries, _ = parse_file_entries(formula_path)
            
            # Build a dictionary of entries in this file
            file_entries = {}
            for entry in entries:
                fingerprint = compute_formula_fingerprint(entry.body)
                file_entries[entry.name.lower()] = {
                    'name': entry.name,
                    'fingerprint': fingerprint
                }
            
            formula_cache[cache_key] = file_entries
        
        except Exception as e:
            print(f"Warning: Error processing {formula_path}: {e}", file=sys.stderr)
            formula_cache[cache_key] = {}
            return None
    
    # Look up the entry in the cached file
    file_entries = formula_cache[cache_key]
    entry_key = entry_name.lower()
    
    if entry_key in file_entries:
        return file_entries[entry_key]
    
    return None


def parse_par_file(filepath, search_dir, formula_cache, fingerprint_map):
    """Parse a PAR file and extract all fractal types and references used."""
    fractal_types = []
    formula_refs = []  # (filename, entryname) tuples
    formula_fingerprints = []  # fingerprints of formulas used
    ifs_refs = []
    lsystem_refs = []
    
    try:
        # Parse the parameter file using the unified parser
        entries, parse_errors = parse_file_entries(filepath)
        
        if parse_errors:
            print(f"Warning: Errors parsing {filepath}:", file=sys.stderr)
            for error in parse_errors[:3]:  # Show first 3 errors
                print(f"  {error}", file=sys.stderr)
        
        # Extract fractal type and references from each entry
        for entry in entries:
            param_set = ParamSet(entry)
            fractal_type = param_set.get('type')
            if fractal_type:
                fractal_types.append(fractal_type.lower())
                
                # Track formula references
                if fractal_type.lower() == 'formula':
                    formulafile = param_set.get('formulafile')
                    formulaname = param_set.get('formulaname')
                    if formulafile and formulaname:
                        formula_refs.append((formulafile, formulaname))
                        
                        # Load the formula entry and get its fingerprint
                        formula_entry = load_formula_entry(formulafile, formulaname, search_dir, formula_cache)
                        if formula_entry:
                            fingerprint = formula_entry['fingerprint']
                            formula_fingerprints.append(fingerprint)
                            
                            # Track this reference for the fingerprint
                            fingerprint_map[fingerprint].append((formulafile, formulaname))
                
                # Track IFS references
                elif fractal_type.lower() == 'ifs':
                    ifsfile = param_set.get('ifsfile')
                    ifsname = param_set.get('ifs')
                    if ifsfile and ifsname:
                        ifs_refs.append((ifsfile, ifsname))
                
                # Track L-system references
                elif fractal_type.lower() == 'lsystem':
                    lfile = param_set.get('lfile')
                    lname = param_set.get('lname')
                    if lfile and lname:
                        lsystem_refs.append((lfile, lname))
    
    except Exception as e:
        print(f"Error reading {filepath}: {e}", file=sys.stderr)
    
    return fractal_types, formula_refs, formula_fingerprints, ifs_refs, lsystem_refs


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


def print_reference_breakdown(title, ref_counts, output_file=None):
    """Print a breakdown of formula/IFS/L-system references."""
    output = sys.stdout if output_file is None else output_file
    
    if not ref_counts:
        return
    
    # Sort by count (descending) then by reference (ascending)
    sorted_refs = sorted(ref_counts.items(), key=lambda x: (-x[1], x[0]))
    
    total_count = sum(ref_counts.values())
    
    # Find the longest reference for formatting
    max_ref_len = max(len(f"{file}:{entry}") for (file, entry), _ in sorted_refs)
    max_count_len = len(str(sorted_refs[0][1]))
    
    # Print header
    print(f"\n{title}", file=output)
    print("=" * (max_ref_len + max_count_len + 12), file=output)
    print(f"{'Reference':<{max_ref_len}}  {'Count':>{max_count_len}}  {'Percent':>7}", file=output)
    print("-" * (max_ref_len + max_count_len + 12), file=output)
    
    # Print each reference with its count
    for (filename, entryname), count in sorted_refs:
        reference = f"{filename}:{entryname}"
        percentage = (count / total_count) * 100
        print(f"{reference:<{max_ref_len}}  {count:>{max_count_len}}  {percentage:6.2f}%", file=output)
    
    # Print summary
    print("-" * (max_ref_len + max_count_len + 12), file=output)
    print(f"{'Total':<{max_ref_len}}  {total_count:>{max_count_len}}  100.00%", file=output)
    print(f"\nUnique references: {len(ref_counts)}", file=output)


def print_unique_formulas(fingerprint_counts, fingerprint_map, output_file=None):
    """Print breakdown of unique formulas by fingerprint."""
    output = sys.stdout if output_file is None else output_file
    
    if not fingerprint_counts:
        return
    
    # Sort by count (descending)
    sorted_fingerprints = sorted(fingerprint_counts.items(), key=lambda x: -x[1])
    
    total_count = sum(fingerprint_counts.values())
    
    print(f"\nUnique Formulas (by content fingerprint)", file=output)
    print("=" * 80, file=output)
    print(f"{'Most Common Reference':<40}  {'Count':>6}  {'Percent':>7}  {'Fingerprint'}", file=output)
    print("-" * 80, file=output)
    
    # Print each unique formula
    for fingerprint, count in sorted_fingerprints:
        percentage = (count / total_count) * 100
        
        # Get the most common file:name combination for this fingerprint
        refs = fingerprint_map.get(fingerprint, [])
        if refs:
            # Count occurrences of each reference
            ref_counter = Counter(refs)
            most_common_ref = ref_counter.most_common(1)[0][0]
            reference = f"{most_common_ref[0]}:{most_common_ref[1]}"
        else:
            reference = "unknown"
        
        # Truncate fingerprint for display
        fingerprint_display = fingerprint[:12] + "..."
        
        print(f"{reference:<40}  {count:>6}  {percentage:6.2f}%  {fingerprint_display}", file=output)
    
    # Print summary
    print("-" * 80, file=output)
    print(f"{'Total':<40}  {total_count:>6}  100.00%", file=output)
    print(f"\nUnique formula implementations: {len(fingerprint_counts)}", file=output)


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
    
    # Cache for formula files and their entries
    formula_cache = {}
    # Map: fingerprint -> list of (filename, entryname) tuples
    fingerprint_map = defaultdict(list)
    
    # Parse all PAR files and collect fractal types and references
    all_types = []
    all_formula_refs = []
    all_formula_fingerprints = []
    all_ifs_refs = []
    all_lsystem_refs = []
    files_processed = 0
    
    for par_file in sorted(par_files):
        types, formula_refs, fingerprints, ifs_refs, lsystem_refs = parse_par_file(
            par_file, search_dir, formula_cache, fingerprint_map)
        if types:
            all_types.extend(types)
            all_formula_refs.extend(formula_refs)
            all_formula_fingerprints.extend(fingerprints)
            all_ifs_refs.extend(ifs_refs)
            all_lsystem_refs.extend(lsystem_refs)
            files_processed += 1
            print(f"Processed: {par_file} ({len(types)} entries)")
    
    print(f"\nProcessed {files_processed} file(s) with parameter entries")
    print(f"Loaded {len(formula_cache)} formula file(s)")
    
    # Count fractal types
    type_counts = Counter(all_types)
    
    # Count references
    formula_counts = Counter(all_formula_refs)
    fingerprint_counts = Counter(all_formula_fingerprints)
    ifs_counts = Counter(all_ifs_refs)
    lsystem_counts = Counter(all_lsystem_refs)
    
    # Print histograms
    output_handle = None
    if output_filename:
        try:
            output_handle = open(output_filename, 'w', encoding='utf-8')
        except Exception as e:
            print(f"Error opening {output_filename}: {e}", file=sys.stderr)
            sys.exit(1)
    
    try:
        # Print fractal type histogram
        print_histogram(type_counts, len(all_types), output_handle)
        
        # Print formula breakdown
        if formula_counts:
            print_reference_breakdown("Formula References", formula_counts, output_handle)
        
        # Print unique formulas breakdown
        if fingerprint_counts:
            print_unique_formulas(fingerprint_counts, fingerprint_map, output_handle)
        
        # Print IFS breakdown
        if ifs_counts:
            print_reference_breakdown("IFS References", ifs_counts, output_handle)
        
        # Print L-system breakdown
        if lsystem_counts:
            print_reference_breakdown("L-System References", lsystem_counts, output_handle)
        
        if output_filename:
            print(f"\nHistogram saved to: {output_filename}")
    
    finally:
        if output_handle:
            output_handle.close()


if __name__ == '__main__':
    main()
