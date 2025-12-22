_README {; Anthony Hanmer 2000-2003
  Angle 4; FORMAL DESCRIPTION
  Axiom f; A Hanmer Tile is a tile of a regular reptile in n dimensions.
  f=ff   ; It is filled with identical elements of n-1 dimensions.
         ; The number of such tiles required to fill the reptile is
         ; equal to the reptile's number of boundary elements.
         ; A Hanmer Set is the [infinite] set of all such tiles of a given reptile.
         ;
         ; These are all L-systems which tile a polygon: a square or
         ; equilateral triangle.  (Hexagonal types are not possible:
         ; hexagons are not self-tiling (reptiles) as squares and
         ; triangles are.)  So, putting 3 or 4 of them together fills the
         ; polygon completely.  (They're also a subset of Horizons.l.)
         ; The theory, discovered (not likely for the first time) on
         ; 9/9/2002, is: The number of L-system segments (f) needed to
         ; generate the tile is the square of the side length of the
         ; tile in 1st iteration (also measured in fs).  So, for all
         ; triangular tiles of side length 3 in 1st iteration, 9 fs are
         ; needed.  The type is named Hanmer Tiles, after me.
         ; VARIATIONS
         ; The simplest forms of these tiles have the baseline fs all on the
         ; same line, and interior fs all double-sided and contiguous.
         ; However, crossing of the 3 or 4 tiles making up each triangle
         ; or square is allowed at mathematically infinitesimal points.
         ; Use of g or discontinuous lines is also allowed, resulting in
         ; gaskets or dusts:  an extra line, g=g..., must be added, with the
         ; number of gs equal to the length of a side in in 1st iteration.
         ; Further variations have the baseline fs scattered around the edge;
         ; and dusts which are space-filling for each colour (though they
         ; do not overlap in all 3 or 4 colours) are also possible.
         ; (Also, maximum angle is angle of symmetry: 90 degrees
         ; for square types, 120 degrees for triangular types, etc.)
         ; The set is infinite, as one climbs up from sides of length 2.
         ; Squares are named sq20001, sq20002, sq30001, etc; triangles are
         ; named tr20001, tr20002, tr30001, etc - for side length.
         ; Unique contiguous tiles are starred* to distinguish them from
         ; variants or tiles of other types found in this LS file.  Dusts
         ; are marked with a # symbol, and are also unique.  Space-filling
         ; (sf) items (connected or dusts) are marked with a ^ symbol,
         ; and each also has its own unique set of colouring variations.
         ; Eventually, I realised that one could differentiate edge from
         ; interior elements using upper- and lower-case letters Ff and Gg.
         ; Special items are marked with a ~ symbol, and other variations
         ; are marked with letters.  (See HTGenes.l for a set of "genes"
         ; to program ALL possible variations of HTiles in sizes 2-5.)
         ; Unknowns:  calculation (as opposed to discovery) of how many
         ; different tiles exist in either category (triangles & squares)
         ; at each length of side (2, 3, 4, etc), including dusts.  Number
         ; of tiles in either category which are the same for any side
         ; length.
         ; Totals:  Tr2 - 22
         ;          Tr2a- 2
         ;          Tr3 - 416
         ;          Tr3a- 25
         ;          Tr4 - 205
         ;          Tr4a- 
         ;          Tr5 - 47
         ;          Tr5a- 
         ;          Sq2 - 73
         ;          Sq2a- 17
         ;          Sq3 - 636
         ;          Sq3a- 721
         ;          Sq4 - 1688
         ;          Sq4a- 480
         ;          Sq5 - 1220
         ;          Sq5a- 31
         ;          Sq6 - 4725  
         ;   Approx. TL - 10308 as of 3/6/2004
         }

sq40001* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; And now, the 1st 4x4 square HTile!
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+ff
  }

sq40001a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+f+f|f+f-f|f+ff+f+f+f|f-f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40001b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+f+f|f+f-f|f+ff+f+f+f|f-f+ff+gggg+gggg
  g=gggg
  }

sq40001c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+f+f|f+f-f|f+ff+f+f+f|f-f+ff+gggg
  g=gggg
  }

sq40002* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 2nd 4x4 square HTile!
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+f+f|f+f
  }

sq40002a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+ff+f+f|f+f|f+ff|ff+f+f+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40002b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+ff+f+f|f+f|f+ff|ff+f+f+f|f+f+gggg+gggg
  g=gggg
  }

sq40002c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+ff+f+f|f+f|f+ff|ff+f+f+f|f+f+gggg
  g=gggg
  }

sq40003* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 3rd 4x4 square HTile!
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f; (See 8914)
  f=f+fff|f+f|ff|f-f-f|f-f+fff
  }

sq40003a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|f+f|ff|f-f-f|f-f+fff+gggg+gggg+gggg
  g=gggg
  }

sq40003b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|f+f|ff|f-f-f|f-f+fff+gggg+gggg
  g=gggg
  }

sq40003c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|f+f|ff|f-f-f|f-f+fff+gggg
  g=gggg
  }

sq40004* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 4th 4x4 square HTile!
  Axiom c53f+c2f+c12f+c14f
  f=f+ffff|ff-f|ff|f+ff+fff
  }

sq40005* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 5th 4x4 square HTile!
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f+f|f-f-f|f-f|f-f+f+f|f+ff
  }

sq40005a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+f-f+f|f-f-f|f-f|f-f+f+f|f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40005b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+f-f+f|f-f-f|f-f|f-f+f+f|f+ff+gggg+gggg
  g=gggg
  }

sq40005c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+f-f+f|f-f-f|f-f|f-f+f+f|f+ff+gggg
  g=gggg
  }

sq40006* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 6th 4x4 square HTile!
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+f+ff|ff+ff
  }

sq40006a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|ff-f|f-f+f+ff|ff+ff+gggg+gggg+gggg
  g=gggg
  }

sq40006b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|ff-f|f-f+f+ff|ff+ff+gggg+gggg
  g=gggg
  }

sq40006c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|ff-f|f-f+f+ff|ff+ff+gggg
  g=gggg
  }

sq40007* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 7th 4x4 square HTile!
  Axiom c53f+c2f+c12f+c14f
  f=f+ffff|ffff+f+ff|ff+ff
  }

sq40008* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 8th 4x4 square HTile!
  Axiom c53f+c2f+c12f+c14f
  f=f+ffff|ff+f|f+ff+f+f|f+ff
  }

sq40009* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 9th 4x4 square HTile
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+ff|ff+f|f+ff|ff+f+ff
  }

sq40009a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+ff+f+ff|ff+f|f+ff|ff+f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40009b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+ff+f+ff|ff+f|f+ff|ff+f+ff+gggg+gggg
  g=gggg
  }

sq40009c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+ff+f+ff|ff+f|f+ff|ff+f+ff+gggg
  g=gggg
  }

sq40009r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=GG|FF|GG+f+ff|ff+f|f+ff|ff+f+GG|FF|GG
  g=gggg
  }

sq40010* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 10th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f; See 8978
  f=ff+f+f+f|f-f+f|f+f-f|f+f+f+ff
  ; (Perfectly regular, but still a member)
  }

sq40010k { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 10th 4x4 square HTile
  Axiom f ; Colour 1
  f=>1ff+f+f+f|f-f+f|f+f-f|f+f+f+f<1f
  }

sq40011* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 11th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f+f|f+f-f|f-f+f+f|f+ff
  }

sq40011a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|f+f|f+f-f|f-f+f+f|f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40011b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|f+f|f+f-f|f-f+f+f|f+ff+gggg+gggg
  g=gggg
  }

sq40011c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|f+f|f+f-f|f-f+f+f|f+ff+gggg
  g=gggg
  }

sq40012* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 12th 4x4 square HTile
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+ff|ff+f+ff|ff+f
  }

sq40012r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+ff|ff+G|F|G+ff|ff+G|F|G+ff|ff+G|F|G
  g=gggg
  }

sq40013* { ; Anthony Hanmer 12/9/2002
  Angle 4 ; 13th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|f-f-f|ff+f|f-f+f+fff
  }

sq40013a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff+f|f-f-f|ff+f|f-f+f+fff+gggg+gggg+gggg
  g=gggg
  }

sq40013b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff+f|f-f-f|ff+f|f-f+f+fff+gggg+gggg
  g=gggg
  }

sq40013c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff+f|f-f-f|ff+f|f-f+f+fff+gggg
  g=gggg
  }

sq40014* { ; Anthony Hanmer 12/9/2002
  Angle 4 ; 14th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|ff|f+f-f|ff|f+f+fff
  }

sq40014a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff+f|ff|f+f-f|ff|f+f+fff+gggg+gggg+gggg
  g=gggg
  }

sq40014b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff+f|ff|f+f-f|ff|f+f+fff+gggg+gggg
  g=gggg
  }

sq40014c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff+f|ff|f+f-f|ff|f+f+fff+gggg
  g=gggg
  }

sq40015* { ; Anthony Hanmer 12/9/2002
  Angle 4 ; 15th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|fff+f+ff|ff+f+f|f+f
  }

sq40015a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|fff+f+ff|ff+f+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40015b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|fff+f+ff|ff+f+f|f+f+gggg+gggg
  g=gggg
  }

sq40015c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|fff+f+ff|ff+f+f|f+f+gggg
  g=gggg
  }

sq40016* { ; Anthony Hanmer 12/9/2002
  Angle 4 ; 16th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f+f+f|ff|f+f+f+ff+f|f+f
  }

sq40016a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff|f+f+f|ff|f+f+f+ff+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40016b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff|f+f+f|ff|f+f+f+ff+f|f+f+gggg+gggg
  g=gggg
  }

sq40016c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff|f+f+f|ff|f+f+f+ff+f|f+f+gggg
  g=gggg
  }

sq40017* { ; Anthony Hanmer 18/9/2002
  Angle 4 ; 17th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|ff|f+ff+ff+ff|ff+f
  }

sq40018* { ; Anthony Hanmer 18/9/2002
  Angle 4 ; 18th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|f-ff+ff+ff+f|f-ff+f
  }

sq40018a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff+f|f-ff+ff+ff+f|f-ff+f+gggg+gggg+gggg
  g=gggg
  }

sq40018b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff+f|f-ff+ff+ff+f|f-ff+f+gggg+gggg
  g=gggg
  }

sq40018c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff+f|f-ff+ff+ff+f|f-ff+f+gggg
  g=gggg
  }

sq40019* { ; Anthony Hanmer 18/9/2002
  Angle 4 ; 19th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+ff+f+f|f+f+ff|ff+f
  }

sq40019a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff-f|f+ff+f+f|f+f+ff|ff+f+gggg+gggg+gggg
  g=gggg
  }

sq40019b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff-f|f+ff+f+f|f+f+ff|ff+f+gggg+gggg
  g=gggg
  }

sq40019c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff-f|f+ff+f+f|f+f+ff|ff+f+gggg
  g=gggg
  }

sq40020* { ; Anthony Hanmer 18/9/2002
  Angle 4 ; 20th 4x4 square HTile
  ; One of my VERY best HTs
  ; Seems to contain a 180-degree symmetrical half,
  ; and 2 quarters which make this same shape together...
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f-f|ff|f+ff+ff+f|f+f
  }

sq40020a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|f-f|ff|f+ff+ff+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40020b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|f-f|ff|f+ff+ff+f|f+f+gggg+gggg
  g=gggg
  }

sq40020c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|f-f|ff|f+ff+ff+f|f+f+gggg
  g=gggg
  }

sq40021* { ; Anthony Hanmer 19/9/2002
  Angle 4 ; 21st 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f-f-f|f+f+f-f+f+f-f|f+f+f
  }

sq40021a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+ff+f+f-f-f|f+f+f-f+f+f-f|f+f+f+gggg+gggg+gggg
  g=gggg
  }

sq40021b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+ff+f+f-f-f|f+f+f-f+f+f-f|f+f+f+gggg+gggg
  g=gggg
  }

sq40021c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+ff+f+f-f-f|f+f+f-f+f+f-f|f+f+f+gggg
  g=gggg
  }

sq40022* { ; Anthony Hanmer 19/9/2002
  Angle 4 ; 22nd 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f-f|f+f+f|ff+f+f-f|f+f+f
  }

sq40022a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+ff+f+f-f|f+f+f|ff+f+f-f|f+f+f+gggg+gggg+gggg
  g=gggg
  }

sq40022b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+ff+f+f-f|f+f+f|ff+f+f-f|f+f+f+gggg+gggg
  g=gggg
  }

sq40022c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+ff+f+f-f|f+f+f|ff+f+f-f|f+f+f+gggg
  g=gggg
  }

sq40023* { ; Anthony Hanmer 19/9/2002
  Angle 4 ; 23rd 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f+f|f+ff+f+f|f+f+f|f+f
  }

sq40023a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|f+f|f+ff+f+f|f+f+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40023b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|f+f|f+ff+f+f|f+f+f|f+f+gggg+gggg
  g=gggg
  }

sq40023c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|f+f|f+ff+f+f|f+f+f|f+f+gggg
  g=gggg
  }

sq40024* { ; Anthony Hanmer 19/9/2002
  Angle 4 ; 24th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|ff|f+f+f|f+f+ff+f|f+f
  }

sq40024a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff+f|ff|f+f+f|f+f+ff+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40024b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff+f|ff|f+f+f|f+f+ff+f|f+f+gggg+gggg
  g=gggg
  }

sq40024c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff+f|ff|f+f+f|f+f+ff+f|f+f+gggg
  g=gggg
  }

sq40025# { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 25th 4x4 square HTile, 1st dust
  Axiom c53f+c2f+c12f+c14f
  ; One of my VERY best HTs
  f=f+fg+f|ff|f+g-f|fff|ff+f+fff
  g=gggg; THIS allows "tile dusts"!
  ; (N of gs equalling g is n of side units
  ; in 1st iteration)
  }

sq40025a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fg+f|ff|f+g-f|fff|ff+f+fff+gggg+gggg+gggg
  g=gggg
  }

sq40025b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fg+f|ff|f+g-f|fff|ff+f+fff+gggg+gggg
  g=gggg
  }

sq40025c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fg+f|ff|f+g-f|fff|ff+f+fff+gggg
  g=gggg
  }

sq40026# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 26th 4x4 square HTile, 2nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf-f-f|f+f+fgf+f+f|f+f+f|f+f
  g=gggg
  }

sq40026a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fgf-f-f|f+f+fgf+f+f|f+f+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40026b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fgf-f-f|f+f+fgf+f+f|f+f+f|f+f+gggg+gggg
  g=gggg
  }

sq40026c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fgf-f-f|f+f+fgf+f+f|f+f+f|f+f+gggg
  g=gggg
  }

sq40027# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 27th 4x4 square HTile, 3rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf-f-f+g+g-f|f+g+f|f+g+f|f-g+g-f+f+fgg+fff
  g=gggg
  }

sq40028# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 28th 4x4 square HTile, 4th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggff|f+f-f|ff|f+g+f|f-gf+fgg+fff
  g=gggg
  }

sq40029# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 29th 4x4 square HTile, 5th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+g+f|f+f+f|ff-f|f+f+fgg+fff
  g=gggg
  }

sq40029a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+g+f|f+g+f|f+f+f|ff-f|f+f+fgg+fff+gggg+gggg+gggg
  g=gggg
  }

sq40029b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+g+f|f+g+f|f+f+f|ff-f|f+f+fgg+fff+gggg+gggg
  g=gggg
  }

sq40029c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+g+f|f+g+f|f+f+f|ff-f|f+f+fgg+fff+gggg
  g=gggg
  }

sq40030# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 30th 4x4 square HTile, 6th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+ff|ff+f+fgg+ff|ff-ggf+f
  g=gggg
  }

sq40030a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+f|f+f+ff|ff+f+fgg+ff|ff-ggf+f+gggg+gggg+gggg
  g=gggg
  }

sq40030b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+f|f+f+ff|ff+f+fgg+ff|ff-ggf+f+gggg+gggg
  g=gggg
  }

sq40030r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+f|f+G|F|G+ff|ff+G|F|G+fgg+ff|ff-ggf+G|F|G
  g=gggg
  }

sq40031# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 31st 4x4 square HTile, 7th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+ff|ff+f+fgf+fg|gf-fgf+f
  g=gggg
  }

sq40031a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+f|f+f+ff|ff+f+fgf+fg|gf-fgf+f+gggg+gggg+gggg
  g=gggg
  }

sq40031b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+f|f+f+ff|ff+f+fgf+fg|gf-fgf+f+gggg+gggg
  g=gggg
  }

sq40031c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+f|f+f+ff|ff+f+fgf+fg|gf-fgf+f+gggg
  g=gggg
  }

sq40032# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 32nd 4x4 square HTile, 8th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+f|f+f+fgg+f+f|f+f|ff-ggf+f
  g=gggg
  }

sq40032a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+f|f+f+f|f+f+fgg+f+f|f+f|ff-ggf+f+gggg+gggg+gggg
  g=gggg
  }

sq40032b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+f|f+f+f|f+f+fgg+f+f|f+f|ff-ggf+f+gggg+gggg
  g=gggg
  }

sq40032r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+f|f+G|F|G+f|f+G|F|G+fgg+f+f|f+f|ff-ggf+G|F|G
  g=gggg
  }

sq40033# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 33rd 4x4 square HTile, 9th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|f+f+fgg+f+f|f+g|gf-ggf+f
  g=gggg
  }

sq40034# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 34th 4x4 square HTile, 10th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+fg+f|f-gf+f+fgg+ff|ff-ggf+f
  g=gggg
  }

sq40035# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 35th 4x4 square HTile, 11th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+fg+f|f-gf+f+ffg+gf|fg-gff+f
  g=gggg
  }

sq40036# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 36th 4x4 square HTile, 12th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+fg+f|f-gf+f+f+f|f+gg+fg|gf-ggf+f
  g=gggg
  }

sq40037# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 37th 4x4 square HTile, 13th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+fg+f-f|f+f-gf+f+fgf|fgf+f
  g=gggg
  }

sq40038# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 38th 4x4 square HTile, 14th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+fg+f-f-f|f+f+f-gf+f+f|f+f
  g=gggg
  }

sq40039# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 39th 4x4 square HTile, 15th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ffg-gf|fg+g+f|f+ff+f+f|f+f+f|f+f
  g=gggg
  }

sq40040# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 40th 4x4 square HTile, 16th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gfff|fffg+f+ggff|ffgg+f+gggf|fggg+f
  g=gggg
  }

