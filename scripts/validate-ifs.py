#!/usr/bin/env python3
import sys
import argparse
from file_entry import parse_file_entries


def validate_ifs_file(filename, quiet=False):
    """Validate that an IFS file follows the correct syntax."""
    entries, warnings, errors = parse_file_entries(filename)
    
    if warnings and not quiet:
        print(f"Validation warnings for '{filename}':")
        for warning in warnings:
            print(f"  {warning}")

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
    parser = argparse.ArgumentParser(description='Validate IFS file syntax')
    parser.add_argument('filenames', nargs='+', metavar='filename', help='IFS file(s) to validate')
    parser.add_argument('-q', '--quiet', action='store_true',
                        help='Quiet mode: only output filename on failure')
    
    args = parser.parse_args()
    
    all_success = True
    for filename in args.filenames:
        success = validate_ifs_file(filename, args.quiet)
        if not success:
            all_success = False
    
    sys.exit(0 if all_success else 1)


if __name__ == '__main__':
    main()
