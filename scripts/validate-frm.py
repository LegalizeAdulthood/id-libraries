#!/usr/bin/env python3
import sys
import re
import argparse


def strip_comment(line):
    """Remove comment from line (everything from ; to end of line)."""
    comment_pos = line.find(';')
    if comment_pos != -1:
        return line[:comment_pos]
    return line


def validate_formula_file(filename, quiet=False):
    """Validate that a formula file follows the correct syntax."""
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
            errors.append(f"Line {line_num + 1}: Expected formula entry: {original_line.rstrip()}")
            line_num += 1
            continue
        
        # Extract the formula name by working backwards from the opening brace
        brace_pos = line.index('{')
        before_brace = line[:brace_pos]
        after_brace = line[brace_pos + 1:]
        
        # Strip any trailing square bracket surrounded text (parameters)
        name = re.sub(r'\[[^\]]*\]\s*$', '', before_brace)
        
        # Strip any trailing parentheses surrounded text (symmetry)
        name = re.sub(r'\([^)]*\)\s*$', '', name)
        
        # Strip leading and trailing whitespace
        formula_name = name.strip()
        
        # Check if the closing brace is on the same line (single-line formula)
        if '}' in after_brace:
            brace_pos = after_brace.index('}')
            after_closing = after_brace[brace_pos + 1:].strip()
            
            if after_closing:
                errors.append(f"Line {line_num + 1}: Unexpected content after closing brace: {original_line.rstrip()}")
            
            line_num += 1
            continue
        
        # Multi-line formula: content after opening brace is part of the formula body
        line_num += 1
        
        # Read lines until we find a closing brace
        found_closing_brace = False
        while line_num < len(lines):
            original_line = lines[line_num]
            line = strip_comment(original_line)
            
            # Check if line contains a closing brace
            if '}' in line:
                # Closing brace can be followed by optional content (already stripped)
                brace_pos = line.index('}')
                after_brace = line[brace_pos + 1:].strip()
                
                if after_brace:
                    errors.append(f"Line {line_num + 1}: Unexpected content after closing brace: {original_line.rstrip()}")
                
                found_closing_brace = True
                line_num += 1
                break
            
            line_num += 1
        
        if not found_closing_brace:
            errors.append(f"Formula '{formula_name}' starting near line {line_num}: Missing closing brace")
    
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
    parser = argparse.ArgumentParser(description='Validate formula file syntax')
    parser.add_argument('filenames', nargs='+', metavar='filename', help='Formula file(s) to validate')
    parser.add_argument('-q', '--quiet', action='store_true',
                        help='Quiet mode: only output filename on failure')
    
    args = parser.parse_args()
    
    all_success = True
    for filename in args.filenames:
        success = validate_formula_file(filename, args.quiet)
        if not success:
            all_success = False
    
    sys.exit(0 if all_success else 1)


if __name__ == '__main__':
    main()