sq40041# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 41st 4x4 square HTile, 17th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gfff|ff+f|f+fg+f+gggf|fggg+f+gggf|fggg+f
  g=gggg
  }

sq40042# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 42nd 4x4 square HTile, 18th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gfff|ff+gf|fg+fg+f+gggf|fggg+f+gggf|fggg+f
  g=gggg
  }

sq40043# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 43rd 4x4 square HTile, 19th dust
  Axiom c53f+c2f+c12f+c14f; Perfectly regular
  f=fff+g+fff-g-ff|ff-g-f|f+gg+fff-g+f
  g=gggg
  }

sq40043k { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 43rd 4x4 square HTile, 19th dust
  Axiom c53f+c2f+c12f+c14f; Perfectly regular
  f=>1fff+g+fff-g-ff|ff-g-f|f+gg+fff-g+<1f; Colour 1
  g=gggg
  }

sq40044# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 44th 4x4 square HTile, 20th dust
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+f-f|f-ff-g-f|f-g-f|f+gg+fff-g+f
  g=gggg
  }

sq40045# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 45th 4x4 square HTile, 21st dust
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+f-gf|fg-ff-g-f|f-g-f|f+gg+fff-g+f
  g=gggg
  }

sq40046# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 46th 4x4 square HTile, 22nd dust
  ; One of my best HTs
  ; The Sq4 a-p HTs follow the following pattern:
  ; to 40908 - a few miscellaneous a-ps, scattered
  ; (a & c included with these);
  ; 41082-41131 - exterior variations on these;
  ; 41132-41273 - various new a-p tiles, internally related;
  ; 41274- - exterior variations on these;
  ; 4 - vertical versions of all the above.
  Axiom c53f+g+c12f
  ; (Axiom note:  see Sq30006) 
  f=fff+g+f-g-f|f+g-ff-g-f|f-g-f|f+gg+fff-g+f
  g=gggg
  }

sq40046a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+g+c12f
  f=gggg+fff+g+f-g-f|f+g-ff-g-f|f-g-f|f+gg+fff-g+f+gggg+gggg+gggg
  g=gggg
  }

sq40046c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+g+c12f
  f=gggg+gggg+gggg+fff+g+f-g-f|f+g-ff-g-f|f-g-f|f+gg+fff-g+f+gggg
  g=gggg
  }

sq40047# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 47th 4x4 square HTile, 23rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ffff|ff+gff|ffg+ff+fff
  g=gggg
  }

sq40048# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 48th 4x4 square HTile, 24th dust
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+gfgf|fgfg+f+gfgf|fgfg+f+gfgf|fgfg+f
  g=gggg
  }

sq40048r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gfgf|fgfg+G|F|G+gfgf|fgfg+G|F|G+gfgf|fgfg+G|F|G
  g=gggg
  }

sq40049# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 49th 4x4 square HTile, 25th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gfg+f|f-g-f|f-f-f|f-g+f+gf|fg+f+gf|fg+f
  g=gggg
  }

sq40050# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 50th 4x4 square HTile, 26th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ffff|ff-f|fgf|fg+ff+fff
  g=gggg
  }

sq40051# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 51st 4x4 square HTile, 27th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggff|f-f|ff|f+f-f|ff|f+gg+fff
  g=gggg
  }

sq40052# { ; Anthony Hanmer 7/10/2002
  Angle 4 ; 52nd 4x4 square HTile, 28th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggff|f-f|ff|f+fgg+f+ggff|ffgg+ff
  g=gggg
  }

sq40053# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 53rd 4x4 square HTile, 29th dust
  ; One of my best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|f-f|f-g+f+ff|ff+f+gf|f+f|f+g+f
  g=gggg
  }

sq40053r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gf|f-f|f-g+G|F|G+ff|ff+G|F|G+gf|f+f|f+g+G|F|G
  g=gggg
  }

sq40054# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 54th 4x4 square HTile, 30th dust
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|f-f|f-g+f+ggff|ffgg+f+gf|f+f|f+g+f
  g=gggg
  }

sq40054r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gf|f-f|f-g+G|F|G+ggff|ffgg+G|F|G+gf|f+f|f+g+G|F|G
  g=gggg
  }

sq40055# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 55th 4x4 square HTile, 31st dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|f-f|f-g+f+fgf|fgf+f+gf|f+f|f+g+f
  g=gggg
  }

sq40055a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+gf|f-f|f-g+f+fgf|fgf+f+gf|f+f|f+g+f+gggg+gggg+gggg
  g=gggg
  }

sq40055b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+gf|f-f|f-g+f+fgf|fgf+f+gf|f+f|f+g+f+gggg+gggg
  g=gggg
  }

sq40055r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gf|f-f|f-g+G|F|G+fgf|fgf+G|F|G+gf|f+f|f+g+G|F|G
  g=gggg
  }

sq40056# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 56th 4x4 square HTile, 32nd dust
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|f-f|f-g+f+gfgf|fgfg+f+gf|f+f|f+g+f
  g=gggg
  }

sq40056r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gf|f-f|f-g+G|F|G+gfgf|fgfg+G|F|G+gf|f+f|f+g+G|F|G
  g=gggg
  }

sq40057# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 57th 4x4 square HTile, 33rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|f+f|f+ggg+f+ff|ff+f+gf|f+f|f+g+f
  g=gggg
  }

sq40058# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 58th 4x4 square HTile, 34th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|f+f|f+ggg+f+ggff|ffgg+f+gf|f+f|f+g+f
  g=gggg
  }

sq40059# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 59th 4x4 square HTile, 35th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|f+f|f+ggg+f+fgf|fgf+f+gf|f+f|f+g+f
  g=gggg
  }

sq40060# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 60th 4x4 square HTile, 36th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|f+f|f+ggg+f+gfgf|fgfg+f+gf|f+f|f+g+f
  g=gggg
  }

sq40061# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 61st 4x4 square HTile, 37th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f-f|ff|f+ff+ff+ggg-f|f+ggg+f
  g=gggg
  }

sq40062# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 62nd 4x4 square HTile, 38th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|f-f|f-ggg+f+f+f-f-f|f+f+f-f+ff
  g=gggg
  }

sq40062a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+gggf|f-f|f-ggg+f+f+f-f-f|f+f+f-f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40062b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+gggf|f-f|f-ggg+f+f+f-f-f|f+f+f-f+ff+gggg+gggg
  g=gggg
  }

sq40062c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+gggf|f-f|f-ggg+f+f+f-f-f|f+f+f-f+ff+gggg
  g=gggg
  }

sq40063# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 63rd 4x4 square HTile, 39th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f-f-f|f+f+f-f+f+gggf|f+f|f+ggg+f
  g=gggg
  }

sq40064# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 64th 4x4 square HTile, 40th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ggg+f|fggf|fgg+ggg+f+f+f-f-f|f+f+f-f+ff
  g=gggg
  }

sq40064a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ggg+f|fggf|fgg+ggg+f+f+f-f-f|f+f+f-f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40064b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ggg+f|fggf|fgg+ggg+f+f+f-f-f|f+f+f-f+ff+gggg+gggg
  g=gggg
  }

sq40064c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ggg+f|fggf|fgg+ggg+f+f+f-f-f|f+f+f-f+ff+gggg
  g=gggg
  }

sq40065# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 65th 4x4 square HTile, 41st dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|fggg+f+f+f-f-f|f+f+f-f+f+gggf|fggg+f
  g=gggg
  }

sq40066# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 66th 4x4 square HTile, 42nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ggg+f|f-ggg+f+f+f-f-f|f+f+f-f+f+f|f+f
  g=gggg
  }

sq40066a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ggg+f|f-ggg+f+f+f-f-f|f+f+f-f+f+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40066b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ggg+f|f-ggg+f+f+f-f-f|f+f+f-f+f+f|f+f+gggg+gggg
  g=gggg
  }

sq40066c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ggg+f|f-ggg+f+f+f-f-f|f+f+f-f+f+f|f+f+gggg
  g=gggg
  }

sq40067# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 67th 4x4 square HTile, 43rd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|fggg+f+f+f-f-f|f+f+f-f+f+g-f|f+g+f
  g=gggg
  }

sq40068# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 68th 4x4 square HTile, 44th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f-f-f|f+f+f-f+f+fggf|fggf+f
  g=gggg
  }

sq40069# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 69th 4x4 square HTile, 45th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f-f-f|f+f+f-f+f+ggg-f|f+gg+f|f+g+f
  g=gggg
  }

sq40070# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 70th 4x4 square HTile, 46th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fggf|fggf+f+f+f-f-f|f+f+f-f+ff
  g=gggg
  }

sq40071# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 71st 4x4 square HTile, 47th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+f+f-f-f|f+f+f-f+f+ggg-f|f+ggg+f
  g=gggg
  }

sq40072# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 72nd 4x4 square HTile, 48th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+ff|f+fg+f|f-g+f|f+f+f-f+ff
  g=gggg
  }

sq40073# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 73rd 4x4 square HTile, 49th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f-g+f+f+f-f-f|f+f+f-f+f+gggf|fggg+f
  g=gggg
  }

sq40074# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 74th 4x4 square HTile, 50th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f-f|ff|f+fg+ff+gggf|f+f|f+ggg+f
  g=gggg
  }

sq40075# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 75th 4x4 square HTile, 51st dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f-f|ff|f+fg+ff+ggg-f|f+gg+f|f+g+f
  g=gggg
  }

sq40076# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 76th 4x4 square HTile, 52nd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f+f|f+f-f|f-f+ff+gg-f|f+gg+f
  g=gggg
  }

sq40077# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 77th 4x4 square HTile, 53rd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f+f|f+f-f|f-f+f+gggf|fggg+ff
  g=gggg
  }

sq40078# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 78th 4x4 square HTile, 54th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f+f|f+f-f|f-g+ff+gg-f|f+g+f|f+g+f
  g=gggg
  }

sq40079# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 79th 4x4 square HTile, 55th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f+f|f+f-f|f-g+f+gggf|fggg+f+gggf|fggg+f
  g=gggg
  }

sq40080# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 80th 4x4 square HTile, 56th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f+f|f+f-f|f-g+f+f|f+f+gggf|fggg+f
  g=gggg
  }

sq40081# { ; Anthony Hanmer 8/10/2002
  Angle 4 ; 81st 4x4 square HTile, 57th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f+f|f+f-f|f-g+f+f|f+f+g-f|f+g+f
  g=gggg
  }

sq40082# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 82nd 4x4 square HTile, 58th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-gf|fg+f-f|ff|f+f+f+gggf|fggg+ff
  g=gggg
  }

sq40083# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 83rd 4x4 square HTile, 59th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-gff|ffg+f-f|ff|f+f+fff
  g=gggg
  }

sq40084# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 84th 4x4 square HTile, 60th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-ggf|fgg+f-f|ff|f+f+f+ggf|fgg+ff
  g=gggg
  }

sq40085# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 85th 4x4 square HTile, 61st dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+ggff|ffgg+ff
  g=gggg
  }

sq40086# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 86th 4x4 square HTile, 62nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+f-f|ff|f+f+f+gggf|fggg+ff
  g=gggg
  }

sq40087# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 87th 4x4 square HTile, 63rd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-fgf|fgf+f-f|ff|f+f+fff
  g=gggg
  }

sq40088# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 88th 4x4 square HTile, 64th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+gfgf|fgfg+ff
  g=gggg
  }

sq40089# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 89th 4x4 square HTile, 65th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-gf|fg+f-f|ff|f+f+f+f|f+ff
  g=gggg
  }

sq40089a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff-gf|fg+f-f|ff|f+f+f+f|f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40089b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff-gf|fg+f-f|ff|f+f+f+f|f+ff+gggg+gggg
  g=gggg
  }

sq40089c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff-gf|fg+f-f|ff|f+f+f+f|f+ff+gggg
  g=gggg
  }

sq40090# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 90th 4x4 square HTile, 66th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fgf|fgf+f+f-f|f+f+f
  g=gggg
  }

sq40090a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+g-ff|ff+g+f+fgf|fgf+f+f-f|f+f+f+gggg+gggg+gggg
  g=gggg
  }

sq40090b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+g-ff|ff+g+f+fgf|fgf+f+f-f|f+f+f+gggg+gggg
  g=gggg
  }

sq40090c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+g-ff|ff+g+f+fgf|fgf+f+f-f|f+f+f+gggg
  g=gggg
  }

sq40091# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 91st 4x4 square HTile, 67th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gfgf|fgfg+f+f-f|f+f+f
  g=gggg
  }

sq40092# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 92nd 4x4 square HTile, 68th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fg+f|f-gf+f+f-f|f+f+f
  g=gggg
  }

sq40092a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+g-ff|ff+g+f+fg+f|f-gf+f+f-f|f+f+f+gggg+gggg+gggg
  g=gggg
  }

sq40092b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+g-ff|ff+g+f+fg+f|f-gf+f+f-f|f+f+f+gggg+gggg
  g=gggg
  }

sq40092c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+g-ff|ff+g+f+fg+f|f-gf+f+f-f|f+f+f+gggg
  g=gggg
  }

sq40093# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 93rd 4x4 square HTile, 69th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fg-f|f+gf+f+f-f|f+f+f
  g=gggg
  }

sq40093a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+g-ff|ff+g+f+fg-f|f+gf+f+f-f|f+f+f+gggg+gggg+gggg
  g=gggg
  }

sq40093b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+g-ff|ff+g+f+fg-f|f+gf+f+f-f|f+f+f+gggg+gggg
  g=gggg
  }

sq40093c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+g-ff|ff+g+f+fg-f|f+gf+f+f-f|f+f+f+gggg
  g=gggg
  }

sq40094# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 94th 4x4 square HTile, 70th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg+ff|ff-gg+f+f-f|f+f+f
  g=gggg
  }

sq40095# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 95th 4x4 square HTile, 71st dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg+f|fgf|fg+gg+f+f-f|f+f+f
  g=gggg
  }

sq40096# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 96th 4x4 square HTile, 72nd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg-ff|ff+gg+f+f-f|f+f+f
  g=gggg
  }

sq40097# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 97th 4x4 square HTile, 73rd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg-f|fgf|fg-gg+f+f-f|f+f+f
  g=gggg
  }

sq40098# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 98th 4x4 square HTile, 74th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+ggff|ffgg+f+f-f|f+f+f
  g=gggg
  }

sq40099# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 99th 4x4 square HTile, 75th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fgf|fgf+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40100# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 100th 4x4 square HTile, 76th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gfgf|fgfg+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40101# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 101st 4x4 square HTile, 77th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fg+f|f-gf+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40102# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 102nd 4x4 square HTile, 78th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fg-f|f+gf+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40103# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 103rd 4x4 square HTile, 79th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg+ff|ff-gg+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40104# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 104th 4x4 square HTile, 80th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg+f|fgf|fg+gg+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40105# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 105th 4x4 square HTile, 81st dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg-ff|ff+gg+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40106# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 106th 4x4 square HTile, 82nd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg-f|fgf|fg-gg+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40107# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 107th 4x4 square HTile, 83rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+ggff|ffgg+f+ggg+ggf|f+f|f+gg-ggg+f
  g=gggg
  }

sq40108# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 108th 4x4 square HTile, 84th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fgf|fgf+f+gggf|f-gg-f|f+gg-ggg+f
  g=gggg
  }

sq40109# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 109th 4x4 square HTile, 85th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gfgf|fgfg+f+gggf|f-gg-f|f+gg-ggg+f
  g=gggg
  }

sq40110# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 110th 4x4 square HTile, 86th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fg+f|f-gf+f+gggf|f-gg-f|f+gg-ggg+f
  g=gggg
  }

sq40111# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 111th 4x4 square HTile, 87th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg+ff|ff-gg+f+gggf|f-gg-f|f+gg-ggg+f
  g=gggg
  }

sq40112# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 112th 4x4 square HTile, 88th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gg+f|fgf|fg+gg+f+gggf|f-gg-f|f+gg-ggg+f
  g=gggg
  }

sq40113# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 113th 4x4 square HTile, 89th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+ggff|ffgg+f+gggf|f-gg-f|f+gg-ggg+f
  g=gggg
  }

sq40114# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 114th 4x4 square HTile, 90th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fg+f|f-gf+f+gggf|f+f|f+ggg+f
  g=gggg
  }

sq40115# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 115th 4x4 square HTile, 91st dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fgf|fgf+f+ggg-f|fggf|fgg-ggg+f
  g=gggg
  }

sq40115r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+g-ff|ff+g+G|F|G+fgf|fgf+G|F|G+ggg-f|fggf|fgg-ggg+G|F|G
  g=gggg
  }

sq40116# { ; Anthony Hanmer 9/10/2002
  Angle 4 ; 116th 4x4 square HTile, 92nd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+gfgf|fgfg+f+ggg-f|fggf|fgg-ggg+f
  g=gggg
  }

sq40117# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 117th 4x4 square HTile, 93rd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+fg+f|f-gf+f+ggg-f|fggf|fgg-ggg+f
  g=gggg
  }

sq40118# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 118th 4x4 square HTile, 94th dust
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; (Axiom note:  see Sq30006)
  f=f+g-ff|ff+g+f+gg+ff|ff-gg+f+ggg-f|fggf|fgg-ggg+f
  g=gggg
  }

sq40118a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gggg+f+g-ff|ff+g+f+gg+ff|ff-gg+f+ggg-f|fggf|fgg-ggg+f+gggg+gggg+gggg
  g=gggg
  }

sq40118c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gggg+gggg+gggg+f+g-ff|ff+g+f+gg+ff|ff-gg+f+ggg-f|fggf|fgg-ggg+f+gggg
  g=gggg
  }

sq40119# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 119th 4x4 square HTile, 95th dust
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; (Axiom note:  see Sq30006)
  f=f+g-ff|ff+g+f+gg+f|fgf|fg+gg+f+ggg-f|fggf|fgg-ggg+f
  g=gggg
  }

sq40119a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gggg+f+g-ff|ff+g+f+gg+f|fgf|fg+gg+f+ggg-f|fggf|fgg-ggg+f+gggg+gggg+gggg
  g=gggg
  }

sq40119c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gggg+gggg+gggg+f+g-ff|ff+g+f+gg+f|fgf|fg+gg+f+ggg-f|fggf|fgg-ggg+f+gggg
  g=gggg
  }

sq40120# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 120th 4x4 square HTile, 96th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-ff|ff+g+f+ggff|ffgg+f+ggg-f|fggf|fgg-ggg+f
  g=gggg
  }

sq40121# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 121st 4x4 square HTile, 97th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+ff|ff+f+fgg+f|f-ggf+f
  g=gggg
  }

