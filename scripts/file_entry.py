#!/usr/bin/env python3
"""
Unified parser for file entries (parameter sets, formulas, IFS, L-systems).

All these file types share a common format:
  EntryName [optional_brackets] (optional_parens) {
    body lines
  }
"""
import re
from dataclasses import dataclass
from typing import List, Optional


@dataclass
class FileEntry:
    """
    Represents a file entry with name, optional metadata, and body content.
    
    Attributes:
        name: The entry name (e.g., "MyFormula", "MyParameter")
        paren_value: Optional parentheses value (e.g., "XAXIS", "3D")
        bracket_value: Optional square bracket value (e.g., "a=1, b=2")
        body: List of body lines between opening and closing braces
        start_line: 1-based line number where the entry starts
        end_line: 1-based line number where the entry ends
    """
    name: str
    paren_value: Optional[str] = None
    bracket_value: Optional[str] = None
    body: List[str] = None
    start_line: int = 0
    end_line: int = 0
    
    def __post_init__(self):
        if self.body is None:
            self.body = []


def strip_comment(line):
    """Remove comment from line (everything from ; to end of line)."""
    comment_pos = line.find(';')
    if comment_pos != -1:
        return line[:comment_pos]
    return line


def continue_lines(lines):
    """Combine lines ending in backslash with the next line, skipping leading whitespace on continuation."""
    result = []
    i = 0
    while i < len(lines):
        line = lines[i]
        # Check if line ends with backslash
        while line.rstrip().endswith('\\') and i + 1 < len(lines):
            # Remove the backslash and any trailing whitespace
            line = line.rstrip()[:-1]
            # Append the next line, skipping its leading whitespace
            i += 1
            line += lines[i].lstrip()
        result.append(line)
        i += 1
    return result


def parse_file_entries(filename):
    """
    Parse a file and extract all FileEntry instances.
    
    Args:
        filename: Path to the file to parse
        
    Returns:
        tuple: (list of FileEntry objects, list of error messages)
    """
    try:
        with open(filename, 'r', encoding='utf-8', errors='replace') as f:
            lines = f.readlines()
    except FileNotFoundError:
        return [], [f"File '{filename}' not found"]
    except Exception as e:
        return [], [f"Error reading file '{filename}': {e}"]
    
    if not lines:
        return [], []
    
    entries = []
    errors = []
    line_num = 0
    
    while line_num < len(lines):
        original_line = lines[line_num]
        
        # Skip comment lines
        if re.match(r'^\s*;', original_line):
            line_num += 1
            continue
        
        # Strip comment from line for syntax checking
        line = strip_comment(original_line)
        
        # Skip blank lines
        if line.strip() == '':
            line_num += 1
            continue
        
        # Check if this line contains an opening brace
        if '{' not in line:
            errors.append(f"Line {line_num + 1}: Expected entry with opening brace: {original_line.rstrip()}")
            line_num += 1
            continue
        
        # Extract everything before the opening brace
        brace_pos = line.index('{')
        before_brace = line[:brace_pos]
        after_brace = line[brace_pos + 1:]
        
        # Parse the entry header: name [brackets] (parens)
        entry_name, bracket_value, paren_value = parse_entry_header(before_brace)
        entry_start_line = line_num + 1
        
        # Check if the closing brace is on the same line (single-line entry)
        if '}' in after_brace:
            brace_pos = after_brace.index('}')
            body_content = after_brace[:brace_pos].strip()
            after_closing = after_brace[brace_pos + 1:].strip()
            
            if after_closing:
                errors.append(f"Line {line_num + 1}: Unexpected content after closing brace: {original_line.rstrip()}")
            
            # Create entry with single-line body
            body = [body_content] if body_content else []
            entry = FileEntry(
                name=entry_name,
                paren_value=paren_value,
                bracket_value=bracket_value,
                body=body,
                start_line=entry_start_line,
                end_line=line_num + 1
            )
            entries.append(entry)
            line_num += 1
            continue
        
        # Multi-line entry: read lines until we find a closing brace
        line_num += 1
        body_lines = []
        
        # Add any content after the opening brace on the first line
        if after_brace.strip():
            body_lines.append(after_brace)
        
        found_closing_brace = False
        while line_num < len(lines):
            original_line = lines[line_num]
            line = strip_comment(original_line)
            
            # Check if line contains a closing brace
            if '}' in line:
                brace_pos = line.index('}')
                body_lines.append(line[:brace_pos])
                after_brace = line[brace_pos + 1:].strip()
                
                if after_brace:
                    errors.append(f"Line {line_num + 1}: Unexpected content after closing brace: {original_line.rstrip()}")
                
                found_closing_brace = True
                entry_end_line = line_num + 1
                line_num += 1
                break
            
            # Check for opening brace before closing brace is found
            if '{' in line:
                errors.append(f"Line {line_num + 1}: Unexpected opening brace inside entry '{entry_name}': {original_line.rstrip()}")
            
            body_lines.append(line)
            line_num += 1
        
        if not found_closing_brace:
            errors.append(f"Entry '{entry_name}' starting at line {entry_start_line}: Missing closing brace")
            entry_end_line = line_num
        
        # Process line continuations in the body
        body_lines = continue_lines(body_lines)
        
        # Create the entry
        entry = FileEntry(
            name=entry_name,
            paren_value=paren_value,
            bracket_value=bracket_value,
            body=body_lines,
            start_line=entry_start_line,
            end_line=entry_end_line
        )
        entries.append(entry)
    
    return entries, errors


def parse_entry_header(header_text):
    """
    Parse the entry header to extract name, bracket value, and paren value.
    
    Format: name [bracket_value] (paren_value)
    Both bracket and paren values are optional and can appear in any order.
    
    Args:
        header_text: Text before the opening brace
        
    Returns:
        tuple: (name, bracket_value, paren_value)
    """
    # Extract square bracket content [...]
    bracket_match = re.search(r'\[([^\]]*)\]', header_text)
    bracket_value = bracket_match.group(1) if bracket_match else None
    
    # Remove bracket content from header
    if bracket_match:
        header_text = header_text[:bracket_match.start()] + header_text[bracket_match.end():]
    
    # Extract parentheses content (...)
    paren_match = re.search(r'\(([^)]*)\)', header_text)
    paren_value = paren_match.group(1) if paren_match else None
    
    # Remove paren content from header
    if paren_match:
        header_text = header_text[:paren_match.start()] + header_text[paren_match.end():]
    
    # What remains is the entry name
    name = header_text.strip()
    
    return name, bracket_value, paren_value


def find_entry_by_name(entries, name, case_sensitive=False):
    """
    Find an entry by name.
    
    Args:
        entries: List of FileEntry objects
        name: Entry name to search for
        case_sensitive: Whether to perform case-sensitive matching
        
    Returns:
        FileEntry or None if not found
    """
    if case_sensitive:
        for entry in entries:
            if entry.name == name:
                return entry
    else:
        name_lower = name.lower()
        for entry in entries:
            if entry.name.lower() == name_lower:
                return entry
    return None
