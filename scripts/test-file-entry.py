#!/usr/bin/env python3
"""
Test script to validate formula parsing with test.frm

This script tests that all formula entries in test.frm are parsed correctly
and that their names are preserved without truncation.
"""
import sys
import os

# Add current directory to path to allow importing file_entry
sys.path.insert(0, os.path.dirname(__file__))

from file_entry import parse_file_entries, find_entry_by_name, FileEntry


# Expected parsed results from test.frm
EXPECTED_ENTRIES = [
    FileEntry(
        name='SimpleFormula',
        paren_value=None,
        bracket_value=None,
        body=['  z = pixel:', '  z = z*z + pixel', '  |z| <= 4'],
        start_line=4,
        end_line=7
    ),
    FileEntry(
        name='WithParens',
        paren_value='XAXIS',
        bracket_value=None,
        body=['  z = pixel:', '  z = z*z + pixel', '  |z| <= 4'],
        start_line=10,
        end_line=13
    ),
    FileEntry(
        name='WithBrackets',
        paren_value=None,
        bracket_value='p1=1.0 p2=0.5',  # Note: comma becomes space
        body=['  z = pixel:', '  z = z*z + p1 + p2', '  |z| <= 4'],
        start_line=16,
        end_line=19
    ),
    FileEntry(
        name='WithBoth',
        paren_value='XAXIS',
        bracket_value='p1=1.0',
        body=['  z = pixel:', '  z = z*z + p1', '  |z| <= 4'],
        start_line=22,
        end_line=25
    ),
    FileEntry(
        name='EighteenCharName12',
        paren_value='XAXIS',
        bracket_value=None,
        body=['  z = pixel:', '  z = z*z + pixel', '  |z| <= 4'],
        start_line=28,
        end_line=31
    ),
    FileEntry(
        name='SingleLine',
        paren_value=None,
        bracket_value=None,
        body=[' z = pixel: z = z*z + pixel, |z| <= 4 '],  # Note: comma is preserved
        start_line=34,
        end_line=34
    ),
    FileEntry(
        name='WithContinuation',
        paren_value=None,
        bracket_value=None,
        body=['  z = pixel:', '  z = z*z + pixel + (1,2) + (3,4)', '  |z| <= 4'],  # Note: extra spaces normalized
        start_line=37,
        end_line=41
    ),
    FileEntry(
        name='WithComments',
        paren_value=None,
        bracket_value=None,
        body=['  z = pixel:        ; Initialize z', '  z = z*z + pixel   ; Iterate', '  |z| <= 4 ; Bailout test'],  # Note: whitespace before comments preserved
        start_line=44,
        end_line=47
    ),
]


def compare_entries(expected, actual, test_name):
    """Compare an expected FileEntry with an actual parsed FileEntry."""
    errors = []
    
    # Compare name
    if expected.name != actual.name:
        errors.append(f"Name mismatch: expected '{expected.name}', got '{actual.name}'")
    
    # Compare paren_value
    expected_paren = (expected.paren_value or '').strip()
    actual_paren = (actual.paren_value or '').strip()
    if expected_paren != actual_paren:
        errors.append(f"Paren mismatch: expected '{expected_paren}', got '{actual_paren}'")
    
    # Compare bracket_value
    expected_bracket = (expected.bracket_value or '').strip()
    actual_bracket = (actual.bracket_value or '').strip()
    if expected_bracket != actual_bracket:
        errors.append(f"Bracket mismatch: expected '{expected_bracket}', got '{actual_bracket}'")
    
    # Compare body (line by line, trimming whitespace)
    if len(expected.body) != len(actual.body):
        errors.append(f"Body length mismatch: expected {len(expected.body)} lines, got {len(actual.body)} lines")
    else:
        for i, (exp_line, act_line) in enumerate(zip(expected.body, actual.body)):
            if exp_line.strip() != act_line.strip():
                errors.append(f"Body line {i+1} mismatch:")
                errors.append(f"  Expected: {exp_line.strip()}")
                errors.append(f"  Got:      {act_line.strip()}")
    
    # We don't compare start_line and end_line as they may vary based on file formatting
    
    return errors


def test_parse_file_entries(expected_entries, test_file):
    """Test parsing of test.frm against expected results."""
    
    print(f"Testing: {test_file}")
    print("=" * 70)
    
    entries, warnings, errors = parse_file_entries(test_file)
    
    if warnings:
        print(f"\nWarnings ({len(warnings)}):")
        for warning in warnings:
            print(f"  {warning}")
    
    if errors:
        print(f"\nErrors ({len(errors)}):")
        for error in errors:
            print(f"  {error}")
        return False
    
    print(f"\n Successfully parsed {len(entries)} formula entries")
    
    # Check count matches
    if len(entries) != len(expected_entries):
        print(f"\n Entry count mismatch: expected {len(expected_entries)}, got {len(entries)}")
        return False
    
    print(f"\nComparing parsed entries against expected values:")
    print("-" * 70)
    
    all_passed = True
    for i, (expected, actual) in enumerate(zip(expected_entries, entries)):
        test_name = f"Entry {i+1}: {expected.name}"
        comparison_errors = compare_entries(expected, actual, test_name)
        
        if not comparison_errors:
            paren_str = f"({actual.paren_value})" if actual.paren_value else ""
            bracket_str = f"[{actual.bracket_value}]" if actual.bracket_value else ""
            display = f"{actual.name}{paren_str}{bracket_str}" if paren_str or bracket_str else actual.name
            print(f"   {display}")
        else:
            print(f"   {test_name} FAILED:")
            for error in comparison_errors:
                print(f"      {error}")
            all_passed = False
    
    return all_passed


def main():
    """Run all tests."""
    print("=" * 70)
    print("Formula Parser Test Suite")
    print("=" * 70)
    
    # Run tests
    test_file = os.path.join(os.path.dirname(__file__), 'test', 'test.frm')
    test1 = test_parse_file_entries(EXPECTED_ENTRIES, test_file)
    
    # Summary
    print("\n" + "=" * 70)
    print("Test Results:")
    print(f"  test.frm parsing:          {'PASS' if test1 else 'FAIL'}")
    print("=" * 70)
    
    if test1:
        print("\n All tests PASSED")
        return 0
    else:
        print("\n Some tests FAILED")
        return 1


if __name__ == '__main__':
    sys.exit(main())
