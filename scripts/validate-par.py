#!/usr/bin/env python3
import sys
import re
import os
import argparse


def strip_comment(line):
    """Remove comment from line (everything from ; to end of line)."""
    comment_pos = line.find(';')
    if comment_pos != -1:
        return line[:comment_pos]
    return line


def continue_lines(lines):
    """Combine lines ending in backslash with the next line, skipping leading whitespace on continuation."""
    result = []
    i = 0
    while i < len(lines):
        line = lines[i]
        # Check if line ends with backslash
        while line.rstrip().endswith('\\') and i + 1 < len(lines):
            # Remove the backslash and any trailing whitespace
            line = line.rstrip()[:-1]
            # Append the next line, skipping its leading whitespace
            i += 1
            line += lines[i].lstrip()
        result.append(line)
        i += 1
    return result


def validate_file_entry(param_name, param_start_line, file_type, filename, entry_name, base_dir, errors):
    """Validate that a file contains an entry with the given name (case insensitive)."""
    if not filename:
        errors.append(f"{param_name.strip()}({param_start_line}): No {file_type} file specified for entry '{entry_name}'")
        return
        
    file_path = os.path.join(base_dir, filename)
    
    if not os.path.exists(file_path):
        errors.append(f"{param_name.strip()}({param_start_line}): {file_type} file '{filename}' not found for entry '{entry_name}'")
        return
    
    # Read the file and search for the entry
    try:
        with open(file_path, 'r', encoding='utf-8', errors='replace') as f:
            content = f.read()
    except Exception as e:
        errors.append(f"{param_name.strip()}({param_start_line}): Error reading {file_type} file '{filename}': {e}")
        return
    
    # Search for entry name followed by optional symmetry specification,
    # optional whitespace, and an opening brace
    # Entry names are case-insensitive
    # Symmetry specifications like (XAXIS), (YAXIS), etc. are optional
    entry_pattern = re.compile(
        r'^\s*' + re.escape(entry_name) + r'(?:\s*\([^)]*\))?\s*\{', 
        re.IGNORECASE | re.MULTILINE
    )
    
    if not entry_pattern.search(content):
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
    try:
        with open(filename, 'r', encoding='utf-8', errors='replace') as f:
            lines = f.readlines()
    except FileNotFoundError:
        if not quiet:
            print(f"Error: File '{filename}' not found.", file=sys.stderr)
        else:
            print(filename)
        return False
    except Exception as e:
        if not quiet:
            print(f"Error reading file '{filename}': {e}", file=sys.stderr)
        else:
            print(filename)
        return False

    if not lines:
        if not quiet:
            print("Warning: File is empty.")
        return True

    # Get the directory containing the parameter file
    par_dir = os.path.dirname(os.path.abspath(filename))
    formula_dir = os.path.normpath(os.path.join(par_dir, '..', 'formula'))
    ifs_dir = os.path.normpath(os.path.join(par_dir, '..', 'ifs'))
    lsystem_dir = os.path.normpath(os.path.join(par_dir, '..', 'lsystem'))
    map_dir = os.path.normpath(os.path.join(par_dir, '..', 'map'))

    line_num = 0
    errors = []
    
    while line_num < len(lines):
        original_line = lines[line_num]
        
        # Check if line is a comment line (starts with ; after optional whitespace)
        if re.match(r'^\s*;', original_line):
            line_num += 1
            continue
        
        # Strip comment from line for syntax checking
        line = strip_comment(original_line)
        
        # Check if line is blank or only whitespace
        if line.strip() == '':
            line_num += 1
            continue
        
        # Check if this line contains an opening brace
        if '{' not in line:
            errors.append(f"Line {line_num + 1}: Expected parameter entry: {original_line.rstrip()}")
            line_num += 1
            continue
        
        # Extract the parameter set name by working backwards from the opening brace
        brace_pos = line.index('{')
        before_brace = line[:brace_pos]
        after_brace = line[brace_pos + 1:]
        
        # Strip leading and trailing whitespace
        param_name = before_brace.strip()
        
        # Check if the closing brace is on the same line (single-line parameter set)
        if '}' in after_brace:
            brace_pos = after_brace.index('}')
            after_closing = after_brace[brace_pos + 1:].strip()
            
            if after_closing:
                errors.append(f"Line {line_num + 1}: Unexpected content after closing brace: {original_line.rstrip()}")
            
            line_num += 1
            continue
        
        # Multi-line parameter set: content after opening brace is part of the parameter body
        # Parse the parameter body to check for type=formula and formulafile
        param_start_line = line_num + 1
        line_num += 1
        param_body = []
        
        # Read lines until we find a closing brace
        found_closing_brace = False
        while line_num < len(lines):
            original_line = lines[line_num]
            line = strip_comment(original_line)
            
            # Check if line contains a closing brace
            if '}' in line:
                # Closing brace can be followed by optional content (already stripped)
                brace_pos = line.index('}')
                param_body.append(line[:brace_pos])
                after_brace = line[brace_pos + 1:].strip()
                
                if after_brace:
                    errors.append(f"Line {line_num + 1}: Unexpected content after closing brace: {original_line.rstrip()}")
                
                found_closing_brace = True
                line_num += 1
                break
            
            # Check for opening brace before closing brace is found
            if '{' in line:
                errors.append(f"Line {line_num + 1}: Unexpected opening brace inside parameter entry '{param_name}': {original_line.rstrip()}")
            
            param_body.append(line)
            line_num += 1
        
        if not found_closing_brace:
            errors.append(f"Parameter set '{param_name}' starting near line {line_num}: Missing closing brace")
        else:
            param_body = continue_lines(param_body)

            # Parse parameter body for type=formula and formulafile
            param_text = ' '.join(param_body)
            params = {}
            
            # Simple parsing of name=value pairs
            # Split by whitespace, but this is a simplified parser
            for token in param_text.split():
                if '=' in token:
                    key, _, value = token.partition('=')
                    params[key.lower()] = value
            
            # Check if colors parameter references a colormap file
            colors = params.get('colors')
            if colors and colors.startswith('@'):
                colormap_file = colors[1:]  # Remove the @ prefix
                validate_file_reference(param_name, param_start_line, 'Colormap', 
                                      colormap_file, map_dir, errors)
            
            # Check if type=formula and validate formulafile
            if params.get('type') == 'formula':
                formulafile = params.get('formulafile')
                if formulafile:
                    validate_file_reference(param_name, param_start_line, 'Formula', 
                                          formulafile, formula_dir, errors)
                formulaname = params.get('formulaname')
                if formulaname:
                    validate_file_entry(param_name, param_start_line, 'Formula',
                                        formulafile, formulaname, formula_dir, errors)

            # Check if type=ifs and validate ifsfile
            if params.get('type') == 'ifs':
                ifsfile = params.get('ifsfile')
                if ifsfile:
                    validate_file_reference(param_name, param_start_line, 'IFS', 
                                          ifsfile, ifs_dir, errors)
                ifsname = params.get('ifsname')
                if ifsname:
                    validate_file_entry(param_name, param_start_line, 'IFS',
                                        ifsfile, ifsname, ifs_dir, errors)

            # Check if type=lsystem and validate lfile
            if params.get('type') == 'lsystem':
                lfile = params.get('lfile')
                if lfile:
                    validate_file_reference(param_name, param_start_line, 'L-System', 
                                          lfile, lsystem_dir, errors)
                lname = params.get('lname')
                if lname:
                    validate_file_entry(param_name, param_start_line, 'L-System',
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