sq40122# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 122nd 4x4 square HTile, 98th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+ff|f-f|f-f+f+ggg-f|f+ggg+f
  g=gggg
  }

sq40123# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 123rd 4x4 square HTile, 99th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ffgf|fgff+f+ff|f-f|f-f+ff
  g=gggg
  }

sq40124# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 124th 4x4 square HTile, 100th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+ff|ff+f+ggg+f|ff|f+ggg+f
  g=gggg
  }

sq40125# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 125th 4x4 square HTile, 101st dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+ff|ff+f+ggg+fg-f|f+gf-ggg+f
  g=gggg
  }

sq40126# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 126th 4x4 square HTile, 102nd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+f-f|ff|f+f+f+gggf|fggg+ff
  g=gggg
  }

sq40127# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 127th 4x4 square HTile, 103rd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+f-f|ff|f+f+fg+gg-f|f+gg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40128# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 128th 4x4 square HTile, 104th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+ggff|ffgg+gg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40129# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 129th 4x4 square HTile, 105th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+fg+gg-f|ff|f-gg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40130# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 130th 4x4 square HTile, 106th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+ggf|fgg+g+gg-f|f+gg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40131# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 131st 4x4 square HTile, 107th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+gggf|fggg+f+gg+f|f-gg+f
  g=gggg
  }

sq40132# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 132nd 4x4 square HTile, 108th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+fgf|fgf+ff
  g=gggg
  }

sq40133# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 133rd 4x4 square HTile, 109th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+fg-f|f+gf+gg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40134# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 134th 4x4 square HTile, 110th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+gfgf|fgfg+ff
  g=gggg
  }

sq40135# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 135th 4x4 square HTile, 111th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+gf|fg+g+gg-f|f+gg+g+ggfg+gggg+gggf+gggg
  g=gggg
  }

sq40136# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 136th 4x4 square HTile, 112th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gff+f|f-f+f|ff|f-f-f|f-g+fff
  g=gggg
  }

sq40137# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 137th 4x4 square HTile, 113th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f+f|ff|f-f-f|f-g+ff+gggf|fggg+f
  g=gggg
  }

sq40138# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 138th 4x4 square HTile, 114th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f+f|ff|f-f-f|f-g+ff+g-f|f+g+f
  g=gggg
  }

sq40139# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 139th 4x4 square HTile, 115th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f+f|ff|f-ff+ff+ggg-f|f+ggg+f
  g=gggg
  }

sq40140# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 140th 4x4 square HTile, 116th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|ff|f+f-f|f-f+ff+gf|fg+f
  g=gggg
  }

sq40141# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 141st 4x4 square HTile, 117th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|ff|f+f-f|f-f+ff+ggg+f|f-ggg+f
  g=gggg
  }

sq40142# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 142nd 4x4 square HTile, 118th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f-f|f-f-f|f-f+f+gg-f|f+gg+ff
  g=gggg
  }

sq40143# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 143rd 4x4 square HTile, 119th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f-f|f-f-f|f-f+f+ggf|fgg+ff
  g=gggg
  }

sq40144# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 144th 4x4 square HTile, 120th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f+f|f+f-f|f-f+f+gggf|fggg+gg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40145# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 145th 4x4 square HTile, 121st dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f+f|f+f-f|f-f+fg+gg-f|f+gg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40146# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 146th 4x4 square HTile, 122nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|f+f|ff|f-g-f|f-f+f+g-f|f+g+ff
  g=gggg
  }

sq40147# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 147th 4x4 square HTile, 123rd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|f+f|ff|f-g-f|f-f+ff+ggf|fgg+f
  g=gggg
  }

sq40148# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 148th 4x4 square HTile, 124th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g-f|f+gf+f+f+f|f-f+f+ggf|fgg+f
  g=gggg
  }

sq40149# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 149th 4x4 square HTile, 125th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+ff+f+f+f|f-f+f+ggg-f|f+ggg+f
  g=gggg
  }

sq40150# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 150th 4x4 square HTile, 126th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+ff+f+f+f|f-f+f+ggg+gg-f|f+gg-ggg+f
  g=gggg
  }

sq40151# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 151st 4x4 square HTile, 127th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|fgg+f+ff|f+ff|ff+f+f+f|f+f
  g=gggg
  }

sq40152# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 152nd 4x4 square HTile, 128th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+ffg-f|f+gf+ff|ff+f+f+f|f+f
  g=gggg
  }

sq40153# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 153rd 4x4 square HTile, 129th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gg-f|f+gg+f+f+f|fff|ff+f+f+f|f+f+fggg+gggg+gggg+gggg
  g=gggg
  }

sq40154# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 154th 4x4 square HTile, 130th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gf+f+f|fff|ff-gf|fgf+f+f|f+f+fggg+gggg+gggg+gggg
  g=gggg
  }

sq40155# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 155th 4x4 square HTile, 131st dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gf+f+f|fff|f-g+f|f-g-f+f+f+f|f+f+fggg+gggg+gggg+gggg
  g=gggg
  }

sq40155a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gf+f+f|fff|f-g+f|f-g-f+f+f+f|f+f+fggg+gggg+gggg+gggg+gggg+gggg+gggg
  g=gggg
  }

sq40155b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gf+f+f|fff|f-g+f|f-g-f+f+f+f|f+f+fggg+gggg+gggg+gggg+gggg+gggg
  g=gggg
  }

sq40155c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+gf+f+f|fff|f-g+f|f-g-f+f+f+f|f+f+fggg+gggg+gggg+gggg+gggg
  g=gggg
  }

sq40156# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 156th 4x4 square HTile, 132nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gf+g+f|f+fgf|fgf+ff|ff+g+f+f|f+f+fggg+gggg+gggg+gggg
  g=gggg
  }

sq40157# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 157th 4x4 square HTile, 133rd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+f|f+f+gf|fg-f+ff|ff+g+f+f|f+f
  g=gggg
  }

sq40158# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 158th 4x4 square HTile, 134th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+f|f+f-gf|fg+f+ff|ff+g+f+f|f+f
  g=gggg
  }

sq40159# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 159th 4x4 square HTile, 135th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|fggg+f+f+f|f+f|f+ff|ff+f+ff
  g=gggg
  }

sq40160# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 160th 4x4 square HTile, 136th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+f+ggg-f|f+ggg+f
  g=gggg
  }

sq40161# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 161st 4x4 square HTile, 138th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+gf|fg+f+f+fgf|fgf+f
  g=gggg
  }

sq40161a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+ff+f+f|f+f|f+gf|fg+f+f+fgf|fgf+f+gggg+gggg+gggg
  g=gggg
  }

sq40161b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+ff+f+f|f+f|f+gf|fg+f+f+fgf|fgf+f+gggg+gggg
  g=gggg
  }

sq40161c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+ff+f+f|f+f|f+gf|fg+f+f+fgf|fgf+f+gggg
  g=gggg
  }

sq40162# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 162nd 4x4 square HTile, 139th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ggg-f|f+ggg+f+f+f|f+f|f+gf|fg+f+f+f|f+f
  g=gggg
  }

sq40163# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 163rd 4x4 square HTile, 140th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ggg+f|f-ggg+f+f+f|f+f|f+fg|gf+f+f+f|f+f
  g=gggg
  }

sq40163a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ggg+f|f-ggg+f+f+f|f+f|f+fg|gf+f+f+f|f+f+gggg+gggg+gggg
  g=gggg
  }

sq40163b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ggg+f|f-ggg+f+f+f|f+f|f+fg|gf+f+f+f|f+f+gggg+gggg
  g=gggg
  }

sq40163c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ggg+f|f-ggg+f+f+f|f+f|f+fg|gf+f+f+f|f+f+gggg
  g=gggg
  }

sq40164# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 164th 4x4 square HTile, 141st dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+fg|gf+f+f+fggf|fggf+f
  g=gggg
  }

sq40165# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 165th 4x4 square HTile, 142nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f+f|f-f-f|ff+f+f|f+f+ggg-f|f+ggg+f
  g=gggg
  }

sq40166# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 166th 4x4 square HTile, 143rd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|f-f+f+ff|ff+f+gf|fg+f
  g=gggg
  }

sq40167# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 167th 4x4 square HTile, 144th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|f-f+f+ff|ff+f+ggg+f|f-ggg+f
  g=gggg
  }

sq40168# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 168th 4x4 square HTile, 145th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|fg-f|f-f+f+ff|ff+f+ggf|fgg+f
  g=gggg
  }

sq40169# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 169th 4x4 square HTile, 146th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|fg-f|f-f+f+ff|ff+f+ggg+gf|fg-ggg+f
  g=gggg
  }

sq40170# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 170th 4x4 square HTile, 147th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|fff+f+ff|ff+f+ggg-f|f+ggg+f
  g=gggg
  }

sq40171# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 171st 4x4 square HTile, 148th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|ff-f|f-g+f+ff|ff+f+gggf|fggg+f
  g=gggg
  }

sq40172# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 172nd 4x4 square HTile, 149th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+f+gfgf|fgfg+gg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40173# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 173rd 4x4 square HTile, 150th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+f+gf|fg+f+gg-f|f+gg+f
  g=gggg
  }

sq40174# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 174th 4x4 square HTile, 151st dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+f+fgf|fgf+ff
  g=gggg
  }

sq40174a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|ff-f|f-f+f+fgf|fgf+ff+gggg+gggg+gggg
  g=gggg
  }

sq40174b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|ff-f|f-f+f+fgf|fgf+ff+gggg+gggg
  g=gggg
  }

sq40174c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|ff-f|f-f+f+fgf|fgf+ff+gggg
  g=gggg
  }

sq40175# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 175th 4x4 square HTile, 152nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+f+f|f+g+gg+f|f-gg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40175a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|ff-f|f-f+f+f|f+g+gg+f|f-gg+g+gggg+gggg+ggff+gggg+gggg+gggg+gggg
  g=gggg
  }

sq40175b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|ff-f|f-f+f+f|f+g+gg+f|f-gg+g+gggg+gggg+ggff+gggg+gggg+gggg
  g=gggg
  }

sq40175c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|ff-f|f-f+f+f|f+g+gg+f|f-gg+g+gggg+gggg+ggff+gggg+gggg
  g=gggg
  }

sq40176# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 176th 4x4 square HTile, 153rd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+gf|fg+f|f+ff|ff+f+f+ggg+f|f-ggg+f
  g=gggg
  }

sq40177# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 177th 4x4 square HTile, 154th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+g-gf|fg-f|fg+f|f+ff|ff+f+ff
  g=gggg
  }

sq40178# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 178th 4x4 square HTile, 155th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+ff|ff+gf|fg+ff|ff+f+ff
  g=gggg
  }

sq40178r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=GG|FF|GG+f+ff|ff+gf|fg+ff|ff+f+GG|FF|GG
  g=gggg
  }

sq40179# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 179th 4x4 square HTile, 156th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+ff|ff+g+f|f-g+ff|ff+f+ff
  g=gggg
  }

sq40180# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 180th 4x4 square HTile, 157th dust
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+ff|ff+fgf|fgf+ff|ff+g+ff
  g=gggg
  }

sq40181# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 181st 4x4 square HTile, 158th dust
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+ff|ff+f+gf|fg-f+ff|ff+g+ff
  g=gggg
  }

sq40182# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 182nd 4x4 square HTile, 159th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+f|f+f+f+ggg+ggf|fggf|f+ggg+f
  g=gggg
  }

sq40182r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=GG|FF|GG+f+f|f+f|f+f|f+f+G|F|G+ggg+ggf|fggf|f+ggg+G|F|G
  g=gggg
  }

sq40183# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 183rd 4x4 square HTile, 160th dust
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+ff|ff+gff|ffg+ff|ff+g+ff
  g=gggg
  }

sq40184# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 184th 4x4 square HTile, 161st dust
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+f|f+gff|ffg+f|f+g+f+ggg+ggf|fggf|f+ggg+f
  g=gggg
  }

sq40185# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 185th 4x4 square HTile, 162nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+g+f|f-g+f|f+f-f|f+f+f+g+ggg+f|f-ggg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40186# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 186th 4x4 square HTile, 163rd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f-ggf|fgg+f+f|f+f+ggf|fgg-f+f+ff
  g=gggg
  }

sq40187# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 187th 4x4 square HTile, 164th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f+f|f-f+gf|fg+f-f|f+f+f+ff
  g=gggg
  }

sq40187a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+ff+f+f+f|f-f+gf|fg+f-f|f+f+f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40187b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+ff+f+f+f|f-f+gf|fg+f-f|f+f+f+ff+gggg+gggg
  g=gggg
  }

sq40187r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=GG|FF|GG+f+f+f|f-f+gf|fg+f-f|f+f+f+GG|FF|GG
  g=gggg
  }

sq40188# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 188th 4x4 square HTile, 165th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f+f|f-f+g+f|f-g+f-f|f+f+f+ff
  g=gggg
  }

sq40188a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+ff+f+f+f|f-f+g+f|f-g+f-f|f+f+f+ff+gggg+gggg+gggg
  g=gggg
  }

sq40188b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+ff+f+f+f|f-f+g+f|f-g+f-f|f+f+f+ff+gggg+gggg
  g=gggg
  }

sq40188c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+ff+f+f+f|f-f+g+f|f-g+f-f|f+f+f+ff+gggg
  g=gggg
  }

sq40189# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 189th 4x4 square HTile, 166th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+f+f|f-f+gff|ffg+f-f|f+f+g+ff
  g=gggg
  }

sq40189r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=GG|FF|GG+g+f+f|f-f+gff|ffg+f-f|f+f+g+GG|FF|GG
  g=gggg
  }

sq40190# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 190th 4x4 square HTile, 167th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+gggf|f+f|f+ggg+f+ggff|ffgg+f+gggf|f-f|f-ggg+f
  g=gggg
  }

sq40190r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gggf|f+f|f+ggg+G|F|G+ggff|ffgg+G|F|G+gggf|f-f|f-ggg+G|F|G
  g=gggg
  }

sq40191# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 191st 4x4 square HTile, 168th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+ggf+f|f+f|f+f|f+fgg+f+f|f+f
  g=gggg
  }

sq40191r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+f|f+G|F|G+ggf+f|f+f|f+f|f+fgg+G|F|G+f|f+G|F|G
  g=gggg
  }

sq40192# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 192nd 4x4 square HTile, 169th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+gfg+f|f+f|f+f|f+gfg+f+f|f+f
  g=gggg
  }

sq40192r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+f|f+G|F|G+gfg+f|f+f|f+f|f+gfg+G|F|G+f|f+G|F|G
  g=gggg
  }

sq40193# { ; Anthony Hanmer 17/10/2002
  Angle 4 ; 193rd 4x4 square HTile, 170th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f+fgf+f|ff|f+fgf+g+f|f+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40194# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 194th 4x4 square HTile, 171st dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f+f|f+f-f|f-g+f+f|f+g+gggf|fggg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40195# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 195th 4x4 square HTile, 172nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f+f|f+f-f|f-g+f+f|f+g+g-f|f+g+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40196# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 196th 4x4 square HTile, 173rd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f+f|f+ff+f+f|f+f+ggg-f|f+ggg+f
  g=gggg
  }

sq40197# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 197th 4x4 square HTile, 174th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|f+f|f+g-f|f-f+f+f|f+f+ggf|fgg+f
  g=gggg
  }

sq40198# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 198th 4x4 square HTile, 175th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-gf|fg+f-f|f-f+f+f|f+f+gf|fg+f
  g=gggg
  }

sq40198a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  f=gggg+f+ff-gf|fg+f-f|f-f+f+f|f+f+gf|fg+f+gggg+gggg+gggg
  g=gggg
  }

sq40198b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff-gf|fg+f-f|f-f+f+f|f+f+gf|fg+f+gggg+gggg
  g=gggg
  }

sq40198c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff-gf|fg+f-f|f-f+f+f|f+f+gf|fg+f+gggg
  g=gggg
  }

sq40199# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 199th 4x4 square HTile, 176th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-gf|fg+f-f|f-f+f+f|f+g+ggg+f|f-ggg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40200# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 200th 4x4 square HTile, 177th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-g+f|f-g+f-f|f-f+f+f|f+f+gf|fg+f
  g=gggg
  }

sq40201# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 201st 4x4 square HTile, 178th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-g+f|f-g+f-f|f-f+f+f|f+f+ggg+f|f-ggg+f
  g=gggg
  }

sq40202# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 202nd 4x4 square HTile, 179th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+fgf|fgf+f+ff|ff+f
  g=gggg
  }

sq40202a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff|ff+f+fgf|fgf+f+ff|ff+f+gggg+gggg+gggg
  g=gggg
  }

sq40202b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff|ff+f+fgf|fgf+f+ff|ff+f+gggg+gggg
  g=gggg
  }

sq40202r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+ff|ff+G|F|G+fgf|fgf+G|F|G+ff|ff+G|F|G
  g=gggg
  }

sq40203# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 203rd 4x4 square HTile, 180th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+ff|ff+f+ffgf|fgff+f
  g=gggg
  }

sq40204# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 204th 4x4 square HTile, 181st dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+fgf|fgf+f+ffgf|fgff+f
  g=gggg
  }

sq40205# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 205th 4x4 square HTile, 182nd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gfgf|fgfg+f+ff|ff+f+gfgf|fgfg+f
  g=gggg
  }

sq40206# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 206th 4x4 square HTile, 183rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gfgf|fgfg+f+fgf|fgf+f+gfgf|fgfg+f
  g=gggg
  }

sq40207# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 207th 4x4 square HTile, 184th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gfgf|fgfg+f+gfgf|fgfg+g+gfgf|fgfg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40208# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 208th 4x4 square HTile, 184th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggff|ffgg+f+fgf|fgf+f+ggff|ffgg+f
  g=gggg
  }

sq40209# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 209th 4x4 square HTile, 185th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggff|ffgg+f+ff|ff+f+ggff|ffgg+f
  g=gggg
  }

sq40210# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 210th 4x4 square HTile, 186th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+fg+f|f-gf+f+ffgf|fgff+f
  g=gggg
  }

sq40211# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 211th 4x4 square HTile, 187th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gfgf|fgfg+f+fg+f|f-gf+f+gfgf|fgfg+f
  g=gggg
  }

sq40212# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 212th 4x4 square HTile, 188th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggff|ffgg+f+fg+f|f-gf+f+ggff|ffgg+f
  g=gggg
  }

