#!/usr/bin/env python3
import sys
import re
import os
import subprocess
from collections import defaultdict
from file_entry import parse_file_entries, find_entry_by_name

def main():
    if len(sys.argv) != 2:
        print("Usage: python locate-formulas.py <par_file>")
        sys.exit(1)

    par_file = os.path.abspath(sys.argv[1])

    # Get script directory
    script_dir = os.path.dirname(os.path.abspath(__file__))
    workspace_root = os.path.dirname(script_dir)
    validate_par_path = os.path.join(script_dir, 'validate-par.py')

    # Run validate-par.py on the par file
    result = subprocess.run([sys.executable, validate_par_path, par_file], 
                            capture_output=True, text=True, cwd=workspace_root)
    content = result.stdout
    if result.stderr:
        content += result.stderr

    # Extract the par file path from the last line
    lines = content.strip().split('\n')
    last_line = lines[-1]
    match = re.search(r"Validation failed for '(.+)':", last_line)
    if not match:
        print("Could not find par file path in validation output")
        sys.exit(1)
    par_path = match.group(1)
    par_dir = os.path.dirname(par_path)
    formula_dir = os.path.normpath(os.path.join(par_dir, '..', 'formula'))

    if not os.path.exists(formula_dir):
        print(f"Formula directory '{formula_dir}' does not exist")
        sys.exit(1)

    # Collect missing entries
    missing_entries = []
    pattern1 = r"  ([^(]+)\((\d+)\): Formula file '.+' not found for entry '([^']+)'"
    for match in re.finditer(pattern1, content):
        param_name, line, entry_name = match.groups()
        entry_name = entry_name.lower()
        missing_entries.append((param_name, line, entry_name))

    pattern2 = r"  ([^(]+)\((\d+)\): Formula entry '([^']+)' not found in file '.+'"
    for match in re.finditer(pattern2, content):
        param_name, line, entry_name = match.groups()
        entry_name = entry_name.lower()
        missing_entries.append((param_name, line, entry_name))

    if not missing_entries:
        print("No missing formula entries found in validation output")
        sys.exit(0)

    # Get all .frm files
    frm_files = [f for f in os.listdir(formula_dir) if f.endswith('.frm')]

    # For each missing entry, find files that contain the entry
    chosen = {}
    prompted = set()
    for param_name, line, entry_name in missing_entries:
        if entry_name in prompted:
            continue

        print(f"\nEntry '{entry_name}' missing for parameter '{param_name}' at line {line}")

        candidates = []
        for frm in frm_files:
            path = os.path.join(formula_dir, frm)
            try:
                file_entries, _, _ = parse_file_entries(path)
            except Exception as e:
                print(f"Warning: Could not parse {frm}: {e}")
                continue

            if find_entry_by_name(file_entries, entry_name):
                candidates.append(frm)

        if not candidates:
            print("No candidate files found that contain the entry.")
            continue

        print("Candidate files:")
        for i, cand in enumerate(candidates, 1):
            print(f"{i}. {cand}")

        while True:
            try:
                choice = int(input("Choose the number of the file to use (0 to skip): "))
                if choice == 0:
                    break
                if 1 <= choice <= len(candidates):
                    chosen[entry_name] = candidates[choice - 1]
                    prompted.add(entry_name)
                    break
                else:
                    print("Invalid choice.")
            except ValueError:
                print("Please enter a number.")

    if not chosen:
        print("No replacements chosen.")
        sys.exit(0)

    # Generate sed script
    print("\n# Sed script to update the par file:")
    print("# Run with: sed -i -f 'locate.sed' path_to_par_file")
    print("# Or manually apply the changes")
    sed_lines = []
    for param_name, line, entry_name in missing_entries:
        if entry_name in chosen:
            new_file = chosen[entry_name]
            line = f"{line}, /^[^;]*}}/ {{ s/formulafile=[^ ][^ ]*/formulafile={new_file}/ }}"
            sed_lines.append(line)
            print(line)

    # Write to locate.sed in current directory
    with open('locate.sed', 'w') as f:
        f.write("# Sed script to update the par file\n")
        f.write("# Run with: sed -i -f 'locate.sed' path_to_par_file\n")
        f.write("# Or manually apply the changes\n")
        for line in sed_lines:
            f.write(line + '\n')
    print(f"\nSed script written to locate.sed in the current directory.")

if __name__ == '__main__':
    main()
