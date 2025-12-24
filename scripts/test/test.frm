; Test formula file for testing all parsing variations
; This file tests various combinations of formula syntax

; Basic formula with no modifiers
SimpleFormula {
  z = pixel:
  z = z*z + pixel
  |z| <= 4
}

; Formula with symmetry in parentheses
WithParens (XAXIS) {
  z = pixel:
  z = z*z + pixel
  |z| <= 4
}

; Formula with brackets
WithBrackets [p1=1.0 p2=0.5] {
  z = pixel:
  z = z*z + p1 + p2
  |z| <= 4
}

; Formula with both parentheses and brackets
WithBoth (XAXIS) [p1=1.0] {
  z = pixel:
  z = z*z + p1
  |z| <= 4
}

; Maximum length name (18 characters as per Fractint spec)
EighteenCharName12(XAXIS) {
  z = pixel:
  z = z*z + pixel
  |z| <= 4
}

; Single-line formula
SingleLine { z = pixel: z = z*z + pixel, |z| <= 4 }

; Formula with line continuation
WithContinuation {
  z = pixel:
  z = z*z + pixel + \
      (1,2) + (3,4)
  |z| <= 4
}

; Formula with comments
WithComments {      ; This is a comment
  z = pixel:        ; Initialize z
  z = z*z + pixel   ; Iterate
  |z| <= 4 ; Bailout test
}
