#!/usr/bin/env python3
import sys
import re
import argparse


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

    line_num = 0
    errors = []
    
    while line_num < len(lines):
        line = lines[line_num]
        
        # Check if line is a comment line (starts with ; after optional whitespace)
        if re.match(r'^\s*;', line):
            line_num += 1
            continue
        
        # Check if line is blank or only whitespace
        if line.strip() == '':
            line_num += 1
            continue
        
        # Check if this is the start of a parameter set entry
        # Pattern: optional whitespace, name (non-whitespace excluding {),
        # optional whitespace, open brace
        match = re.match(r'^(\s*)([^\s{]+)(\s*)(\{)(.*)$', line)
        
        if not match:
            errors.append(f"Line {line_num + 1}: Invalid parameter set entry start: {line.rstrip()}")
            line_num += 1
            continue
        
        # Found a parameter set entry
        param_name = match.group(2)
        after_brace = match.group(5)
        
        # Check if the closing brace is on the same line (single-line parameter set)
        if '}' in after_brace:
            brace_pos = after_brace.index('}')
            after_closing = after_brace[brace_pos + 1:].strip()
            
            if after_closing and not after_closing.startswith(';'):
                errors.append(f"Line {line_num + 1}: Unexpected content after closing brace: {line.rstrip()}")
            
            line_num += 1
            continue
        
        # Multi-line parameter set: content after opening brace is part of the parameter body
        line_num += 1
        
        # Read lines until we find a closing brace
        found_closing_brace = False
        while line_num < len(lines):
            line = lines[line_num]
            
            # Check if line contains a closing brace
            if '}' in line:
                # Closing brace can be followed by optional comment
                brace_pos = line.index('}')
                after_brace = line[brace_pos + 1:].strip()
                
                if after_brace and not after_brace.startswith(';'):
                    errors.append(f"Line {line_num + 1}: Unexpected content after closing brace: {line.rstrip()}")
                
                found_closing_brace = True
                line_num += 1
                break
            
            line_num += 1
        
        if not found_closing_brace:
            errors.append(f"Parameter set '{param_name}' starting near line {line_num}: Missing closing brace")
    
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