sq40213# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 213th 4x4 square HTile, 189th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+f|fg+f+ff|ff+g+g-f|f-f|fg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40214# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 214th 4x4 square HTile, 190th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+f|fg+f+fgf|fgf+g+g-f|f-f|fg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40215# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 215th 4x4 square HTile, 191st dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+f|fg+f+ggff|ffgg+f+g-f|f-f|fg+f
  g=gggg
  }

sq40216# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 216th 4x4 square HTile, 192nd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+f|fg+f+gfgf|fgfg+f+g-f|f-f|fg+f
  g=gggg
  }

sq40217# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 217th 4x4 square HTile, 193rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+gfgf|fgfg+f+ff|ff+f
  g=gggg
  }

sq40218# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 218th 4x4 square HTile, 194th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+gfgf|fgfg+f+ffgf|fgff+f
  g=gggg
  }

sq40219# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 219th 4x4 square HTile, 195th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+ggff|ffgg+f+fgf|fgf+f+ggff|ffgg+g+gggg+fggf+gggg+gggg
  g=gggg
  }

sq40220# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 220th 4x4 square HTile, 196th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gg-f|f+gg+f+f+f|f-f+f+fgf|fg+f|f+f+f
  g=gggg
  }

sq40221# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 221st 4x4 square HTile, 197th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gg-f|f+gg+f+f+f|f-f+f+fgg+gf|fg-gg+f|f+f+f
  g=gggg
  }

sq40222# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 222nd 4x4 square HTile, 198th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf-f|f+fgg+f+ff|f+gf|fg+f+f+f|f+f
  g=gggg
  }

sq40223# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 223rd 4x4 square HTile, 199th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fg|g-f|ff|f+f+f+gf|fg+g+ggf|f+f|f+gg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40224# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 224th 4x4 square HTile, 200th dust...
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|f-f|ff|f+g+f+gf|fg+f+gggf|fg+f|f+gg+f
  g=gggg
  }

sq40225# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 225th 4x4 square HTile, 201st dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|f-f|ff|f+g+f+gf|fg+f+ggg+ggf|fgg-g+f|f+gg+f
  g=gggg
  }

sq40226# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 226th 4x4 square HTile, 202nd dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|ff|f+f+f+fg-f|f+gf+g+ggf|fgg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40227# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 227th 4x4 square HTile, 203rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|f-f|ff|f+g+f+fg-f|f+gf+f+gggf|fggg+f
  g=gggg
  }

sq40228# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 228th 4x4 square HTile, 204th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|f-f|ff|f+g+f+fg-f|f+gf+f+ggg+ggf|fgg-ggg+f
  g=gggg
  }

sq40229# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 229th 4x4 square HTile, 205th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|fg|g+f+f+fgf|fgf+g+ggg+f|f-ggg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40230# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 230th 4x4 square HTile, 206th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|fg|g+f+f+ggf|fgg+f+gg-f|f-g+f|f-ggg+f
  g=gggg
  }

sq40231# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 231st 4x4 square HTile, 207th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+f-f|fg|g+f+ff+gg-f|f-g+f|f-ggg+f
  g=gggg
  }

sq40232# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 232nd 4x4 square HTile, 208th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ffgf|fgff+f+gfgf|fgf-f|f-g+ff
  g=gggg
  }

sq40233# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 233rd 4x4 square HTile, 209th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fggf|fggf+f+ff|f-f|f-f+f+ggg+gf|fg-ggg+f
  g=gggg
  }

sq40234# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 234th 4x4 square HTile, 210th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+ff|f-f|f-f+f+ggg-f|f-f|fggg+f
  g=gggg
  }

sq40235# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 235th 4x4 square HTile, 211th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fg|gf+f+ff|f-f|f-f+f+ggf-f|f+fgg+f
  g=gggg
  }

sq40236# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 236th 4x4 square HTile, 212th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+ff|f-f|f-f+f+ggff|f+f|f+fgg+f
  g=gggg
  }

sq40237# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 237th 4x4 square HTile, 213th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|fgg+f+f+g+f|f-g+g+f|f-g+f-f|f+f+f+ff
  g=gggg
  }

sq40238# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 238th 4x4 square HTile, 214th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+f+f|f-f+g+f|f-g+f-f|f+f-ggf|fggg+ff
  g=gggg
  }

sq40239# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 239th 4x4 square HTile, 215th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+f+f|f-f+g+ff|ff-g+f-f|f+f+g+ff
  g=gggg
  }

sq40240# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 240th 4x4 square HTile, 216th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+g+f+f|f-f+g+f|fgf|fg+g+f-f|f+f+g+ff
  g=gggg
  }

sq40241# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 241st 4x4 square HTile, 217th dust
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+g+g|g-g+f|f+f-f|f+f+f+g+gggf|f-f|f-ggg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40242# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 242nd 4x4 square HTile, 218th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+f+gggf|fggg+f+gg+f|f-gg+f
  g=gggg
  }

sq40243# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 243rd 4x4 square HTile, 219th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+fg+gg+f|ff|f+gg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40244# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 244th 4x4 square HTile, 220th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+fg+gg+fgf|fgf-gg+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40245# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 245th 4x4 square HTile, dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+f-f|ff|f+f+fg+gg-f|f+gg+g+ggfg+gggg+gggf+gggg
  g=gggg
  }

sq40246# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 246th 4x4 square HTile, dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+ggff|ffgg+gg+gggg+ggfg+gggf+gggg
  g=gggg
  }

sq40247# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 247th 4x4 square HTile, dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+fg+gg-f|ff|f-gg+g+ggfg+gggg+gggf+gggg
  g=gggg
  }

sq40248# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 248th 4x4 square HTile, dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+ggf|fgg+g+gg-f|f+gg+g+ggfg+gggg+gggf+gggg
  g=gggg
  }

sq40249# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 249th 4x4 square HTile, dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-f|f+f-f|ff|f+f+fg+gg-f|f+gg+g+ggff+gggg+gggg+gggg
  g=gggg
  }

sq40250# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 250th 4x4 square HTile, dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+ggff|ffgg+gg+gggg+ggff+gggg+gggg
  g=gggg
  }

sq40251# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 251st 4x4 square HTile, dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+fg+gg-f|ff|f-gg+g+ggff+gggg+gggg+gggg
  g=gggg
  }

sq40252# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 252nd 4x4 square HTile, dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f-f|ff|f+f+f+ggf|fgg+g+gg-f|f+gg+g+ggff+gggg+gggg+gggg
  g=gggg
  }

sq40253# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 253rd 4x4 square HTile, dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+g+g|g-g+f|f+f-f|f+f+f+f+gggf|f-f|f-ggg+g+gggg+gggg+gggf+gggg
  g=gggg
  }

sq40254# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 254th 4x4 square HTile, dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+ff+gg+fgf|fgf-gg+g+gggg+gggg+gggf+gggg
  g=gggg
  }

sq40255# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 255th 4x4 square HTile, dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+ff+gg+fgf|fgf-gg+g+gggg+gggf+gggg+gggg
  g=gggg
  }

sq40256# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 256th 4x4 square HTile, dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ff-f|f-f+fg+gg+fgf|fgf-gg+g+gggg+gggf+ggfg+gggg
  g=gggg
  }

sq40257# { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 257th 4x4 square HTile, dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ffff|ff-f|ff|f+ff+fgg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40258* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 258th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|ff|f+f+f|ff|f-f+fgg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40258a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+ff+f|ff|f+f+f|ff|f-f+fgg+gggg+gggg+ggff+gggg+gggg+gggg+gggg
  g=gggg
  }

sq40258b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+ff+f|ff|f+f+f|ff|f-f+fgg+gggg+gggg+ggff+gggg+gggg+gggg
  g=gggg
  }

sq40258c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+ff+f|ff|f+f+f|ff|f-f+fgg+gggg+gggg+ggff+gggg+gggg
  g=gggg
  }

sq40259* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 259th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|f-f|ff|f+f-f|f-f+fgg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40259a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  ; but new?
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+fff|f-f|ff|f+f-f|f-f+fgg+gggg+gggg+ggff+gggg+gggg+gggg+gggg
  g=gggg
  }

sq40259b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  ; but new?
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+fff|f-f|ff|f+f-f|f-f+fgg+gggg+gggg+ggff+gggg+gggg+gggg
  g=gggg
  }

sq40259c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  ; but new?
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+fff|f-f|ff|f+f-f|f-f+fgg+gggg+gggg+ggff+gggg+gggg
  g=gggg
  }

sq40260* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 260th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ffgf|fg-f|ff|f+f+f|f+f+fgg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40261* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 261st 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+ff|f-ff|ffff|ff+f+gg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40262* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 262nd 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|fff+f+ff|ff+g+f|f+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40263* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 263rd 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+ff|ff+g+ff|ff+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40264* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 264th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fg+f|ff|f+g-f|fff|ff+f+fgg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40265* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 265th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+ffff|ff+gff|ffg+ff+fgg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40266* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 266th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ffff|ff-f|fgf|fg+ff+fgg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40267* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 267th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+gg+ff|ff-gg+g+ff|f+f|ff|f-f+g+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40268* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 268th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-gf|f-gf|fg-g+f+f|ff|f-f+fgg+gggg+gggg+ggff+gggg
  g=gggg
  }

sq40269* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 269th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf+f|ff|f+f+f|ff|f-g+fgg+gggg+g+f|f+ggg+ggff+gggg
  g=gggg
  }

sq40270* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 270th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf+f|ff|f+f+f|ff|f-g+fgg+g+f|f+ggg+gggg+ggff+gggg
  g=gggg
  }

sq40271* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 271st 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf+f|ff|f+f+f|ff|f-g+fgg+gggg+gggg+g+f|f+gff+gggg
  g=gggg
  }

sq40272* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 272nd 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+gg+f|ff|f+g+f|ff|f-g+fgg+gggg+g+ff|ff+ggg+ggff+gggg
  g=gggg
  }

sq40273* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 273rd 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+gg+f|ff|f+g+f|ff|f-g+fgg+gggg+gggg+g+ff|ff+gff+gggg
  g=gggg
  }

sq40274* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 274th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=fg+ff|ff+gf+gggg+g+ff|ff+ff+ff|ff+g+gggg+gggg
  g=gggg
  }

sq40275* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 275th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=gf+ff|ff+fg+gggg+f+ff|ff+gg+ff|ff+f+gggg+gggg
  g=gggg
  }

sq40276* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 276th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=ff+ff|ff+ff+gggg+g+ff|ff+gg+ff|ff+g+gggg+gggg
  g=gggg
  }

sq40277* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 277th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gf+f|ff|f+f+f|ff|f-g+fgg+gggg+f+f|f+ggg+ggff+gggg
  g=gggg
  }

sq40278* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 278th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf+f|ff|f+f+f|ff|f-g+ggg+gggg+g+f|f+fgg+ggff+gggg
  g=gggg
  }

sq40279* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 279th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gf+f|ff|f+f+f|ff|f-g+ggg+gggg+f+f|f+fgg+ggff+gggg
  g=gggg
  }

sq40280* { ; Anthony Hanmer 10/11/2002
  Angle 4 ; 280th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+gg+f|ff|f+g+f|ff|f-g+ggg+gggg+f+ff|ff+fgg+ggff+gggg
  g=gggg
  }

sq40281* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 281st 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+fg+gggf+gggg+gggg+gggg
  g=gggg
  }

sq40282* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 282nd 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+fg+gggg+gggf+gggg+gggg
  g=gggg
  }

sq40283* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 283rd 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+fg+gggg+gggg+gggf+gggg
  g=gggg
  }

sq40283a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+f+f+f|f+f-f|f+ff+f+f+f|f-f+fg+gggg+gggg+gggf+gggg+gggg+gggg+gggg
  g=gggg
  }

sq40283b { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+f+f+f|f+f-f|f+ff+f+f+f|f-f+fg+gggg+gggg+gggf+gggg+gggg+gggg
  g=gggg
  }

sq40283c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+f+f+f|f+f-f|f+ff+f+f+f|f-f+fg+gggg+gggg+gggf+gggg+gggg
  g=gggg
  }

sq40284* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 284th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gf+ggfg+gggg+gggg+gggg
  g=gggg
  }

sq40285* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 285th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gf+gggg+ggfg+gggg+gggg
  g=gggg
  }

sq40286* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 286th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gf+gggg+gggg+ggfg+gggg
  g=gggg
  }

sq40287* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 287th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gg+ggff+gggg+gggg+gggg
  g=gggg
  }

sq40288* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 288th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gg+gggg+ggff+gggg+gggg
  g=gggg
  }

sq40289* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 289th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gg+ggfg+gggf+gggg+gggg
  g=gggg
  }

sq40290* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 290th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gg+ggfg+gggg+gggf+gggg
  g=gggg
  }

sq40291* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 291st 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gg+gggf+ggfg+gggg+gggg
  g=gggg
  }

sq40292* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 292nd 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f-f|f+ff+f+f+f|f-f+gg+gggf+gggg+ggfg+gggg
  g=gggg
  }

sq40293* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 293rd 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+f+f+f|f-f+gg+fggf+gggg+ggfg+gggg
  g=gggg
  }

sq40294* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 294th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+f+f+f|f-f+gg+gggf+fggg+ggfg+gggg
  g=gggg
  }

sq40295* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 295th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+f+f+f|f-f+gg+gggf+gggg+fgfg+gggg
  g=gggg
  }

sq40296* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 296th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+ffgf+gggg+ggfg+gggg
  g=gggg
  }

sq40297* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 297th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+fggf+gfgg+ggfg+gggg
  g=gggg
  }

sq40298* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 298th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+fggf+gggg+gffg+gggg
  g=gggg
  }

sq40299* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 299th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+gfgf+fggg+ggfg+gggg
  g=gggg
  }

sq40300* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 300th 4x4 square HTile...
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+gggf+ffgg+ggfg+gggg
  g=gggg
  }

sq40301* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 301st 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+gggf+fggg+gffg+gggg
  g=gggg
  }

sq40302* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 302nd 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+gfgf+gggg+fgfg+gggg
  g=gggg
  }

sq40303* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 303rd 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+gggf+gfgg+fgfg+gggg
  g=gggg
  }

sq40304* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 304th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f-f|f+ff+g+f+f|f-f+gg+gggf+gggg+fffg+gggg
  g=gggg
  }

sq40305* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 305th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f|f+f|f+ff|ff+f+f+f|f+f+fggg+gggg+gfgg+gggg
  g=gggg
  }

sq40306* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 306th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f|f+f|f+ff|ff+f+f+f|f+f+gggg+ffgg+gggg+gggg
  g=gggg
  }

sq40307* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 307th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f|f+f|f+ff|ff+f+f+f|f+f+gggg+gggg+ffgg+gggg
  g=gggg
  }

sq40308* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 308th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+f+ggfg+gggg+gggg+gggg
  g=gggg
  }

sq40309* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 309th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+f+gggg+ggfg+gggg+gggg
  g=gggg
  }

sq40310* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 310th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+f+gggg+gggg+ggfg+gggg
  g=gggg
  }

sq40311* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 311th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+f+f|f+g+gggf+gggg+gggg+gggg
  g=gggg
  }

sq40312* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 312th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+f+f|f+g+gggg+gggf+gggg+gggg
  g=gggg
  }

sq40313* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 313th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+f+f|f+g+gggg+gggg+gggf+gggg
  g=gggg
  }

sq40313a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+ff+f+f|f+f|f+ff|ff+f+f+f|f+g+gggg+gggg+gggf+gggg+gggg+gggg+gggg
  g=gggg
  }

sq40313b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+ff+f+f|f+f|f+ff|ff+f+f+f|f+g+gggg+gggg+gggf+gggg+gggg+gggg
  g=gggg
  }

sq40313c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+ff+f+f|f+f|f+ff|ff+f+f+f|f+g+gggg+gggg+gggf+gggg+gggg
  g=gggg
  }

sq40314* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 314th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+g+ggfg+gggf+gggg+gggg
  g=gggg
  }

sq40315* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 315th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+g+ggfg+gggg+gggf+gggg
  g=gggg
  }

sq40316* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 316th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+g+gggf+ggfg+gggg+gggg
  g=gggg
  }

sq40317* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 317th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+g+gggf+gggg+ggfg+gggg
  g=gggg
  }

sq40318* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 318th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+g+gggg+ggfg+gggf+gggg
  g=gggg
  }

sq40319* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 319th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|f+f|f+ff|ff+f+g+f|f+g+gggg+gggf+ggfg+gggg
  g=gggg
  }

sq40320* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 320th 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gf+f+f|f+f|f+ff|ff+f+g+f|f+g+fggf+gggg+ggfg+gggg
  g=gggg
  }

sq40321* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 321st 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gf+f+f|f+f|f+ff|ff+f+g+f|f+g+gggf+fggg+ggfg+gggg
  g=gggg
  }

sq40322* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 322nd 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gf+f+f|f+f|f+ff|ff+f+g+f|f+g+gggf+gggg+fgfg+gggg
  g=gggg
  }

sq40323* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 323rd 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f+f|f-f-f|f-f|f-f+g+f|f+ff+fggg+gfgg+gggg+gggg
  g=gggg
  }

sq40324* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 324th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f+f|f-f-f|f-f|f-f+g+f|f+ff+fggg+gggg+gfgg+gggg
  g=gggg
  }

sq40325* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 325th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f+f|f-f-f|f-f|f-f+g+f|f+ff+gfgg+fggg+gggg+gggg
  g=gggg
  }

sq40326* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 326th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f+f|f-f-f|f-f|f-f+g+f|f+ff+gfgg+gggg+fggg+gggg
  g=gggg
  }

sq40327* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 327th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f+f|f-f-f|f-f|f-f+g+f|f+ff+gggg+fggg+gfgg+gggg
  g=gggg
  }

sq40328* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 328th 4x4 square HTile
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f+f|f-f-f|f-f|f-f+g+f|f+ff+gggg+gfgg+fggg+gggg
  g=gggg
  }

sq40329* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 329th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|ff-f|f-g+f+ff|ff+ff+g+f|f+ggg+gggg+gggg+gggg
  g=gggg
  }

sq40330* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 330th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|ff-f|f-g+f+ff|ff+ff+gggg+g+f|f+ggg+gggg+gggg
  g=gggg
  }

sq40331* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 331st 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gff|ff-f|f-g+f+ff|ff+ff+fggg+gggg+g+f|f+ggg+gggg
  g=gggg
  }

sq40332* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 332nd 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+gff|ff-f|f-g+f+ff|ff+ff+gggg+fggg+g+f|f+ggg+gggg
  g=gggg
  }

