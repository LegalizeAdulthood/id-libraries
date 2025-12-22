_README { ; Anthony Hanmer 17/11/2002
  Angle 4 ; Here are the L-systems "DNA sequences" to ALL possible regular square
  Axiom f ; and triangular Hanmer Tiles from sizes 2 through 5.  To program a new
  f=f     ; tile, simply copy the required sequence, and switch on the desired "genes"
          ; (line segments) by changing g or G to f or F for each.  (Sequences for
          ; 6x6 and larger tiles surpass Fractint's 160-character line length limit
          ; for L-systems.)  There are many different ways of programming each 
          ; sequence; the main thing is that it covers the entire tile space
          ; evenly with no overlaps.  These are probably the most efficient
          ; DNA sequences for these tiles, though if one wished to, one could
          ; also program new tiles which might have no gs at all, and would
          ; thus be shorter in length.
          ; The IFS versions of these DNA sequences follow the same segment order
          ; as these L-systems versions.
          ; See HTiles.l for a complete description of the type and all
          ; items found so far.
          }

sq2DNA {  ; Anthony Hanmer 17/11/2002
  Angle 4 ; Key to all 2x2 Square HTs
  Axiom c9f+c47f+c12f+c14f
  f=G+g|g+G+G+g|g+G+G+g|g+G+G+g|g+G+GG
  g=gg
  }

sq3DNA {  ; Anthony Hanmer 17/11/2002
  Angle 4 ; Key to all 3x3 Square HTs
  Axiom c9f+c47f+c12f+c14f
  f=G+ggg|ggg+GG+G+ggg|ggg+GG+G+ggg|ggg+GG+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq4DNA {  ; Anthony Hanmer 17/11/2002
  Angle 4 ; Key to all 4x4 Square HTs
  Axiom c9f+c47f+c12f+c14f
  f=G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq5DNA {  ; Anthony Hanmer 17/11/2002
  Angle 4 ; Key to all 5x5 Square HTs
  Axiom c9f+c47f+c12f+c14f
  f=G+ggggg|ggggg+G+ggggg|ggggg+GGG+G+ggggg|ggggg+G+ggggg|ggggg+GGG+G+ggggg|ggggg+G+ggggg|ggggg+GGG+G+ggggg|ggggg+G+ggggg|ggggg+GGG+GGGGG
  g=ggggg
  }

sq6DNA {  ; Anthony Hanmer 22/5/2004
  Angle 4 ; Key to all 6x6 Square HTs
          ; NB This string is currently too long for Fractint!
  Axiom c9f+c47f+c12f+c14f
  f=G+gggggg|gggggg+G+gggggg|gggggg+G+ggg|ggg+GGG+G+gggggg|gggggg+G+gggggg|gggggg+G+ggg|ggg+GGG+G+gggggg|gggggg+G+gggggg|gggggg+G+ggg|ggg+GGG+G+gggggg|gggggg+G+gggggg|gggggg+G+ggg|ggg+GGG+GGGGGG
  g=gggggg
  }

sq6apDNA {; Anthony Hanmer 22/5/2004
  Angle 4 ; Key to all a-p 6x6 Square HTs
  Axiom c53f+g+c12f
  f=GGGGGG+G+gggggg|gggggg+G+gggggg|gggggg+G+ggg|ggg+GGG+GGGGGG+G+gggggg|gggggg+G+gggggg|gggggg+G+ggg|ggg+GGG+GGGGGG
  g=gggggg
  }

tr2DNA {  ; Anthony Hanmer 17/11/2002
  Angle 4 ; Key to all 2x2 Triangular HTs
  Axiom c9f++c12f++c14f
  f=G+g|g++G++G+g|g++G++G+g|g++G++GG
  g=gg
  }

tr3DNA {  ; Anthony Hanmer 17/11/2002
  Angle 4 ; Key to all 3x3 Triangular HTs
  Axiom c9f++c12f++c14f
  f=G+gg|gg++G+g|g++G++G+gg|gg++G+g|g++G++G+gg|gg++G+g|g++G++GGG
  g=ggg
  }

tr4DNA {  ; Anthony Hanmer 17/11/2002
  Angle 4 ; Key to all 4x4 Triangular HTs
  Axiom c9f++c12f++c14f
  f=G+ggg|ggg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gg|gg++G+g|g++G++GGGG
  g=gggg
  }

tr5DNA {  ; Anthony Hanmer 17/11/2002
  Angle 4 ; Key to all 5x5 Triangular HTs
  Axiom c9f++c12f++c14f
  f=G+gggg|gggg++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gggg|gggg++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gggg|gggg++G+ggg|ggg++G+gg|gg++G+g|g++G++GGGGG
  g=ggggg
  }

