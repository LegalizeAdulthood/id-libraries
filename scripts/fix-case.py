#!/usr/bin/env python3
"""
Generate sed commands to fix case mismatches in formula, IFS, and L-system parameters.

Reads validation output from validate-par.py and outputs sed commands.

Usage:
    python validate-par.py file.par 2>&1 | python fix-case.py
    python fix-case.py < validation-output.txt
"""
import sys
import re


def escape_for_sed(text):
    """Escape special sed characters in text."""
    # Escape characters that are special in sed regular expressions
    # Note: We escape these one at a time to avoid double-escaping
    result = text
    for char in r'.*[]^$/':
        result = result.replace(char, '\\' + char)
    return result


def main():
    """Read validation output from stdin and generate sed commands to stdout."""
    fixes = []
    
    for line in sys.stdin:
        # Parse: EntryName(LineNum): Formula entry name 'wrong' does not match case-sensitively (found: file.frm 'Correct')
        match = re.match(r"^\s*\S+\((\d+)\):\s+Formula entry name '([^']+)' does not match case-sensitively \(found: [^ ]* '([^']+)'\)", line)
        
        if match:
            line_num = int(match.group(1))
            wrong_case = match.group(2)
            correct_case = match.group(3)
            
            wrong_case_escaped = escape_for_sed(wrong_case)
            correct_case_escaped = escape_for_sed(correct_case)
            
            fixes.append((line_num, f"s/formulaname={wrong_case_escaped}/formulaname={correct_case_escaped}/g"))
            continue
        
        # Parse: EntryName(LineNum): Formula file 'wrong.frm' does not match case-sensitively (found: Correct.frm)
        match = re.match(r"^\s*\S+\((\d+)\):\s+Formula file '([^']+)' does not match case-sensitively \(found: ([^)]+)\)", line)
        
        if match:
            line_num = int(match.group(1))
            wrong_case = match.group(2)
            correct_case = match.group(3)
            
            wrong_case_escaped = escape_for_sed(wrong_case)
            correct_case_escaped = escape_for_sed(correct_case)
            
            fixes.append((line_num, f"s/formulafile={wrong_case_escaped}/formulafile={correct_case_escaped}/g"))
            continue
        
        # Parse: EntryName(LineNum): L-System entry name 'wrong' does not match case-sensitively (found: file.l 'Correct')
        match = re.match(r"^\s*\S+\((\d+)\):\s+L-System entry name '([^']+)' does not match case-sensitively \(found: [^ ]* '([^']+)'\)", line)
        
        if match:
            line_num = int(match.group(1))
            wrong_case = match.group(2)
            correct_case = match.group(3)
            
            wrong_case_escaped = escape_for_sed(wrong_case)
            correct_case_escaped = escape_for_sed(correct_case)
            
            fixes.append((line_num, f"s/lname={wrong_case_escaped}/lname={correct_case_escaped}/g"))
            continue
        
        # Parse: EntryName(LineNum): L-System file 'wrong.l' does not match case-sensitively (found: Correct.l)
        match = re.match(r"^\s*\S+\((\d+)\):\s+L-System file '([^']+)' does not match case-sensitively \(found: ([^)]+)\)", line)
        
        if match:
            line_num = int(match.group(1))
            wrong_case = match.group(2)
            correct_case = match.group(3)
            
            wrong_case_escaped = escape_for_sed(wrong_case)
            correct_case_escaped = escape_for_sed(correct_case)
            
            fixes.append((line_num, f"s/lfile={wrong_case_escaped}/lfile={correct_case_escaped}/g"))
            continue
        
        # Parse: EntryName(LineNum): IFS entry name 'wrong' does not match case-sensitively (found: file.ifs 'Correct')
        match = re.match(r"^\s*\S+\((\d+)\):\s+IFS entry name '([^']+)' does not match case-sensitively \(found: [^ ]* '([^']+)'\)", line)
        
        if match:
            line_num = int(match.group(1))
            wrong_case = match.group(2)
            correct_case = match.group(3)
            
            wrong_case_escaped = escape_for_sed(wrong_case)
            correct_case_escaped = escape_for_sed(correct_case)
            
            fixes.append((line_num, f"s/ifs={wrong_case_escaped}/ifs={correct_case_escaped}/g"))
            continue
        
        # Parse: EntryName(LineNum): IFS file 'wrong.ifs' does not match case-sensitively (found: Correct.ifs)
        match = re.match(r"^\s*\S+\((\d+)\):\s+IFS file '([^']+)' does not match case-sensitively \(found: ([^)]+)\)", line)
        
        if match:
            line_num = int(match.group(1))
            wrong_case = match.group(2)
            correct_case = match.group(3)
            
            wrong_case_escaped = escape_for_sed(wrong_case)
            correct_case_escaped = escape_for_sed(correct_case)
            
            fixes.append((line_num, f"s/ifsfile={wrong_case_escaped}/ifsfile={correct_case_escaped}/g"))
    
    # Output sed commands sorted by line number
    fixes.sort(key=lambda x: x[0])
    for _, sed_cmd in fixes:
        print(sed_cmd)


if __name__ == '__main__':
    main()