sq40333* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 333rd 4x4 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gff|ff-f|f-g+f+ff|ff+ff+gggg+gggg+f+f|f+ggg+gggg
  g=gggg
  }

sq40334* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 334th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+gff|ff-f|f-g+f+ff|ff+gf+ggfg+gggg+f+f|f+ggg+gggg
  g=gggg
  }

sq40335* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 335th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+gff|ff-f|f-g+f+ff|ff+gf+gggg+ggfg+f+f|f+ggg+gggg
  g=gggg
  }

sq40336* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 336th 4x4 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+gff|ff-f|f-g+f+ff|ff+gf+gggg+gggg+f+f|f+gfg+gggg
  g=gggg
  }

sq40337* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+f|g+f-f|f+ff+F+f+f|f-f+FF+G+g+g|f-g+GGG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40337a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+f+f|g+f-f|f+ff+F+f+f|f-f+FF+G+g+g|f-g+GGG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40337b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+f+f|g+f-f|f+ff+F+f+f|f-f+FF+G+g+g|f-g+GGG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40337c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+f+f|g+f-f|f+ff+F+f+f|f-f+FF+G+g+g|f-g+GGG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40338* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+g|f+f-f|f+ff+F+f+f|f-f+FF+G+g+f|g-g+GGG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40338a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+f+g|f+f-f|f+ff+F+f+f|f-f+FF+G+g+f|g-g+GGG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40338b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+f+g|f+f-f|f+ff+F+f+f|f-f+FF+G+g+f|g-g+GGG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40338c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+f+g|f+f-f|f+ff+F+f+f|f-f+FF+G+g+f|g-g+GGG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40339* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+f|f+f-f|g+ff+F+f+f|f-f+FF+GG+gg+f|g-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40339a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+f+f|f+f-f|g+ff+F+f+f|f-f+FF+GG+gg+f|g-gg+GG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40339b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+f+f|f+f-f|g+ff+F+f+f|f-f+FF+GG+gg+f|g-gg+GG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40339c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+f+f|f+f-f|g+ff+F+f+f|f-f+FF+GG+gg+f|g-gg+GG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40340* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+f|f+f-g|f+ff+F+f+f|f-f+FF+GG+gg+g|f-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40340a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+f+f|f+f-g|f+ff+F+f+f|f-f+FF+GG+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40340b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+f+f|f+f-g|f+ff+F+f+f|f-f+FF+GG+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40340c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+f+f|f+f-g|f+ff+F+f+f|f-f+FF+GG+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40341* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+f+f|f+f-g|f+ff+F+f+f|f-f+FF+FG+gg+g|f-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40341a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+G+f+f|f+f-g|f+ff+F+f+f|f-f+FF+FG+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40341b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+G+f+f|f+f-g|f+ff+F+f+f|f-f+FF+FG+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40341c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+G+f+f|f+f-g|f+ff+F+f+f|f-f+FF+FG+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40342* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+f|f+f-g|f+ff+G+f+f|f-f+FF+GF+gg+g|f-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40343* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+f+f|f+f-g|f+ff+F+f+f|f-f+FF+GG+gg+g|f-gg+GG+FGGG+GGGG+GGGG
  g=gggg
  }

sq40344* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+f|f+f-g|f+ff+G+f+f|f-f+FF+GG+gg+g|f-gg+GG+GFGG+GGGG+GGGG
  g=gggg
  }

sq40345* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+f+f|f+f-g|f+ff+G+f+f|f-f+FF+GG+gg+g|f-gg+GG+FFGG+GGGG+GGGG
  g=gggg
  }

sq40346* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+f+f|f+f-g|f+ff+G+f+f|f-f+FF+GF+gg+g|f-gg+GG+GGGG+FFGG+GGGG
  g=gggg
  }

sq40347* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+f+f|f+f-g|f+ff+G+f+f|f-f+FF+FF+gg+g|f-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40348* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+g|f+f-f|g+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+f|g-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40348a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+f+g|f+f-f|g+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+f|g-gg+GG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40348b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+f+g|f+f-f|g+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+f|g-gg+GG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40348c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+f+g|f+f-f|g+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+f|g-gg+GG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40349* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+g|f+f-g|f+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40349a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+f+g|f+f-g|f+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40349b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+f+g|f+f-g|f+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40349c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+f+g|f+f-g|f+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40350* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+f+g|f+f-g|f+ff+F+f+f|f-f+FF+F+g+f|g-g+G+gg+g|f-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40350a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+G+f+g|f+f-g|f+ff+F+f+f|f-f+FF+F+g+f|g-g+G+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40350b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+G+f+g|f+f-g|f+ff+F+f+f|f-f+FF+F+g+f|g-g+G+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40350c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+G+f+g|f+f-g|f+ff+F+f+f|f-f+FF+F+g+f|g-g+G+gg+g|f-gg+GG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40351* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+g|f+f-g|f+ff+G+f+f|f-f+FF+G+g+f|g-g+F+gg+g|f-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40352* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+f+g|f+f-g|f+ff+F+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+FGGG+GGGG+GGGG
  g=gggg
  }

sq40353* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+f+g|f+f-g|f+ff+G+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+GFGG+GGGG+GGGG
  g=gggg
  }

sq40354* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+f+g|f+f-g|f+ff+G+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+FFGG+GGGG+GGGG
  g=gggg
  }

sq40355* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+f+g|f+f-g|f+ff+G+f+f|f-f+FF+G+g+f|g-g+F+gg+g|f-gg+GG+GGGG+FFGG+GGGG
  g=gggg
  }

sq40356* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+f+g|f+f-g|f+ff+G+f+f|f-f+FF+F+g+f|g-g+F+gg+g|f-gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40357* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+g|f+f-g|f+gf+F+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+G+gg|fg+GGG+GGGG+GGGG
  g=gggg
  }

sq40358* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+f+g|f+f-g|f+gf+F+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+F+gg|fg+GGG+GGGG+GGGG
  g=gggg
  }

sq40359* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+f+g|f+f-g|f+gf+G+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+G+gg|fg+FGG+GGGG+GGGG
  g=gggg
  }

sq40360* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+f+g|f+f-g|f+gf+G+f+f|f-f+FF+G+g+f|g-g+G+gg+g|f-gg+GG+F+gg|fg+FGG+GGGG+GGGG
  g=gggg
  }

sq40361* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FF+f+f+f|f-f+f|g+f-f|f+f+f+FF+GG+gg|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40361a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+FF+f+f+f|f-f+f|g+f-f|f+f+f+FF+GG+gg|fg+GG+GGGG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40361b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+FF+f+f+f|f-f+f|g+f-f|f+f+f+FF+GG+gg|fg+GG+GGGG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40361c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+FF+f+f+f|f-f+f|g+f-f|f+f+f+FF+GG+gg|fg+GG+GGGG+GGGG+GGGG+gggg
  g=gggg
  }

sq40362* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FF+f+f+f|f-f+f|g+f-f|f+f+f+FF+GGGG+GG+gg|fg+GG+GGGG+GGGG
  g=gggg
  }

sq40362a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+FF+f+f+f|f-f+f|g+f-f|f+f+f+FF+GGGG+GG+gg|fg+GG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40362b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+FF+f+f+f|f-f+f|g+f-f|f+f+f+FF+GGGG+GG+gg|fg+GG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40362c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+FF+f+f+f|f-f+f|g+f-f|f+f+f+FF+GGGG+GG+gg|fg+GG+GGGG+GGGG+gggg
  g=gggg
  }

sq40363* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gg|fg+GG+GG+gf|gg+GG+GGGG+GGGG
  g=gggg
  }

sq40363a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gg|fg+GG+GG+gf|gg+GG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40363b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gg|fg+GG+GG+gf|gg+GG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40363c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gg|fg+GG+GG+gf|gg+GG+GGGG+GGGG+gggg
  g=gggg
  }

sq40364* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gf|gg+GG+GG+gg|fg+GG+GGGG+GGGG
  g=gggg
  }

sq40364a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gf|gg+GG+GG+gg|fg+GG+GGGG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40364b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gf|gg+GG+GG+gg|fg+GG+GGGG+GGGG+gggg+gggg
  g=gggg
  }

sq40364c { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gf|gg+GG+GG+gg|fg+GG+GGGG+GGGG+gggg
  g=gggg
  }

sq40365* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; X-axis reflectional symmetry
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gg|fg+GG+GGGG+GG+gf|gg+GG+GGGG
  g=gggg
  }

sq40365a { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gg|fg+GG+GGGG+GG+gf|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40365b { ; Anthony Hanmer 26/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gg|fg+GG+GGGG+GG+gf|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40365r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=GG|FF|GG+f+f+f|f-f+g|g+f-f|f+f+f+GG|FF|GG+GG+gg|fg+GG+GGGG+GG+gf|gg+GG+GGGG
  g=gggg
  }

sq40366* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FF+f+f+f|f-f+g|g+f-f|f+f+f+FF+GG+gf|gg+GG+GGGG+GG+gg|fg+GG+GGGG
  g=gggg
  }

sq40367* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+f|g+f-f|f+f+f+FF+GF+gg|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40368* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+f|g+f-f|f+f+f+FF+GFGG+GG+gg|fg+GG+GGGG+GGGG
  g=gggg
  }

sq40369* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+FF+GF+gg|fg+GG+GG+gf|gg+GG+GGGG+GGGG
  g=gggg
  }

sq40370* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+FF+GF+gf|gg+GG+GG+gg|fg+GG+GGGG+GGGG
  g=gggg
  }

sq40371* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+FF+GF+gg|fg+GG+GGGG+GG+gf|gg+GG+GGGG
  g=gggg
  }

sq40372* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+FF+GF+gf|gg+GG+GGGG+GG+gg|fg+GG+GGGG
  g=gggg
  }

sq40373* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+f|g+f-f|f+f+f+GF+GF+gg|fg+FG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40374* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+f|g+f-f|f+f+f+GF+GFFG+GG+gg|fg+GG+GGGG+GGGG
  g=gggg
  }

sq40375* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+GF+GF+gg|fg+FG+GG+gf|gg+GG+GGGG+GGGG
  g=gggg
  }

sq40376* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+GF+GF+gf|gg+FG+GG+gg|fg+GG+GGGG+GGGG
  g=gggg
  }

sq40377* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+GF+GF+gg|fg+FG+GGGG+GG+gf|gg+GG+GGGG
  g=gggg
  }

sq40378* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+GF+GF+gf|gg+FG+GGGG+GG+gg|fg+GG+GGGG
  g=gggg
  }

sq40379* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+f|g+f-f|f+f+f+GF+GG+gg|fg+GG+GFFG+GGGG+GGGG
  g=gggg
  }

sq40380* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+f|g+f-f|f+f+f+GF+GGGG+GF+gg|fg+FG+GGGG+GGGG
  g=gggg
  }

sq40381* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+GF+GG+gg|fg+GG+GF+gf|gg+FG+GGGG+GGGG
  g=gggg
  }

sq40382* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+GF+GG+gf|gg+GG+GF+gg|fg+FG+GGGG+GGGG
  g=gggg
  }

sq40383* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; X-axis reflectional symmetry
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+GF+GG+gg|fg+GG+GFFG+GG+gf|gg+GG+GGGG
  g=gggg
  }

sq40384* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; X-axis reflectional symmetry
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FG+f+f+f|f-f+g|g+f-f|f+f+f+GF+GG+gf|gg+GG+GFFG+GG+gg|fg+GG+GGGG
  g=gggg
  }

sq40385* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gg-f|gg|f+gg+FFF+G+gggg|ff-g|ff|g+ff+GGG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40386* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ff-g|ff|g+ff+FFF+G+ffff|gg-f|gg|f+gg+GGG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40387* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ff-g|ff|g+ff+FFG+G+ffff|gg-f|gg|f+gg+GGG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40388* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ff-g|ff|g+ff+FGG+G+ffff|gg-f|gg|f+gg+GGG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40389* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ff-f|ff|f+ff+FGG+G+ffff|gg-g|gg|g+gg+GGG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40390* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gggg+F+ff|ff+FF+G+gggg|ffff+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40391* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ffff+F+ff|ff+FF+G+ffff|gggg+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40392* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ffff+F+ff|gg+FF+G+gggg|gggg+G+gg|ff+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40393* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ffff+F+gg|ff+FF+G+gggg|gggg+G+ff|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40394* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gggg+F+ff|gg+FF+G+gggg|ffff+G+gg|ff+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40395* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ffff+F+gg|ff+FF+G+ffff|gggg+G+ff|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40396* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|fgfg+F+ff|ff+FF+G+gfgf|gfgf+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40397* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|ff+FF+G+gfgf|fgfg+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40398* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+fg|fg+FF+G+gfgf|fgfg+G+gf|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40399* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+fg|gf+FF+G+gfgf|fgfg+G+gf|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40400* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|gg+FF+G+gfgf|fgfg+G+gg|ff+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40401* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+gf|fg+FF+G+gfgf|fgfg+G+fg|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40402* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|ff+FG+G+gfgf|fgfg+G+gg|gg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40403* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+fg|fg+FG+G+gfgf|fgfg+G+gf|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40404* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+fg|gf+FG+G+gfgf|fgfg+G+gf|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40405* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|gg+FG+G+gfgf|fgfg+G+gg|ff+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40406* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+gf|fg+FG+G+gfgf|fgfg+G+fg|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40407* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|ff+GG+G+gfgf|fgfg+G+gg|gg+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40408* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+fg|fg+GG+G+gfgf|fgfg+G+gf|gf+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40409* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+fg|gf+GG+G+gfgf|fgfg+G+gf|fg+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40410* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|gg+GG+G+gfgf|fgfg+G+gg|ff+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40411* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+gf|fg+GG+G+gfgf|fgfg+G+fg|gf+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40412* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|ff+GF+G+gfgf|fgfg+G+gg|gg+GG+GGGG+GGFG+GGGG
  g=gggg
  }

sq40413* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+fg|fg+GF+G+gfgf|fgfg+G+gf|gf+GG+GGGG+GGFG+GGGG
  g=gggg
  }

sq40414* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+fg|gf+GF+G+gfgf|fgfg+G+gf|fg+GG+GGGG+GGFG+GGGG
  g=gggg
  }

sq40415* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|gg+GF+G+gfgf|fgfg+G+gg|ff+GG+GGGG+GGFG+GGGG
  g=gggg
  }

sq40416* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+gf|fg+GF+G+gfgf|fgfg+G+fg|gf+GG+GGGG+GGFG+GGGG
  g=gggg
  }

sq40417* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; Familiar...
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+ff|ff+FF+G+ggff|ffgg+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40418* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; Familiar...
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|gf+FF+G+ggff|ffgg+G+gf|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40419* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; Familiar...
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gf|fg+FF+G+ggff|ffgg+G+fg|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40420* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|fg+FF+G+ggff|ffgg+G+gf|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40421* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gf|gf+FF+G+ggff|ffgg+G+fg|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40422* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+ff|ff+FG+G+ggff|ffgg+G+gg|gg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40423* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|gf+FG+G+ggff|ffgg+G+gf|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40424* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gf|fg+FG+G+ggff|ffgg+G+fg|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40425* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|fg+FG+G+ggff|ffgg+G+gf|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40426* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gf|gf+FG+G+ggff|ffgg+G+fg|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40427* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+ff|ff+FG+F+ggff|ffgg+G+gg|gg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40428* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+fg|gf+FG+F+ggff|ffgg+G+gf|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40429* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+gf|fg+FG+F+ggff|ffgg+G+fg|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40430* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+fg|fg+FG+F+ggff|ffgg+G+gf|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40431* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+gf|gf+FG+F+ggff|ffgg+G+fg|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40432* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; Familiar...
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+ff|ff+FF+G+gggf|fggg+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40433* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; Familiar...
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+fg|gf+FF+G+gggf|fggg+G+gf|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40434* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+fg|fg+FF+G+gggf|fggg+G+gf|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40435* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gf|gf+FF+G+gggf|fggg+G+fg|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40436* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gf|fg+FF+G+gggf|fggg+G+fg|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40437* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+ff|ff+FG+G+gggf|fggg+G+gg|gg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40438* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+fg|gf+FG+G+gggf|fggg+G+gf|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40439* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+fg|fg+FG+G+gggf|fggg+G+gf|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40440* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gf|gf+FG+G+gggf|fggg+G+fg|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40441* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gf|fg+FG+G+gggf|fggg+G+fg|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40442* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+ff|ff+FG+F+gggf|fggg+G+gg|gg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40443* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+fg|gf+FG+F+gggf|fggg+G+gf|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40444* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+fg|fg+FG+F+gggf|fggg+G+gf|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40445* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+gf|gf+FG+F+gggf|fggg+G+fg|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40446* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+gf|fg+FG+F+gggf|fggg+G+fg|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40447* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+ff|ff+FF+F+gggf|fggg+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40448* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+fg|gf+FF+F+gggf|fggg+G+gf|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40449* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+fg|fg+FF+F+gggf|fggg+G+gf|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40450* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+gf|gf+FF+F+gggf|fggg+G+fg|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40451* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+fffg|gfff+F+gf|fg+FF+F+gggf|fggg+G+fg|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40452* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+ff|ff+FF+G+gggg|fggg+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40453* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|ffff+F+ff|ff+FF+G+gggf|gggg+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40454* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gfff+F+ff|ff+FF+G+ffff|fggg+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40455* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|fggg+F+ff|ff+FF+G+ffff|gfff+G+gg|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40456* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+ff|gf+FF+G+gggg|fggg+G+gg|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40457* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+fg|ff+FF+G+gggg|fggg+G+gf|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40458* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+ff|gg+FF+G+gggg|fggg+G+gg|ff+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40459* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+gg|ff+FF+G+gggg|fggg+G+ff|gg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40460* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+fg|gf+FF+G+gggg|fggg+G+gf|fg+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40461* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+gf|fg+FF+G+gggg|fggg+G+fg|gf+GG+GGGG+GGGG+GGGG
  g=gggg
  }

sq40462* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+ff|gg+FG+G+gggg|fggg+G+gg|ff+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40463* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+ff|gg+GG+G+gggg|fggg+G+gg|ff+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40464* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+gg|ff+FG+G+gggg|fggg+G+ff|gg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40465* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+gg|ff+GG+G+gggg|fggg+G+ff|gg+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40466* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+fg|gf+FG+G+gggg|fggg+G+gf|fg+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40467* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+fg|gf+GG+G+gggg|fggg+G+gf|fg+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40468* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+gf|fg+FG+G+gggg|fggg+G+fg|gf+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40469* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gfff+F+gf|fg+GG+G+gggg|fggg+G+fg|gf+GG+GGGG+GGFF+GGGG
  g=gggg
  }

