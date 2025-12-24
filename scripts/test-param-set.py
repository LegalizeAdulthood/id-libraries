#!/usr/bin/env python3
"""
Test script for ParamSet class functionality.
"""
import sys
from file_entry import parse_file_entries, ParamSet


def test_param_set(filename):
    """Test ParamSet parsing on a parameter file."""
    print(f"Parsing parameter file: {filename}")
    print("=" * 70)
    
    entries, warnings, errors = parse_file_entries(filename)
    
    if warnings:
        print("\nWarnings encountered:")
        for warning in warnings:
            print(f"  {warning}")

    if errors:
        print("\nErrors encountered:")
        for error in errors:
            print(f"  {error}")
        return
    
    if not entries:
        print("No entries found in file.")
        return
    
    print(f"\nFound {len(entries)} entries\n")
    
    # Process each entry as a ParamSet
    for entry in entries[:5]:  # Show first 5 entries
        param_set = ParamSet(entry)
        
        print(f"Entry: {param_set.name}")
        print(f"  Location: lines {param_set.start_line}-{param_set.end_line}")
        
        if param_set.paren_value:
            print(f"  Symmetry: ({param_set.paren_value})")
        if param_set.bracket_value:
            print(f"  Options: [{param_set.bracket_value}]")
        
        print(f"  Parameters: {len(param_set.params)} found")
        
        # Show some common parameters
        common_params = ['type', 'corners', 'center', 'mag', 'params', 
                        'maxiter', 'inside', 'outside', 'colors']
        
        for param_name in common_params:
            if param_name in param_set:
                value = param_set[param_name]
                # Truncate long values
                if len(value) > 50:
                    value = value[:47] + "..."
                print(f"    {param_name} = {value}")
        
        # Show type-specific parameters
        param_type = param_set.get('type')
        if param_type == 'formula':
            if 'formulafile' in param_set:
                print(f"    formulafile = {param_set['formulafile']}")
            if 'formulaname' in param_set:
                print(f"    formulaname = {param_set['formulaname']}")
        elif param_type == 'ifs':
            if 'ifsfile' in param_set:
                print(f"    ifsfile = {param_set['ifsfile']}")
            if 'ifs' in param_set:
                print(f"    ifs = {param_set['ifs']}")
        elif param_type == 'lsystem':
            if 'lfile' in param_set:
                print(f"    lfile = {param_set['lfile']}")
            if 'lname' in param_set:
                print(f"    lname = {param_set['lname']}")
        
        print()


def test_specific_entry(filename, entry_name):
    """Test ParamSet with a specific entry."""
    print(f"Searching for '{entry_name}' in {filename}")
    print("=" * 70)
    
    entries, warnings, errors = parse_file_entries(filename)

    if warnings:
        print("\nWarnings encountered:")
        for warning in warnings:
            print(f"  {warning}")

    if errors:
        print("\nErrors encountered:")
        for error in errors:
            print(f"  {error}")
        return
    
    # Find the entry
    from file_entry import find_entry_by_name
    entry = find_entry_by_name(entries, entry_name)
    
    if not entry:
        print(f"Entry '{entry_name}' not found.")
        return
    
    param_set = ParamSet(entry)
    
    print(f"\nEntry: {param_set.name}")
    print(f"Location: lines {param_set.start_line}-{param_set.end_line}")
    
    if param_set.paren_value:
        print(f"Symmetry: ({param_set.paren_value})")
    if param_set.bracket_value:
        print(f"Options: [{param_set.bracket_value}]")
    
    print(f"\nAll parameters ({len(param_set.params)} total):")
    
    # Sort parameters by name for easier reading
    for name in sorted(param_set.params.keys()):
        value = param_set.params[name]
        print(f"  {name:20s} = {value}")
    
    # Show raw body for comparison
    print("\nRaw body content:")
    for i, line in enumerate(entry.body[:10], 1):
        print(f"  {i}: {line.rstrip()}")
    if len(entry.body) > 10:
        print(f"  ... ({len(entry.body) - 10} more lines)")


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python test-param-set.py <filename> [entry_name]")
        print("\nExamples:")
        print("  python test-param-set.py myfile.par")
        print("  python test-param-set.py myfile.par MyParameter")
        sys.exit(1)
    
    filename = sys.argv[1]
    
    if len(sys.argv) >= 3:
        entry_name = sys.argv[2]
        test_specific_entry(filename, entry_name)
    else:
        test_param_set(filename)
