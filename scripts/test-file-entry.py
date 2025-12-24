#!/usr/bin/env python3
"""
Test script demonstrating the FileEntry parser functionality.
"""
import sys
from file_entry import parse_file_entries, find_entry_by_name


def test_file(filename):
    """Parse a file and display its entries."""
    print(f"\nParsing: {filename}")
    print("=" * 60)
    
    entries, warnings, errors = parse_file_entries(filename)
    
    if warnings:
        print("Warnings:")
        for warning in warnings:
            print(f"  {warning}")
        print()

    if errors:
        print("Errors:")
        for error in errors:
            print(f"  {error}")
        print()
    
    if entries:
        print(f"Found {len(entries)} entries:\n")
        
        for entry in entries:
            print(f"Entry: {entry.name}")
            if entry.bracket_value:
                print(f"  Bracket value: [{entry.bracket_value}]")
            if entry.paren_value:
                print(f"  Paren value: ({entry.paren_value})")
            print(f"  Lines: {entry.start_line} - {entry.end_line}")
            print(f"  Body lines: {len(entry.body)}")
            if entry.body:
                # Show first few lines of body
                preview_lines = min(3, len(entry.body))
                for i in range(preview_lines):
                    line = entry.body[i].strip()
                    if line:
                        print(f"    {line[:60]}{'...' if len(line) > 60 else ''}")
                if len(entry.body) > preview_lines:
                    print(f"    ... ({len(entry.body) - preview_lines} more lines)")
            print()


def test_find_entry(filename, entry_name):
    """Test finding a specific entry by name."""
    print(f"\nSearching for '{entry_name}' in {filename}")
    print("=" * 60)
    
    entries, warnings, errors = parse_file_entries(filename)
    
    if warnings:
        print("Warnings:")
        for warning in warnings:
            print(f"  {warning}")
        print()

    if errors:
        print("Errors:")
        for error in errors:
            print(f"  {error}")
        return
    
    # Case-insensitive search
    entry = find_entry_by_name(entries, entry_name, case_sensitive=False)
    
    if entry:
        print(f"Found entry: {entry.name}")
        if entry.bracket_value:
            print(f"  Bracket value: [{entry.bracket_value}]")
        if entry.paren_value:
            print(f"  Paren value: ({entry.paren_value})")
        print(f"  Lines: {entry.start_line} - {entry.end_line}")
        print(f"  Body ({len(entry.body)} lines):")
        for line in entry.body[:10]:  # Show first 10 lines
            print(f"    {line.rstrip()}")
        if len(entry.body) > 10:
            print(f"    ... ({len(entry.body) - 10} more lines)")
    else:
        print(f"Entry '{entry_name}' not found")


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python test-file-entry.py <filename> [entry_name]")
        sys.exit(1)
    
    filename = sys.argv[1]
    
    if len(sys.argv) >= 3:
        entry_name = sys.argv[2]
        test_find_entry(filename, entry_name)
    else:
        test_file(filename)