sq40470* { ; Anthony Hanmer 26/5/2003
  Angle 4 ; 4x4 square HTile
  ; Partly 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=FF+f+f+f|g-g+f|g+f-f|g+g+g+FG+GG+g+g+g|f-f+g|f+g-g|f+f+f+GG+GGGG+GGGF+GGGG
  g=gggg
  }

sq40471* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+FG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  ;f=F+fggg|gggf+F+ff|ff+FF+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40471a { ; Anthony Hanmer 27/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+ff|ff+FG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40471b { ; Anthony Hanmer 27/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+ff|ff+FG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40471c { ; Anthony Hanmer 27/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+ff|ff+FG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40472* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; X-axis reflectional symmetry
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+ff|ff+FG+F+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40472a { ; Anthony Hanmer 27/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+G+fggg|gggf+F+ff|ff+FG+F+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40472b { ; Anthony Hanmer 27/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+G+fggg|gggf+F+ff|ff+FG+F+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40473* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40473a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40473b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG+gggg+gggg
  g=gggg
  }

sq40473c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG+gggg
  g=gggg
  }

sq40474* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|gg+FF+GGGG
  g=gggg
  }

sq40474a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+G+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|gg+FF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40474b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+G+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|gg+FF+GGGG+gggg+gggg
  g=gggg
  }

sq40474c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+G+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|gg+FF+GGGG+gggg
  g=gggg
  }

sq40475* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+G+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+F+gggf|fggg+F+gg|gg+FF+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40475a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+G+fggg|gggf+G+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+F+gggf|fggg+F+gg|gg+FF+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40475b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+G+fggg|gggf+G+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+F+gggf|fggg+F+gg|gg+FF+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40476* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+ff|ff+GF+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+F+gg|gg+FG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40476a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+G+ff|ff+GF+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+F+gg|gg+FG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40476b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+G+ff|ff+GF+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggg+F+gg|gg+FG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40477* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+ff|ff+GF+G+gffg|gffg+F+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG
  g=gggg
  }

sq40477a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+G+ff|ff+GF+G+gffg|gffg+F+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40477b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+G+ff|ff+GF+G+gffg|gffg+F+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG+gggg+gggg
  g=gggg
  }

sq40478* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gf|fg+FG+G+gffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40478a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gf|fg+FG+G+gffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40478b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gf|fg+FG+G+gffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40478c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+gf|fg+FG+G+gffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40479* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gf+FG+G+gffg|gffg+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40479a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|gf+FG+G+gffg|gffg+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40479b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|gf+FG+G+gffg|gffg+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40479c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|gf+FG+G+gffg|gffg+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40480* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gg+FG+G+gffg|gffg+G+ff|ff+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40480a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gg|gg+FG+G+gffg|gffg+G+ff|ff+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40480b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gg|gg+FG+G+gffg|gffg+G+ff|ff+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40480c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+gg|gg+FG+G+gffg|gffg+G+ff|ff+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40481* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gf|fg+FF+G+gffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40481a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gf|fg+FF+G+gffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40481b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gf|fg+FF+G+gffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40481c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+gf|fg+FF+G+gffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40482* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gf+FF+G+gffg|gffg+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40482a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|gf+FF+G+gffg|gffg+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40482b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|gf+FF+G+gffg|gffg+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40482c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|gf+FF+G+gffg|gffg+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40483* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gg+FF+G+gffg|gffg+G+ff|ff+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40484* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gf+FF+G+gffg|gffg+F+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40484a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+G+fg|gf+FF+G+gffg|gffg+F+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40484b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+G+fg|gf+FF+G+gffg|gffg+F+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40484c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+G+fg|gf+FF+G+gffg|gffg+F+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40485* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gf+GF+G+gffg|gffg+G+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40485a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|gf+GF+G+gffg|gffg+G+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40485b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|gf+GF+G+gffg|gffg+G+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40485c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|gf+GF+G+gffg|gffg+G+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40486* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gf+GF+G+gffg|gffg+F+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40486a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+G+fg|gf+GF+G+gffg|gffg+F+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40486b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+G+fg|gf+GF+G+gffg|gffg+F+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40486c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+G+fg|gf+GF+G+gffg|gffg+F+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40487* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gf+FG+G+gffg|gffg+F+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+Gf+GGGG
  g=gggg
  }

sq40487a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+G+fg|gf+FG+G+gffg|gffg+F+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+Gf+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40487b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+G+fg|gf+FG+G+gffg|gffg+F+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+Gf+GGGG+gggg+gggg
  g=gggg
  }

sq40487c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+G+fg|gf+FG+G+gffg|gffg+F+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+Gf+GGGG+gggg
  g=gggg
  }

sq40488* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gf+GG+G+gffg|gffg+G+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+Gf+GGGG
  g=gggg
  }

sq40488a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|gf+GG+G+gffg|gffg+G+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+Gf+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40488b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|gf+GG+G+gffg|gffg+G+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+Gf+GGGG+gggg+gggg
  g=gggg
  }

sq40488c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|gf+GG+G+gffg|gffg+G+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+Gf+GGGG+gggg
  g=gggg
  }

sq40489* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gf+GG+G+gffg|gffg+F+gf|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40490* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|ff+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40490a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|ff+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40490b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|ff+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40490c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|ff+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40491* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|ff+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40491a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gg|ff+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40491b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gg|ff+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40491c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+gg|ff+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40492* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gf|ff+FF+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40492a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gf|ff+FF+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40492b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gf|ff+FF+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40492c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+gf|ff+FF+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40493* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|ff+FG+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40493a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|ff+FG+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40493b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|ff+FG+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40493c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|ff+FG+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40494* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|ff+FG+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40494a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gg|ff+FG+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40494b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gg|ff+FG+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40494c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+gg|ff+FG+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40495* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gf|ff+FG+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40495a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gf|ff+FG+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40495b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gf|ff+FG+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40495c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+gf|ff+FG+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40496* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+fg|ff+FF+F+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40496a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+G+fggg|gggf+F+fg|ff+FF+F+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40496b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+G+fggg|gggf+F+fg|ff+FF+F+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40496c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+G+fggg|gggf+F+fg|ff+FF+F+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40497* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+gg|ff+FF+F+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40497a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+G+fggg|gggf+F+gg|ff+FF+F+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40497b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+G+fggg|gggf+F+gg|ff+FF+F+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40497c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+G+fggg|gggf+F+gg|ff+FF+F+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40498* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+gf|ff+FF+F+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40498a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+G+fggg|gggf+F+gf|ff+FF+F+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40498b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+G+fggg|gggf+F+gf|ff+FF+F+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40498c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+G+fggg|gggf+F+gf|ff+FF+F+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40499* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40499a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fgfg|gfgf+F+ff|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40499b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fgfg|gfgf+F+ff|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40499c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fgfg|gfgf+F+ff|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40500* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40500a { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+ff|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40500b { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+ff|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40500c { ; Anthony Hanmer 28/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+ff|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40501* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+FF+G+gffg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40502* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+FG+G+gfgg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40503* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+FG+G+gffg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40504* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+ff|ff+FF+F+gfgg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40505* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+ff|ff+FF+F+gffg|ggfg+G+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40506* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+ff|ff+FG+G+gfgg|ggfg+F+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40507* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+ff|ff+FG+G+gffg|ggfg+F+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40508* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+ff|ff+GF+F+gfgg|ggfg+G+gg|gg+FG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40509* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+ff|ff+GF+F+gffg|ggfg+G+gg|gg+FG+G+gggf|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40510* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+ff|ff+FF+G+gfgg|ggfg+F+gg|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+ggfg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40511* { ; Anthony Hanmer 25/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+GF+G+gffg|ggfg+G+gg|gg+FG+G+gggf|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40512* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40513* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FG+G+gffg|gffg+G+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40514* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+GF+G+gffg|gffg+G+gf|gf+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40515* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+GG+G+gffg|gffg+G+gf|gf+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40516* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|fg+FF+G+gffg|gffg+F+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40517* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|fg+FG+G+gffg|gffg+F+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40518* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|fg+GF+G+gffg|gffg+F+gf|gf+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40519* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|fg+GG+G+gffg|gffg+F+gf|gf+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40520* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+FF+G+gfgg|gfgg+G+gg|gg+GG+G+ggff|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40521* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+FG+G+gfgg|gfgg+G+gg|gg+GG+G+ggff|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40522* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+GF+G+gfgg|gfgg+G+gg|gg+FG+G+ggff|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40523* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+GG+G+gfgg|gfgg+G+gg|gg+FG+G+ggff|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40524* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+GF+G+gfgg|gfgg+G+gg|gg+GG+G+ggff|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG
  g=gggg
  }

sq40525* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|ff+GG+G+gfgg|gfgg+G+gg|gg+GG+G+ggff|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40526* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FF+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggf+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40527* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggf+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40528* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+GF+G+gffg|gffg+G+gg|gg+FG+G+gggf|fggf+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40529* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+GG+G+gffg|gffg+G+gg|gg+FG+G+gggf|fggf+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40530* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+GF+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggf+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG
  g=gggg
  }

sq40531* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+GG+G+gffg|gffg+G+gg|gg+GG+G+gggf|fggf+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40532* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FF+G+gffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40533* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FG+G+gffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40534* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+GF+G+gffg|gfff+G+gg|gg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40535* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+GG+G+gffg|gfff+G+gg|gg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40536* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+GF+G+gffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG
  g=gggg
  }

sq40537* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+GG+G+gffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40538* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+fg|ff+FF+G+gffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40539* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+fg|ff+FG+G+gffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40540* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+fg|ff+GF+G+gffg|gfff+G+gf|gg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40541* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+fg|ff+GG+G+gffg|gfff+G+gf|gg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40542* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+fg|ff+GF+G+gffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG
  g=gggg
  }

sq40543* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+fg|ff+GG+G+gffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40544* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|gf+FF+G+gffg|gfff+G+gg|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40545* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|gf+FG+G+gffg|gfff+G+gg|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40546* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|gf+GF+G+gffg|gfff+G+gg|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40547* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|gf+GG+G+gffg|gfff+G+gg|fg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40548* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|gf+GF+G+gffg|gfff+G+gg|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG
  g=gggg
  }

sq40549* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|gf+GG+G+gffg|gfff+G+gg|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40550* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+FF+G+gffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40551* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+FG+G+gffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40552* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+GF+G+gffg|gfff+G+fg|gg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40553* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+GG+G+gffg|gfff+G+fg|gg+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40554* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+GF+G+gffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG
  g=gggg
  }

sq40555* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+GG+G+gffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40556* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|fg+FF+G+gffg|gfff+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40557* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|fg+FG+G+gffg|gfff+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40558* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|fg+GF+G+gffg|gfff+G+gg|gf+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40559* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|fg+GG+G+gffg|gfff+G+gg|gf+FG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40560* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|fg+GF+G+gffg|gfff+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+GGGG
  g=gggg
  }

sq40561* { ; Anthony Hanmer 26/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|fg+GG+G+gffg|gfff+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40562* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|fg+FF+G+fffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40563* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FF+G+gffg|gfff+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40564* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+ff|ff+FG+G+fffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40564a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggf+F+ff|ff+FG+G+fffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40564b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggf+F+ff|ff+FG+G+fffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40564c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+gggg|gggf+F+ff|ff+FG+G+fffg|gffg+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40565* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FG+G+gffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40565a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggg+F+ff|ff+FG+G+gffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40565b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggg+F+ff|ff+FG+G+gffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40565c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggg+F+ff|ff+FG+G+gffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40566* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+ff|ff+FF+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40566a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggf+F+ff|ff+FF+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40566b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggf+F+ff|ff+FF+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40566r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=gggg+gggg+G|F|G+gggg|gggf+G|F|G+ff|ff+GG|FF|GG+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40567* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FF+G+fffg|ffff+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40567a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggg+F+ff|ff+FF+G+fffg|ffff+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40567b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggg+F+ff|ff+FF+G+fffg|ffff+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40567c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggg+F+ff|ff+FF+G+fffg|ffff+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40568* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+ff|ff+FG+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40569* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FG+G+fffg|ffff+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40570* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; The hundredth such variation of sq00001 L2!
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+ff|ff+FF+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40570a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggf+F+ff|ff+FF+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40570b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggf+F+ff|ff+FF+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40570r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gggg|gggf+G|F|G+ff|ff+GG|FF|GG+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40571* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FF+G+gfff|gfff+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40572* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+ff|ff+FG+G+gfff|gfff+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40572a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggg+F+ff|ff+FG+G+gfff|gfff+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40572b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggg+F+ff|ff+FG+G+gfff|gfff+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40572c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggg+F+ff|ff+FG+G+gfff|gfff+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40573* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|ff+FG+G+fffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40574* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+FG+G+gffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40575* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|ff+FF+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40575a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggf+F+gf|ff+FF+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40575b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggf+F+gf|ff+FF+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40575c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+gggg|gggf+F+gf|ff+FF+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40576* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+FF+G+fffg|ffff+G+fg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40577* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|ff+FG+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40578* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+FG+G+fffg|ffff+G+fg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40579* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|ff+FF+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40580* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+FF+G+gfff|gfff+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40581* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|ff+FG+G+gfff|gfff+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40582* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|fg+FG+G+fffg|gffg+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40583* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FG+G+gffg|gfff+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40584* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|fg+FF+G+ffff|gffg+G+fg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40585* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FF+G+fffg|ffff+G+fg|gf+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40586* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|fg+FG+G+ffff|gffg+G+fg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40587* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FG+G+fffg|ffff+G+fg|gf+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40588* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FF+G+gfff|gfff+G+fg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40589* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|fg+FF+G+fffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40590* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FF+G+gffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40591* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|fg+FG+G+fffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40592* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FG+G+gffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40593* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|fg+FF+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40593r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gggg|gggf+G|F|G+gf|fg+GG|FF|GG+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40594* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FF+G+fffg|ffff+G+fg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40595* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gf|fg+FG+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40596* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gf|fg+FG+G+fffg|ffff+G+fg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40597* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+gg|gg+FF+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gf|fg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40597r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+gggg|gggf+G|F|G+gg|gg+GG|FF|GG+G+ffff|gffg+G+fg|gg+GG+G+gggg|fggg+G+gf|fg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40598* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gg|gg+FF+G+gfff|gfff+G+fg|gg+GG+G+gggg|fggg+G+gf|fg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40599* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gg|gg+FG+G+gfff|gfff+G+fg|gg+GG+G+gggg|fggg+G+gf|fg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40600* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|ff+FF+G+fffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40600a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggg+F+fg|ff+FF+G+fffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40600b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggg+F+fg|ff+FF+G+fffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40600c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+gggg|gggg+F+fg|ff+FF+G+fffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40601* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gf|ff+FF+G+fffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40601a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggg+F+gf|ff+FF+G+fffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40601b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggg+F+gf|ff+FF+G+fffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40601c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+gggg|gggg+F+gf|ff+FF+G+fffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40602* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|fg+FF+G+fffg|gfff+G+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40602a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggg+F+fg|fg+FF+G+fffg|gfff+G+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40602b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggg+F+fg|fg+FF+G+fffg|gfff+G+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40602c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+gggg|gggg+F+fg|fg+FF+G+fffg|gfff+G+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40603* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; Is this a duplicate of something found earlier...?
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|gf+FF+G+fffg|gfff+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40604* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gf|fg+FF+G+fffg|gfff+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40605* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|ff+FG+G+fffg|gfff+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40606* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gf|ff+FG+G+fffg|gfff+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40607* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|fg+FG+G+fffg|gfff+G+gf|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40608* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|gf+FG+G+fffg|gfff+G+gf|fg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40609* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gf|fg+FG+G+fffg|gfff+G+fg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40610* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|ff+FF+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40611* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gf|ff+FF+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+fg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40611a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggg+F+gf|ff+FF+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+fg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40611b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggg+F+gf|ff+FF+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+fg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40611c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+gggg|gggg+F+gf|ff+FF+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+fg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40612* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|fg+FF+G+fffg|gfff+G+gg|gf+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40613* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; Is this a duplicate of something found earlier...?
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|gf+FF+G+fffg|gfff+G+gg|fg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40613a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggg+F+fg|gf+FF+G+fffg|gfff+G+gg|fg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40613b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggg+F+fg|gf+FF+G+fffg|gfff+G+gg|fg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40613c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+gggg|gggg+F+fg|gf+FF+G+fffg|gfff+G+gg|fg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40614* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gf|fg+FF+G+fffg|gfff+G+gg|gf+GG+G+gggf|fggg+G+fg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40615* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|ff+FG+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40616* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gf|ff+FG+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+fg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40617* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|fg+FG+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gf|gf+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40618* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+fg|gf+FG+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gf|fg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40618a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+gggg|gggg+F+fg|gf+FG+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gf|fg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40618b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+gggg|gggg+F+fg|gf+FG+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gf|fg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg+gggg
  g=gggg
  }

sq40618c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+gggg|gggg+F+fg|gf+FG+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+gf|fg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG+gggg
  g=gggg
  }

sq40619* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gf|fg+FG+G+fffg|gfff+G+gg|gg+GG+G+gggf|fggg+G+fg|gf+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40620* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40620a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40620b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40620c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG+gggg
  g=gggg
  }

sq40621* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gf|gg+GG+GGGG
  g=gggg
  }

sq40621a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gf|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40621b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gf|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40621c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gf|gg+GG+GGGG+gggg
  g=gggg
  }

sq40622* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gf+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40622a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gg|gf+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40622b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gg|gf+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40622c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+gg|gf+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GG+GGGG+gggg
  g=gggg
  }

sq40623* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gf|fg+FF+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40623a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+gf|fg+FF+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40623b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+gf|fg+FF+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40623r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=G|F|G+fggg|gggf+G|F|G+gf|fg+GG|FF|GG+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40624* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gf+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40624a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gf+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40624b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gf+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40624c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gf+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40625* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40625a { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40625b { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg+gggg
  g=gggg
  }

sq40625c { ; Anthony Hanmer 29/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gggg+gggg+gggg+F+fggg|gggf+F+fg|fg+FF+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG+gggg
  g=gggg
  }

sq40626* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gf+FF+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|fg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40627* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gf|fg+FF+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gf+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40628* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FG+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40629* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FG+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gf|gg+GF+GGGG
  g=gggg
  }

