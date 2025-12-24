#!/usr/bin/env python3
"""
Test script to validate parameter parsing with test.par

This script tests that parameter entries in test.par are parsed correctly
and that all parameter values are extracted properly.
"""
import sys
import os

# Add current directory to path to allow importing file_entry
sys.path.insert(0, os.path.dirname(__file__))

from file_entry import parse_file_entries, ParamSet, FileEntry


# Expected parsed results from test.par
EXPECTED_PARAMS = {
    'name': 'elastic',
    'paren_value': None,
    'bracket_value': None,
    'params': {
        'reset': '',
        'type': 'formula',
        'formulafile': 'noel.frm',
        'formulaname': 'pheonix',
        'passes': '1',
        'corners': '-0.35199589/-0.34714278/0.84632515/0.84996499',
        'float': 'y',
        'maxiter': '300',
        'inside': '0',
        'outside': 'mult',
        'colors': '000d04<29>GEIFFJFFJFFJ<7>RCGSBFUBFWAE<18>x15z04z14<29>zx4zz4zz5<27>zzxzzzzzz<4>zxzzxzzwyzwx<55>zV5zU4zU4zT4<28>z14z04z04y04<27>e04'
    }
}


def compare_param_set(expected, actual):
    """Compare expected parameter data with an actual ParamSet."""
    errors = []
    
    # Compare name
    if expected['name'] != actual.name:
        errors.append(f"Name mismatch: expected '{expected['name']}', got '{actual.name}'")
    
    # Compare paren_value
    expected_paren = expected['paren_value']
    actual_paren = actual.paren_value
    if expected_paren != actual_paren:
        errors.append(f"Paren mismatch: expected '{expected_paren}', got '{actual_paren}'")
    
    # Compare bracket_value
    expected_bracket = expected['bracket_value']
    actual_bracket = actual.bracket_value
    if expected_bracket != actual_bracket:
        errors.append(f"Bracket mismatch: expected '{expected_bracket}', got '{actual_bracket}'")
    
    # Compare parameters
    expected_params = expected['params']
    actual_params = actual.params
    
    # Check for missing parameters
    for param_name in expected_params:
        if param_name not in actual_params:
            errors.append(f"Missing parameter: '{param_name}'")
        elif expected_params[param_name] != actual_params[param_name]:
            errors.append(f"Parameter '{param_name}' mismatch:")
            errors.append(f"  Expected: {expected_params[param_name]}")
            errors.append(f"  Got:      {actual_params[param_name]}")
    
    # Check for unexpected parameters
    for param_name in actual_params:
        if param_name not in expected_params:
            errors.append(f"Unexpected parameter: '{param_name}' = '{actual_params[param_name]}'")
    
    return errors


def test_param_set_parsing(expected, test_file):
    """Test parsing of test.par against expected results."""
    
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
    
    print(f"\n Successfully parsed {len(entries)} parameter entries")
    
    # Check count matches
    if len(entries) != 1:
        print(f"\n Entry count mismatch: expected 1, got {len(entries)}")
        return False
    
    # Parse the entry as a ParamSet
    param_set = ParamSet(entries[0])
    
    print(f"\nValidating parameter set: {param_set.name}")
    print("-" * 70)
    
    comparison_errors = compare_param_set(expected, param_set)
    
    if not comparison_errors:
        print(f"   {param_set.name}: PASS")
        print(f"   - {len(param_set.params)} parameters validated")
    else:
        print(f"   {param_set.name}: FAILED")
        for error in comparison_errors:
            print(f"      {error}")
        return False
    
    return True


def main():
    """Run all tests."""
    print("=" * 70)
    print("Parameter Set Parser Test Suite")
    print("=" * 70)
    
    # Run tests
    test_file = os.path.join(os.path.dirname(__file__), 'test', 'test.par')
    test1 = test_param_set_parsing(EXPECTED_PARAMS, test_file)
    
    # Summary
    print("\n" + "=" * 70)
    print("Test Results:")
    print(f"  test.par parsing:          {'PASS' if test1 else 'FAIL'}")
    print("=" * 70)
    
    if test1:
        print("\n All tests PASSED")
        return 0
    else:
        print("\n Some tests FAILED")
        return 1


if __name__ == '__main__':
    sys.exit(main())
