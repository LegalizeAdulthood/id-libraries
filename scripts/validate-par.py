#!/usr/bin/env python3
import sys
import re
import os
import argparse
from file_entry import parse_file_entries, find_entry_by_name, ParamSet


def validate_file_entry(param_name, param_start_line, file_type, filename, entry_name, base_dir, errors):
    """Validate that a file contains an entry with the given name (case insensitive)."""
    if not filename:
        errors.append(f"{param_name.strip()}({param_start_line}): No {file_type} file specified for entry '{entry_name}'")
        return
        
    file_path = os.path.join(base_dir, filename)
    
    if not os.path.exists(file_path):
        errors.append(f"{param_name.strip()}({param_start_line}): {file_type} file '{filename}' not found for entry '{entry_name}'")
        return
    
    # Parse the file and search for the entry
    entries, parse_errors = parse_file_entries(file_path)
    
    if parse_errors:
        errors.append(f"{param_name.strip()}({param_start_line}): Error parsing {file_type} file '{filename}': {parse_errors[0]}")
        return
    
    # Search for entry by name (case insensitive)
    entry = find_entry_by_name(entries, entry_name, case_sensitive=False)
    
    if not entry:
        errors.append(f"{param_name.strip()}({param_start_line}): {file_type} entry '{entry_name}' not found in file '{filename}'")


def validate_file_reference(param_name, param_start_line, file_type, filename, base_dir, errors):
    """Validate that a file reference exists with case-sensitive matching."""
    file_path = os.path.join(base_dir, filename)
    
    if not os.path.exists(file_path):
        errors.append(f"{param_name.strip()}({param_start_line}): {file_type} file '{filename}' not found in {base_dir}")
    else:
        # Verify case-sensitive match
        actual_files = []
        try:
            if os.path.exists(base_dir):
                actual_files = os.listdir(base_dir)
        except OSError:
            pass
        
        if filename not in actual_files:
            # Find the actual filename with different case
            actual_filename = None
            for f in actual_files:
                if f.lower() == filename.lower():
                    actual_filename = f
                    break
            
            if actual_filename:
                errors.append(f"{param_name.strip()}({param_start_line}): {file_type} file '{filename}' does not match case-sensitively (found: {actual_filename})")
            else:
                errors.append(f"{param_name.strip()}({param_start_line}): {file_type} file '{filename}' does not match case-sensitively")


def validate_parameter_file(filename, quiet=False):
    """Validate that a parameter file follows the correct syntax."""
    # Get the directory containing the parameter file
    par_dir = os.path.dirname(os.path.abspath(filename))
    formula_dir = os.path.normpath(os.path.join(par_dir, '..', 'formula'))
    ifs_dir = os.path.normpath(os.path.join(par_dir, '..', 'ifs'))
    lsystem_dir = os.path.normpath(os.path.join(par_dir, '..', 'lsystem'))
    map_dir = os.path.normpath(os.path.join(par_dir, '..', 'map'))

    # Parse the parameter file
    entries, errors = parse_file_entries(filename)
    
    if errors and not entries:
        # File read error or completely invalid
        if quiet:
            print(filename)
        else:
            print(f"Validation failed for '{filename}':")
            for error in errors:
                print(f"  {error}")
        return False
    
    # Validate each parameter entry
    for entry in entries:
        # Use ParamSet to parse parameters
        params = ParamSet(entry)
        
        # Check if colors parameter references a colormap file
        colors = params.get('colors')
        if colors and colors.startswith('@'):
            colormap_file = colors[1:]  # Remove the @ prefix
            validate_file_reference(entry.name, entry.start_line, 'Colormap', 
                                  colormap_file, map_dir, errors)
        
        # Check if type=formula and validate formulafile
        if params.get('type') == 'formula':
            formulafile = params.get('formulafile')
            if formulafile:
                validate_file_reference(entry.name, entry.start_line, 'Formula', 
                                      formulafile, formula_dir, errors)
            formulaname = params.get('formulaname')
            if formulaname:
                validate_file_entry(entry.name, entry.start_line, 'Formula',
                                    formulafile, formulaname, formula_dir, errors)

        # Check if type=ifs and validate ifsfile
        if params.get('type') == 'ifs':
            ifsfile = params.get('ifsfile')
            if ifsfile:
                validate_file_reference(entry.name, entry.start_line, 'IFS', 
                                      ifsfile, ifs_dir, errors)
            ifsname = params.get('ifs')
            if ifsname:
                validate_file_entry(entry.name, entry.start_line, 'IFS',
                                    ifsfile, ifsname, ifs_dir, errors)

        # Check if type=lsystem and validate lfile
        if params.get('type') == 'lsystem':
            lfile = params.get('lfile')
            if lfile:
                validate_file_reference(entry.name, entry.start_line, 'L-System', 
                                      lfile, lsystem_dir, errors)
            lname = params.get('lname')
            if lname:
                validate_file_entry(entry.name, entry.start_line, 'L-System',
                                    lfile, lname, lsystem_dir, errors)

    if errors:
        if quiet:
            print(filename)
        else:
            print(f"Validation failed for '{filename}':")
            for error in errors:
                print(f"  {error}")
        return False
    else:
        if not quiet:
            print(f"Validation passed for '{filename}'")
        return True


def main():
    parser = argparse.ArgumentParser(description='Validate parameter file syntax')
    parser.add_argument('filenames', nargs='+', metavar='filename', help='Parameter file(s) to validate')
    parser.add_argument('-q', '--quiet', action='store_true',
                        help='Quiet mode: only output filename on failure')
    
    args = parser.parse_args()
    
    all_success = True
    for filename in args.filenames:
        success = validate_parameter_file(filename, args.quiet)
        if not success:
            all_success = False
    
    sys.exit(0 if all_success else 1)


if __name__ == '__main__':
    main()
