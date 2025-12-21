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
            
            param_body.append(line)
            line_num += 1
        
        if not found_closing_brace:
            errors.append(f"Parameter set '{param_name}' starting near line {line_num}: Missing closing brace")
        else:
            # Parse parameter body for type=formula and formulafile
            param_text = ' '.join(param_body)
            params = {}
            
            # Simple parsing of name=value pairs
            # Split by whitespace, but this is a simplified parser
            for token in param_text.split():
                if '=' in token:
                    key, _, value = token.partition('=')
                    params[key.lower()] = value
            
            # Check if type=formula and validate formulafile
            if params.get('type') == 'formula':
                formulafile = params.get('formulafile')
                if formulafile:
                    # Check if the formula file exists (case-sensitive)
                    formula_path = os.path.join(formula_dir, formulafile)
                    
                    if not os.path.exists(formula_path):
                        errors.append(f"{param_name.strip()}({param_start_line}): Formula file '{formulafile}' not found in {formula_dir}")
                    else:
                        # Verify case-sensitive match
                        actual_files = []
                        try:
                            if os.path.exists(formula_dir):
                                actual_files = os.listdir(formula_dir)
                        except OSError:
                            pass
                        
                        if formulafile not in actual_files:
                            # Find the actual filename with different case
                            actual_filename = None
                            for f in actual_files:
                                if f.lower() == formulafile.lower():
                                    actual_filename = f
                                    break
                            
                            if actual_filename:
                                errors.append(f"{param_name.strip()}({param_start_line}): Formula file '{formulafile}' does not match case-sensitively (found: {actual_filename})")
                            else:
                                errors.append(f"{param_name.strip()}({param_start_line}): Formula file '{formulafile}' does not match case-sensitively")

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
    parser.add_argument('filename', help='Parameter file to validate')
    parser.add_argument('-q', '--quiet', action='store_true',
                        help='Quiet mode: only output filename on failure')
    
    args = parser.parse_args()
    
    success = validate_parameter_file(args.filename, args.quiet)
    sys.exit(0 if success else 1)


if __name__ == '__main__':
    main()