sq40630* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gf+FG+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40631* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gf|fg+FG+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40632* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FG+G+gffg|gffg+G+gf|gg+GG+G+gggf|fggg+G+gg|gf+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40633* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|fg+FG+G+gffg|gffg+G+gg|gf+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40634* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gf+FG+G+gffg|gffg+G+ff|gg+GG+G+gggf|fggg+G+gg|fg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40635* { ; Anthony Hanmer 27/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00001) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gf|fg+FG+G+gffg|gffg+G+fg|gg+GG+G+gggf|fggg+G+gg|gf+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40636* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+FG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  ;f=F+fggg|ggff+F+ff|gg+FF+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  ;(from f=f+f+f|g-g+f)
  g=gggg
  }

sq40637* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+GG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40638* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+FF+F+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40639* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+FF+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+GG+GGGG
  g=gggg
  }

sq40640* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+GF+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FG+GGGG
  g=gggg
  }

sq40641* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+FG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+GF+GGGG
  g=gggg
  }

sq40642* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+FF+G+gfff|gfgg+F+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40643* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+GF+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+FG+GGGG
  g=gggg
  }

sq40644* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+GF+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+F+gggg|gggg+G+gg|ff+FG+GGGG
  g=gggg
  }

sq40645* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+FG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+F+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40646* { ; Anthony Hanmer 29/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+FG+G+gfff|gfgg+G+gg|gg+GF+F+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40647* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+gf|gg+FF+G+gfff|gfgg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40648* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+FF+G+gfff|gfgg+G+gf|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40649* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+FF+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40650* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ggff+F+ff|gg+FF+G+ffff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40651* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|gg+FF+G+gfff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40652* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggfg+F+ff|gg+FF+G+gfff|gfgf+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40653* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ggff+F+fg|gg+FF+G+ffff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40654* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gg+FF+G+gfff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40655* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggfg+F+fg|gg+FF+G+gfff|gfgf+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40656* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+FF+G+gfff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40657* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+FF+G+gfff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40658* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ggff+F+ff|gg+FG+G+ffff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40659* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|gg+FG+G+gfff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40660* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggfg+F+ff|gg+FG+G+gfff|gfgf+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40661* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggf+F+ff|gg+FG+G+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40662* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+gf|gg+FG+G+gfff|gfgg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40663* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+FG+G+gfff|gfgg+G+gf|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40664* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+FG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40665* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+FG+G+gfff|gfgg+G+gg|fg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40666* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+FG+G+gfff|gfgg+G+gg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40667* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+FG+G+gfff|gfgg+G+gg|fg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40668* { ; Anthony Hanmer 30/6/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+FG+G+gfff|gfgg+G+gg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40669* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+G+ff|gg+FF+F+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+GG+GGGG
  g=gggg
  }

sq40670* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+GF+F+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FG+GGGG
  g=gggg
  }

sq40671* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+G+ff|gg+FG+F+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+GF+GGGG
  g=gggg
  }

sq40672* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+G+ff|gg+FF+F+gfff|gfgg+F+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40673* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+G+ff|gg+GF+F+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+FG+GGGG
  g=gggg
  }

sq40674* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+gf|gg+FF+F+gfff|gfgg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40675* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+fg|gg+FF+F+gfff|gfgg+G+gf|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40676* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+fg|gg+FF+F+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40677* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|ggff+F+ff|gg+FF+F+ffff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40678* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+ff|gg+FF+F+gfff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40679* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggfg+F+ff|gg+FF+F+gfff|gfgf+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40680* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|ggff+F+fg|gg+FF+F+ffff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40681* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+fg|gg+FF+F+gfff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40682* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggfg+F+fg|gg+FF+F+gfff|gfgf+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40683* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+FF+F+gfff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40684* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+fg|gg+FF+F+gfff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40685* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|ggff+F+ff|gg+FG+F+ffff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40686* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+F+ff|gg+FG+F+gfff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40687* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggfg+F+ff|gg+FG+F+gfff|gfgf+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40688* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggf+F+ff|gg+FG+F+ffff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40689* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+gf|gg+FG+F+gfff|gfgg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40690* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+fg|gg+FG+F+gfff|gfgg+G+gf|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40691* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+fg|gg+FG+F+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40692* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+FG+F+gfff|gfgg+G+gg|fg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40693* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+FG+F+gfff|gfgg+G+gg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40694* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+FG+F+gfff|gfgg+G+gg|fg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40695* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+FG+F+gfff|gfgg+G+gg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40696* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+FG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+GF+GGGG
  g=gggg
  }

sq40697* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+GG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40698* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+FG+G+gfff|gfgg+F+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40699* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+GG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+FF+GGGG
  g=gggg
  }

sq40700* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+F+ff|gg+GG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+F+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40701* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+gf|gg+FG+G+gfff|gfgg+G+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40702* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+FG+G+gfff|gfgg+G+gf|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40703* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+FG+G+gfff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40704* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ggff+F+ff|gg+FG+G+ffff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40705* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+ff|gg+FG+G+gfff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40706* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggfg+F+ff|gg+FG+G+gfff|gfgf+G+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40707* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ggff+F+fg|gg+FG+G+ffff|gfgg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40708* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gg+FG+G+gfff|gffg+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40709* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggfg+F+fg|gg+FG+G+gfff|gfgf+G+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40710* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+FG+G+gfff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40711* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+FG+G+gfff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40712* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+FG+G+gfff|gfgg+G+gg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40713* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+GG+G+gfff|gfgg+F+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40714* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|ggff+G+ff|gg+GG+G+gfff|gfgg+F+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+F+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40715* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+gf|gg+FG+G+gfff|gfgg+F+fg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40716* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+fg|gg+FG+G+gfff|gfgg+F+gf|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40717* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+fg|gg+FG+G+gfff|gfgg+F+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40718* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ggff+G+ff|gg+FG+G+ffff|gfgg+F+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40719* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+ff|gg+FG+G+gfff|gffg+F+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40720* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggfg+G+ff|gg+FG+G+gfff|gfgf+F+gg|gg+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40721* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ggff+G+fg|gg+FG+G+ffff|gfgg+F+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40722* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gg+FG+G+gfff|gffg+F+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40723* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggfg+G+fg|gg+FG+G+gfff|gfgf+F+gg|gg+GG+G+gggg|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40724* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+FG+G+gfff|ffgg+F+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40725* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+fg|gg+FG+G+gfff|ffgg+F+gg|gg+GG+G+gggg|gggg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40726* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00004) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+G+ff|gg+FG+G+gfff|gfgg+F+gg|gf+GG+G+gggg|fggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40727* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FF+F+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+GG+G+gggg|ggff+G+gg|gg+GG+GGGG
  ;f=F+ffgg|gggg+F+ff|gg+FF+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+GG+G+gggg|ggff+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40728* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+GG+G+gggg|ggff+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40729* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+GF+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+FG+G+gggg|ggff+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40730* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+GG+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+FG+G+gggg|ggff+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40731* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FF+G+ggff|gggg+G+gg|gf+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|ggff+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40732* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FF+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|ggff+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40733* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FF+G+ggff|gggg+G+gg|gf+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|ggfg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40734* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FF+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+GG+G+gggg|ggfg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40735* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FF+G+ggff|fggg+G+gg|gg+GG+G+gggg|gfgg+G+gg|ff+GG+G+gggg|ggff+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40736* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|ff+FF+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|gg+GG+G+gggg|ggff+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40737* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|fg+FF+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|gg+GG+G+gggg|ggff+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40738* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FF+G+ggff|ggfg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40739* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FF+G+ggff|ggfg+G+gg|gf+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40740* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FF+G+ggff|ggfg+G+gg|gg+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|gggg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40741* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggff|gggg+G+gg|gf+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|ggff+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40742* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|ggff+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40743* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FG+G+ggff|gggg+G+gg|gf+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|ggfg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40744* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FG+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+GG+G+gggg|ggfg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40745* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggff|fggg+G+gg|gg+GG+G+gggg|gfgg+G+gg|ff+GG+G+gggg|ggff+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40746* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|ff+FG+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|gg+GG+G+gggg|ggff+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40747* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|fg+FG+G+ggff|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|gg+GG+G+gggg|ggff+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40748* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FG+G+ggff|ggfg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40749* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FG+G+ggff|ggfg+G+gg|gf+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40750* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00007) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+ff|gg+FG+G+ggff|ggfg+G+gg|gg+GG+G+gggg|ffgg+G+gg|fg+GG+G+gggg|gggg+G+gg|gf+GF+GGGG
  g=gggg
  }

sq40751* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+ff|gg+GG+F+ggff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+gggg|gggg+G+gg|ff+FG+GGGG
  ;f=F+ffgg|ggff+F+ff|gg+GG+G+ggff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40752* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+ff|gg+GG+G+ggff|ffgg+G+gg|gg+GF+F+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FG+GGGG
  g=gggg
  }

sq40753* { ; Anthony Hanmer 11/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+fg|gg+GG+G+ggff|ffgg+G+gg|fg+GF+F+gggg|gggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gf+FG+GGGG
  g=gggg
  }

sq40754* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+ff|gg+GG+G+ggff|ffgg+G+gg|gg+FF+F+gggg|gggg+F+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40755* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+ff|gg+FF+G+ggff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+gggg|gggg+F+gg|ff+GG+GGGG
  g=gggg
  }

sq40756* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+ff|gg+FF+G+ggff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40757* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+ff|gg+GG+F+ggff|ffgg+F+gg|gg+FF+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40758* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+ff|gg+GG+G+ggff|ffgg+G+gg|gg+FG+G+gggg|gggg+F+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+GGGG
  g=gggg
  }

sq40759* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+ff|gg+GG+F+ggff|ffgg+F+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gggg|gggg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40760* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ffgg|ggff+G+gg|gg+GG+G+ggff|ffgg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40761* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+GG+G+ggff|gggg+G+gg|gg+GG+G+gggg|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40762* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+GG+G+gggg|ffgg+G+gg|gg+GG+G+gggg|ggff+G+gg|gg+GG+G+ggff|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40763* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gfgg|ggff+F+ff|gg+GG+G+ggfg|ffgg+G+gg|gg+GG+G+fggg|gggg+G+gg|gg+GG+G+gggf|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40764* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+ff|gg+GG+G+gggf|ffgg+G+gg|gg+GG+G+gfgg|gggg+G+gg|gg+GG+G+ggfg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40765* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gg+GG+G+ggff|ffgg+G+gg|gg+GG+G+gggg|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40766* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gg+GG+G+ggff|ffgg+G+gg|ff+GG+G+gggg|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40767* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ffff+F+ff|gg+GG+G+ffff|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40768* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fgfg|gfgf+F+ff|gg+GG+G+gfgf|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40769* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|gg+GG+G+ggff|ffgg+G+gg|fg+GG+G+gggg|gggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gf+FF+GGGG
  g=gggg
  }

sq40770* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|ggff+F+fg|gg+GG+G+gggf|ffgg+G+gg|fg+GG+G+ggfg|gggg+G+gf|gg+GG+G+gfgg|gggg+G+gg|gf+FF+GGGG
  g=gggg
  }

sq40771* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs:
  ; A bit too simple really, but ripe for variations...
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+F+fg|gg+GG+G+ggff|fggg+G+gg|fg+GG+G+gggg|ggfg+G+gf|gg+GG+G+gggg|gfgg+G+gg|gf+FF+GGGG
  g=gggg
  }

sq40772* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggf+F+fg|gg+GG+F+ggff|fggg+G+gg|fg+GG+G+gggg|ggfg+G+gf|gg+GF+G+gggg|gfgg+G+gg|gf+FG+GGGG
  g=gggg
  }

sq40773* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggf+G+fg|gg+FG+G+ggff|fggg+G+gg|fg+GG+G+gggg|ggfg+G+gf|gg+GG+G+gggg|gfgg+F+gg|gf+GF+GGGG
  g=gggg
  }

sq40774* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggf+F+fg|gg+GG+G+ggff|fggg+G+gg|fg+GF+F+gggg|ggfg+G+gf|gg+GG+G+gggg|gfgg+G+gg|gf+FG+GGGG
  g=gggg
  }

sq40775* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggf+G+fg|gg+GG+G+ggff|fggg+G+gg|fg+FF+F+gggg|ggfg+F+gf|gg+GG+G+gggg|gfgg+G+gg|gf+GG+GGGG
  g=gggg
  }

sq40776* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gfgg|gggf+F+fg|gg+GG+G+ggff|gfgg+G+gg|fg+GG+G+fggg|ggfg+G+gf|gg+GG+G+ggfg|fggg+G+gg|gf+FF+GGGG
  g=gggg
  }

sq40777* { ; Anthony Hanmer 12/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00015) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+fg|gg+GG+G+ggff|ffgg+G+gg|fg+GG+G+gggg|ggff+G+gf|gg+GG+G+gggg|gggg+G+gg|gf+FF+GGGG
  g=gggg
  }

sq40778* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00020) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  ;f=G+gggf|fggg+G+ff|gg+GF+G+gffg|gffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+F+fggg|gggf+F+gg|ff+GG+GGGG
  f=G+gggf|fggg+G+ff|gg+FF+G+gffg|gffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+fggg|gggf+F+gg|ff+GG+GGGG
  g=gggg
  }

sq40779* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00020) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggf|fggg+F+ff|gg+GF+G+gffg|gffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+G+fggg|gggf+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40780* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00020) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|fggg+G+ff|gg+GF+G+gfff|gffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+F+fggg|gggf+F+gg|ff+GG+GGGG
  g=gggg
  }

sq40781* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00020) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggf|gggg+G+ff|gg+GF+G+gffg|fffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+F+fggg|gggf+F+gg|ff+GG+GGGG
  g=gggg
  }

sq40782* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00020) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggf|fggg+G+gg|ff+FF+G+gffg|gffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+fggg|gggf+F+ff|gg+GG+GGGG
  g=gggg
  }

sq40783* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00020) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggf|fggg+F+gg|ff+GF+G+gffg|gffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+G+fggg|gggf+G+ff|gg+GG+GGGG
  g=gggg
  }

sq40784* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00020) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|fggg+G+gg|ff+GF+G+gfff|gffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+F+fggg|gggf+F+ff|gg+GG+GGGG
  g=gggg
  }

sq40785* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00020) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggf|gggg+G+gg|ff+GF+G+gffg|fffg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+F+fggg|gggf+F+ff|gg+GG+GGGG
  g=gggg
  }

sq40786* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  ;f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+G+gfgg|ggfg+G+gg|gg+GG+F+fggf|fggf+F+ff|gg+GG+GGGG
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+G+gfgg|ggfg+G+gg|gg+GG+F+fggf|fggf+F+ff|gg+FG+GGGG
  g=gggg
  }

sq40787* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FG+G+gfgg|ggfg+G+gg|gg+GF+F+fggf|fggf+F+ff|gg+GG+GGGG
  g=gggg
  }

sq40788* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+G+gfgg|ggfg+G+gg|gg+GF+F+fggf|fggf+F+ff|gg+FG+GGGG
  g=gggg
  }

sq40789* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+G+gfgg|ggfg+G+gg|gg+GG+F+fggf|fggf+F+ff|gg+FF+GGGG
  g=gggg
  }

sq40790* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+FF+G+gfgg|ggfg+G+fg|gf+GG+F+fggf|fggf+F+gf|gg+GG+GGGG
  g=gggg
  }

sq40791* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gf+FF+G+gfgg|ggfg+G+gf|fg+GG+F+fggf|fggf+F+fg|gg+GG+GGGG
  g=gggg
  }

sq40792* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfgg|ggfg+G+gg|ff+GG+F+fggf|fggf+F+ff|gg+GG+GGGG
  g=gggg
  }

sq40793* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfgg|ggfg+G+gg|fg+GG+F+fggf|fggf+F+ff|gf+GG+GGGG
  g=gggg
  }

sq40794* { ; Anthony Hanmer 17/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00021) using the L4 DNA
  ; One of my best HTs
  Axiom |c53f+c2f+c12f+c14f
  f=G+ggfg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfgg|ggfg+G+gg|gf+GG+F+fggf|fggf+F+ff|fg+GG+GGGG
  g=gggg
  }

sq40795* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+F+ffgg|ggfg+F+gg|gg+GG+G+ggff|fggf+G+ff|gg+GG+GGGG
  g=gggg
  }

sq40796* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+F+ffgg|ggfg+F+gg|gg+FG+G+ggff|fggf+G+ff|gg+GG+GGGG
  g=gggg
  }

sq40797* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+FF+F+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+ff|gg+GG+GGGG
  g=gggg
  }

sq40798* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+F+gggg|gggg+F+gg|ff+FF+G+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+ff|gg+GG+GGGG
  g=gggg
  }

sq40799* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+G+ffgg|ggfg+F+gg|gg+GG+F+ggff|fggf+G+ff|gg+GG+GGGG
  g=gggg
  }

sq40800* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FG+G+ffgg|ggfg+F+gg|gg+GF+F+ggff|fggf+G+ff|gg+GG+GGGG
  g=gggg
  }

sq40801* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+F+ffgg|ggfg+F+fg|gg+GG+G+ggff|fggf+G+gf|gg+GG+GGGG
  g=gggg
  }

sq40802* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+F+ffgg|ggfg+F+fg|gg+FG+G+ggff|fggf+G+gf|gg+GG+GGGG
  g=gggg
  }

sq40803* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+FF+F+ffgg|ggfg+G+fg|gg+GG+G+ggff|fggf+G+gf|gg+GG+GGGG
  g=gggg
  }

sq40804* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+F+gggg|gggg+F+gg|ff+FF+G+ffgg|ggfg+G+fg|gg+GG+G+ggff|fggf+G+gf|gg+GG+GGGG
  g=gggg
  }

sq40805* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+G+ffgg|ggfg+F+fg|gg+GG+F+ggff|fggf+G+gf|gg+GG+GGGG
  g=gggg
  }

sq40806* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FG+G+ffgg|ggfg+F+fg|gg+GF+F+ggff|fggf+G+gf|gg+GG+GGGG
  g=gggg
  }

