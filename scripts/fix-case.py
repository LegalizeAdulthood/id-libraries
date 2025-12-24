#!/usr/bin/env python3
"""
Generate sed commands to fix case mismatches in formulaname parameters.

Reads validation output from validate-par.py and outputs sed commands.

Usage:
    python validate-par.py file.par 2>&1 | python fix-case.py
    python fix-case.py < validation-output.txt
"""
import sys
import re


def main():
    """Read validation output from stdin and generate sed commands to stdout."""
    fixes = []
    
    for line in sys.stdin:
        # Parse: EntryName(LineNum): Formula entry name 'wrong' does not match case-sensitively (found: file.frm 'Correct')
        match = re.match(r"^\s*\S+\((\d+)\):\s+Formula entry name '([^ ]+)' does not match case-sensitively \(found: [^ ]* '([^ ]+)'\)", line)
        
        if match:
            line_num = int(match.group(1))
            wrong_case = match.group(2)
            correct_case = match.group(3)
            
            # Escape special sed characters
            for char in r'.*[]^$\/':
                wrong_case = wrong_case.replace(char, '\\' + char)
                correct_case = correct_case.replace(char, '\\' + char)
            
            fixes.append((line_num, f"s/formulaname={wrong_case}/formulaname={correct_case}/g"))
    
    # Output sed commands sorted by line number
    fixes.sort(key=lambda x: x[0])
    for _, sed_cmd in fixes:
        print(sed_cmd)


if __name__ == '__main__':
    main()
