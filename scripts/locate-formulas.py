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
    match = re.search(r"Validation failed for '([^']+)':", last_line)
    if not match:
        print("Could not find par file path in validation output")
        sys.exit(1)
    par_path = match.group(1)
    par_dir = os.path.dirname(par_path)
    formula_dir = os.path.normpath(os.path.join(par_dir, '..', 'formula'))

    if not os.path.exists(formula_dir):
        print(f"Formula directory '{formula_dir}' does not exist")
        sys.exit(1)

    # Collect missing entries in existing files
    missing_to_entries = defaultdict(list)
    pattern = r"Formula entry '([^']+)' not found in file '([^']+)'"
    for match in re.finditer(pattern, content):
        entry_name, file_name = match.groups()
        missing_to_entries[file_name].append(entry_name)

    if not missing_to_entries:
        print("No missing formula entries found in validation output")
        sys.exit(0)

    # Get all .frm files
    frm_files = [f for f in os.listdir(formula_dir) if f.endswith('.frm')]

    # For each missing entry, find files that contain the entry
    chosen = {}
    for file_with_missing_entries, entries in missing_to_entries.items():
        print(f"\nMissing entry in file: {file_with_missing_entries}")
        print(f"Entries: {', '.join(entries)}")

        candidates = []
        for frm in frm_files:
            path = os.path.join(formula_dir, frm)
            try:
                file_entries, _, _ = parse_file_entries(path)
            except Exception as e:
                print(f"Warning: Could not parse {frm}: {e}")
                continue

            has_all = True
            for entry in entries:
                if not find_entry_by_name(file_entries, entry, case_sensitive=False):
                    has_all = False
                    break
            if has_all:
                candidates.append(frm)

        if not candidates:
            print("No candidate files found that contain all required entries.")
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
                    chosen[file_with_missing_entries] = candidates[choice - 1]
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
    print("# Run with: sed -i 'script' path_to_par_file")
    print("# Or manually apply the changes")
    sed_lines = []
    for file_with_missing_entries, chosen_file in chosen.items():
        # Escape for sed
        escaped_file = re.escape(file_with_missing_entries)
        line = f"s/formulafile={escaped_file}/formulafile={chosen_file}/g"
        sed_lines.append(line)
        print(line)

    # Write to locate.sed in current directory
    with open('locate.sed', 'w') as f:
        f.write("# Sed script to update the par file\n")
        f.write("# Run with: sed -i 'locate.sed' path_to_par_file\n")
        f.write("# Or manually apply the changes\n")
        for line in sed_lines:
            f.write(line + '\n')
    print(f"\nSed script written to locate.sed in the current directory.")

if __name__ == '__main__':
    main()