sq40807* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+F+ffgg|ggfg+F+gf|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40808* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GF+F+ffgg|ggfg+F+gf|gg+FG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40809* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+F+gg|ff+FF+F+ffgg|ggfg+G+gf|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40810* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+F+gggg|gggg+F+gg|ff+FF+G+ffgg|ggfg+G+gf|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40811* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+G+ffgg|ggfg+F+gf|gg+GG+F+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40812* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FG+G+ffgg|ggfg+F+gf|gg+GF+F+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40813* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+FF+F+ffgg|ggfg+F+gg|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40814* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+GF+F+ffgg|ggfg+F+gg|gg+FG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40815* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+F+gg|ff+FF+F+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40816* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+F+gggg|gggg+F+gg|ff+FF+G+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40817* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+FF+G+ffgg|ggfg+F+gg|gg+GG+F+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40818* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+G+gg|ff+FG+G+ffgg|ggfg+F+gg|gg+GF+F+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40819* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gf|ff+FF+F+ffgg|ggfg+F+gg|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40820* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gf|ff+GF+F+ffgg|ggfg+F+gg|gg+FG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40821* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+F+gf|ff+FF+F+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40822* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+F+gggg|gggg+F+gf|ff+FF+G+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40823* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gf|ff+FF+G+ffgg|ggfg+F+gg|gg+GG+F+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40824* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gf|ff+FG+G+ffgg|ggfg+F+gg|gg+GF+F+ggff|fggf+G+fg|gg+GG+GGGG
  g=gggg
  }

sq40825* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+G+fg|ff+FF+F+ffgg|ggfg+F+gg|gg+GG+G+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40826* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+G+fg|ff+GF+F+ffgg|ggfg+F+gg|gg+FG+G+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40827* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+F+fg|ff+FF+F+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40828* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+F+gggg|gggg+F+fg|ff+FF+G+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40829* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+G+fg|ff+FF+G+ffgg|ggfg+F+gg|gg+GG+F+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40830* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gf|gg+GG+G+gggg|gggg+G+fg|ff+FG+G+ffgg|ggfg+F+gg|gg+GF+F+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40831* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+fg|ff+FF+F+ffgg|ggfg+F+gf|gg+GG+G+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40832* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+fg|ff+GF+F+ffgg|ggfg+F+gf|gg+FG+G+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40833* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+F+fg|ff+FF+F+ffgg|ggfg+G+gf|gg+GG+G+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40834* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+F+gggg|gggg+F+fg|ff+FF+G+ffgg|ggfg+G+gf|gg+GG+G+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40835* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+fg|ff+FF+G+ffgg|ggfg+F+gf|gg+GG+F+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40836* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+fg|ff+FG+G+ffgg|ggfg+F+gf|gg+GF+F+ggff|fggf+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40837* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|fg+GG+G+gggg|gggg+G+gg|gg+FF+F+ffgg|ggfg+F+gg|gg+GG+G+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40838* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|fg+GG+G+gggg|gggg+G+gg|gg+GF+F+ffgg|ggfg+F+gg|gg+FG+G+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40839* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|fg+GG+G+gggg|gggg+F+gg|gg+FF+F+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40840* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|fg+GG+F+gggg|gggg+F+gg|gg+FF+G+ffgg|ggfg+G+gg|gg+GG+G+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40841* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|fg+GG+G+gggg|gggg+G+gg|gg+FF+G+ffgg|ggfg+F+gg|gg+GG+F+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40842* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|fg+GG+G+gggg|gggg+G+gg|gg+FG+G+ffgg|ggfg+F+gg|gg+GF+F+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40843* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+F+ffgg|ggfg+F+gg|fg+GG+G+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40844* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+F+ffgg|ggfg+F+gg|fg+FG+G+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40845* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+F+gg|gg+FF+F+ffgg|ggfg+G+gg|fg+GG+G+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40846* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+F+gggg|gggg+F+gg|gg+FF+G+ffgg|ggfg+G+gg|fg+GG+G+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40847* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ffgg|ggfg+F+gg|fg+GG+F+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40848* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00023) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gfgg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FG+G+ffgg|ggfg+F+gg|fg+GF+F+ggff|fggf+G+ff|gf+GG+GGGG
  g=gggg
  }

sq40849* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  ;f=F+ffgg|gggg+F+ff|gg+FF+G+ggfg|gfgf+G+gg|ff+GG+G+gggg|fgfg+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+GGGG
  f=G+ffgg|gggg+F+ff|gg+FF+F+ggfg|gfgf+G+gg|ff+GG+G+gggg|fgfg+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40850* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggfg|gfgf+G+gg|ff+GG+G+gggg|fgfg+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40851* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggfg|gfgf+G+gg|ff+GF+G+gggg|fgfg+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40852* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+F+ggfg|gfgf+G+gg|ff+GF+G+gggg|fgfg+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40853* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+G+ff|gg+GG+G+ggfg|gfgf+F+gg|ff+FG+G+gggg|fgfg+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40854* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+F+ggfg|gfgf+G+gg|ff+GG+G+gggg|fgfg+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40855* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+G+ggfg|gfgf+G+gg|ff+GF+F+gggg|fgfg+G+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40856* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FF+F+ggff|gfgf+G+gg|ff+GG+G+gggg|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40857* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggff|gfgf+G+gg|ff+GG+G+gggg|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40858* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggff|gfgf+G+gg|ff+GF+G+gggg|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40859* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+F+ggff|gfgf+G+gg|ff+GF+G+gggg|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40860* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+G+ff|gg+GG+G+ggff|gfgf+F+gg|ff+FG+G+gggg|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40861* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+F+ggff|gfgf+G+gg|ff+GG+G+gggg|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40862* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+G+ggff|gfgf+G+gg|ff+GF+F+gggg|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40863* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FF+F+ggfg|gfgf+G+gg|ff+GG+G+gggf|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40864* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggfg|gfgf+G+gg|ff+GG+G+gggf|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40865* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+F+ff|gg+FG+G+ggfg|gfgf+G+gg|ff+GF+G+gggf|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40866* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+F+ggfg|gfgf+G+gg|ff+GF+G+gggf|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40867* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|gggg+G+ff|gg+GG+G+ggfg|gfgf+F+gg|ff+FG+G+gggf|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40868* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+F+ggfg|gfgf+G+gg|ff+GG+G+gggf|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GF+GGGG
  g=gggg
  }

sq40869* { ; Anthony Hanmer 18/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00025) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|gggg+F+ff|gg+FG+G+ggfg|gfgf+G+gg|ff+GF+F+gggf|fgfg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+GGGG
  g=gggg
  }

sq40870# { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; (Axiom note:  see Sq30006)
  f=F+gggg|gggg+F+gg|gg+FF+G+ffff|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ffff+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40871* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  ;f=F+gggg|gggg+F+gg|gg+FF+G+gggg|ffff+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+ffff|gggg+G+ff|gg+GG+GGGG
  f=F+gggg|gggg+G+gg|gg+GG+G+gggg|ffff+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+ffff|gggg+F+ff|gg+FF+GGGG
  g=gggg
  }

sq40872* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gg|gg+FF+G+gggf|ffff+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+fffg|gggg+G+ff|gg+GG+GGGG
  g=gggg
  }

sq40873* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gggg+G+gg|gg+GG+G+gggg|ffff+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+F+ff|gg+FF+GGGG
  g=gggg
  }

sq40874* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ffff+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+F+ff|gg+FF+GGGG
  g=gggg
  }

sq40875* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ffgg+G+gg|gg+GG+G+gggg|ggff+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+ggff|gggg+F+ff|gg+FF+GGGG
  g=gggg
  }

sq40876* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ffff+G+ff|gg+GG+G+gggg|gggg+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+F+gg|gg+FF+GGGG
  g=gggg
  }

sq40877* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ffff+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+F+ff|gg+FF+GGGG
  g=gggg
  }

sq40878* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gggg+F+gg|gg+GG+G+gggg|ffff+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+ff|gg+FF+GGGG
  g=gggg
  }

sq40879* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ffff+F+gg|gg+GG+G+gggg|gggg+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+ff|gg+FF+GGGG
  g=gggg
  }

sq40880* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ffgg+F+gg|gg+GG+G+gggg|ggff+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+ggff|gggg+G+ff|gg+FF+GGGG
  g=gggg
  }

sq40881* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ffff+F+ff|gg+GG+G+gggg|gggg+G+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40882* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ffff+F+gg|ff+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+ff|gg+FF+GGGG
  g=gggg
  }

sq40883* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|gggg+F+gg|gg+GG+G+gggg|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ffff+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40884* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|ffff+F+gg|gg+GG+G+ffff|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40885* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gg+FF+G+ggff|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40886* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ffgg+F+gg|gg+FF+G+ggff|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ggff+G+gg|ff+GG+GGGG
  g=gggg
  }

sq40887* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gg+GG+G+ggff|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40888* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ffgg+F+gg|gg+GG+G+ggff|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ggff+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40889* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|gf+GG+G+ggff|gggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40890* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+ff|gg+GG+G+ggff|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40891* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|ff+GG+G+ggff|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gg|gg+FF+GGGG
  g=gggg
  }

sq40892* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gg|gg+GG+G+gggf|gggg+G+ff|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|fggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40893* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+ff|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|fggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40894* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+fg|fg+GG+G+gggf|gggg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|fggg+G+gg|gf+FF+GGGG
  g=gggg
  }

sq40895* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gf|gf+GG+G+gggf|gggg+G+fg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|fggg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40896* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gf|fg+GG+G+gggf|gggg+G+fg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|fggg+G+gg|gf+FF+GGGG
  g=gggg
  }

sq40897* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|fggg+G+ff|ff+FF+GGGG
  g=gggg
  }

sq40898* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gg|gg+GG+G+gggf|gggg+G+fg|gg+GG+G+gggg|gggg+G+gf|gg+GG+G+gggg|fggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40899* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gg|gg+GG+G+gggf|gggg+G+gf|gg+GG+G+gggg|gggg+G+fg|gg+GG+G+gggg|fggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40900* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00026) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fffg|gfff+F+gg|gg+GG+G+gggf|gggg+G+gg|gg+GG+G+gggg|gggg+G+ff|gg+GG+G+gggg|fggg+G+gg|ff+FF+GGGG
  g=gggg
  }

sq40901# { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; (Axiom note: see Sq30006)
  f=F+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+ffff|ggff+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40901a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gggg+F+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+ffff|ggff+G+fg|ff+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40901c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gggg+gggg+gggg+F+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+ffff|ggff+G+fg|ff+GG+GGGG+gggg
  g=gggg
  }

sq40902* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FG+G+ffff|ggff+G+fg|ff+GF+GGGG
  g=gggg
  }

sq40903# { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; (Axiom note: see Sq30006)
  f=F+gggg|gggg+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ffff|ggff+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40903a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+g+c12f
  f=gggg+F+gggg|gggg+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ffff|ggff+G+fg|ff+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40903c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gggg+gggg+gggg+F+gggg|gggg+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ffff|ggff+G+fg|ff+GG+GGGG+gggg
  g=gggg
  }

sq40904* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ffff|ggff+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40905* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ffff|ggff+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40906* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+ffff|ggff+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40907# { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; (Axiom note: see Sq30006)
  f=F+gggg|gggg+F+gg|gg+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ffff|ggff+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40907a { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+g+c12f
  f=gggg+F+gggg|gggg+F+gg|gg+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ffff|ggff+G+fg|ff+GG+GGGG+gggg+gggg+gggg
  g=gggg
  }

sq40907c { ; Anthony Hanmer 25/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+g+c12f
  f=gggg+gggg+gggg+F+gggg|gggg+F+gg|gg+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ffff|ggff+G+fg|ff+GG+GGGG+gggg
  g=gggg
  }

sq40908# { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; (Axiom note: see Sq30006)
  f=F+gggg|gggg+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ffff|ggff+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40909* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+F+gggg|gggg+F+gg|gg+GG+G+ffff|ggff+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40910* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+ffff|ggff+F+fg|ff+FG+GGGG
  g=gggg
  }

sq40911* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+gfff|ggff+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40912* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FG+G+gfff|ggff+G+fg|ff+GF+GGGG
  g=gggg
  }

sq40913* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfff|ggff+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40914* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggff+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40915* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggff+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40916* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+gfff|ggff+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40917* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gg|gg+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggff+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40918* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfff|ggff+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40919* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+F+gggg|gggg+F+gg|gg+GG+G+gfff|ggff+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40920* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggg+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+gfff|ggff+F+fg|ff+FG+GGGG
  g=gggg
  }

sq40921* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+gfff|ggfg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40922* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FG+G+gfff|ggfg+G+fg|ff+GF+GGGG
  g=gggg
  }

sq40923* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfff|ggfg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40924* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggfg+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40925* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggfg+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40926* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+gfff|ggfg+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40927* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gg+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggfg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40928* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfff|ggfg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40929* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+F+gggg|gggg+F+gg|gg+GG+G+gfff|ggfg+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40930* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+gfff|ggfg+F+fg|ff+FG+GGGG
  g=gggg
  }

sq40931* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+ggff|gggg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40932* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FG+G+ggff|gggg+G+fg|ff+GF+GGGG
  g=gggg
  }

sq40933* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ggff|gggg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40934* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ggff|gggg+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40935* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ggff|gggg+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40936* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+ggff|gggg+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40937* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gg+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ggff|gggg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40938* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ggff|gggg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40939* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+F+gggg|gggg+F+gg|gg+GG+G+ggff|gggg+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40940* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+ggff|gggg+F+fg|ff+FG+GGGG
  g=gggg
  }

sq40941* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+gggg|gggg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40942* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FG+G+gggg|gggg+G+fg|ff+GF+GGGG
  g=gggg
  }

sq40943* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gggg|gggg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40944* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40945* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40946* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffff|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+gggg|gggg+F+fg|ff+FF+GGGG
  g=gggg
  }

sq40947* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+F+gg|gg+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40948* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+F+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gggg|gggg+G+fg|ff+GG+GGGG
  g=gggg
  }

sq40949* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffff|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+F+gggg|gggg+F+gg|gg+GG+G+gggg|gggg+G+fg|ff+FF+GGGG
  g=gggg
  }

sq40950* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+G+gg|gg+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+gggg|gggg+F+fg|ff+FG+GGGG
  g=gggg
  }

sq40951* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+gfff|ggfg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40952* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FG+G+gfff|ggfg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40953* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfff|ggfg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40954* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggfg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40955* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggfg+F+gg|fg+FF+GGGG
  g=gggg
  }

sq40956* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+gfff|ggfg+F+gg|fg+FF+GGGG
  g=gggg
  }

sq40957* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gf+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gfff|ggfg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40958* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gfff|ggfg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40959* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+fggg|gggf+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+F+gggg|gggg+F+gg|gg+GG+G+gfff|ggfg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40960* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+fggg|gggf+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+gfff|ggfg+F+gg|fg+FG+GGGG
  g=gggg
  }

sq40961* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+ggff|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40962* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FG+G+ggff|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40963* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ggff|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40964* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ggff|gggg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40965* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ggff|gggg+F+gg|fg+FF+GGGG
  g=gggg
  }

sq40966* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+ggff|gggg+F+gg|fg+FF+GGGG
  g=gggg
  }

sq40967* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|gf+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+ggff|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40968* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+ggff|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40969* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+F+gggg|gggg+F+gg|gg+GG+G+ggff|gggg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40970* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+ggff|gggg+F+gg|fg+FG+GGGG
  g=gggg
  }

sq40971* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FF+G+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40972* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+F+gg|gg+FG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40973* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40974* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40975* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+F+gg|fg+FF+GGGG
  g=gggg
  }

sq40976* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffff|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+F+gggg|gggg+F+gg|fg+FF+GGGG
  g=gggg
  }

sq40977* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+F+fg|gf+FF+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GG+G+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40978* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+F+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+FF+G+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40979* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffff|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+F+gggg|gggg+F+gg|gg+GG+G+gggg|gggg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40980* { ; Anthony Hanmer 19/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00031) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffff|ggff+G+fg|gf+GG+G+gggg|ffgg+G+gf|gg+GG+G+gggg|gggg+G+gg|gg+GF+G+gggg|gggg+F+gg|fg+FG+GGGG
  g=gggg
  }

sq40981* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  ;f=G+gggg|gggg+F+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GF+F+ffgg|ggff+G+gg|fg+FG+GGGG
  f=F+gggg|gggg+F+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GF+G+ffgg|ggff+G+gg|fg+FG+GGGG
  g=gggg
  }

sq40982* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggg+F+gg|gf+FG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GF+F+ffgg|ggff+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40983* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gg|gf+FF+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GG+G+ffgg|ggff+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40984* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggg+G+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GG+F+ffgg|ggff+F+gg|fg+FF+GGGG
  g=gggg
  }

sq40985* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggg+G+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GF+F+ffgg|ggff+F+gg|fg+FG+GGGG
  g=gggg
  }

sq40986* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggg+G+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+FF+F+ffgg|ggff+F+gg|fg+GG+GGGG
  g=gggg
  }

sq40987* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GG+G+ffgg|ggff+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40988* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggg+F+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+FF+F+ffgg|ggff+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40989* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+gggg|gggg+G+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+F+gggf|fggg+F+gf|gg+FF+G+ffgg|ggff+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40990* { ; Anthony Hanmer 20/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=F+gggg|gggg+F+gg|gf+FG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GG+G+ffgg|ggff+G+gg|fg+GF+GGGG
  g=gggg
  }

sq40991* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GF+G+gggg|gggg+G+gg|fg+FG+GGGG
  g=gggg
  }

sq40992* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+gg|gf+FG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GF+F+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40993* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gf+FF+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40994* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GG+F+gggg|gggg+F+gg|fg+FF+GGGG
  g=gggg
  }

sq40995* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GF+F+gggg|gggg+F+gg|fg+FG+GGGG
  g=gggg
  }

sq40996* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+FF+F+gggg|gggg+F+gg|fg+GG+GGGG
  g=gggg
  }

sq40997* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|fg+FF+GGGG
  g=gggg
  }

sq40998* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+F+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+FF+F+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq40999* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; 4x4 square HTile;
  ; variation on an L2 HT (sq00034) using the L4 DNA
  Axiom c53f+c2f+c12f+c14f
  f=G+ffgg|ggff+G+gg|gf+GG+G+ggfg|gfgg+G+fg|gg+GG+F+gggf|fggg+F+gf|gg+FF+G+gggg|gggg+G+gg|fg+GG+GGGG
  g=gggg
  }

sq41000* { ; Anthony Hanmer 23/7/2003
  Angle 4 ; The thousandth 4x4 square HTile!
  ; variation on an L2 HT (sq00034) using the L4 DNA
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ffgg|ggff+F+gg|gf+FG+G+ggfg|gfgg+G+fg|gg+GG+G+gggf|fggg+G+gf|gg+GG+G+gggg|gggg+G+gg|fg+GF+GGGG
  g=gggg
  }

