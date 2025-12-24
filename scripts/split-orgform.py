#!/usr/bin/env python3
"""
Split a combined orgform _?.frm file back into original source files.

Reads entries from a combined orgform file (e.g., _a.frm), extracts the
;SOURCE: comment from each entry, and writes the entries back to their
original source files in the formula directory.

Usage:
    python split-orgform.py <combined_file>
    python split-orgform.py orgform/formula/_a.frm

The script will:
1. Parse all entries from the combined file
2. Extract the ;SOURCE: comment from each entry
3. Write entries to their original files in the same directory
4. Append to existing files, separating entries with blank lines
"""
import sys
import os
from file_entry import parse_file_entries


def extract_source_from_body(body):
    """
    Extract the SOURCE filename from the entry body.
    
    Looks for a comment line like ";SOURCE: filename.frm"
    
    Args:
        body: List of body lines
        
    Returns:
        str: Source filename or None if not found
    """
    for line in body:
        # Strip leading/trailing whitespace
        stripped = line.strip()
        # Check if line starts with ;SOURCE:
        if stripped.upper().startswith(';SOURCE:'):
            # Split on the colon and get the filename part
            parts = stripped.split(':', 1)
            if len(parts) == 2:
                filename = parts[1].strip()
                return filename
    return None


def remove_source_comment(body):
    """
    Remove the ;SOURCE: comment line from the body.
    
    Args:
        body: List of body lines
        
    Returns:
        list: Body lines without the SOURCE comment
    """
    result = []
    for line in body:
        stripped = line.strip()
        # Skip lines that start with ;SOURCE:
        if not stripped.upper().startswith(';SOURCE:'):
            result.append(line)
    return result


def format_entry(entry):
    """
    Format an entry for writing to a file.
    
    Args:
        entry: FileEntry object
        
    Returns:
        str: Formatted entry text
    """
    lines = []
    
    # Build the header line
    header = entry.name
    if entry.bracket_value:
        header += f" [{entry.bracket_value}]"
    if entry.paren_value:
        header += f" ({entry.paren_value})"
    header += " {"
    
    lines.append(header)
    
    # Add body lines (without SOURCE comment)
    body = remove_source_comment(entry.body)
    for line in body:
        lines.append(line)
    
    # Add closing brace
    lines.append("}")
    
    return '\n'.join(lines)


def split_orgform_file(input_file):
    """
    Split a combined orgform file into original source files.
    
    Args:
        input_file: Path to the combined orgform file
        
    Returns:
        tuple: (entries_processed, files_written, errors)
    """
    # Parse the input file
    entries, warnings, errors = parse_file_entries(input_file)
    
    if errors:
        print(f"Errors parsing {input_file}:")
        for error in errors:
            print(f"  {error}")
        return 0, 0, len(errors)
    
    if warnings:
        print(f"Warnings parsing {input_file}:")
        for warning in warnings:
            print(f"  {warning}")
    
    # Get the directory of the input file
    input_dir = os.path.dirname(os.path.abspath(input_file))
    
    # Track which files we've written to
    files_written = set()
    entries_processed = 0
    error_count = 0
    
    # Group entries by source file
    source_files = {}
    for entry in entries:
        source_file = extract_source_from_body(entry.body)
        
        if not source_file:
            print(f"Warning: Entry '{entry.name}' has no ;SOURCE: comment, skipping")
            error_count += 1
            continue
        
        if source_file not in source_files:
            source_files[source_file] = []
        source_files[source_file].append(entry)
    
    # Write entries to their source files
    for source_file, file_entries in sorted(source_files.items()):
        output_path = source_file
        
        # Check if file already exists
        file_exists = os.path.exists(output_path)
        
        try:
            # Open in append mode if exists, write mode if new
            mode = 'a' if file_exists else 'w'
            with open(output_path, mode, encoding='utf-8') as f:
                # If appending to existing file, ensure there's a blank line separator
                if file_exists:
                    # Check if file ends with newline
                    if os.path.getsize(output_path) > 0:
                        f.write('\n\n')
                
                # Write each entry
                for i, entry in enumerate(file_entries):
                    if i > 0:
                        # Separate entries with a blank line
                        f.write('\n\n')
                    
                    f.write(format_entry(entry))
                    f.write('\n')
                    entries_processed += 1
                
            files_written.add(source_file)
            action = "Appended to" if file_exists else "Created"
            print(f"{action} {source_file}: {len(file_entries)} entries")
            
        except Exception as e:
            print(f"Error writing to {output_path}: {e}")
            error_count += 1
    
    return entries_processed, len(files_written), error_count


def main():
    if len(sys.argv) < 2:
        print("Usage: python split-orgform.py <combined_file>")
        print("\nExample:")
        print("  python split-orgform.py orgform/formula/_a.frm")
        sys.exit(1)
    
    input_file = sys.argv[1]
    
    if not os.path.exists(input_file):
        print(f"Error: File '{input_file}' not found")
        sys.exit(1)
    
    print(f"Splitting {input_file}...")
    print()
    
    entries_processed, files_written, errors = split_orgform_file(input_file)
    
    print()
    print(f"Summary:")
    print(f"  Entries processed: {entries_processed}")
    print(f"  Files written: {files_written}")
    if errors > 0:
        print(f"  Errors: {errors}")
        sys.exit(1)
    else:
        print("  Success!")


if __name__ == '__main__':
    main()
