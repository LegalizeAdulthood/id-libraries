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
         ; are marked with letters.  (See HTDNA.l for a set of "DNA"
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

sq10001 { ; Anthony Hanmer 31/10/2003
  Angle 3 ; (Angle could be anything)
  ;  The unique 1-d HTile, with glide symmetry
  ; (Perfect dust, a variation on Cantor Dust)
  Axiom f
  f=fgf
  }

sq20001* { ; Anthony Hanmer 12/9/2002
  Angle 4  ; 1st 2x2 square HTile
  ; (Perfectly regular, but still a member)
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+f; See 8956
  }

sq20001a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; Same as c, rotated 180 degrees
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f|f+f+gg+gg+gg
  g=gg
  }

sq20001b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; X-axis reflectional symmetry
  ; Same as 21
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+f|f+f+gg+gg
  g=gg
  }

sq20001c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; Same as a, rotated 180 degrees
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+f|f+f+gg
  g=gg
  }

sq20001k { ; Anthony Hanmer 19/10/2002
  Angle 4  ; 1st 2x2 square HTile
  Axiom f  ; Colour 1
  f=>1f+f|f+<1f
  }

sq20001l { ; Anthony Hanmer 19/10/2002
  Angle 4  ; 1st 2x2 square HTile
  Axiom f  ; Colour 2
  f=>1f+>1f|<1f+<1f
  }

sq20001m { ; Anthony Hanmer 19/10/2002
  Angle 4  ; 1st 2x2 square HTile
  Axiom f  ; Colour 3
  f=>1f+<1f|>1f+<1f
  }

sq20001n { ; Anthony Hanmer 19/10/2002
  Angle 4  ; 1st 2x2 square HTile
  Axiom f  ; Colour 4
  f=>1f+<1f|<1f+>1f
  }

sq20001w { ; Anthony Hanmer 26/8/2003
  Angle 4
  ; Just for the heck of it!
  Axiom c53f+c2f+c12f+c14f
  f=f+f|f+g|f|g
  g=gg
  }

sq20001x { ; Anthony Hanmer 26/8/2003
  Angle 4
  ; Just for the heck of it!
  ; Actually, this SEEMS to represent
  ; 1/8 of a larger square...
  ; (See 20001r below)
  Axiom c53f+c2f+c12f+c14f
  f=f|f|g+f|f+f|f|g
  g=gg
  }

sq20001r { ; Anthony Hanmer 26/8/2003
  Angle 4
  ; New subset:  exterior segments all direction-reversed
  ; by replacing all ext f with g|f|g, ff with gg|ff|gg. etc.
  ; Usable for all HTs with 1) x-axis reflectional symmetry
  ; and with 2) all ext f on 1 straight line; and for all
  ; a-p HTs meeting condition 2.  Wild!
  ; The resulting tile has 1/2 the area of the original tile 
  ; it was derived from:  1/8 Sq for non-a-p HTs,
  ; 1/4 Sq for a-p types.  Designation letter:  r for reflection.
  Axiom c53f+c2f+c12f+c14f
  f=g|f|g+f|f+g|f|g
  g=gg
  }

sq20001~ { ; Anthony Hanmer 9/9/2003
  Angle 4
  ; New subset:  Combination of r and !;
  ; X-axis AND baseline (y-axis) reflectional symmetries...
  Axiom f
  f=g|f|g+!f|!f+g|f|g
  g=gg
  }

sq20002# { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 2nd 2x2 square HTile, 1st dust
  Axiom c53f+g+c12f; Perfect dust, and a-p
  f=f+g+f|f-g+f
  g=gg
  }

sq20002a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+g+c12f
  f=gg+f+g+f|f-g+f+gg+gg+gg
  g=gg
  }

sq20002k { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 2nd 2x2 square HTile, 1st dust
  Axiom f ; Perfect dust
  f=>1f+g+f|f-g+<1f; Colour 1
  g=gg
  }

sq20002l { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 2nd 2x2 square HTile, 1st dust
  Axiom f ; Perfect dust
  f=>1f+g+<1f|>1f-g+<1f; Colour 2
  g=gg
  }

sq20002m { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 2nd 2x2 square HTile, 1st dust
  Axiom f ; Perfect dust
  f=>1f+g+>1f|<1f-g+<1f; Colour 3
  g=gg
  }

sq20002r { ; Anthony Hanmer 30/8/2003
  Angle 4 ; 
  Axiom +c53f+g+c12f
  f=g|f|g+g+f|f-g+g|f|g
  g=gg
  }

sq20003^ { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 3rd 2x2 square HTile, 2nd (sf) dust
  Axiom c9f;+c47f+c12f+c14f
  f=f+gf|fg+f
  g=gg
  }

sq20003k { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 3rd 2x2 square HTile, 2nd (sf) dust
  Axiom f ; Colour 1
  f=>1f+gf|fg+<1f
  g=gg
  }

sq20003l { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 3rd 2x2 square HTile, 2nd (sf) dust
  Axiom f ; Colour 2
  f=>1f+g<1f|>1fg+<1f
  g=gg
  }

sq20003m { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 3rd 2x2 square HTile, 2nd (sf) dust
  Axiom f ; Colour 3
  f=>1f+g>1f|<1fg+<1f
  g=gg
  }

sq20003n { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 3rd 2x2 square HTile, 2nd (sf) dust
  Axiom f ; Colour 4
  f=>1f+g<1f|<1fg+>1f
  g=gg
  }

sq20003r { ; Anthony Hanmer 30/8/2003
  Angle 4 ; Ext-reflected 1/8 HT (to be known as "e-r")
  Axiom c9f+c47f+c12f+c14f
  f=g|f|g+gf|fg+g|f|g
  g=gg
  }

sq20004* { ; Anthony Hanmer 11/10/2002
  Angle 4 ; 4th 2x2 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f; Unexpected (as 1-sided interior) but true
  f=f+f+f|g-g+f
  g=gg
  }

sq20004a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f+f|g-g+f+gg+gg+gg
  g=gg
  }

sq20004c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+f+f|g-g+f+gg
  g=gg
  }

sq20005~ { ; Anthony Hanmer 15/10/2002
  Angle 4 ; 5th 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  f=f+!f|!f+f
  }

sq20005a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  ; Weird, needs investigating.
  Axiom f
  f=gg+f+!f|!f+f+gg+gg+gg
  g=gg
  }

sq20005b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  ; Weird, needs investigating.
  Axiom f
  f=gg+gg+f+!f|!f+f+gg+gg
  g=gg
  }

sq20005c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  ; Weird, needs investigating.
  Axiom f
  f=gg+gg+gg+f+!f|!f+f+gg
  g=gg
  }

sq20005r { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 5th 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  f=g|f|g+!f|!f+g|f|g
  g=gg
  }

sq20006~ { ; Anthony Hanmer 15/10/2002
  Angle 4 ; 6th 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; X-axis reflectional symmetry
  ; One of my VERY best HTs
  f=f+!gf|!fg+f
  g=gg
  }

sq20006a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  ; Weird, needs investigating.
  Axiom f
  f=gg+f+!gf|!fg+f+gg+gg+gg
  g=gg
  }

sq20006b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom f ; This IS a new 1/2-Sq flip tile.
  ; X-axis reflectional symmetry
  f=gg+gg+f+!gf|!fg+f+gg+gg
  g=gg
  }

sq20006c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  ; Weird, needs investigating.
  Axiom f
  f=gg+gg+gg+f+!gf|!fg+f+gg
  g=gg
  }

sq20006r { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 6th 2x2 square tile...
  Axiom +f ; when put with its mirror image.
  ; X-axis reflectional symmetry
  f=g|f|g+!gf|!fg+g|f|g
  g=gg
  }

sq20007* { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 7th 2x2 square HTile
  ; Another oddity:  0=c, a=b!
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|gg+f
  g=gg
  }

sq20007a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+ff|gg+f+gg+gg+gg
  g=gg
  }

sq20007b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+ff|gg+f+gg+gg
  g=gg
  }

sq20007c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+ff|gg+f+gg
  g=gg
  }

sq20009# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 9th 2x2 square HTile, 3rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|fg+f|g-g+g+g
  g=gg
  }

sq20010# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 10th 2x2 square HTile, 4th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+fg+f|g-gf+g
  g=gg
  }

sq20011# { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 11th 2x2 square HTile, 5th dust
  ; (10b)
  Axiom c53f+c2f+c12f+c14f
  f=gf+gg+f+f|f+g+gg+gg
  ;f=f+gf+f|g-fg+g; formerly
  g=gg
  }

sq20012# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 12th 2x2 square HTile, 6th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|gg+f|g-g+g+g
  g=gg
  }

sq20012a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f+f|gg+f|g-g+g+g+gg+gg+gg
  g=gg
  }

sq20012c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+f+f|gg+f|g-g+g+g+gg
  g=gg
  }

sq20013# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 13th 2x2 square HTile, 7th dust
  ; (1a)
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+f|g-gg+g
  g=gg
  }

sq20014# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 14th 2x2 square HTile, 8th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff+g+gf+gg
  g=gg
  }

sq20014a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+ff+g+gf+gg+gg+gg+gg
  g=gg
  }

sq20014b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+ff+g+gf+gg+gg+gg
  g=gg
  }

sq20014c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+ff+g+gf+gg+gg
  g=gg
  }

sq20015* { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 15th 2x2 square HTile
  ; Boring but still a member
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f+f+gg
  g=gg
  }

sq20015a { ; Anthony Hanmer 3/9/2003
  Angle 4 ; 90-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f+f+f+gg+gg+gg+gg
  g=gg
  }

sq20015b { ; Anthony Hanmer 3/9/2003
  Angle 4 ; 180-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+f+f+f+gg+gg+gg
  g=gg
  }

sq20015c { ; Anthony Hanmer 3/9/2003
  Angle 4 ; 270-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+f+f+f+gg+gg
  g=gg
  }

sq20015k { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 15th 2x2 square HTile
  Axiom f ; Colour 1
  f=>1f+f+f+<1f+gg
  g=gg
  }

sq20015l { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 15th 2x2 square HTile
  Axiom f ; Colour 2
  f=>1f+>1f+<1f+<1f+gg
  g=gg
  }

sq20015m { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 15th 2x2 square HTile
  Axiom f ; Colour 3
  f=>1f+<1f+>1f+<1f+gg
  g=gg
  }

sq20015n { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 15th 2x2 square HTile
  Axiom f ; Colour 4
  f=>1f+<1f+<1f+>1f+gg
  g=gg
  }

sq20015r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  ; Wild and different!
  ; (But not true e-r or even HT)
  Axiom c9f+c47f+c12f+c14f
  f=g|f|g+g|f|g+g|f|g+g|f|g+gg
  g=gg
  }

sq20016# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 16th 2x2 square HTile, 9th dust
  ; See RS below - all new, I think!
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g+f|g-g+f+g
  g=gg
  }

sq20016a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f-g+f|g-g+f+g+gg+gg+gg
  g=gg
  }

sq20016b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+f-g+f|g-g+f+g+gg+gg
  g=gg
  }

sq20016c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+f-g+f|g-g+f+g+gg
  g=gg
  }

sq20017^ { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 17th 2x2 square HTile, 10th (sf) dust
  Axiom c9f;+c47f+c12f+c14f
  f=g+f-f|g+g+f+gg+gg+fg+gg
  g=gg
  }

sq20017k { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 17th 2x2 square HTile, 10th (sf) dust
  Axiom f; Colour 1
  f=g+>1f-f|g+g+f+gg+gg+<1fg+gg
  g=gg
  }

sq20017l { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 17th 2x2 square HTile, 10th (sf) dust
  Axiom f; Colour 2
  f=g+>1f->1f|g+g+<1f+gg+gg+<1fg+gg
  g=gg
  }

sq20017m { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 17th 2x2 square HTile, 10th (sf) dust
  Axiom f; Colour 3
  f=g+>1f-<1f|g+g+>1f+gg+gg+<1fg+gg
  g=gg
  }

sq20017n { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 17th 2x2 square HTile, 10th (sf) dust
  Axiom f; Colour 4
  f=g+>1f-<1f|g+g+<1f+gg+gg+>1fg+gg
  g=gg
  }

sq20018^ { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 18th 2x2 square HTile (sf)
  ; (3c)
  Axiom c9f;+c47f+c12f+c14f
  f=gg+gg+gg+f+gf|fg+f+gg
  g=gg
  }

sq20018k { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 18th 2x2 square HTile (sf)
  Axiom f ; Colour 
  f=gg+gg+gg+>1f+gf|fg+<1f+gg
  g=gg
  }

sq20018l { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 18th 2x2 square HTile (sf)
  Axiom f ; Colour 2
  f=gg+gg+gg+>1f+g>1f|<1fg+<1f+gg
  g=gg
  }

sq20018m { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 18th 2x2 square HTile (sf)
  Axiom f ; Colour 3
  f=gg+gg+gg+>1f+g<1f|>1fg+<1f+gg
  g=gg
  }

sq20018n { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 18th 2x2 square HTile (sf)
  Axiom f ; Colour 4
  f=gg+gg+gg+>1f+g<1f|<1fg+>1f+gg
  g=gg
  }

sq20019* { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 19th 2x2 square HTile, a-p
  ; (2c)
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gg+gg+gg+f+g+f|f-g+f+gg
  g=gg
  }

sq20019r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r try with an a-p type, vertical,
  ; doesn't seem to work.  Why?
  Axiom +c53f+g+c12f
  f=gg+gg+gg+g|f|g+g+f|f-g+g|f|g+gg
  g=gg
  }

sq20020* { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 20th 2x2 square HTile
  ; (20c)
  Axiom c53f+c2f+c12f+c14f
  f=gf+gg+gg+f+f|f+g+gg
  g=gg
  }

sq20021* { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 21st 2x2 square HTile
  ; (1b)
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+f|f+f+gg+gg
  g=gg
  }

sq20022^ { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 22nd 2x2 square HTile (sf)
  ; (2b)
  Axiom c9f;+c47f+c12f+c14f
  f=gg+gg+f+gf|fg+f+gg+gg
  g=gg
  }

sq20022k { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 22nd 2x2 square HTile (sf)
  Axiom f ; Colour 1
  f=gg+gg+>1f+gf|fg+<1f+gg+gg
  g=gg
  }

sq20022l { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 22nd 2x2 square HTile (sf)
  Axiom f ; Colour 2
  f=gg+gg+>1f+g>1f|<1fg+<1f+gg+gg
  g=gg
  }

sq20022m { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 22nd 2x2 square HTile (sf)
  Axiom f ; Colour 3
  f=gg+gg+>1f+g<1f|>1fg+<1f+gg+gg
  g=gg
  }

sq20022n { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 22nd 2x2 square HTile (sf)
  Axiom f ; Colour 3
  f=gg+gg+>1f+g<1f|<1fg+>1f+gg+gg
  g=gg
  }

sq20023* { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 23rd 2x2 square HTile
  ; (4b)
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+f+f|g-g+f+gg+gg
  g=gg
  }

sq20024~ { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 24th 2x2 square EDr "tile", 10th (almost sf) dust
  ; "Wrong" setup, but seems to work!
  ; (Works for entire RS as well...)
  ; Needs investigating further, as an exception.
  ; One of my best HTs
  Axiom f;+f+f+f
  f=f+gf|g+f|g+g+f
  g=gg
  }

sq20024a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom f;+f+f+f
  f=gg+f+gf|g+f|g+g+f+gg+gg+gg
  g=gg
  }

sq20024b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom f;+f+f+f
  f=gg+gg+f+gf|g+f|g+g+f+gg+gg
  g=gg
  }

sq20024c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom f;+f+f+f
  f=gg+gg+gg+f+gf|g+f|g+g+f+gg
  g=gg
  }

sq20024k { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 24th 2x2 square EDr "tile", 10th (almost sf) dust
  Axiom f ; Colour 1
  f=>1f+gf|g+f|g+g+<1f
  g=gg
  }

sq20024l { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 24th 2x2 square EDr "tile", 10th (almost sf) dust
  Axiom f ; Colour 2
  f=>1f+g>1f|g+<1f|g+g+<1f
  g=gg
  }

sq20024m { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 24th 2x2 square EDr "tile", 10th (almost sf) dust
  Axiom f ; Colour 3
  f=>1f+g<1f|g+>1f|g+g+<1f
  g=gg
  }

sq20024n { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 24th 2x2 square EDr "tile", 10th (almost sf) dust
  Axiom f ; Colour 4
  f=>1f+g<1f|g+<1f|g+g+>1f
  g=gg
  }

sq20024o { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom f ; Colour 1 from a
  f=gg+>1f+gf|g+f|g+g+<1f+gg+gg+gg
  g=gg
  }

sq20024p { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom f ; Colour 1 from b
  f=gg+gg+>1f+gf|g+f|g+g+<1f+gg+gg
  g=gg
  }

sq20024q { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom f ; Colour 1 from c
  f=gg+gg+gg+>1f+gf|g+f|g+g+<1f+gg
  g=gg
  }

sq20025* { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 25th 2x2 square HTile
  ; I THINK the RS is new.
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f|g+g+f
  g=gg
  }

sq20025a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f-f|g+g+f+gg+gg+gg
  g=gg
  }

sq20025b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+f-f|g+g+f+gg+gg
  g=gg
  }

sq20025c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+f-f|g+g+f+gg
  g=gg
  }

sq20026* { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 26th 2x2 square HTile
  ; a-p, boring but necessary
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=f+g+g|ff|g+g+f
  g=gg
  }

sq20026a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+g+g|ff|g+g+f+gg+gg+gg
  g=gg
  }

sq20026b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+g+g|ff|g+g+f+gg+gg
  g=gg
  }

sq20026k { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 26th 2x2 square HTile
  ; Colour 1
  Axiom f
  f=>1f+g+g|ff|g+g+<1f
  g=gg
  }

sq20026l { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 26th 2x2 square HTile
  ; Colour 2
  Axiom f
  f=>1f+g+g|>1f<1f|g+g+<1f
  g=gg
  }

sq20026m { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 26th 2x2 square HTile
  ; Colour 3
  Axiom f
  f=>1f+g+g|<1f>1f|g+g+<1f
  g=gg
  }

sq20026n { ; Anthony Hanmer 21/10/2002
  Angle 4 ; 26th 2x2 square HTile
  ; Colour 4
  Axiom f
  f=>1f+g+g|<1f<1f|g+g+>1f
  g=gg
  }

sq20026r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=g|f|g+g+g|ff|g+g+g|f|g
  g=gg
  }

sq20027^ { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 27th 2x2 square HTile, 11th (sf) dust
  Axiom c9f;+c47f+c12f+c14f
  f=g+f-f|g+g+g+fg+gf+gg+gg
  g=gg
  }

sq20027k { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 27th 2x2 square HTile, 11th (sf) dust
  Axiom f ; Colour 1
  f=g+>1f-f|g+g+g+fg+g<1f+gg+gg
  g=gg
  }

sq20027l { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 27th 2x2 square HTile, 11th (sf) dust
  Axiom f ; Colour 2
  f=g+>1f->1f|g+g+g+<1fg+g<1f+gg+gg
  g=gg
  }

sq20027m { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 27th 2x2 square HTile, 11th (sf) dust
  Axiom f ; Colour 3
  f=g+>1f-<1f|g+g+g+>1fg+g<1f+gg+gg
  g=gg
  }

sq20027n { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 27th 2x2 square HTile, 11th (sf) dust
  Axiom f ; Colour 4
  f=g+>1f-<1f|g+g+g+<1fg+g>1f+gg+gg
  g=gg
  }

sq20028# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 28th 2x2 square HTile, 12th dust
  ; (9a)
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f|f+g+fg+gf+gg+gg
  g=gg
  }

sq20029# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 29th 2x2 square HTile, 13th dust
  ; RS new, I think.
  Axiom c53f+c2f+c12f+c14f
  f=g+f|f+g+gf+fg+gg+gg
  g=gg
  }

sq20029a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+g+f|f+g+gf+fg+gg+gg+gg+gg+gg
  g=gg
  }

sq20029b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+g+f|f+g+gf+fg+gg+gg+gg+gg
  g=gg
  }

sq20029c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+g+f|f+g+gf+fg+gg+gg+gg
  g=gg
  }

sq20030^ { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 30th 2x2 square HTile, 14th (sf) dust
  ; X-axis reflectional symmetry
  Axiom c9f;+c47f+c12f+c14f
  f=g+f|f+g+gf+gg+fg+gg
  g=gg
  }

sq20030k { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 30th 2x2 square HTile, 14th (sf) dust
  Axiom f ; Colour 1
  f=g+>1f|f+g+gf+gg+<1fg+gg
  g=gg
  }

sq20030l { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 30th 2x2 square HTile, 14th (sf) dust
  Axiom f ; Colour 2
  f=g+>1f|>1f+g+g<1f+gg+<1fg+gg
  g=gg
  }

sq20030m { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 30th 2x2 square HTile, 14th (sf) dust
  Axiom f ; Colour 3
  f=g+>1f|<1f+g+g>1f+gg+<1fg+gg
  g=gg
  }

sq20030n { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 30th 2x2 square HTile, 14th (sf) dust
  Axiom f ; Colour 4
  f=g+>1f|<1f+g+g<1f+gg+>1fg+gg
  g=gg
  }

sq20031# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 31st 2x2 square HTile, 15th dust, a-p
  ; Boring but necessary
  Axiom c53f+g+c12f
  f=f+g+g|ff|g+g+g+gg+gf+gg+gg
  g=gg
  }

sq20031c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  ; THIS is new.
  Axiom c53f+g+c12f
  f=gg+gg+gg+f+g+g|ff|g+g+g+gg+gf+gg+gg+gg
  g=gg
  }

sq20031k { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 31st 2x2 square HTile, 15th dust
  Axiom f ; Colour 1
  f=>1f+g+g|ff|g+g+g+gg+g<1f+gg+gg
  g=gg
  }

sq20031l { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 31st 2x2 square HTile, 15th dust
  Axiom f ; Colour 2
  f=>1f+g+g|>1f<1f|g+g+g+gg+g<f+gg+gg
  g=gg
  }

sq20031m { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 31st 2x2 square HTile, 15th dust
  Axiom f ; Colour 3
  f=>1f+g+g|<1f>1f|g+g+g+gg+g<1f+gg+gg
  g=gg
  }

sq20031n { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 31st 2x2 square HTile, 15th dust
  Axiom f ; Colour 4
  f=>1f+g+g|<1f<1f|g+g+g+gg+g>1f+gg+gg
  g=gg
  }

sq20032^ { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 32nd 2x2 square HTile, 16th (sf) dust
  Axiom c9f;+c47f+c12f+c14f
  f=gg+g+f-f|g+g+g+fg+gf+gg
  g=gg
  }

sq20032k { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 32nd 2x2 square HTile, 16th (sf) dust
  Axiom f ; Colour 1
  f=gg+g+>1f-f|g+g+g+fg+g<1f+gg
  g=gg
  }

sq20032l { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 32nd 2x2 square HTile, 16th (sf) dust
  Axiom f ; Colour 2
  f=gg+g+>1f->1f|g+g+g+<1fg+g<1f+gg
  g=gg
  }

sq20032m { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 32nd 2x2 square HTile, 16th (sf) dust
  Axiom f ; Colour 3
  f=gg+g+>1f-<1f|g+g+g+>1fg+g<1f+gg
  g=gg
  }

sq20032n { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 32nd 2x2 square HTile, 16th (sf) dust
  Axiom f ; Colour 4
  f=gg+g+>1f-<1f|g+g+g+<1fg+g>1f+gg
  g=gg
  }

sq20033* { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 33rd 2x2 square HTile, a-p
  ; (2b)
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=gg+g+f|f+g+ff+gg+gg
  ; f=g+g+f|f-g+g+gg+ff+gg+gg; formerly
  g=gg
  }

sq20034# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 34th 2x2 square HTile, 17th dust
  ; (9b)
  ; One of my VERY best HTs:
  ; One of the most picturesque square HTiles of side 2
  Axiom c53f+c2f+c12f+c14f
  f=gg+g+f|f+g+fg+gf+gg
  ; f=g+g+f|f-g+g+fg+gf+gg+gg; formerly
  g=gg
  }

sq20035# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 35th 2x2 square HTile, 18th dust
  ; RS all look new...
  Axiom c53f+c2f+c12f+c14f
  f=gg+g+f-f|g+g+f+gg+fg+gg
  g=gg
  }

sq20035a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+g+f-f|g+g+f+gg+fg+gg+gg+gg+gg
  g=gg
  }

sq20035b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+g+f-f|g+g+f+gg+fg+gg+gg+gg
  g=gg
  }

sq20035c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+gg+g+f-f|g+g+f+gg+fg+gg+gg
  g=gg
  }

sq20036# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 36th 2x2 square HTile, 19th dust
  ; (29c)
  Axiom c53f+c2f+c12f+c14f
  f=gf+fg+gg+g+f|f+g+gg
  ;f=g+g+f|f-g+g+gf+fg+gg+gg; formerly
  g=gg
  }

sq20037# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 37th 2x2 square HTile, 20th dust
  ; (9c)
  Axiom c53f+c2f+c12f+c14f
  f=gf+gg+g+f|f+f+gg+g
  ;f=f+gf|fg+g+gf+gg+gg+gg; formerly
  g=gg
  }

sq20038^ { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 38th 2x2 square HTile, 21st (sf) dust   
  ; X-axis reflectional symmetry
  Axiom c9f;+c47f+c12f+c14f
  f=gg+fg+gg+g+ff|gg+f+gg
  g=gg
  }

sq20038k { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 38th 2x2 square HTile, 21st (sf) dust   
  Axiom f ; Colour 1
  f=gg+>1fg+gg+g+ff|gg+<1f+gg
  g=gg
  }

sq20038l { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 38th 2x2 square HTile, 21st (sf) dust   
  Axiom f ; Colour 2
  f=gg+>1fg+gg+g+>1f<1f|gg+<1f+gg
  g=gg
  }

sq20038m { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 38th 2x2 square HTile, 21st (sf) dust   
  Axiom f ; Colour 3
  f=gg+>1fg+gg+g+<1f>1f|gg+<1f+gg
  g=gg
  }

sq20038n { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 38th 2x2 square HTile, 21st (sf) dust   
  Axiom f ; Colour 4
  f=gg+>1fg+gg+g+<1f<1f|gg+>1f+gg
  g=gg
  }

sq20039# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 39th 2x2 square HTile, 22nd dust
  ; ()
  Axiom c53f+c2f+c12f+c14f
  f=g+gf|fg+g+gf+fg+gg+gg
  g=gg
  }

sq20040# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 40th 2x2 square HTile, 23rd dust
  ; One of my best HTs
  ; BUT a repeat of Sq20012!
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|g-g+g+gf+gg+gg+gg
  g=gg
  }

sq20041^ { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 41st 2x2 square HTile, 24th (sf) dust
  Axiom c9f;+c47f+c12f+c14f
  f=gg+g+f-f|g+g+f+gg+gg+fg
  g=gg
  }

sq20041k { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 41st 2x2 square HTile, 24th (sf) dust
  Axiom f ; Colour 1
  f=gg+g+>1f-f|g+g+f+gg+gg+<1fg
  g=gg
  }

sq20041l { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 41st 2x2 square HTile, 24th (sf) dust
  Axiom f ; Colour 2
  f=gg+g+>1f->1f|g+g+<1f+gg+gg+<1fg
  g=gg
  }

sq20041m { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 41st 2x2 square HTile, 24th (sf) dust
  Axiom f ; Colour 3
  f=gg+g+>1f-<1f|g+g+>1f+gg+gg+<1fg
  g=gg
  }

sq20041n { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 41st 2x2 square HTile, 24th (sf) dust
  Axiom f ; Colour 4
  f=gg+g+>1f-<1f|g+g+<1f+gg+gg+>1fg
  g=gg
  }

sq20042# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 42nd 2x2 square HTile, 24th dust
  ; ()
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|g-g+g+ff+gg+gg+gg
  g=gg
  }

sq20043# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 43rd 2x2 square HTile, 25th dust
  ; (42a)
  Axiom c53f+c2f+c12f+c14f
  f=g+g|f+g+g+f|g+g+ff+gg+gg
  ;f=g+f+f|g-g+g+gg+ff+gg+gg; formerly
  g=gg
  }

sq20044# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 44th 2x2 square HTile, 26th dust
  ; ()
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|g-g+g+fg+gf+gg+gg
  g=gg
  }

sq20045* { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 45th 2x2 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|g-g+g+gf+fg+gg+gg
  g=gg
  }

sq20045a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+g+f+f|g-g+g+gf+fg+gg+gg+gg+gg+gg
  g=gg
  }

sq20045b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+g+f+f|g-g+g+gf+fg+gg+gg+gg+gg
  g=gg
  }

sq20045c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+g+f+f|g-g+g+gf+fg+gg+gg+gg
  g=gg
  }

sq20046# { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 46th 2x2 square HTile, 27th dust
  ; ()
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|gg+g+gf+gg+gg+gg
  g=gg
  }

sq20047^ { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 47th 2x2 square HTile, 28th (sf) dust
  ; (38a)
  Axiom c9f;+c47f+c12f+c14f
  f=g+ff|gg+f+gg+fg+gg+gg
  g=gg
  }

sq20047k { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 47th 2x2 square HTile, 28th (sf) dust
  Axiom f ; Colour 1
  f=g+>1ff|gg+f+gg+<1fg+gg+gg
  g=gg
  }

sq20047l { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 47th 2x2 square HTile, 28th (sf) dust
  Axiom f ; Colour 2
  f=g+>1f>1f|gg+<1f+gg+<1fg+gg+gg
  g=gg
  }

sq20047m { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 47th 2x2 square HTile, 28th (sf) dust
  Axiom f ; Colour 3
  f=g+>1f<1f|gg+>1f+gg+<1fg+gg+gg
  g=gg
  }

sq20047n { ; Anthony Hanmer 22/10/2002
  Angle 4 ; 47th 2x2 square HTile, 28th (sf) dust
  Axiom f ; Colour 4
  f=g+>1f<1f|gg+<1f+gg+>1fg+gg+gg
  g=gg
  }

sq20048^ { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 48th 2x2 square HTile, 29th (sf) dust
  ; (38b)
  Axiom c9f;+c47f+c12f+c14f
  f=gg+g+ff|gg+f+gg+fg+gg
  g=gg
  }

sq20048k { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 48th 2x2 square HTile, 29th (sf) dust
  Axiom f ; Colour 1
  f=gg+g+>1ff|gg+f+gg+<1fg+gg
  g=gg
  }

sq20048l { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 48th 2x2 square HTile, 29th (sf) dust
  Axiom f ; Colour 2
  f=gg+g+>1f>1f|gg+<1f+gg+<1fg+gg
  g=gg
  }

sq20048m { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 48th 2x2 square HTile, 29th (sf) dust
  Axiom f ; Colour 3
  f=gg+g+>1f<1f|gg+>1f+gg+<1fg+gg
  g=gg
  }

sq20048n { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 48th 2x2 square HTile, 29th (sf) dust
  Axiom f ; Colour 4
  f=gg+g+>1f<1f|gg+<1f+gg+>1fg+gg
  g=gg
  }

sq20050^ { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 50th 2x2 square HTile, 31st (a-p) dust
  Axiom f
  f=gg+gg+gg+g+ff|gg+g+ff
  g=gg
  }

sq20050k { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 50th 2x2 square HTile, 31st (sf) dust
  Axiom f ; Colour 1
  f=gg+gg+gg+g+>1ff|gg+g+f<1f
  g=gg
  }

sq20050l { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 50th 2x2 square HTile, 31st (sf) dust
  Axiom f ; Colour 2
  f=gg+gg+gg+g+>1f>1f|gg+g+<1f<1f
  g=gg
  }

sq20050m { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 50th 2x2 square HTile, 31st (sf) dust
  Axiom f ; Colour 3
  f=gg+gg+gg+g+>1f<1f|gg+g+<1f>1f
  g=gg
  }

sq20051^ { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 51st 2x2 square HTile, 32nd (sf) dust
  Axiom f ; 
  f=fg+gg+gg+g+ff|gg+g+gf
  g=gg
  }

sq20051k { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 51st 2x2 square HTile, 32nd (sf) dust
  Axiom f ; Colour 1
  f=>1fg+gg+gg+g+>1f<1f|gg+g+g<1f
  g=gg
  }

sq20051l { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 51st 2x2 square HTile, 32nd (sf) dust
  Axiom f ; Colour 2
  f=>1fg+gg+gg+g+<1f>1f|gg+g+g<1f
  g=gg
  }

sq20052# { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 52nd 2x2 square HTile, 33rd dust
  ; (12b)
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f+f+gg+gg+fg+gg+gg
  g=gg
  }

sq20053^ { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 53rd 2x2 square HTile, 34th (sf) dust
  Axiom c9f;+c47f+c12f+c14f
  f=g+gf|g+f|g+g+g+fg+gg+gf+gg
  g=gg
  }

sq20053k { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 53rd 2x2 square HTile, 34th (sf) dust
  Axiom f ; Colour 1
  f=g+g>1f|g+f|g+g+g+fg+gg+g<1f+gg
  g=gg
  }

sq20053l { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 53rd 2x2 square HTile, 34th (sf) dust
  Axiom f ; Colour 2
  f=g+g>1f|g+>1f|g+g+g+<1fg+gg+g<1f+gg
  g=gg
  }

sq20053m { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 53rd 2x2 square HTile, 34th (sf) dust
  Axiom f ; Colour 3
  f=g+g>1f|g+<1f|g+g+g+>1fg+gg+g<1f+gg
  g=gg
  }

sq20053n { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 53rd 2x2 square HTile, 34th (sf) dust
  Axiom f ; Colour 4
  f=g+g>1f|g+<1f|g+g+g+<1fg+gg+g>1f+gg
  g=gg
  }

sq20054^ { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 54th 2x2 square HTile, 35th (sf) dust
  ; (53a)
  Axiom c9f;+c47f+c12f+c14f
  f=gg+g+gf|g+f|g+g+g+fg+gg+gf
  g=gg
  }

sq20054k { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 54th 2x2 square HTile, 35th (sf) dust
  Axiom f ; Colour 1
  f=gg+g+g>1f|g+f|g+g+g+fg+gg+g<1f
  g=gg
  }

sq20054l { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 54th 2x2 square HTile, 35th (sf) dust
  Axiom f ; Colour 2
  f=gg+g+g>1f|g+>1f|g+g+g+<1fg+gg+g<1f
  g=gg
  }

sq20054m { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 54th 2x2 square HTile, 35th (sf) dust
  Axiom f ; Colour 3
  f=gg+g+g>1f|g+<1f|g+g+g+>1fg+gg+g<1f
  g=gg
  }

sq20054n { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 54th 2x2 square HTile, 35th (sf) dust
  Axiom f ; Colour 4
  f=gg+g+g>1f|g+<1f|g+g+g+<1fg+gg+g>1f
  g=gg
  }

sq20056* { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 56th 2x2 square HTile
  ; (53c)
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f|g+g+g+gg+gf+gg+gg
  g=gg
  }

sq20057# { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 57th 2x2 square HTile, 36th dust
  ; ()
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f|g+g+g+gg+gg+gf+gg
  g=gg
  }

sq20058^ { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 58th 2x2 square HTile, 37th (sf) dust
  Axiom c9f;+c47f+c12f+c14f
  f=gg+gg+g+f-f|g+g+g+fg+gf
  g=gg
  }

sq20058k { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 58th 2x2 square HTile, 37th (sf) dust
  Axiom f ; Colour 1
  f=gg+gg+g+>1f-f|g+g+g+fg+g<1f
  g=gg
  }

sq20058l { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 58th 2x2 square HTile, 37th (sf) dust
  Axiom f ; Colour 2
  f=gg+gg+g+>1f->1f|g+g+g+<1fg+g<1f
  g=gg
  }

sq20058m { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 58th 2x2 square HTile, 37th (sf) dust
  Axiom f ; Colour 3
  f=gg+gg+g+>1f-<1f|g+g+g+>1fg+g<1f
  g=gg
  }

sq20058n { ; Anthony Hanmer 23/10/2002
  Angle 4 ; 58th 2x2 square HTile, 37th (sf) dust
  Axiom f ; Colour 4
  f=gg+gg+g+>1f-<1f|g+g+g+<1fg+g>1f
  g=gg
  }

sq20059 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  ; (45b)
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|f+f|g+g+g+gg+gg+gf+gg
  g=gg
  }

sq20059k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 1
  f=>1f+gg|f+f|g+g+g+gg+gg+g<1f+gg
  g=gg
  }

sq20059l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 2
  f=>1f+gg|>1f+<1f|g+g+g+gg+gg+g<1f+gg
  g=gg
  }

sq20059m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 3
  f=>1f+gg|<1f+>1f|g+g+g+gg+gg+g<1f+gg
  g=gg
  }

sq20059n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 4
  f=>1f+gg|<1f+<1f|g+g+g+gg+gg+g>1f+gg
  g=gg
  }

sq20060 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|f+f|g+g+f+fg+gg+gg+gg
  g=gg
  }

sq20060k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 1
  f=g+gg|>1f+f|g+g+f+<1fg+gg+gg+gg
  g=gg
  }

sq20060l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 2
  f=g+gg|>1f+>1f|g+g+<1f+<1fg+gg+gg+gg
  g=gg
  }

sq20060m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 3
  f=g+gg|>1f+<1f|g+g+>1f+<1fg+gg+gg+gg
  g=gg
  }

sq20060n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 4
  f=g+gg|>1f+<1f|g+g+<1f+>1fg+gg+gg+gg
  g=gg
  }

sq20061 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  ; (15b)
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|f+f|g+g+g+gf+fg+gg+gg
  g=gg
  }

sq20061k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 1
  f=g+gg|>1f+f|g+g+g+gf+<1fg+gg+gg
  g=gg
  }

sq20061l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 2
  f=g+gg|>1f+>1f|g+g+g+g<1f+<1fg+gg+gg
  g=gg
  }

sq20061m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 3
  f=g+gg|>1f+<1f|g+g+g+g>1f+<1fg+gg+gg
  g=gg
  }

sq20061n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 4
  f=g+gg|>1f+<1f|g+g+g+g<1f+>1fg+gg+gg
  g=gg
  }

sq20062 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  ; (45a)
  Axiom f ; 
  f=gg+f+gg|f+f|g+g+g+gg+gg+gf
  g=gg
  }

sq20062k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 1
  f=gg+>1f+gg|f+f|g+g+g+gg+gg+g<1f
  g=gg
  }

sq20062l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 2
  f=gg+>1f+gg|>1f+<1f|g+g+g+gg+gg+g<1f
  g=gg
  }

sq20062m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 3
  f=gg+>1f+gg|<1f+>1f|g+g+g+gg+gg+g<1f
  g=gg
  }

sq20062n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 4
  f=gg+>1f+gg|<1f+<1f|g+g+g+gg+gg+g>1f
  g=gg
  }

sq20063 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; 
  f=gg+g+gf|g+g|f+g+g+fg+gf+gg
  g=gg
  }

sq20063k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 1
  f=gg+g+g>1f|g+g|f+g+g+fg+g<1f+gg
  g=gg
  }

sq20063l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 2
  f=gg+g+g>1f|g+g|>1f+g+g+<1fg+g<1f+gg
  g=gg
  }

sq20063m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 3
  f=gg+g+g>1f|g+g|<1f+g+g+>1fg+g<1f+gg
  g=gg
  }

sq20063n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 4
  f=gg+g+g>1f|g+g|<1f+g+g+<1fg+g>1f+gg
  g=gg
  }

sq20064 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  ; (63a)
  Axiom f ; 
  f=gg+gg+g+gf|g+g|f+g+g+fg+gf
  g=gg
  }

sq20064k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 1
  f=gg+gg+g+g>1f|g+g|f+g+g+fg+g<1f
  g=gg
  }

sq20064l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 2
  f=gg+gg+g+g>1f|g+g|>1f+g+g+<1fg+g<1f
  g=gg
  }

sq20064m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 3
  f=gg+gg+g+g>1f|g+g|<1f+g+g+>1fg+g<1f
  g=gg
  }

sq20064n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 4
  f=gg+gg+g+g>1f|g+g|<1f+g+g+<1fg+g>1f
  g=gg
  }

sq20065 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  ; BUT a repeat of Sq20015!
  Axiom f ; 
  f=gg+gg+g+gg|f+f|g+g+g+gf+fg
  g=gg
  }

sq20065k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 1
  f=gg+gg+g+gg|>1f+f|g+g+g+gf+<1fg
  g=gg
  }

sq20065l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 2
  f=gg+gg+g+gg|>1f+>1f|g+g+g+g<1f+<1fg
  g=gg
  }

sq20065m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 3
  f=gg+gg+g+gg|>1f+<1f|g+g+g+g>1f+<1fg
  g=gg
  }

sq20065n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 4
  f=gg+gg+g+gg|>1f+<1f|g+g+g+g<1f+>1fg
  g=gg
  }

sq20066 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  ; (63c)
  Axiom f ; 
  f=gg+gf+gg+g+gf|g+g|f+g+g+fg
  g=gg
  }

sq20066k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 1
  f=gg+g>1f+gg+g+gf|g+g|f+g+g+<1fg
  g=gg
  }

sq20066l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 2
  f=gg+g>1f+gg+g+g>1f|g+g|<1f+g+g+<1fg
  g=gg
  }

sq20066m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 3
  f=gg+g>1f+gg+g+g<1f|g+g|>1f+g+g+<1fg
  g=gg
  }

sq20066n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/2 a square tile
  Axiom f ; Colour 
  f=gg+g>1f+gg+g+g<1f|g+g|<1f+g+g+>1fg
  g=gg
  }

sq20067 { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  ; (15a)
  Axiom f ; 
  f=gg+fg+gg+g+gg|f+f|g+g+g+gf
  g=gg
  }

sq20067k { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 1
  f=gg+>1fg+gg+g+gg|f+f|g+g+g+g<1f
  g=gg
  }

sq20067l { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 2
  f=gg+>1fg+gg+g+gg|>1f+<1f|g+g+g+g<1f
  g=gg
  }

sq20067m { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 3
  f=gg+>1fg+gg+g+gg|<1f+>1f|g+g+g+g<1f
  g=gg
  }

sq20067n { ; Anthony Hanmer 25/10/2002
  Angle 4 ; Variation on 1/4 a square tile
  Axiom f ; Colour 4
  f=gg+>1fg+gg+g+gg|<1f+<1f|g+g+g+g>1f
  g=gg
  }

sq20068* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 68th 2x2 square HTile
  ; ()
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|gg+f+g+fg|gg+g+gg+gg+gg
  g=gg
  }

sq20069* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 69th 2x2 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=g+gf|gg+f+g+fg|gg+g+gg+fg+gg
  g=gg
  }

sq20069a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+g+gf|gg+f+g+fg|gg+g+gg+fg+gg+gg+gg+gg
  g=gg
  }

sq20069b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+g+gf|gg+f+g+fg|gg+g+gg+fg+gg+gg+gg
  g=gg
  }

sq20069c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  ; Invariant
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+g+gf|gg+f+g+fg|gg+g+gg+fg+gg+gg
  g=gg
  }

sq20069k { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 69th 2x2 square HTile, colour 1
  Axiom f
  f=g+g>1f|gg+f+g+fg|gg+g+gg+<1fg+gg
  g=gg
  }

sq20069l { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 69th 2x2 square HTile, colour 2
  Axiom f
  f=g+g>1f|gg+>1f+g+<1fg|gg+g+gg+<1fg+gg
  g=gg
  }

sq20069m { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 69th 2x2 square HTile, colour 3
  Axiom f
  f=g+g>1f|gg+<1f+g+>1fg|gg+g+gg+<1fg+gg
  g=gg
  }

sq20069n { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 69th 2x2 square HTile, colour 4
  Axiom f
  f=g+g>1f|gg+<1f+g+<1fg|gg+g+gg+>1fg+gg
  g=gg
  }

sq20070# { ; Anthony Hanmer 15/8/2003
  Angle 4 ; 19th 2x2 square HTile
  ; Pure dust; the first new Sq2 in a long time
  Axiom c53f+g+c12f
  f=gg+fg+gg+g+g+f|f-g+f+gg
  g=gg
  }

sq20071# { ; Anthony Hanmer 15/8/2003
  Angle 4 ; 19th 2x2 square HTile
  ; (70b)
  ; Boring, but the first new Sq2 in a long time
  Axiom c53f+g+c12f
  f=gg+gf+gg+f+g+f|f-g+g+gg
  g=gg
  }

sq20072# { ; Anthony Hanmer 15/8/2003
  Angle 4 ; 33rd 2x2 square HTile
  ; (70c)
  ; Boring, but the first new Sq2 in a long time
  Axiom c53f+g+c12f
  f=f+g+f|f-g+g+gg+gf+gg+gg
  g=gg
  }

sq20073# { ; Anthony Hanmer 15/8/2003
  Angle 4 ; 33rd 2x2 square HTile
  ; Pure dust; the first new Sq2 in a long time
  Axiom c53f+g+c12f
  f=g+g+f|f-g+f+gg+fg+gg+gg
  g=gg
  }

sq20074# { ; Anthony Hanmer 3/9/2003
  Angle 4 ; 33rd 2x2 square HTile
  ; New, and wild...
  ; Seems to be a copy of Sq20007, in squares...
  ; RS members even more surprising:
  ; 0=a (rotated), b=c (rotated) = Sq200!
  Axiom c53f+c2f+c12f+c14f
  f=F+g|f+G+G+g|g+G+G+g|g+G+G+f|g+F+GG
  g=gg
  }

sq20074a { ; Anthony Hanmer 3/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+F+g|f+G+G+g|g+G+G+g|g+G+G+f|g+F+GG+gg+gg+gg
  g=gg
  }

sq20074b { ; Anthony Hanmer 3/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+F+g|f+G+G+g|g+G+G+g|g+G+G+f|g+F+GG+gg+gg
  g=gg
  }

sq20074c { ; Anthony Hanmer 3/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+F+g|f+G+G+g|g+G+G+g|g+G+G+f|g+F+GG+gg
  g=gg
  }

sq20075* { ; Anthony Hanmer 4/9/2003
  Angle 4 ; New and strange:
  ; Another case of 0=a, b=c!
  Axiom c53f+c2f+c12f+c14f
  f=f+g|f+g+g+f|g+f+gg+gg+gg
  g=gg
  }

sq20075a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+g|f+g+g+f|g+f+gg+gg+gg+gg+gg+gg
  g=gg
  }

sq20075b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+f+g|f+g+g+f|g+f+gg+gg+gg+gg+gg
  g=gg
  }

sq20075c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+f+g|f+g+g+f|g+f+gg+gg+gg+gg
  g=gg
  }

sq20076* { ; Anthony Hanmer 4/9/2003
  Angle 4 ; This too is remarkable:
  ; 0=a, b=c, but also all are
  ; equal to 75's RS!
  Axiom c53f+c2f+c12f+c14f
  f=fg+g+f|g+g+g+g|f+g+gf+gg
  g=gg
  }

sq20076a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+fg+g+f|g+g+g+g|f+g+gf+gg+gg+gg+gg
  g=gg
  }

sq20076b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+fg+g+f|g+g+g+g|f+g+gf+gg+gg+gg
  g=gg
  }

sq20076c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=gg+gg+gg+fg+g+f|g+g+g+g|f+g+gf+gg+gg
  g=gg
  }

sq20077~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile (almost)...
  Axiom f ; when put with its mirror image.
  ; One of my interesting HTs
  f=f+!gf|!gf+f
  }

sq20078~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; (45-degree reflection needed)
  ; One of my VERY best HTs
  f=f+!ff|!gg+f
  g=gg
  }

sq20078a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom f ; Part of a square, tiles with
  ; its 45-degree reflection
  f=gg+f+!ff|!gg+f+gg+gg+gg
  g=gg
  }

sq20078b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom f ; 1/2 a square, tiles with
  ; its 45-degree reflection
  ; One of my VERY best HTs
  f=gg+gg+f+!ff|!gg+f+gg+gg
  g=gg
  }

sq20078c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom f ; Part of a square, tiles with
  ; its 45-degree reflection
  f=gg+gg+gg+f+!ff|!gg+f+gg
  g=gg
  }

sq20079~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile?
  Axiom f ; Not sure, but interesting.
  f=f+!ff|!gg+!f
  g=gg
  }

sq20080~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile?
  Axiom f ; Not sure, but interesting.
  f=f+ff|gg+!f
  g=gg
  }

sq20081~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; (45-degree reflection needed)
  ; One of my best HTs
  f=f+!f+!f|g-g+f
  g=gg
  }

sq20081k { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; (45-degree reflection needed)
  ; Colour 1
  ; One of my best HTs
  f=>1f+!f+!f|g-g+<1f
  g=gg
  }

sq20081l { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; (45-degree reflection needed)
  ; Colour 2
  ; One of my best HTs
  f=>1f+!>1f+!<1f|g-g+<1f
  g=gg
  }

sq20081m { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; (45-degree reflection needed)
  ; Colour 3
  ; One of my best HTs
  f=>1f+!<1f+!>1f|g-g+<1f
  g=gg
  }

sq20081n { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; (45-degree reflection needed)
  ; Colour 4
  ; One of my best HTs
  f=>1f+!<1f+!<1f|g-g+>1f
  g=gg
  }

sq20082~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; One of my best HTs
  f=f+!gf|!fg+g+gg+gg+gf+gg
  g=gg
  }

sq20082a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom f
  f=gg+f+!gf|!fg+g+gg+gg+gf+gg+gg+gg+gg
  g=gg
  }

sq20082b { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 180-degree rotation
  Axiom f
  f=gg+gg+f+!gf|!fg+g+gg+gg+gf+gg+gg+gg
  g=gg
  }

sq20082c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom f
  f=gg+gg+gg+f+!gf|!fg+g+gg+gg+gf+gg+gg
  g=gg
  }

sq20082k { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; One of my best HTs
  ; Colour 1
  f=>1f+!gf|!fg+g+gg+gg+g<1f+gg
  g=gg
  }

sq20082l { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; One of my best HTs
  ; Colour 2
  f=>1f+!g>1f|!<1fg+g+gg+gg+g<1f+gg
  g=gg
  }

sq20082m { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; One of my best HTs
  ; Colour 3
  f=>1f+!g<1f|!>1fg+g+gg+gg+g<1f+gg
  g=gg
  }

sq20082n { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; when put with its mirror image.
  ; One of my best HTs
  ; Colour 4
  f=>1f+!g<1f|!<1fg+g+gg+gg+g>1f+gg
  g=gg
  }

sq20083~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs
  f=f+!fg|!fg+g+gg+gf+gg+gg
  g=gg
  }

sq20083a { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 90-degree rotation
  Axiom f
  f=gg+f+!fg|!fg+g+gg+gf+gg+gg+gg+gg+gg
  g=gg
  }

sq20083c { ; Anthony Hanmer 4/9/2003
  Angle 4 ; 270-degree rotation
  Axiom f
  f=gg+gg+gg+f+!fg|!fg+g+gg+gf+gg+gg+gg
  g=gg
  }

sq20083k { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs, colour 1
  f=>1f+!fg|!fg+g+gg+g<1f+gg+gg
  g=gg
  }

sq20083l { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs, colour 2
  f=>1f+!>1fg|!<1fg+g+gg+g<1f+gg+gg
  g=gg
  }

sq20083m { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs, colour 3
  f=>1f+!<1fg|!>1fg+g+gg+g<1f+gg+gg
  g=gg
  }

sq20083n { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs, colour 4
  f=>1f+!<1fg|!<1fg+g+gg+g>1f+gg+gg
  g=gg
  }

sq20084~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom c53f+c2f+c12f+c14f
  ; One of my VERY best HTs
  f=f+!gf|!fg+g+gf+gg+gg+gg
  g=gg
  }

sq20085~ { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs
  f=f+!gf|!gf+g+gg+gf+gg+gg
  g=gg
  }

sq20085k { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs, colour 1
  f=>1f+!gf|!gf+g+gg+g<1f+gg+gg
  g=gg
  }

sq20085l { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs, colour 
  f=>1f+!g>1f|!g<1f+g+gg+g<1f+gg+gg
  g=gg
  }

sq20085m { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs, colour 
  f=>1f+!g<1f|!g>1f+g+gg+g<1f+gg+gg
  g=gg
  }

sq20085n { ; Anthony Hanmer 9/9/2003
  Angle 4 ; 2x2 square tile...
  Axiom f ; A new sfd
  ; One of my best HTs, colour 
  f=>1f+!g<1f|!g<1f+g+gg+g>1f+gg+gg
  g=gg
  }

sq30001* { ; Anthony Hanmer 2000
  Angle 4 ; My very first HT
  ; (& 1st 3x3 square HT)
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f++ff++f+f+f
  }

sq30001a { ; Anthony Hanmer 17/8/2003, 15:00
  Angle 4 ; Whoa, this is BIG:
  ; Merely rotating each HT gives other new HTs!!!
  ; (Extrapolated from the vertical versions of a-p types)
  ; So each Sq HT has 3 other versions, each Tr has 2 others...!
  ; There goes the neighbourhood...
  ; One of my best HTs:  90 degrees
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ff+f+f++ff++f+f+f+ggg+ggg+ggg
  g=ggg
  }

sq30001b { ; Anthony Hanmer 17/8/2003, 15:00
  Angle 4 ; Whoa, this is BIG:
  ; Merely rotating each HT gives other new HTs!!!
  ; One of my best HTs:  180 degrees
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ff+f+f++ff++f+f+f+ggg+ggg
  g=ggg
  }

sq30001c { ; Anthony Hanmer 17/8/2003, 15:00
  Angle 4 ; Whoa, this is BIG:
  ; Merely rotating each HT gives other new HTs!!!
  ; One of my best HTs:  270 degrees
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+ff+f+f++ff++f+f+f+ggg
  g=ggg
  }

sq30002* { ; Anthony Hanmer 2000
  Angle 4 ; My 3rd HT
  ; (2nd 3x3 square HT)
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f++f+f++ff+ff
  }

sq30002a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation of my 3rd HT
  ; (2nd 3x3 square HT)
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f++f+f++ff+ff+ggg+ggg+ggg
  g=ggg
  }

sq30002b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation of my 3rd HT
  ; (2nd 3x3 square HT)
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f++f+f++ff+ff+ggg+ggg
  g=ggg
  }

sq30002c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation of my 3rd HT
  ; (2nd 3x3 square HT)
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f++f+f++ff+ff+ggg
  g=ggg
  }

sq30002r { ; Anthony Hanmer 28/8/2003
  Angle 4  ; e-r but doesn't seem to work, from
  ; not having x-axis rotational symmetry
  Axiom c53f+c2f+c12f+c14f
  f=g|f|g+f+f++f+f++ff+gg|ff|gg
  g=ggg
  }

sq30003* { ; Anthony Hanmer 2000
  Angle 4 ; My 4th HT
  ; (3rd 3x3 square HT)
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff++ff+f+f++f+f
  }

sq30003a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation of my 3rd HT
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff++ff+f+f++f+f+ggg+ggg+ggg
  g=ggg
  }

sq30003b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation of my 3rd HT
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff++ff+f+f++f+f+ggg+ggg
  g=ggg
  }

sq30003c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation of my 3rd HT
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff++ff+f+f++f+f+ggg
  g=ggg
  }

sq30003r { ; Anthony Hanmer 28/8/2003
  Angle 4  ; e-r but doesn't seem to work, from
  ; not having x-axis rotational symmetry
  Axiom c53f+c2f+c12f+c14f
  f=g|f|g+ff|ff+g|f|g+f|f+g|f|g
  g=ggg
  }

sq30004* { ; Anthony Hanmer 10/9/2002
  Angle 4 ; 4th 3x3 square HTile!
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|fff+ff
  }

sq30004a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|fff+ff+ggg+ggg+ggg
  g=ggg
  }

sq30004b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|fff+ff+ggg+ggg
  g=ggg
  }

sq30004c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|fff+ff+ggg
  g=ggg
  }

sq30004r { ; Anthony Hanmer 28/8/2003
  Angle 4  ; e-r but doesn't seem to work, from
  ; not having x-axis rotational symmetry
  Axiom c53f+c2f+c12f+c14f
  f=g|f|g+fff|fff+gg|ff|gg
  g=ggg
  }

sq30005* { ; Anthony Hanmer 18/9/2002
  Angle 4 ; 5th 3x3 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+f+f+ff; boring but necessary to note
  }

sq30005k { ; Anthony Hanmer 18/9/2002
  Angle 4 ; 5th 3x3 square HTile
  Axiom f ; Colour 1
  f=>1f+f-f-f|f+f+f+f<1f
  }

sq30005a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; Fascinating to see what results!
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-f-f|f+f+f+ff+ggg+ggg+ggg
  g=ggg
  }

sq30005b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  ; Fascinating to see what results!
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-f-f|f+f+f+ff+ggg+ggg
  g=ggg
  }

sq30005c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; Fascinating to see what results!
  ; The initial HT had x-axis symmetry;
  ; 90- and 270-degree rotations are identical.
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-f-f|f+f+f+ff+ggg
  g=ggg
  }

sq30005r { ; Anthony Hanmer 28/8/2003
  Angle 4  ; e-r
  Axiom c53f+c2f+c12f+c14f
  f=g|f|g+f-f-f|f+f+f+gg|ff|gg
  g=ggg
  }

sq30006# { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 6th 3x3 square HTile, 1st dust
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  ; (25/7/2003:  This axiom proves that, for HTs with only
  ; parallel lines, only 2 tiles are needed, not 4)
  f=f+g+f|fgf|fg-g-f|f+gg+ff
  g=ggg
  }

sq30006r { ; Anthony Hanmer 28/8/2003
  Angle 4  ; Trying the new e-r 1/8 tile on a-p types...
  ; Seems to work...
  Axiom +c53f+g+c12f
  f=g|f|g+g+f|fgf|fg-g-f|f+gg+gg|ff|gg
  g=ggg
  }

sq30007# { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 7th 3x3 square HTile, 2nd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|fgf+f+gf|fg+f
  g=ggg
  }

sq30007a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fgf|fgf+f+gf|fg+f+ggg+ggg+ggg
  g=ggg
  }

sq30007b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fgf|fgf+f+gf|fg+f+ggg+ggg
  g=ggg
  }

sq30007c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fgf|fgf+f+gf|fg+f+ggg
  g=ggg
  }

sq30008# { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 8th 3x3 square HTile, 3rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|f-f|ff|f+gg+ff
  g=ggg
  }

sq30009# { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 9th 3x3 square HTile, 4th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|f-f|fg-f|f+g+gg+ff
  g=ggg
  }

sq30010# { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 10th 3x3 square HTile, 5th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f-f|f-fg+ff
  g=ggg
  }

sq30011# { ; Anthony Hanmer 5/10/2002
  Angle 4 ; 11th 3x3 square HTile, 6th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|f-f|f-g+f|f+g+ff
  g=ggg
  }

sq30012# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 12th 3x3 square HTile, 7th dust
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=f+g+f|f+g+f|ff|f+gg+ff
  g=ggg
  }

sq30013# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 13th 3x3 square HTile, 8th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+g+f|fg-f|f+g+gg+ff
  g=ggg
  }

sq30014# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 14th 3x3 square HTile, 9th dust
  Axiom c53f+g+c12f; (Perfectly regular)
  f=f+g+f|f+g+f|f-g+f|f+g+ff
  g=ggg
  }

sq30014k { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 14th 3x3 square HTile, 9th dust
  Axiom c53f+c2f+c12f+c14f; (Perfectly regular)
  f=>1f+g+f|f+g+f|f-g+f|f+g+f<1f; Colour 1
  g=ggg
  }

sq30015# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 15th 3x3 square HTile, 10th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+f+f|f-fg+ff
  g=ggg
  }

sq30016# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 16th 3x3 square HTile, 11th dust
  Axiom c53f+c2f+c12f+c14f; square analogue of
  f=f+fg-f|f+gf+f+f|f+f; Tr30010 (Tri. Koch Dust Tile)
  g=ggg
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  }

sq30016r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=g|f|g+fg-f|f+gf+g|f|g+f|f+g|f|g
  g=ggg
  }

sq30017# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 17th 3x3 square HTile, 12th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+ff-gf|fg+ff+ff
  g=ggg
  }

sq30018# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 18th 3x3 square HTile, 13th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f+g-f|f+g-f+f+ff
  g=ggg
  }

sq30019# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 19th 3x3 square HTile, 14th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g+f-f|f+f-g+f+ff
  g=ggg
  }

sq30020# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 20th 3x3 square HTile, 15th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+fg-ff|ff+gf+ff
  g=ggg
  }

sq30021# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 21st 3x3 square HTile, 16th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|fg+f|f+f+ff
  g=ggg
  }

sq30022# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 22nd 3x3 square HTile, 17th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|f+f|f+gf+ff
  g=ggg
  }

sq30023# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 23rd 3x3 square HTile, 18th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g-f|f+gf+ff
  g=ggg
  }

sq30024# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 24th 3x3 square HTile, 19th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|fg+f|f-g+f+ff
  g=ggg
  }

sq30025# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 25th 3x3 square HTile, 20th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+f|f+gf|fg+g+ff
  g=ggg
  }

sq30026# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 26th 3x3 square HTile, 21st dust
  Axiom c53f+c2f+c12f+c14f; (Perfectly regular)
  f=f+g+f|fff|ff+g+ff
  g=ggg
  }

sq30026k { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 26th 3x3 square HTile, 21st dust
  Axiom f ; Colour 1
  f=>1f+g+f|fff|ff+g+f<1f
  g=ggg
  }

sq30027# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 27th 3x3 square HTile, 22nd dust
  Axiom c53f+c2f+c12f+c14f; (Perfectly regular)
  f=f+gg+f|fff|ff+gg+ff
  g=ggg
  }

sq30027k { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 27th 3x3 square HTile, 22nd dust
  Axiom f ; Colour 1
  f=>1f+gg+f|fff|ff+gg+f<1f
  g=ggg
  }

sq30028# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 28th 3x3 square HTile, 23rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gf+f|fgf|fg+fg+ff
  g=ggg
  }

sq30029# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 29th 3x3 square HTile, 24th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=f+g-f|f-g+f|fgf|fg+gg+ff
  g=ggg
  }

sq30029r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r; doesn't work due to non-contiguous ext f
  Axiom c9f+c47f+c12f+c14f
  f=g|f|g+g-f|f-g+f|fgf|fg+gg+gg|ff|gg
  g=ggg
  }

sq30030# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 30th 3x3 square HTile, 25th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|ff+gf|fg-f+g+ff
  g=ggg
  }

sq30031# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 31st 3x3 square HTile, 26th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|fg+ff|ff-g+g+ff
  g=ggg
  }

sq30032# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 32nd 3x3 square HTile, 27th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|fg+gf|f-f|f-g-g+g+ff
  g=ggg
  }

sq30033# { ; Anthony Hanmer 6/10/2002
  Angle 4 ; 33rd 3x3 square HTile, 28th dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|f+f-g+f|f-g+fg+ff
  g=ggg
  }

sq30034# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 34th 3x3 square HTile, 29th dust
  ; One of my best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|f+f+f|f-f+gg+ff
  g=ggg
  }

sq30034r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=g|f|g+ggf|f+f+f|f-f+gg+gg|ff|gg
  g=ggg
  }

sq30035# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 35th 3x3 square HTile, 30th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|f+g+f|f-g+g+f|f+g+ff
  g=ggg
  }

sq30035r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom c9f+c47f+c12f+c14f
  f=g|f|g+ggf|f+g+f|f-g+g+f|f+g+gg|ff|gg
  g=ggg
  }

sq30036# { ; Anthony Hanmer 10/10/2002
  Angle 4 ; 36th 3x3 square HTile, 31st dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|ffg+f+ggf|fgg+f
  g=ggg
  }

sq30037# { ; Anthony Hanmer 12/10/2002
  Angle 4 ; 37th 3x3 square HTile, 32nd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|f-f|f-fg+ff
  g=ggg
  }

sq30038# { ; Anthony Hanmer 12/10/2002
  Angle 4 ; 38th 3x3 square HTile, 33rd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|ffg+f+g-f|f+g+f
  g=ggg
  }

sq30039# { ; Anthony Hanmer 12/10/2002
  Angle 4 ; 39th 3x3 square HTile, 34th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+ggf|fg+ff|ff+g+gg+fgg+gfg+ggf+ggg
  g=ggg
  }

sq30040* { ; Anthony Hanmer 18/10/2002
  Angle 4 ; 40th 3x3 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggg+f+fff|ggg+f
  ; (It only looks like dust here)
  g=ggg
  }

sq30040a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|ggg+f+fff|ggg+f+ggg+ggg+ggg
  g=ggg
  }

sq30040b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|ggg+f+fff|ggg+f+ggg+ggg
  g=ggg
  }

sq30040c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|ggg+f+fff|ggg+f+ggg
  g=ggg
  }

sq30041# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 41st 3x3 square HTile, 35th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=f+fgg-g|f+gg+f-f|f+f+f+gf
  g=ggg
  }

sq30041a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fgg-g|f+gg+f-f|f+f+f+gf+ggg+ggg+ggg
  g=ggg
  }

sq30041b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fgg-g|f+gg+f-f|f+f+f+gf+ggg+ggg
  g=ggg
  }

sq30041c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fgg-g|f+gg+f-f|f+f+f+gf+ggg
  g=ggg
  }

sq30042# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 42nd 3x3 square HTile, 36th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+g-g|f+gf-f|f+f+f+gf
  g=ggg
  }

sq30042a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs, but new?
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+g-g|f+gf-f|f+f+f+gf+ggg+ggg+ggg
  g=ggg
  }

sq30042b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs, but new?
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+g-g|f+gf-f|f+f+f+gf+ggg+ggg
  g=ggg
  }

sq30042c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs, but new?
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+g-g|f+gf-f|f+f+f+gf+ggg
  g=ggg
  }

sq30043# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 43rd 3x3 square HTile, 37th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+fg+ggg+fgf+ggg+ggg
  g=ggg
  }

sq30043a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f-f-f|f+f+f+fg+ggg+fgf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30043b { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f-f-f|f+f+f+fg+ggg+fgf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30043c { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f-f-f|f+f+f+fg+ggg+fgf+ggg+ggg+ggg
  g=ggg
  }

sq30044# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 44th 3x3 square HTile, 38th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+f+ggg+gg+fgf+ggg
  g=ggg
  }

sq30045# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 45th 3x3 square HTile, 39th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+f+f+fg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30046# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 46th 3x3 square HTile, 40th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+ggg+ffg+ggg+ggf
  g=ggg
  }

sq30047# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 47th 3x3 square HTile, 41st dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+ggg+ggg+ffg+ggf
  g=ggg
  }

sq30048* { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 48th 3x3 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+f+f+fg+ggg+ggg+ggf+ggg
  g=ggg
  }

sq30048a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-f-f|f+f+f+fg+ggg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30048b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-f-f|f+f+f+fg+ggg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30048c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-f-f|f+f+f+fg+ggg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30049# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 49th 3x3 square HTile, 42nd dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-f|f+f+g+fg+ggg+g+f|f+gg+ggf+ggg
  g=ggg
  }

sq30050# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 50th 3x3 square HTile, 43rd dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-f|f+f+g+fg+ggg+ggg+g+f|f+gf+ggg
  g=ggg
  }

sq30051* { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 51st 3x3 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g+f|ff|f+g+f+fg+ggg+ggg+ggf+ggg
  g=ggg
  }

sq30051a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-g+f|ff|f+g+f+fg+ggg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30051b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-g+f|ff|f+g+f+fg+ggg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30051c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-g+f|ff|f+g+f+fg+ggg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30052# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 52nd 3x3 square HTile, 44th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g+g+f|f-gf|f+g+f+fg+ggg+ggg+ggf+ggg
  g=ggg
  }

sq30053* { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 53rd 3x3 square HTile
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|f+g-f|f+g+f+fg+ggg+ggg+ggf+ggg
  g=ggg
  }

sq30053a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|f+g-f|f+g+f+fg+ggg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30053b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|f+g-f|f+g+f+fg+ggg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30053c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|f+g-f|f+g+f+fg+ggg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30054# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 54th 3x3 square HTile, 45th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-g|g+f+f+fg+gg+f|f+g+ggg+ggf+ggg
  g=ggg
  }

sq30055# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 55th 3x3 square HTile, 46th dust
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-g|g+f+f+fg+ggg+gg+f|f+g+ggf+ggg
  g=ggg
  }

sq30056# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 56th 3x3 square HTile, 47th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+ggg+fff+ggg+ggg
  g=ggg
  }

sq30057# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 57th 3x3 square HTile, 48th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+ggg+ggg+fff+ggg
  g=ggg
  }

sq30058# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 58th 3x3 square HTile, 49th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+gfg+fgf+ggg+ggg
  g=ggg
  }

sq30059# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 59th 3x3 square HTile, 50th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+fgf+gfg+ggg+ggg
  g=ggg
  }

sq30060# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 60th 3x3 square HTile, 51st dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+ggf+ffg+ggg+ggg
  g=ggg
  }

sq30061# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 61st 3x3 square HTile, 52nd dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+gff+fgg+ggg+ggg
  g=ggg
  }

sq30062# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 62nd 3x3 square HTile, 53rd dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+fgg+gff+ggg+ggg
  g=ggg
  }

sq30063# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 63rd 3x3 square HTile, 54th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gg+ffg+ggf+ggg+ggg
  g=ggg
  }

sq30064# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 64th 3x3 square HTile, 55th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gf+gfg+fgg+ggg+ggg
  g=ggg
  }

sq30065# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 65th 3x3 square HTile, 56th dust
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+f+f+gf+gfg+ggg+fgg+ggg
  g=ggg
  }

sq30066# { ; Anthony Hanmer 19/10/2002
  Angle 4 ; 66th 3x3 square HTile, 57th dust
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-f-f|f+f+f+ff+ggg
  g=ggg
  }

sq30067* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 67th 3x3 square HTile
  ; 1st use of 1-sided interior fs on a 3x3 square
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggg+ff+g+ggg|fff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30067a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; Now THIS needs exploring:
  ; Sq30067 and 30040 have rotations which make 2 sets
  ; which are identical though rotated in relation
  ; to each other...
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|ggg+ff+g+ggg|fff+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30067b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|ggg+ff+g+ggg|fff+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30067c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|ggg+ff+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30068* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 68th 3x3 square HTile
  ; 1 position around from 30067
  ; 17/8/2003 - and here I first experimented with rotation!
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggg+ff+ggg+g+ggg|fff+gg+ggg+ggg
  g=ggg
  }

sq30068a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; Perhaps unsurprisingly, 30068 and 30067 (and 30040)
  ; are rotationally related, and otherwise identical.
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|ggg+ff+ggg+g+ggg|fff+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30068b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|ggg+ff+ggg+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30068c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|ggg+ff+ggg+g+ggg|fff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30069* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 69th 3x3 square HTile
  ; 2 positions around from 30067
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggg+ff+ggg+ggg+g+ggg|fff+gg+ggg
  g=ggg
  }

sq30070* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 70th 3x3 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|gg|f+g+f+gg+g+g|ff|g+f+g+ggg+ggg+ggg
  g=ggg
  }

sq30070a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ff+f+f|gg|f+g+f+gg+g+g|ff|g+f+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30070b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ff+f+f|gg|f+g+f+gg+g+g|ff|g+f+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30070c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+ff+f+f|gg|f+g+f+gg+g+g|ff|g+f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30071* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 71st 3x3 square HTile
  ; 1 position around from 30070
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|gg|f+g+f+ggg+gg+g+g|ff|g+f+g+ggg+ggg
  g=ggg
  }

sq30072* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 72nd 3x3 square HTile
  ; 2 positions around from 30070
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|gg|f+g+f+ggg+ggg+gg+g+g|ff|g+f+g+ggg
  g=ggg
  }

sq30073* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 73rd 3x3 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|gg+f+f|g+f+g+gg|ff+g+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30073a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|gg+f+f|g+f+g+gg|ff+g+g|f+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30073b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|gg+f+f|g+f+g+gg|ff+g+g|f+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30073c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|gg+f+f|g+f+g+gg|ff+g+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30074* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 74th 3x3 square HTile
  ; 1 position around from 30073
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|gg+f+f|g+f+ggg+g+gg|ff+g+g|f+g+ggg+ggg
  g=ggg
  }

sq30075* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 75th 3x3 square HTile
  ; 2 positions around from 30073
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|gg+f+f|g+f+ggg+ggg+g+gg|ff+g+g|f+g+ggg
  g=ggg
  }

sq30076* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 76th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|gg+f+g|f+f+g+gg|ff+g+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30076a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|gg+f+g|f+f+g+gg|ff+g+f|g+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30076b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|gg+f+g|f+f+g+gg|ff+g+f|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30076c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|gg+f+g|f+f+g+gg|ff+g+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30077* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 77th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|gg+f+g|f+f+ggg+g+gg|ff+g+f|g+g+ggg+ggg
  g=ggg
  }

sq30077a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|gg+f+g|f+f+ggg+g+gg|ff+g+f|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30077b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|gg+f+g|f+f+ggg+g+gg|ff+g+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30077c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|gg+f+g|f+f+ggg+g+gg|ff+g+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30078* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 78th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|gg+f+g|f+f+ggg+ggg+g+gg|ff+g+f|g+g+ggg
  g=ggg
  }

sq30078a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|gg+f+g|f+f+ggg+ggg+g+gg|ff+g+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30078b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|gg+f+g|f+f+ggg+ggg+g+gg|ff+g+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30078c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|gg+f+g|f+f+ggg+ggg+g+gg|ff+g+f|g+g+ggg+ggg
  g=ggg
  }

sq30079* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 79th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+f+g|f+f+g+ff|gg+g+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30079a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  ; but is it new?
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gg|ff+f+g|f+f+g+ff|gg+g+f|g+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30079b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gg|ff+f+g|f+f+g+ff|gg+g+f|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30079c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gg|ff+f+g|f+f+g+ff|gg+g+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30080* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 80th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073, altered
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+f+g|f+f+fgg+g+ff|gg+g+f|g+g+ggg+ggg
  g=ggg
  }

sq30080a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+gg|ff+f+g|f+f+fgg+g+ff|gg+g+f|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30080b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+gg|ff+f+g|f+f+fgg+g+ff|gg+g+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30080c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+gg|ff+f+g|f+f+fgg+g+ff|gg+g+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30081* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 81st 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+f+g|f+f+ggg+ggg+g+ff|gg+g+f|g+g+ggg
  g=ggg
  }

sq30081a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gg|ff+f+g|f+f+ggg+ggg+g+ff|gg+g+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30081b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gg|ff+f+g|f+f+ggg+ggg+g+ff|gg+g+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30081c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gg|ff+f+g|f+f+ggg+ggg+g+ff|gg+g+f|g+g+ggg+ggg
  g=ggg
  }

sq30082* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 82nd 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+f+f|g+f+g+ff|gg+g+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30082a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gg|ff+f+f|g+f+g+ff|gg+g+g|f+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30082b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gg|ff+f+f|g+f+g+ff|gg+g+g|f+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30082c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gg|ff+f+f|g+f+g+ff|gg+g+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30083* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 83rd 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+f+f|g+f+ggg+g+ff|gg+g+g|f+g+ggg+ggg
  g=ggg
  }

sq30084* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 84th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30073
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+f+f|g+f+ggg+ggg+g+ff|gg+g+g|f+g+ggg
  g=ggg
  }

sq30084a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gg|ff+f+f|g+f+ggg+ggg+g+ff|gg+g+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30084b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gg|ff+f+f|g+f+ggg+ggg+g+ff|gg+g+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30084c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gg|ff+f+f|g+f+ggg+ggg+g+ff|gg+g+g|f+g+ggg+ggg
  g=ggg
  }

sq30085* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 85th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067
  Axiom c53f+c2f+c12f+c14f
  f=f+ffg|fgg+ff+g+ggf|gff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30086* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 86th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, altered
  Axiom c53f+c2f+c12f+c14f
  f=f+ffg|fgg+gf+gfg+g+ggf|gff+gg+ggg+ggg
  g=ggg
  }

sq30087* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 87th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+ffg|fgg+ff+ggg+ggg+g+ggf|gff+gg+ggg
  g=ggg
  }

sq30088* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 88th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|gfg+ff+g+gfg|fgf+gg+ggg+ggg+ggg
  g=ggg
  }

sq30089* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 89th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|gfg+ff+ggg+g+gfg|fgf+gg+ggg+ggg
  g=ggg
  }

sq30090* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 90th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|gfg+ff+ggg+ggg+g+gfg|fgf+gg+ggg
  g=ggg
  }

sq30091* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 91st 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|ggf+ff+g+fgg|ffg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30091a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gff|ggf+ff+g+fgg|ffg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30091b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gff|ggf+ff+g+fgg|ffg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30091c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gff|ggf+ff+g+fgg|ffg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30092* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 92nd 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, altered
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|ggf+fg+ggf+g+fgg|ffg+gg+ggg+ggg
  g=ggg
  }

sq30092a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gff|ggf+fg+ggf+g+fgg|ffg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30092b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gff|ggf+fg+ggf+g+fgg|ffg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30092c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gff|ggf+fg+ggf+g+fgg|ffg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30093* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 93rd 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+gff|ggf+ff+ggg+ggg+g+fgg|ffg+gg+ggg
  g=ggg
  }

sq30094* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 94th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067
  Axiom c53f+c2f+c12f+c14f
  f=f+fgg|ffg+ff+g+gff|ggf+gg+ggg+ggg+ggg
  g=ggg
  }

sq30094a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fgg|ffg+ff+g+gff|ggf+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30094b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fgg|ffg+ff+g+gff|ggf+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30094c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fgg|ffg+ff+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30095* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 95th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, altered
  Axiom c53f+c2f+c12f+c14f
  f=g+fgg|ffg+ff+ggg+g+gff|ggf+gg+fgg+ggg
  g=ggg
  }

sq30096* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 96th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, altered
  Axiom c53f+c2f+c12f+c14f
  f=g+fgg|ffg+ff+ggg+ggg+f+gff|ggf+gg+ggg
  g=ggg
  }

sq30097* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 97th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|gff+ff+g+ffg|fgg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30097a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ggf|gff+ff+g+ffg|fgg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30097b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ggf|gff+ff+g+ffg|fgg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30097c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ggf|gff+ff+g+ffg|fgg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30098* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 98th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, altered
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|gff+fg+ggg+g+ffg|fgg+gg+ggf+ggg
  g=ggg
  }

sq30099* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 99th 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+ggf|gff+ff+ggg+ggg+g+ffg|fgg+gg+ggg
  g=ggg
  }

sq30100* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 100th 3x3 square HTile...
  ; Alternate sets of 1-sided lines to 30067
  Axiom c53f+c2f+c12f+c14f
  f=f+gfg|fgf+ff+g+fgf|gfg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30101a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gfg|fgf+ff+g+fgf|gfg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30101b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gfg|fgf+ff+g+fgf|gfg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30101c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gfg|fgf+ff+g+fgf|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30101* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 101st 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, altered
  Axiom c53f+c2f+c12f+c14f
  f=f+gfg|fgf+gg+gfg+g+fgf|gfg+gg+ggf+ggg
  g=ggg
  }

sq30102* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 102nd 3x3 square HTile
  ; Alternate sets of 1-sided lines to 30067, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+gfg|fgf+ff+ggg+ggg+g+fgf|gfg+gg+ggg
  g=ggg
  }

sq30103* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 103rd 3x3 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|g+f|gg+ff+g+g+g|f+g|ff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30103a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|g+f|gg+ff+g+g+g|f+g|ff+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30103b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|g+f|gg+ff+g+g+g|f+g|ff+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30103c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|g+f|gg+ff+g+g+g|f+g|ff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30104* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 104th 3x3 square HTile
  ; 30103, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|g+f|gg+ff+ggg+g+g+g|f+g|ff+gg+ggg+ggg
  g=ggg
  }

sq30105* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 105th 3x3 square HTile
  ; 30103, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|g+f|gg+ff+ggg+ggg+g+g+g|f+g|ff+gg+ggg
  g=ggg
  }

sq30105a { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|g+f|gg+ff+ggg+ggg+g+g+g|f+g|ff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30105b { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|g+f|gg+ff+ggg+ggg+g+g+g|f+g|ff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30105c { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|g+f|gg+ff+ggg+ggg+g+g+g|f+g|ff+gg+ggg+ggg
  g=ggg
  }

sq30106* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 106th 3x3 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|g+g+g+ff+g+g-g-g|f+f+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30106a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-f-f|g+g+g+ff+g+g-g-g|f+f+f+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30106b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-f-f|g+g+g+ff+g+g-g-g|f+f+f+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30106c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-f-f|g+g+g+ff+g+g-g-g|f+f+f+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30107* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 107th 3x3 square HTile
  ; 30106, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|g+g+g+ff+ggg+g+g-g-g|f+f+f+gg+ggg+ggg
  ;f=f+f-f-f|g+g+g+gf+gfg+ggg+g+g-g-g|f+f+f+gg+ggg
  g=ggg
  }

sq30108* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 108th 3x3 square HTile
  ; 30106, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-f|g+g+f+ff+g+f-g-g|f+f+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30108a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; Not new, I think, though cool.
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g-f-f|g+g+f+ff+g+f-g-g|f+f+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30108b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g-f-f|g+g+f+ff+g+f-g-g|f+f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30108c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g-f-f|g+g+f+ff+g+f-g-g|f+f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30109* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 109th 3x3 square HTile
  ; 30106, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g-f|g+f+g+ff+g+g-f-g|f+g+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30109a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-g-f|g+f+g+ff+g+g-f-g|f+g+f+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30109b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-g-f|g+f+g+ff+g+g-f-g|f+g+f+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30109c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-g-f|g+f+g+ff+g+g-f-g|f+g+f+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30110* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 110th 3x3 square HTile
  ; 30106, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+g-g-f|g+f+f+ff+g+f-f-g|f+g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30110a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g-g-f|g+f+f+ff+g+f-f-g|f+g+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30110b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g-g-f|g+f+f+ff+g+f-f-g|f+g+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30110c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g-g-f|g+f+f+ff+g+f-f-g|f+g+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30111* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 111th 3x3 square HTile
  ; 30106, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-g|f+g+f+ff+g+f-g-f|g+f+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30111a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g-f-g|f+g+f+ff+g+f-g-f|g+f+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30111b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g-f-g|f+g+f+ff+g+f-g-f|g+f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30111c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g-f-g|f+g+f+ff+g+f-g-f|g+f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30112* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 112th 3x3 square HTile
  ; 30106, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g-g|f+f+g+ff+g+g-f-f|g+g+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30112a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-g-g|f+f+g+ff+g+g-f-f|g+g+f+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30112b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-g-g|f+f+g+ff+g+g-f-f|g+g+f+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30112c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-g-g|f+f+g+ff+g+g-f-f|g+g+f+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30113* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 113th 3x3 square HTile
  ; 30106, 1-sided line variation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g-f|g+g+g+ff+g+g-f-g|f+f+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30113a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-g-f|g+g+g+ff+g+g-f-g|f+f+f+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30113b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-g-f|g+g+g+ff+g+g-f-g|f+f+f+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30113c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-g-f|g+g+g+ff+g+g-f-g|f+f+f+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30114* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 114th 3x3 square HTile
  ; 30106, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-f|g+g+g+ff+g+f-g-g|f+f+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30114a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g-f-f|g+g+g+ff+g+f-g-g|f+f+f+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30114b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g-f-f|g+g+g+ff+g+f-g-g|f+f+f+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30114c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g-f-f|g+g+g+ff+g+f-g-g|f+f+f+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30115* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 115th 3x3 square HTile
  ; 30106, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-g|g+g+g+ff+g+f-g-f|f+f+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30115a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g-f-g|g+g+g+ff+g+f-g-f|f+f+f+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30115b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g-f-g|g+g+g+ff+g+f-g-f|f+f+f+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30115c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g-f-g|g+g+g+ff+g+f-g-f|f+f+f+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30116* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 116th 3x3 square HTile
  ; 30106, 1-sided line variation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g-g|g+g+g+ff+g+g-f-f|f+f+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30117* { ; Anthony Hanmer 12/11/2002
  Angle 4 ; 117th 3x3 square HTile
  ; 30106, 1-sided line variation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g-g-f|g+g+g+ff+g+f-f-g|f+f+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30117a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g-g-f|g+g+g+ff+g+f-f-g|f+f+f+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30117b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g-g-f|g+g+g+ff+g+f-f-g|f+f+f+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30117c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g-g-f|g+g+g+ff+g+f-f-g|f+f+f+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30118* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 118th 3x3 square HTile
  ; 30108, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-f|g+g+f+ff+ggg+g+f-g-g|f+f+g+gg+ggg+ggg
  g=ggg
  }

sq30119* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 119th 3x3 square HTile
  ; 30108, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-f|g+g+f+ff+ggg+ggg+g+f-g-g|f+f+g+gg+ggg
  g=ggg
  }

sq30120* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 120th 3x3 square HTile
  ; 30109, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g-f|g+f+g+ff+ggg+g+g-f-g|f+g+f+gg+ggg+ggg
  g=ggg
  }

sq30121* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 121st 3x3 square HTile
  ; 30110, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+g-g-f|g+f+f+ff+ggg+g+f-f-g|f+g+g+gg+ggg+ggg
  g=ggg
  }

sq30122* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 122nd 3x3 square HTile
  ; 30110, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+g-g-f|g+f+f+ff+ggg+ggg+g+f-f-g|f+g+g+gg+ggg
  g=ggg
  }

sq30123* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 123rd 3x3 square HTile
  ; 30111, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-g|f+g+f+ff+ggg+g+f-g-f|g+f+g+gg+ggg+ggg
  g=ggg
  }

sq30124* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 124th 3x3 square HTile
  ; 30112, 2 positions around
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g-g|f+f+g+ff+ggg+ggg+g+g-f-f|g+g+f+gg+ggg
  g=ggg
  }

sq30125* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 125th 3x3 square HTile
  ; 30113, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g-f|g+g+g+ff+ggg+g+g-f-g|f+f+f+gg+ggg+ggg
  g=ggg
  }

sq30126* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 126th 3x3 square HTile
  ; 30113, 2 positions around
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-g-f|g+g+g+ff+ggg+ggg+g+g-f-g|f+f+f+gg+ggg
  g=ggg
  }

sq30127* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 127th 3x3 square HTile
  ; 30114, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-f|g+g+g+ff+ggg+g+f-g-g|f+f+f+gg+ggg+ggg
  g=ggg
  }

sq30128* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 128th 3x3 square HTile
  ; 30115, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+g-f-g|g+g+g+ff+ggg+g+f-g-f|f+f+f+gg+ggg+ggg
  g=ggg
  }

sq30129# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 129th 3x3 square HTile, dust
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|ggf|gg-g-f|g+gg+ff+g+g+g|ffg|fg-g-g|f+gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30130# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 130th 3x3 square HTile, dust
  ; 30129, 1 position around
  Axiom c53f+g+c12f
  ; (Something's not quite right in the centre)
  ; Gotta work on this one - complicated and wrong so far...
  f=f+g+f|ggf|gg-g-f|g+gg+ff+ggg+g+g+g|ffg|fg-g-g|f+gg+gg+ggg+ggg
  g=ggg
  }

sq30131* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 131st 3x3 square HTile
  ; 30129, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|ggf|gg-g-f|g+gg+ff+ggg+ggg+g+g+g|ffg|fg-g-g|f+gg+gg+ggg
  g=ggg
  }

sq30132* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 132nd 3x3 square HTile
  ; 30129, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+g+g|fgf|gg-g-f|g+gg+ff+g+g+f|gfg|fg-g-g|f+gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30133* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 133rd 3x3 square HTile
  ; 30129, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=f+g+g|fgf|gg-g-g|f+gg+ff+g+g+f|gfg|fg-g-f|g+gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30134^ { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 134th 3x3 square HTile, (sf) dust
  ; 30132, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+g+g|fgf|gg-g-f|g+gg+ff+ggg+g+g+f|gfg|fg-g-g|f+gg+gg+ggg+ggg
  g=ggg
  }

sq30134k { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 134th 3x3 square HTile, (sf) dust
  ; 30132, 1 position around, colour 1:
  Axiom f; Sierpinski gasket colouring
  f=>1f+g+g|fgf|gg-g-f|g+gg+ff+ggg+g+g+f|gfg|fg-g-g|<1f+gg+gg+ggg+ggg
  g=ggg
  }

sq30135* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 135th 3x3 square HTile
  ; 30133, 1 position around
  Axiom c53f+c2f+c12f+c14f
  f=f+g+g|fgf|gg-g-g|f+gg+ff+ggg+g+g+f|gfg|fg-g-f|g+gg+gg+ggg+ggg
  g=ggg
  }

sq30136* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 136th 3x3 square HTile
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+fff|ggg+gg+g+ggg|fff+gg+ggg+ggg
  g=ggg
  }

sq30136a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  ; Has x-axis symmetry, so b is the same as the non-rotated member
  Axiom c53f+c2f+c12f+c14f
  f=ggg+fff+g+fff|ggg+gg+g+ggg|fff+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30136r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r; doesn't seem to work for vertical fff...
  ; find a solution...?!
  ; (Also doesn't work yet for 180-degree-rotated fff.)
  Axiom +c53f+g+c12f
  f=ggg+GGG|FFF|GGG+g+fff|ggg+gg+g+ggg|fff+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30136b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+fff+g+fff|ggg+gg+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30136c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  ; Has x-axis symmetry
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+fff+g+fff|ggg+gg+g+ggg|fff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30137# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 137th 3x3 square HTile, dust
  ; 30136, 1 position around
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=fff+g+fff|ggg+gg+ggg+g+ggg|fff+gg+ggg
  g=ggg
  }

sq30138* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 138th 3x3 square HTile
  ; 30136, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+ffg|fgg+gg+g+ggf|gff+gg+ggg+ggg
  g=ggg
  }

sq30139* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 139th 3x3 square HTile
  ; 30136, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+fgf|gfg+gg+g+gfg|fgf+gg+ggg+ggg
  g=ggg
  }

sq30140* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 140th 3x3 square HTile
  ; 30136, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+fgg|ffg+gg+g+gff|ggf+gg+ggg+ggg
  g=ggg
  }

sq30141* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 141st 3x3 square HTile
  ; 30136, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+gfg|fgf+gg+g+fgf|gfg+gg+ggg+ggg
  g=ggg
  }

sq30142* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 142nd 3x3 square HTile
  ; 30136, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+fff|fgg+gg+g+ggg|gff+gg+ggg+ggg
  g=ggg
  }

sq30143* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 143rd 3x3 square HTile
  ; 30136, 1-sided line variation
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+fff|ffg+gg+g+ggg|ggf+gg+ggg+ggg
  g=ggg
  }

sq30144# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 144th 3x3 square HTile, dust
  ; 30136, 1-sided line variation
  Axiom c53f+g+c12f
  ; Actually, this one's an exception to the all-parallel rules...
  f=fff+g+fff|fgf+gg+g+ggg|gfg+gg+ggg+ggg
  g=ggg
  }

sq30145# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 145th 3x3 square HTile, dust
  ; 30138, 1 position around
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=fff+g+ffg|fgg+gg+ggg+g+ggf|gff+gg+ggg
  g=ggg
  }

sq30146* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 146th 3x3 square HTile
  ; 30138, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+ffg|fgg+gg+ggg+ggg+g+ggf|gff+gg
  g=ggg
  }

sq30147# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 147th 3x3 square HTile, dust
  ; 30139, 1 position around
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=fff+g+fgf|gfg+gg+ggg+g+gfg|fgf+gg+ggg
  g=ggg
  }

sq30148# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 148th 3x3 square HTile, dust
  ; 30140, 1 position around
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=fff+g+fgg|ffg+gg+ggg+g+gff|ggf+gg+ggg
  g=ggg
  }

sq30149# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 149th 3x3 square HTile, dust
  ; 30142, 1 position around
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30450, but 90 degrees away...
  f=fff+g+fff|fgg+gg+ggg+g+ggg|gff+gg+ggg
  g=ggg
  }

sq30150* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 150th 3x3 square HTile
  ; 30142, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+fff|fgg+gg+ggg+ggg+g+ggg|gff+gg
  g=ggg
  }

sq30151# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 151st 3x3 square HTile, dust
  ; 30143, 1 position around
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=fff+g+fff|ffg+gg+ggg+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30151k { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 151st 3x3 square HTile, dust
  ; 30143, 1 position around, colour 1
  Axiom f
  f=>1fff+g+fff|ffg+gg+ggg+g+ggg|gg<1f+gg+ggg
  g=ggg
  }

sq30152* { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 152nd 3x3 square HTile
  ; 30143, 2 positions around
  Axiom c53f+c2f+c12f+c14f
  f=fff+g+fff|ffg+gg+ggg+ggg+g+ggg|ggf+gg
  g=ggg
  }

sq30153# { ; Anthony Hanmer 13/11/2002
  Angle 4 ; 153rd 3x3 square HTile, dust
  ; 30144, 1 position around
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; (Axiom note:  see sq30006)
  ; Employs only 1-sided a-p lines, but it works.
  f=fff+g+fff|fgf+gg+ggg+g+ggg|gfg+gg+ggg
  g=ggg
  }

sq30154* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior, side length 3:
  ; I THINK this is new.
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggg+ff+g+ggg|fff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30155* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior, side length 3:
  ; This is new.  See tr30218 notes
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggg+ff+g+ggg|ffg+gg+g+ggg|ggf+gg+ggg+ggg
  g=ggg
  }

sq30156* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior, side length 3
  ; This is new.  See tr30218 notes
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggg+ff+g+ggg|gfg+gg+g+ggg|fgf+gg+ggg+ggg
  g=ggg
  }

sq30157* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior, side length 3
  ; This is new.  See tr30218 notes
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggg+ff+g+ggg|gfg+gg+g+ggg|fgg+gg+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30157a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|ggg+ff+g+ggg|gfg+gg+g+ggg|fgg+gg+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30157b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|ggg+ff+g+ggg|gfg+gg+g+ggg|fgg+gg+g+ggg|ggf+gg+ggg+ggg+ggg
  g=ggg
  }

sq30157c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|ggg+ff+g+ggg|gfg+gg+g+ggg|fgg+gg+g+ggg|ggf+gg+ggg+ggg
  g=ggg
  }

sq30158* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; See tr30218 notes
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|g+g+g+ff+g+g-g-g-g|g+g+f+gg+g+g-g-g|g+f+g+gg+g+g-g-g|f+g+g+gg+ggg
  g=ggg
  }

sq30159* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|g+g+g+ff+g+g-g-g|g+g+f+gg+g+g-g-g|g+f+g+gg+g+g-g-g|f+g+g+gg+ggg
  g=ggg
  }

sq30160* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|g+g+g+ff+g+g-g-g|g+f+g+gg+g+g-g-g|g+g+f+gg+g+g-g-g|f+g+g+gg+ggg
  g=ggg
  }

sq30161* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|g+g+g+ff+g+g-g-g|f+g+g+gg+g+g-g-g|g+f+g+gg+g+g-g-g|g+g+f+gg+ggg
  g=ggg
  }

sq30162* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|g+g+g+ff+g+g-g-g|g+f+g+gg+g+g-g-g|f+g+g+gg+g+g-g-g|g+g+f+gg+ggg
  g=ggg
  }

sq30163^ { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior; sf?
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|g+g+g+fg+g+g-g-g|f+g+g+gg+f+g-g-g|g+f+g+gf+g+g-g-g|g+g+f+gg+ggg
  g=ggg
  }

sq30163a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f-f-f|g+g+g+fg+g+g-g-g|f+g+g+gg+f+g-g-g|g+f+g+gf+g+g-g-g|g+g+f+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30163b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f-f-f|g+g+g+fg+g+g-g-g|f+g+g+gg+f+g-g-g|g+f+g+gf+g+g-g-g|g+g+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30163c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f-f-f|g+g+g+fg+g+g-g-g|f+g+g+gg+f+g-g-g|g+f+g+gf+g+g-g-g|g+g+f+gg+ggg+ggg
  g=ggg
  }

sq30164* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+g-g-g|g+f+g+fg+g+g-g-g|f+g+g+gg+f+f-f-f|g+f+g+gf+g+g-g-g|g+g+f+gg+ggg
  g=ggg
  }

sq30165* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|gg|g+g+f+gg+g+g|ff|f+f+g+ggg+ggg+ggg
  g=ggg
  }

sq30166* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|gg|g+g+f+gg+g+g|ff|g+g+g+gg+g+g|gg|f+f+g+ggg+ggg
  g=ggg
  }

sq30167* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|gg|g+g+f+gg+g+g|ff|g+g+g+ggg+gg+g+g|gg|f+f+g+ggg
  g=ggg
  }

sq30167a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ff+f+f|gg|g+g+f+gg+g+g|ff|g+g+g+ggg+gg+g+g|gg|f+f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30167b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ff+f+f|gg|g+g+f+gg+g+g|ff|g+g+g+ggg+gg+g+g|gg|f+f+g+ggg+ggg+ggg
  g=ggg
  }

sq30167c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+ff+f+f|gg|g+g+f+gg+g+g|ff|g+g+g+ggg+gg+g+g|gg|f+f+g+ggg+ggg
  g=ggg
  }

sq30168* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|gg|g+g+f+gg+g+g|gg|f+f+g+gg+g+g|ff|g+g+g+ggg+ggg
  g=ggg
  }

sq30169* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f|gg|g+g+f+gg+g+g|gg|f+f+g+ggg+gg+g+g|ff|g+g+g+ggg
  g=ggg
  }

sq30169a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ff+f+f|gg|g+g+f+gg+g+g|gg|f+f+g+ggg+gg+g+g|ff|g+g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30169b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ff+f+f|gg|g+g+f+gg+g+g|gg|f+f+g+ggg+gg+g+g|ff|g+g+g+ggg+ggg+ggg
  g=ggg
  }

sq30169c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+ff+f+f|gg|g+g+f+gg+g+g|gg|f+f+g+ggg+gg+g+g|ff|g+g+g+ggg+ggg
  g=ggg
  }

sq30170* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|g+f|gg+ff+g+g+g|f+f|ff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30170a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|g+f|gg+ff+g+g+g|f+f|ff+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30170b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|g+f|gg+ff+g+g+g|f+f|ff+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30170c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|g+f|gg+ff+g+g+g|f+f|ff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30171* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|g+f|gg+ff+ggg+g+g+g|f+f|ff+gg+ggg+ggg
  g=ggg
  }

sq30172* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|g+f|gg+ff+ggg+ggg+g+g+g|f+f|ff+gg+ggg
  g=ggg
  }

sq30173* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|g+f|gg+gg+f+g+g|f+f|ff+ff+ggg+ggg+ggg
  g=ggg
  }

sq30174* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|g+f|gg+gg+g+g+g|f+f|ff+ff+ggg+ggg+ggg
  g=ggg
  }

sq30175* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; Ooops, this one has 10 segments instead of 9!
  Axiom c53f+c2f+c12f+c14f
  f=f+f+g|f+f|gg+ff+g+g+f|g+f|ff+gg+ggg+ggg+ggg
  g=ggg
  }

sq30176* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ff+f+f+f+gf+ggg+g+f-f-f+g+ggg+ggg
  g=ggg
  }

sq30176a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ff+f+f+f+gf+ggg+g+f-f-f+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30176b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  ; Has x-axis symmetry, so a and c are identical except for rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ff+f+f+f+gf+ggg+g+f-f-f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30176c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+ff+f+f+f+gf+ggg+g+f-f-f+g+ggg+ggg+ggg
  g=ggg
  }

sq30177* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ff+f+f+f+gf+ggg+g+f-f-f+g+ggg
  g=ggg
  }

sq30178* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f+f+gg+fgf+g+f-f-f+g+gfg+ggg
  g=ggg
  }

sq30179* { ; Anthony Hanmer 23/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=gg+f+f+f+gg+ffg+g+f-f-f+g+ggf+ggg
  g=ggg
  }

sq30180* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+ff+g+gg|fg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30180a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+ff+g+gg|fg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30180b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+ff+g+gg|fg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30180c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+ff+g+gg|fg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30181* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+ff+ggg+g+gg|fg+gg+ggg+ggg
  g=ggg
  }

sq30181a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+ff+ggg+g+gg|fg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30181b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+ff+ggg+g+gg|fg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30181c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+ff+ggg+g+gg|fg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30182* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+ff+ggg+ggg+g+gg|fg+gg+ggg
  g=ggg
  }

sq30182a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+ff+ggg+ggg+g+gg|fg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30182b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+ff+ggg+ggg+g+gg|fg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30182c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+ff+ggg+ggg+g+gg|fg+gg+ggg+ggg
  g=ggg
  }

sq30183* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+ff+g+gg|fg+gg+ggg+fgg+ggg
  g=ggg
  }

sq30183a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+f|gf+ff+g+gg|fg+gg+ggg+fgg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30183b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+f|gf+ff+g+gg|fg+gg+ggg+fgg+ggg+ggg+ggg
  g=ggg
  }

sq30183c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+f|gf+ff+g+gg|fg+gg+ggg+fgg+ggg+ggg
  g=ggg
  }

sq30184* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gf+g+gg|fg+gg+ggg+gfg+ggg
  g=ggg
  }

sq30184a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+gf+g+gg|fg+gg+ggg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30184b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+gf+g+gg|fg+gg+ggg+gfg+ggg+ggg+ggg
  g=ggg
  }

sq30184c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+gf+g+gg|fg+gg+ggg+gfg+ggg+ggg
  g=ggg
  }

sq30185* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs:  simply beautiful
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gg+g+gg|fg+gg+ggg+gff+ggg
  g=ggg
  }

sq30185a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+gg+g+gg|fg+gg+ggg+gff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30185b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+gg+g+gg|fg+gg+ggg+gff+ggg+ggg+ggg
  g=ggg
  }

sq30185c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+gg+g+gg|fg+gg+ggg+gff+ggg+ggg
  g=ggg
  }

sq30186* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+ff+f+gg|fg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30186a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+f|gf+ff+f+gg|fg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30186b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+f|gf+ff+f+gg|fg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30186c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+f|gf+ff+f+gg|fg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30187* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+ff+g+gg|fg+gg+fgg+ggg+ggg
  g=ggg
  }

sq30188* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gf+g+gg|fg+fg+ggg+ggg+ggg
  g=ggg
  }

sq30189* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gf+g+gg|fg+gg+gfg+ggg+ggg
  g=ggg
  }

sq30190* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+fg+g+gg|fg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30191* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+fg+g+gg|fg+gg+ggf+ggg+ggg
  g=ggg
  }

sq30191a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+fg+g+gg|fg+gg+ggf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30191b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+fg+g+gg|fg+gg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30191c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+fg+g+gg|fg+gg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30192* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+ff+fgg+g+gg|fg+gg+ggg+ggg
  g=ggg
  }

sq30192a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+f|gf+ff+fgg+g+gg|fg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30192b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+f|gf+ff+fgg+g+gg|fg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30192c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+f|gf+ff+fgg+g+gg|fg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30193* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+ff+ggg+f+gg|fg+gg+ggg+ggg
  g=ggg
  }

sq30194* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+ff+ggg+g+gg|fg+gg+fgg+ggg
  g=ggg
  }

sq30195* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gf+gfg+g+gg|fg+gg+ggg+ggg
  g=ggg
  }

sq30196* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gf+ggg+g+gg|fg+fg+ggg+ggg
  g=ggg
  }

sq30197* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of the very best, a real gem
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gf+ggg+g+gg|fg+gg+gfg+ggg
  g=ggg
  }

sq30197a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+gf+ggg+g+gg|fg+gg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30197b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+gf+ggg+g+gg|fg+gg+gfg+ggg+ggg+ggg
  g=ggg
  }

sq30197c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+gf+ggg+g+gg|fg+gg+gfg+ggg+ggg
  g=ggg
  }

sq30198* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+fg+ggf+g+gg|fg+gg+ggg+ggg
  g=ggg
  }

sq30199* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+fg+ggg+g+gg|fg+gf+ggg+ggg
  g=ggg
  }

sq30199a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+fg+ggg+g+gg|fg+gf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30199b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+fg+ggg+g+gg|fg+gf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30199c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+fg+ggg+g+gg|fg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30200* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs:  nice and simple
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+fg+ggg+g+gg|fg+gg+ggf+ggg
  g=ggg
  }

sq30200a { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+fg+ggg+g+gg|fg+gg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30200b { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+fg+ggg+g+gg|fg+gg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30200c { ; Anthony Hanmer 18/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+fg+ggg+g+gg|fg+gg+ggf+ggg+ggg
  g=ggg
  }

sq30201* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+fg+fgg+g+gg|fg+gg+ggf+ggg
  g=ggg
  }

sq30201a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+f|gf+fg+fgg+g+gg|fg+gg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30201b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+f|gf+fg+fgg+g+gg|fg+gg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30201c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+f|gf+fg+fgg+g+gg|fg+gg+ggf+ggg+ggg
  g=ggg
  }

sq30202* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+fg+ggg+f+gg|fg+gg+ggf+ggg
  g=ggg
  }

sq30203* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+fg+ggg+g+gg|fg+gg+fgf+ggg
  g=ggg
  }

sq30203a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+f|gf+fg+ggg+g+gg|fg+gg+fgf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30203b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+f|gf+fg+ggg+g+gg|fg+gg+fgf+ggg+ggg+ggg
  g=ggg
  }

sq30203c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+f|gf+fg+ggg+g+gg|fg+gg+fgf+ggg+ggg
  g=ggg
  }

sq30204* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs:  nice spirally curves
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+ff+fgg+ggg+g+gg|fg+gg+ggg
  g=ggg
  }

sq30204a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+f|gf+ff+fgg+ggg+g+gg|fg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30204b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+f|gf+ff+fgg+ggg+g+gg|fg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30204c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+f|gf+ff+fgg+ggg+g+gg|fg+gg+ggg+ggg
  g=ggg
  }

sq30205* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+fg+ggf+ggg+g+gg|fg+gg+ggg
  g=ggg
  }

sq30206* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+fg+ggg+ggf+g+gg|fg+gg+ggg
  g=ggg
  }

sq30206a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+fg+ggg+ggf+g+gg|fg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30206b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+fg+ggg+ggf+g+gg|fg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30206c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+fg+ggg+ggf+g+gg|fg+gg+ggg+ggg
  g=ggg
  }

sq30207* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs:  nice simplicity
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+fg+ggg+ggg+g+gg|fg+gf+ggg
  g=ggg
  }

sq30207a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+fg+ggg+ggg+g+gg|fg+gf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30207b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  ; Has, along with the 0-degree member, 45-degree mirror symmetry,
  ; and seems to prove that in these cases, the other 2 rotation set members
  ; will be identical except for rotation.
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+fg+ggg+ggg+g+gg|fg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30207c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+fg+ggg+ggg+g+gg|fg+gf+ggg+ggg
  g=ggg
  }

sq30208* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gg+gfg+ggg+g+gg|fg+gf+ggg
  g=ggg
  }

sq30209* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gg+ggg+gfg+g+gg|fg+gf+ggg
  g=ggg
  }

sq30210* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+f|gf+gg+ggg+ggg+g+gg|fg+ff+ggg
  g=ggg
  }

sq30210a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; Beautiful but not new...
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+f|gf+gg+ggg+ggg+g+gg|fg+ff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30210b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+f|gf+gg+ggg+ggg+g+gg|fg+ff+ggg+ggg+ggg
  g=ggg
  }

sq30210c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+f|gf+gg+ggg+ggg+g+gg|fg+ff+ggg+ggg
  g=ggg
  }

sq30211* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+fg+fgg+ggg+g+gg|fg+gf+ggg
  g=ggg
  }

sq30211a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+f|gf+fg+fgg+ggg+g+gg|fg+gf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30211b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+f|gf+fg+fgg+ggg+g+gg|fg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30211c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+f|gf+fg+fgg+ggg+g+gg|fg+gf+ggg+ggg
  g=ggg
  }

sq30212* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+fg+ggg+ggg+f+gg|fg+gf+ggg
  g=ggg
  }

sq30213* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+gg+fgg+ggg+g+gg|fg+ff+ggg
  g=ggg
  }

sq30214* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs:  bold diagonals
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+gg+ggg+fgg+g+gg|fg+ff+ggg
  g=ggg
  }

sq30215* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+f|gf+gg+ggg+ggg+f+gg|fg+ff+ggg
  g=ggg
  }

sq30215a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+f|gf+gg+ggg+ggg+f+gg|fg+ff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30215b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+f|gf+gg+ggg+ggg+f+gg|fg+ff+ggg+ggg+ggg
  g=ggg
  }

sq30215c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+f|gf+gg+ggg+ggg+f+gg|fg+ff+ggg+ggg
  g=ggg
  }

sq30216* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+ff+g+gf|gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30216a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+ff+g+gf|gg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30216b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+ff+g+gf|gg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30216c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+ff+g+gf|gg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30217* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+ff+ggg+g+gf|gg+gg+ggg+ggg
  g=ggg
  }

sq30217a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+ff+ggg+g+gf|gg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30217b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+ff+ggg+g+gf|gg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30217c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+ff+ggg+g+gf|gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30218* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+ff+ggg+ggg+g+gf|gg+gg+ggg
  g=ggg
  }

sq30218a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+ff+ggg+ggg+g+gf|gg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30218b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+ff+ggg+ggg+g+gf|gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30218c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+ff+ggg+ggg+g+gf|gg+gg+ggg+ggg
  g=ggg
  }

sq30219* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+ff+g+gf|gg+gg+ggg+fgg+ggg
  g=ggg
  }

sq30219a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+g|ff+ff+g+gf|gg+gg+ggg+fgg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30219b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+g|ff+ff+g+gf|gg+gg+ggg+fgg+ggg+ggg+ggg
  g=ggg
  }

sq30219c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+g|ff+ff+g+gf|gg+gg+ggg+fgg+ggg+ggg
  g=ggg
  }

sq30220* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gf+g+gf|gg+gg+ggg+gfg+ggg
  g=ggg
  }

sq30220a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+gf+g+gf|gg+gg+ggg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30220b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+gf+g+gf|gg+gg+ggg+gfg+ggg+ggg+ggg
  g=ggg
  }

sq30220c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+gf+g+gf|gg+gg+ggg+gfg+ggg+ggg
  g=ggg
  }

sq30221* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gg+g+gf|gg+gg+ggg+gff+ggg
  g=ggg
  }

sq30221a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; Quarter-filling HT
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+gg+g+gf|gg+gg+ggg+gff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30221b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; Same as 0-degree member
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+gg+g+gf|gg+gg+ggg+gff+ggg+ggg+ggg
  g=ggg
  }

sq30221c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+gg+g+gf|gg+gg+ggg+gff+ggg+ggg
  g=ggg
  }

sq30222* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+ff+f+gf|gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30222a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+g|ff+ff+f+gf|gg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30222b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+g|ff+ff+f+gf|gg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30222c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+g|ff+ff+f+gf|gg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30223* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+ff+g+gf|gg+gg+fgg+ggg+ggg
  g=ggg
  }

sq30223a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+g|ff+ff+g+gf|gg+gg+fgg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30223b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+g|ff+ff+g+gf|gg+gg+fgg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30223c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+g|ff+ff+g+gf|gg+gg+fgg+ggg+ggg+ggg
  g=ggg
  }

sq30224* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gf+g+gf|gg+fg+ggg+ggg+ggg
  g=ggg
  }

sq30224a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+gf+g+gf|gg+fg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30224b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+gf+g+gf|gg+fg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30224c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+gf+g+gf|gg+fg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30225* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gf+g+gf|gg+gg+gfg+ggg+ggg
  g=ggg
  }

sq30225a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+gf+g+gf|gg+gg+gfg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30225b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+gf+g+gf|gg+gg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30225c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+gf+g+gf|gg+gg+gfg+ggg+ggg+ggg
  g=ggg
  }

sq30226* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+fg+g+gf|gg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30226a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+fg+g+gf|gg+gf+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30226b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+fg+g+gf|gg+gf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30226c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+fg+g+gf|gg+gf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30227* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+fg+g+gf|gg+gg+ggf+ggg+ggg
  g=ggg
  }

sq30227a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+fg+g+gf|gg+gg+ggf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30227b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+fg+g+gf|gg+gg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30227c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+fg+g+gf|gg+gg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30228* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+ff+fgg+g+gf|gg+gg+ggg+ggg
  g=ggg
  }

sq30228a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+g|ff+ff+fgg+g+gf|gg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30228b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+g|ff+ff+fgg+g+gf|gg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30228c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+g|ff+ff+fgg+g+gf|gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30229* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+ff+ggg+f+gf|gg+gg+ggg+ggg
  g=ggg
  }

sq30230* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+ff+ggg+g+gf|gg+gg+fgg+ggg
  g=ggg
  }

sq30231* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gf+gfg+g+gf|gg+gg+ggg+ggg
  g=ggg
  }

sq30232* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gf+ggg+g+gf|gg+fg+ggg+ggg
  g=ggg
  }

sq30233* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gf+ggg+g+gf|gg+gg+gfg+ggg
  g=ggg
  }

sq30233a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+gf+ggg+g+gf|gg+gg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30233b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+gf+ggg+g+gf|gg+gg+gfg+ggg+ggg+ggg
  g=ggg
  }

sq30233c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+gf+ggg+g+gf|gg+gg+gfg+ggg+ggg
  g=ggg
  }

sq30234* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+fg+ggf+g+gf|gg+gg+ggg+ggg
  g=ggg
  }

sq30235* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+fg+ggg+g+gf|gg+gf+ggg+ggg
  g=ggg
  }

sq30235a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+fg+ggg+g+gf|gg+gf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30235b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+fg+ggg+g+gf|gg+gf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30235c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+fg+ggg+g+gf|gg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30236* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+fg+ggg+g+gf|gg+gg+ggf+ggg
  g=ggg
  }

sq30236a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+fg+ggg+g+gf|gg+gg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30236b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+fg+ggg+g+gf|gg+gg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30236c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+fg+ggg+g+gf|gg+gg+ggf+ggg+ggg
  g=ggg
  }

sq30237* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+fg+fgg+g+gf|gg+gg+ggf+ggg
  g=ggg
  }

sq30238* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+fg+ggg+f+gf|gg+gg+ggf+ggg
  g=ggg
  }

sq30239* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+fg+ggg+g+gf|gg+gg+fgf+ggg
  g=ggg
  }

sq30240* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+ff+fgg+ggg+g+gf|gg+gg+ggg
  g=ggg
  }

sq30240a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+g|ff+ff+fgg+ggg+g+gf|gg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30240b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+g|ff+ff+fgg+ggg+g+gf|gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30240c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+g|ff+ff+fgg+ggg+g+gf|gg+gg+ggg+ggg
  g=ggg
  }

sq30241* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+fg+ggf+ggg+g+gf|gg+gg+ggg
  g=ggg
  }

sq30242* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+fg+ggg+ggf+g+gf|gg+gg+ggg
  g=ggg
  }

sq30242a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+fg+ggg+ggf+g+gf|gg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30242b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+fg+ggg+ggf+g+gf|gg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30242c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+fg+ggg+ggf+g+gf|gg+gg+ggg+ggg
  g=ggg
  }

sq30243* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+fg+ggg+ggg+g+gf|gg+gf+ggg
  g=ggg
  }

sq30243a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+fg+ggg+ggg+g+gf|gg+gf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30243b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+fg+ggg+ggg+g+gf|gg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30243c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+fg+ggg+ggg+g+gf|gg+gf+ggg+ggg
  g=ggg
  }

sq30244* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs:  nice edge mixing
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gg+gfg+ggg+g+gf|gg+gf+ggg
  g=ggg
  }

sq30244a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs:  nice edge mixing
  ; These 4 rotation set members are the closest to
  ; being identical so far (except for sfds), I think.
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+gg+gfg+ggg+g+gf|gg+gf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30244b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs:  nice edge mixing
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+gg+gfg+ggg+g+gf|gg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30244c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs:  nice edge mixing
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+gg+gfg+ggg+g+gf|gg+gf+ggg+ggg
  g=ggg
  }

sq30245* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gg+ggg+gfg+g+gf|gg+gf+ggg
  g=ggg
  }

sq30245a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+gg+ggg+gfg+g+gf|gg+gf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30245b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+gg+ggg+gfg+g+gf|gg+gf+ggg+ggg+ggg
  g=ggg
  }

sq30245c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+gg+ggg+gfg+g+gf|gg+gf+ggg+ggg
  g=ggg
  }

sq30246* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|f+g|ff+gg+ggg+ggg+g+gf|gg+ff+ggg
  g=ggg
  }

sq30246a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|f+g|ff+gg+ggg+ggg+g+gf|gg+ff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30246b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|f+g|ff+gg+ggg+ggg+g+gf|gg+ff+ggg+ggg+ggg
  g=ggg
  }

sq30246c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|f+g|ff+gg+ggg+ggg+g+gf|gg+ff+ggg+ggg
  g=ggg
  }

sq30247* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+fg+fgg+ggg+g+gf|gg+gf+ggg
  g=ggg
  }

sq30248* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+fg+ggg+ggg+f+gf|gg+gf+ggg
  g=ggg
  }

sq30249* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+gg+fgg+ggg+g+gf|gg+ff+ggg
  g=ggg
  }

sq30250* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+gg+ggg+fgg+g+gf|gg+ff+ggg
  g=ggg
  }

sq30251* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|f+g|ff+gg+ggg+ggg+f+gf|gg+ff+ggg
  g=ggg
  }

sq30251a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|f+g|ff+gg+ggg+ggg+f+gf|gg+ff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30251b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|f+g|ff+gg+ggg+ggg+f+gf|gg+ff+ggg+ggg+ggg
  g=ggg
  }

sq30251c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|f+g|ff+gg+ggg+ggg+f+gf|gg+ff+ggg+ggg
  g=ggg
  }

sq30252* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+f+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30252a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+f|g+f+gg+g|f+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30252b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+f|g+f+gg+g|f+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30252c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+f|g+f+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30253* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+f+ggg+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30253a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+f|g+f+ggg+gg+g|f+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30253b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+f|g+f+ggg+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30253c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+f|g+f+ggg+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30254* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+f+ggg+ggg+gg+g|f+g+ggg
  g=ggg
  }

sq30254a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+f|g+f+ggg+ggg+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30254b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+f|g+f+ggg+ggg+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30254c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+f|g+f+ggg+ggg+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30255* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+fg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30256* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+gg+g|f+g+fgg+ggg+ggg
  g=ggg
  }

sq30257* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+gg+g|f+g+ggg+fgg+ggg
  g=ggg
  }

sq30258* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+gf+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30259* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+gg+g|f+g+gfg+ggg+ggg
  g=ggg
  }

sq30260* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+gg+g|f+g+ggg+gfg+ggg
  g=ggg
  }

sq30261* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+g+gg+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30262* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+g+gg+g|f+g+ggf+ggg+ggg
  g=ggg
  }

sq30263* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+g+gg+g|f+g+ggg+ggf+ggg
  g=ggg
  }

sq30263a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+f|g+g+gg+g|f+g+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30263b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+f|g+g+gg+g|f+g+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30263c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+f|g+g+gg+g|f+g+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30264* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+fgg+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30264a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+f|g+f+fgg+gg+g|f+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30264b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+f|g+f+fgg+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30264c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+f|g+f+fgg+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30265* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+ggg+fg+g|f+g+ggg+ggg
  g=ggg
  }

sq30266* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+ggg+gg+g|f+g+fgg+ggg
  g=ggg
  }

sq30267* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+gfg+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30268* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+ggg+gf+g|f+g+ggg+ggg
  g=ggg
  }

sq30269* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+ggg+gg+g|f+g+gfg+ggg
  g=ggg
  }

sq30270* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+g+ggf+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30271* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+g+ggg+gg+g|f+f+ggg+ggg
  g=ggg
  }

sq30271a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+f|g+g+ggg+gg+g|f+f+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30271b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+f|g+g+ggg+gg+g|f+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30271c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+f|g+g+ggg+gg+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30272* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+ggg+gg+g|f+g+gfg+ggg
  g=ggg
  }

sq30273* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
   ; One of my best HTs
 Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+fgg+ggg+gg+g|f+g+ggg
  g=ggg
  }

sq30273a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+f|g+f+fgg+ggg+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30273b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+f|g+f+fgg+ggg+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30273c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+f|g+f+fgg+ggg+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30274* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+ggg+fgg+gg+g|f+g+ggg
  g=ggg
  }

sq30274a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+f|g+f+ggg+fgg+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30274b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+f|g+f+ggg+fgg+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30274c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+f|g+f+ggg+fgg+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30275* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+f+ggg+ggg+fg+g|f+g+ggg
  g=ggg
  }

sq30275a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+f|g+f+ggg+ggg+fg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30275b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+f|g+f+ggg+ggg+fg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30275c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+f|g+f+ggg+ggg+fg+g|f+g+ggg+ggg
  g=ggg
  }

sq30276* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+gfg+ggg+gg+g|f+g+ggg
  g=ggg
  }

sq30277* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+ggg+gfg+gg+g|f+g+ggg
  g=ggg
  }

sq30277a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+f|g+f+ggg+gfg+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30277b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+f|g+f+ggg+gfg+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30277c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+f|g+f+ggg+gfg+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30278* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+f+ggg+ggg+gf+g|f+g+ggg
  g=ggg
  }

sq30278a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+f|g+f+ggg+ggg+gf+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30278b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+f|g+f+ggg+ggg+gf+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30278c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+f|g+f+ggg+ggg+gf+g|f+g+ggg+ggg
  g=ggg
  }

sq30279* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+g+ggf+ggg+gg+g|f+g+ggg
  g=ggg
  }

sq30279a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+f|g+g+ggf+ggg+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30279b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+f|g+g+ggf+ggg+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30279c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+f|g+g+ggf+ggg+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30280* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+g+ggg+ggf+gg+g|f+g+ggg
  g=ggg
  }

sq30280a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+f|g+g+ggg+ggf+gg+g|f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30280b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+f|g+g+ggg+ggf+gg+g|f+g+ggg+ggg+ggg
  g=ggg
  }

sq30280c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+f|g+g+ggg+ggf+gg+g|f+g+ggg+ggg
  g=ggg
  }

sq30281* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+f|g+g+ggg+ggg+gg+g|f+f+ggg
  g=ggg
  }

sq30281a { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+f|g+g+ggg+ggg+gg+g|f+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30281b { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+f|g+g+ggg+ggg+gg+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30281c { ; Anthony Hanmer 19/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+f|g+g+ggg+ggg+gg+g|f+f+ggg+ggg
  g=ggg
  }

sq30282* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+g+fgg+ggg+gg+g|f+f+ggg
  g=ggg
  }

sq30282a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+f|g+g+fgg+ggg+gg+g|f+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30282b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+f|g+g+fgg+ggg+gg+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30282c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+f|g+g+fgg+ggg+gg+g|f+f+ggg+ggg
  g=ggg
  }

sq30283* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+g+ggg+fgg+gg+g|f+f+ggg
  g=ggg
  }

sq30283a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+f|g+g+ggg+fgg+gg+g|f+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30283b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+f|g+g+ggg+fgg+gg+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30283c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+f|g+g+ggg+fgg+gg+g|f+f+ggg+ggg
  g=ggg
  }

sq30284* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+f|g+g+ggg+ggg+fg+g|f+f+ggg
  g=ggg
  }

sq30284a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+f|g+g+ggg+ggg+fg+g|f+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30284b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+f|g+g+ggg+ggg+fg+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30284c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+f|g+g+ggg+ggg+fg+g|f+f+ggg+ggg
  g=ggg
  }

sq30285* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+g+gfg+ggg+gg+g|f+f+ggg
  g=ggg
  }

sq30285a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+f|g+g+gfg+ggg+gg+g|f+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30285b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+f|g+g+gfg+ggg+gg+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30285c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+f|g+g+gfg+ggg+gg+g|f+f+ggg+ggg
  g=ggg
  }

sq30286* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+g+ggg+gfg+gg+g|f+f+ggg
  g=ggg
  }

sq30286a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+f|g+g+ggg+gfg+gg+g|f+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30286b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+f|g+g+ggg+gfg+gg+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30286c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+f|g+g+ggg+gfg+gg+g|f+f+ggg+ggg
  g=ggg
  }

sq30287* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+f|g+g+ggg+ggg+gf+g|f+f+ggg
  g=ggg
  }

sq30287a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+f|g+g+ggg+ggg+gf+g|f+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30287b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; Same as the 0-degree member, due to 45-degree axial symmetry
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+f|g+g+ggg+ggg+gf+g|f+f+ggg+ggg+ggg
  g=ggg
  }

sq30287c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+f|g+g+ggg+ggg+gf+g|f+f+ggg+ggg
  g=ggg
  }

sq30288* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+f+ggg+gg+f|g+g+ggg+ggg
  g=ggg
  }

sq30288a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+g|f+f+ggg+gg+f|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30288b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+g|f+f+ggg+gg+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30288c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+g|f+f+ggg+gg+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30289* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+f+ggg+ggg+gg+f|g+g+ggg
  g=ggg
  }

sq30289a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+g|f+f+ggg+ggg+gg+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30289b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+g|f+f+ggg+ggg+gg+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30289c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+g|f+f+ggg+ggg+gg+f|g+g+ggg+ggg
  g=ggg
  }

sq30290* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+fg+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30290a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+g|f+f+fg+f|g+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30290b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+g|f+f+fg+f|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30290c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+g|f+f+fg+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30291* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+gg+f|g+g+fgg+ggg+ggg
  g=ggg
  }

sq30292* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+gg+f|g+g+ggg+fgg+ggg
  g=ggg
  }

sq30293* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+gf+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30294* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+gg+f|g+g+gfg+ggg+ggg
  g=ggg
  }

sq30295* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+gg+f|g+g+ggg+gfg+ggg
  g=ggg
  }

sq30296* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+g+gg+f|g+f+ggg+ggg+ggg
  g=ggg
  }

sq30297* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+g+gg+f|g+g+ggf+ggg+ggg
  g=ggg
  }

sq30298* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+g+gg+f|g+g+ggg+ggf+ggg
  g=ggg
  }

sq30298a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+f+g|f+g+gg+f|g+g+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30298b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+f+g|f+g+gg+f|g+g+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30298c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+f+g|f+g+gg+f|g+g+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30299* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+fgg+gg+f|g+g+ggg+ggg
  g=ggg
  }

sq30299a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+g|f+f+fgg+gg+f|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30299b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+g|f+f+fgg+gg+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30299c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+g|f+f+fgg+gg+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30300* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+ggg+fg+f|g+g+ggg+ggg
  g=ggg
  }

sq30301* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+ggg+gg+f|g+g+fgg+ggg
  g=ggg
  }

sq30302* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+gfg+gg+f|g+g+ggg+ggg
  g=ggg
  }

sq30303* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+ggg+gf+f|g+g+ggg+ggg
  g=ggg
  }

sq30304* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+ggg+gg+f|g+g+gfg+ggg
  g=ggg
  }

sq30305* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+g+ggf+gg+f|g+g+ggg+ggg
  g=ggg
  }

sq30306* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+g+ggg+gg+f|g+f+ggg+ggg
  g=ggg
  }

sq30307* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+ggg+gg+f|g+g+gfg+ggg
  g=ggg
  }

sq30308* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+fgg+ggg+gg+f|g+g+ggg
  g=ggg
  }

sq30308a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+g|f+f+fgg+ggg+gg+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30308b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+g|f+f+fgg+ggg+gg+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30308c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+g|f+f+fgg+ggg+gg+f|g+g+ggg+ggg
  g=ggg
  }

sq30309* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+ggg+fgg+gg+f|g+g+ggg
  g=ggg
  }

sq30310* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+f+ggg+ggg+fg+f|g+g+ggg
  g=ggg
  }

sq30310a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+g|f+f+ggg+ggg+fg+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30310b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+g|f+f+ggg+ggg+fg+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30310c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+g|f+f+ggg+ggg+fg+f|g+g+ggg+ggg
  g=ggg
  }

sq30311* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+gfg+ggg+gg+f|g+g+ggg
  g=ggg
  }

sq30311a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+g|f+f+gfg+ggg+gg+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30311b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+g|f+f+gfg+ggg+gg+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30311c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+g|f+f+gfg+ggg+gg+f|g+g+ggg+ggg
  g=ggg
  }

sq30312* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+ggg+gfg+gg+f|g+g+ggg
  g=ggg
  }

sq30313* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+f+ggg+ggg+gf+f|g+g+ggg
  g=ggg
  }

sq30313a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+g|f+f+ggg+ggg+gf+f|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30313b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+g|f+f+ggg+ggg+gf+f|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30313c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+g|f+f+ggg+ggg+gf+f|g+g+ggg+ggg
  g=ggg
  }

sq30314* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+g+ggf+ggg+gg+f|g+g+ggg
  g=ggg
  }

sq30315* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+g+ggg+ggf+gg+f|g+g+ggg
  g=ggg
  }

sq30316* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+f+g|f+g+ggg+ggg+gg+f|g+f+ggg
  g=ggg
  }

sq30317* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+g+fgg+ggg+gg+f|g+f+ggg
  g=ggg
  }

sq30317a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ff|ff+f+g|f+g+fgg+ggg+gg+f|g+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30317b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ff|ff+f+g|f+g+fgg+ggg+gg+f|g+f+ggg+ggg+ggg
  g=ggg
  }

sq30317c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ff|ff+f+g|f+g+fgg+ggg+gg+f|g+f+ggg+ggg
  g=ggg
  }

sq30318* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+g+ggg+fgg+gg+f|g+f+ggg
  g=ggg
  }

sq30319* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+ff|ff+f+g|f+g+ggg+ggg+fg+f|g+f+ggg
  g=ggg
  }

sq30320* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+g+gfg+ggg+gg+f|g+f+ggg
  g=ggg
  }

sq30320a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+g|f+g+gfg+ggg+gg+f|g+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30320b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+g|f+g+gfg+ggg+gg+f|g+f+ggg+ggg+ggg
  g=ggg
  }

sq30320c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+g|f+g+gfg+ggg+gg+f|g+f+ggg+ggg
  g=ggg
  }

sq30321* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+g+ggg+gfg+gg+f|g+f+ggg
  g=ggg
  }

sq30322* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+ff|ff+g+g|f+g+ggg+ggg+gf+f|g+f+ggg
  g=ggg
  }

sq30322a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ff|ff+g+g|f+g+ggg+ggg+gf+f|g+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30322b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ff|ff+g+g|f+g+ggg+ggg+gf+f|g+f+ggg+ggg+ggg
  g=ggg
  }

sq30322c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ff|ff+g+g|f+g+ggg+ggg+gf+f|g+f+ggg+ggg
  g=ggg
  }

sq30323* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+g+f+ff+gg+g+f+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30323a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-f-f|f+g+f+ff+gg+g+f+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30323b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-f-f|f+g+f+ff+gg+g+f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30323c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-f-f|f+g+f+ff+gg+g+f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30324* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+g+f+ff+ggg+gg+g+f+g+gg+ggg+ggg
  g=ggg
  }

sq30324a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-f-f|f+g+f+ff+ggg+gg+g+f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30324b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-f-f|f+g+f+ff+ggg+gg+g+f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30325* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+g+f+gf+gf+g+f+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30325a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-f-f|f+g+f+gf+gf+g+f+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30325b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-f-f|f+g+f+gf+gf+g+f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30325c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-f-f|f+g+f+gf+gf+g+f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30326* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+g+f+gf+gfg+gg+g+f+g+gg+ggg+ggg
  g=ggg
  }

sq30326a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-f-f|f+g+f+gf+gfg+gg+g+f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30326b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-f-f|f+g+f+gf+gfg+gg+g+f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30326c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f-f-f|f+g+f+gf+gfg+gg+g+f+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30327* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+g+f+gf+gg+g+f+g+gg+gfg+ggg+ggg
  g=ggg
  }

sq30328* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f-f-f|f+g+f+gf+ggg+gf+g+f+g+gg+ggg+ggg
  g=ggg
  }

sq30328a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f-f-f|f+g+f+gf+ggg+gf+g+f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30328b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f-f-f|f+g+f+gf+ggg+gf+g+f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30329* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+g+f+fg+ggg+fg+g+f+g+gf+ggg+ggg
  g=ggg
  }

sq30330* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f-f-f|f+g+f+gg+ggg+ff+g+f+g+gf+ggg+ggg
  g=ggg
  }

sq30331* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f|g+f+f|g+f+g+g|f+g+g|f+g+gg+g+f+g+gg+g+g-f|g+g+gg+ggg
  g=ggg
  }

sq30332* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|g+f+f|g+f+g+g|f+g+g+f|f-f+g+ggg+ggg+ggg
  g=ggg
  }

sq30332a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f|g+f+f|g+f+g+g|f+g+g+f|f-f+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30332b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f|g+f+f|g+f+g+g|f+g+g+f|f-f+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30332c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f|g+f+f|g+f+g+g|f+g+g+f|f-f+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30333* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f|g+f+f|g+f+g+g|f+g+g+f|g-f+g+ggg+g+g-f|g+g+gg+ggg
  g=ggg
  }

sq30333a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f|g+f+f|g+f+g+g|f+g+g+f|g-f+g+ggg+g+g-f|g+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30333b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f|g+f+f|g+f+g+g|f+g+g+f|g-f+g+ggg+g+g-f|g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30333c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f|g+f+f|g+f+g+g|f+g+g+f|g-f+g+ggg+g+g-f|g+g+gg+ggg+ggg
  g=ggg
  }

sq30334* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f|g+f+f|g+f+g+g|f+g+g+g|f-f+g+ggg+g+g-g|f+g+gg+ggg
  g=ggg
  }

sq30335* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggf+ff+g+ggg|ffg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30335a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|ggf+ff+g+ggg|ffg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30335b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|ggf+ff+g+ggg|ffg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30335c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  ; but is it new?
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|ggf+ff+g+ggg|ffg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30336* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggf+ff+ggg+g+ggg|ffg+gg+ggg+ggg
  g=ggg
  }

sq30336a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|ggf+ff+ggg+g+ggg|ffg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30336b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|ggf+ff+ggg+g+ggg|ffg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30336c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  ; and, I hope, new
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|ggf+ff+ggg+g+ggg|ffg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30337* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|gff+ff+ggg+ggg+g+ggg|fgg+gg+ggg
  g=ggg
  }

sq30338* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggf+gg+g+ggg|ffg+gg+ggg+gff+ggg
  g=ggg
  }

sq30338a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|ggf+gg+g+ggg|ffg+gg+ggg+gff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30338b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|ggf+gg+g+ggg|ffg+gg+ggg+gff+ggg+ggg+ggg
  g=ggg
  }

sq30338c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  ; but is it new...?
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|ggf+gg+g+ggg|ffg+gg+ggg+gff+ggg+ggg
  g=ggg
  }

sq30339* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+fff|ggf+gg+ggg+g+ggg|ffg+gg+gff+ggg
  g=ggg
  }

sq30339a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fff|ggf+gg+ggg+g+ggg|ffg+gg+gff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30339b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fff|ggf+gg+ggg+g+ggg|ffg+gg+gff+ggg+ggg+ggg
  g=ggg
  }

sq30339c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fff|ggf+gg+ggg+g+ggg|ffg+gg+gff+ggg+ggg
  g=ggg
  }

sq30340* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+gfg|fgf+ff+g+fgf|gfg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30341* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+fgf|gfg+ff+g+gfg|fgf+gg+ggg+ggg+ggg
  g=ggg
  }

sq30342* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; THIS looks familiar...
  ; It is, actually.
  Axiom c53f+c2f+c12f+c14f
  f=f+ffg|gff+ff+g+ggf|fgg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30343* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; THIS looks familiar...
  Axiom c53f+c2f+c12f+c14f
  f=f+ffg|ggf+ff+g+ggf|ffg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30343a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; THIS looks familiar...
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+ffg|ggf+ff+g+ggf|ffg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30343b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; THIS looks familiar...
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+ffg|ggf+ff+g+ggf|ffg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30343c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; THIS looks familiar...
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+ffg|ggf+ff+g+ggf|ffg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30344* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  ; ... But is it new?
  Axiom c53f+c2f+c12f+c14f
  f=g+ffg|gff+ff+f+ggf|fgg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30344a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ffg|gff+ff+f+ggf|fgg+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30344b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ffg|gff+ff+f+ggf|fgg+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30344c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ffg|gff+ff+f+ggf|fgg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30345* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  ; ... But is it new?
  Axiom c53f+c2f+c12f+c14f
  f=g+ffg|gff+fg+f+ggf|fgg+gg+ggg+ggf+ggg
  g=ggg
  }

sq30345a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+ffg|gff+fg+f+ggf|fgg+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30345b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+ffg|gff+fg+f+ggf|fgg+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30345c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+ffg|gff+fg+f+ggf|fgg+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30346* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  ; ... But is it new?
  ; No.
  Axiom c53f+c2f+c12f+c14f
  f=f+fgg|gff+ff+g+gff|fgg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30347* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  ; ... But is it new?
  ; No.
  Axiom c53f+c2f+c12f+c14f
  f=g+fgg|gff+ff+f+gff|fgg+gg+ggg+ggg+ggg
  g=ggg
  }

sq30348* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  ; ... But is it new?
  ; No.
  Axiom c53f+c2f+c12f+c14f
  f=f+fgg|gff+fg+g+gff|fgg+gg+ggg+ggf+ggg
  g=ggg
  }

sq30349* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+fgg|gff+fg+f+gff|fgg+gg+ggg+ggf+ggg
  g=ggg
  }

sq30350* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+fgg|gff+fg+g+gff|fgg+gg+ggg+fgf+ggg
  g=ggg
  }

sq30351* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+fgg|gff+gg+g+gff|fgg+gg+ggg+fff+ggg
  g=ggg
  }

sq30352* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+fgg|gff+fg+g+gff|fgg+gg+ggf+fgg+ggg
  g=ggg
  }

sq30353* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+fgg|gff+fg+g+gff|fgg+gf+fgg+ggg+ggg
  g=ggg
  }

sq30354* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|g+f|ff+f+f|g+f+g+f|g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30355* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|g+f|ff+f+f|g+g+g+f|g+gg+ggg+ggf+ggg
  g=ggg
  }

sq30355a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g+f|g+f|ff+f+f|g+g+g+f|g+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30355b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g+f|g+f|ff+f+f|g+g+g+f|g+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30355c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g+f|g+f|ff+f+f|g+g+g+f|g+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30356* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+g|f+f|ff+f+g|f+f+g+f|g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30356a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g+g|f+f|ff+f+g|f+f+g+f|g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30356b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g+g|f+f|ff+f+g|f+f+g+f|g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30356c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g+g|f+f|ff+f+g|f+f+g+f|g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30357* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+g|f+f|ff+f+g|f+g+g+f|g+gg+ggg+ggf+ggg
  g=ggg
  }

sq30357a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g+g|f+f|ff+f+g|f+g+g+f|g+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30357b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g+g|f+f|ff+f+g|f+g+g+f|g+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30357c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g+g|f+f|ff+f+g|f+g+g+f|g+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30358* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|ff|f+f+ff+g+f+g|gg|g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30359* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+g|ff|f+f+ff+g+g+f|gg|g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30359a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+g|ff|f+f+ff+g+g+f|gg|g+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30359b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+g|ff|f+f+ff+g+g+f|gg|g+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30359c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+g|ff|f+f+ff+g+g+f|gg|g+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30360* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|gf|f+f+ff+g+g+g|fg|g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30360a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|gf|f+f+ff+g+g+g|fg|g+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30360b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|gf|f+f+ff+g+g+g|fg|g+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30360c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|gf|f+f+ff+g+g+g|fg|g+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30361* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|fg|f+f+ff+g+g+g|gf|g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30361a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|fg|f+f+ff+g+g+g|gf|g+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30361b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|fg|f+f+ff+g+g+g|gf|g+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30361c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|fg|f+f+ff+g+g+g|gf|g+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30362* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|ff|g+f+ff+g+g+g|gg|f+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30362a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|ff|g+f+ff+g+g+g|gg|f+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30362b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|ff|g+f+ff+g+g+g|gg|f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30362c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|ff|g+f+ff+g+g+g|gg|f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30363* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|ff|f+g+ff+g+g+g|gg|g+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30364* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+g+f|ff|f+f+fg+g+f+g|gg|g+g+gg+ggg+ggf+ggg
  g=ggg
  }

sq30364a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+g+f|ff|f+f+fg+g+f+g|gg|g+g+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30364b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+g+f|ff|f+f+fg+g+f+g|gg|g+g+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30364c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+g+f|ff|f+f+fg+g+f+g|gg|g+g+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30365* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+g|ff|f+f+ff+f+g+f|gg|g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30365a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+g|ff|f+f+ff+f+g+f|gg|g+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30365b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+g|ff|f+f+ff+f+g+f|gg|g+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30365c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+g|ff|f+f+ff+f+g+f|gg|g+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30366* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+g|ff|f+f+fg+g+g+f|gg|g+g+gg+ggg+ggf+ggg
  g=ggg
  }

sq30366a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+g|ff|f+f+fg+g+g+f|gg|g+g+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30366b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+g|ff|f+f+fg+g+g+f|gg|g+g+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30366c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+g|ff|f+f+fg+g+g+f|gg|g+g+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30367* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|gf|f+f+ff+f+g+g|fg|g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30367a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|gf|f+f+ff+f+g+g|fg|g+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30367b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|gf|f+f+ff+f+g+g|fg|g+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30367c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|gf|f+f+ff+f+g+g|fg|g+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30368* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs:
  ; All 4 rotation set members are simply elegant
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|gf|f+f+fg+g+g+g|fg|g+g+gg+ggg+ggf+ggg
  g=ggg
  }

sq30368a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|gf|f+f+fg+g+g+g|fg|g+g+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30368b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|gf|f+f+fg+g+g+g|fg|g+g+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30368c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|gf|f+f+fg+g+g+g|fg|g+g+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30369* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|fg|f+f+ff+f+g+g|gf|g+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30369a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|fg|f+f+ff+f+g+g|gf|g+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30369b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|fg|f+f+ff+f+g+g|gf|g+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30369c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|fg|f+f+ff+f+g+g|gf|g+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30370* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|fg|f+f+fg+g+g+g|gf|g+g+gg+ggg+ggf+ggg
  g=ggg
  }

sq30370a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|fg|f+f+fg+g+g+g|gf|g+g+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30370b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|fg|f+f+fg+g+g+g|gf|g+g+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30370c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|fg|f+f+fg+g+g+g|gf|g+g+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30371* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|ff|g+f+ff+f+g+g|gg|f+g+gg+ggg+ggg+ggg
  g=ggg
  }

sq30371a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|ff|g+f+ff+f+g+g|gg|f+g+gg+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30371b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|ff|g+f+ff+f+g+g|gg|f+g+gg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30371c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|ff|g+f+ff+f+g+g|gg|f+g+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30372* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|ff|g+f+fg+g+g+g|gg|f+g+gg+ggg+ggf+ggg
  g=ggg
  }

sq30372a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|ff|g+f+fg+g+g+g|gg|f+g+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30372b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|ff|g+f+fg+g+g+g|gg|f+g+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30372c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|ff|g+f+fg+g+g+g|gg|f+g+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30373* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|ff|f+g+ff+f+g+g|gg|g+f+gg+ggg+ggg+ggg
  g=ggg
  }

sq30374* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|ff|f+g+fg+g+g+g|gg|g+f+gg+ggg+ggf+ggg
  g=ggg
  }

sq30374a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|ff|f+g+fg+g+g+g|gg|g+f+gg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30374b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|ff|f+g+fg+g+g+g|gg|g+f+gg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30374c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|ff|f+g+fg+g+g+g|gg|g+f+gg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30375* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|gf|f+f+gg+g+g+g|fg|g+g+fg+ggg+ggf+ggg
  g=ggg
  }

sq30375a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|gf|f+f+gg+g+g+g|fg|g+g+fg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30375b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|gf|f+f+gg+g+g+g|fg|g+g+fg+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30375c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|gf|f+f+gg+g+g+g|fg|g+g+fg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30376* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|gf|f+f+gg+g+g+g|fg|g+g+gg+gfg+ggf+ggg
  g=ggg
  }

sq30376a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+f+f|gf|f+f+gg+g+g+g|fg|g+g+gg+gfg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30376b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+f+f|gf|f+f+gg+g+g+g|fg|g+g+gg+gfg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30376c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+f+f|gf|f+f+gg+g+g+g|fg|g+g+gg+gfg+ggf+ggg+ggg
  g=ggg
  }

sq30377* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|gf|f+f+gg+g+g+g|fg|g+g+gg+ggg+gff+ggg
  g=ggg
  }

sq30378* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|fg|f+f+gg+g+g+g|gf|g+g+fg+ggg+ggf+ggg
  g=ggg
  }

sq30379* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|fg|f+f+gg+g+g+g|gf|g+g+gg+gfg+ggf+ggg
  g=ggg
  }

sq30380* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+f+f|fg|f+f+gg+g+g+g|gf|g+g+gg+ggg+gff+ggg
  g=ggg
  }

sq30381* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|fg|f+f+gg+f+g+g|gf|g+g+gg+ggg+gff+ggg
  g=ggg
  }

sq30381a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+f+f|fg|f+f+gg+f+g+g|gf|g+g+gg+ggg+gff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30381b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+f+f|fg|f+f+gg+f+g+g|gf|g+g+gg+ggg+gff+ggg+ggg+ggg
  g=ggg
  }

sq30381c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+f+f|fg|f+f+gg+f+g+g|gf|g+g+gg+ggg+gff+ggg+ggg
  g=ggg
  }

sq30382* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+f+f|gf|f+f+gg+f+g+g|fg|g+g+gg+ggg+gff+ggg
  g=ggg
  }

sq30383* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+f+f|f+f+g+ff|gg+g+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30383a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; Beautiful but unfortunately not new.
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gg|ff+f+f|f+f+g+ff|gg+g+g|g+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30383b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gg|ff+f+f|f+f+g+ff|gg+g+g|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30383c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gg|ff+f+f|f+f+g+ff|gg+g+g|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30384* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fg|fg+f+f|f+f+g+gf|gf+g+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30384a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fg|fg+f+f|f+f+g+gf|gf+g+g|g+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30384b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fg|fg+f+f|f+f+g+gf|gf+g+g|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30384c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fg|fg+f+f|f+f+g+gf|gf+g+g|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30385* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+f|f+f+g+fg|gf+g+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30385a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gf|fg+f+f|f+f+g+fg|gf+g+g|g+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30385b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gf|fg+f+f|f+f+g+fg|gf+g+g|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30385c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gf|fg+f+f|f+f+g+fg|gf+g+g|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30386* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs;
  ; Unfortunately it's also somebody else's
  ; rotation set member...
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+f+f|f+f+f+ff|gg+g+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30387* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+f+f|f+f+g+ff|gg+g+g|g+g+fgg+ggg+ggg
  g=ggg
  }

sq30388* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+f+f|f+f+g+ff|gg+g+g|g+g+ggg+fgg+ggg
  g=ggg
  }

sq30389* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+g+f|f+f+g+ff|gg+f+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30390* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+g+f|f+f+g+ff|gg+g+g|g+g+gfg+ggg+ggg
  g=ggg
  }

sq30391* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+g+f|f+f+g+ff|gg+g+g|g+g+ggg+gfg+ggg
  g=ggg
  }

sq30392* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+f+f|f+g+g+ff|gg+g+g|g+f+ggg+ggg+ggg
  g=ggg
  }

sq30392a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gg|ff+f+f|f+g+g+ff|gg+g+g|g+f+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30392b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gg|ff+f+f|f+g+g+ff|gg+g+g|g+f+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30392c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gg|ff+f+f|f+g+g+ff|gg+g+g|g+f+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30393* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+f+f|f+g+g+ff|gg+g+g|g+g+ggf+ggg+ggg
  g=ggg
  }

sq30393a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+gg|ff+f+f|f+g+g+ff|gg+g+g|g+g+ggf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30393b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+gg|ff+f+f|f+g+g+ff|gg+g+g|g+g+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30393c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+gg|ff+f+f|f+g+g+ff|gg+g+g|g+g+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30394* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+gg|ff+g+f|f+g+g+ff|gg+g+g|g+g+ggg+gff+ggg
  g=ggg
  }

sq30395* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+fg|fg+f+f|f+f+f+gf|gf+g+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30395a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+g+fg|fg+f+f|f+f+f+gf|gf+g+g|g+g+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30395b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+g+fg|fg+f+f|f+f+f+gf|gf+g+g|g+g+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30395c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs:
  ; Pure magic.
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+g+fg|fg+f+f|f+f+f+gf|gf+g+g|g+g+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30396* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+fg|fg+f+f|f+f+g+gf|gf+g+g|g+g+fgg+ggg+ggg
  g=ggg
  }

sq30397* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+fg|fg+f+f|f+f+g+gf|gf+g+g|g+g+ggg+fgg+ggg
  g=ggg
  }

sq30398* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fg|fg+f+f|f+g+g+gf|gf+g+g|g+f+ggg+ggg+ggg
  g=ggg
  }

sq30399* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+fg|fg+f+f|f+g+g+gf|gf+g+g|g+g+ggf+ggg+ggg
  g=ggg
  }

sq30400* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+fg|fg+f+f|f+g+g+gf|gf+g+g|g+g+ggg+ggf+ggg
  g=ggg
  }

sq30400a { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+f+fg|fg+f+f|f+g+g+gf|gf+g+g|g+g+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30400b { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 180-degree rotation
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+f+fg|fg+f+f|f+g+g+gf|gf+g+g|g+g+ggg+ggf+ggg+ggg+ggg
  g=ggg
  }

sq30400c { ; Anthony Hanmer 20/8/2003
  Angle 4 ; 270-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+c2f+c12f+c14f
  f=ggg+ggg+ggg+f+fg|fg+f+f|f+g+g+gf|gf+g+g|g+g+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30401* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gf|fg+f+f|f+f+f+fg|gf+g+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30402* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+gf|fg+f+f|f+f+g+fg|gf+g+g|g+g+fgg+ggg+ggg
  g=ggg
  }

sq30403* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+gf|fg+f+f|f+f+g+fg|gf+g+g|g+g+ggg+fgg+ggg
  g=ggg
  }

sq30404* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+g+f|f+f+g+fg|gf+f+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30405* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+g+f|f+f+g+fg|gf+g+g|g+g+gfg+ggg+ggg
  g=ggg
  }

sq30406* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+g+f|f+f+g+fg|gf+g+g|g+g+ggg+gfg+ggg
  g=ggg
  }

sq30407* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+f|f+g+g+fg|gf+g+g|g+f+ggg+ggg+ggg
  g=ggg
  }

sq30408* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+f|f+g+g+fg|gf+g+g|g+g+ggf+ggg+ggg
  g=ggg
  }

sq30409* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=f+gf|fg+f+f|f+g+g+fg|gf+g+g|g+g+ggg+ggf+ggg
  g=ggg
  }

sq30410* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+g+f|f+f+f+ff|gg+f+g|g+g+ggg+ggg+ggg
  g=ggg
  }

sq30411* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+g+f|f+f+f+ff|gg+g+g|g+g+gfg+ggg+ggg
  g=ggg
  }

sq30412* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+g+f|f+f+f+ff|gg+g+g|g+g+ggg+gfg+ggg
  g=ggg
  }

sq30413* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+f+f|f+g+f+ff|gg+g+g|g+f+ggg+ggg+ggg
  g=ggg
  }

sq30414* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+f+f|f+g+f+ff|gg+g+g|g+g+ggf+ggg+ggg
  g=ggg
  }

sq30415* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+f+f|f+g+f+ff|gg+g+g|g+g+ggg+ggf+ggg
  g=ggg
  }

sq30416* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+g+f|f+g+f+ff|gg+f+g|g+g+ggg+ggf+ggg
  g=ggg
  }

sq30417* { ; Anthony Hanmer 24/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=g+gg|ff+g+f|f+g+f+ff|gg+g+g|g+f+ggg+gfg+ggg
  g=ggg
  }

sq30418* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; How did I miss this variation for so long?!
  ; & 1st time separating edges from interior using CAPS
  Axiom c53f+c2f+c12f+c14f
  f=F+ff|gg+F+g|f+F+G+gg|ff+G+f|g+G+GGG+GGG+GGG
  g=ggg
  }

sq30419* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  ; How did I miss this variation for so long?!
  ; (Is it new?!)
  ; & 1st time separating edges from interior using CAPS
  Axiom c53f+c2f+c12f+c14f
  f=F+gg|ff+F+f|g+F+G+ff|gg+G+g|f+G+GGG+GGG+GGG
  g=ggg
  }

sq30420* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+ff|gg+F+g|f+F+F+gg|ff+G+f|g+G+GGG+GGG+GGG
  g=ggg
  }

sq30421* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+ff|gg+F+g|f+F+G+gg|ff+G+f|g+G+FGG+GGG+GGG
  g=ggg
  }

sq30422* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+ff|gg+F+g|f+F+G+gg|ff+G+f|g+G+GGG+FGG+GGG
  g=ggg
  }

sq30423* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ff|gg+F+g|f+G+G+gg|ff+G+f|g+F+GGG+GGG+GGG
  g=ggg
  }

sq30424* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+ff|gg+F+g|f+G+G+gg|ff+G+f|g+G+GGF+GGG+GGG
  g=ggg
  }

sq30425* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+ff|gg+F+g|f+G+G+gg|ff+G+f|g+G+GGG+GGF+GGG
  g=ggg
  }

sq30426* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gg|ff+F+f|g+F+F+ff|gg+G+g|f+G+GGG+GGG+GGG
  g=ggg
  }

sq30427* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gg|ff+F+f|g+F+G+ff|gg+G+g|f+G+FGG+GGG+GGG
  g=ggg
  }

sq30428* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+gg|ff+F+f|g+F+G+ff|gg+G+g|f+G+GGG+FGG+GGG
  g=ggg
  }

sq30429* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gg|ff+F+f|g+G+G+ff|gg+G+g|f+F+GGG+GGG+GGG
  g=ggg
  }

sq30430* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=F+gg|ff+F+f|g+G+G+ff|gg+G+g|f+G+GGF+GGG+GGG
  g=ggg
  }

sq30431* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=F+gg|ff+F+f|g+G+G+ff|gg+G+g|f+G+GGG+GGF+GGG
  g=ggg
  }

sq30432* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+ff|gg+G+g|f+F+F+gg|ff+F+f|g+G+GGG+GGG+GGG
  g=ggg
  }

sq30433* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  ; One of my best HTs
  Axiom c53f+c2f+c12f+c14f
  f=G+gg|ff+G+f|g+F+F+ff|gg+F+g|f+G+GGG+GGG+GGG
  g=ggg
  }

sq30434* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+gg|ff+F+f|g+G+F+ff|gg+g+g|f+G+GGG+GGF+GGG
  g=ggg
  }

sq30435* { ; Anthony Hanmer 25/5/2003
  Angle 4 ; 1-sided interior
  Axiom c53f+c2f+c12f+c14f
  f=G+gg|ff+G+f|g+F+F+ff|gg+g+g|f+G+GGG+GFG+GGG
  g=ggg
  }

sq30436# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, all-lines-parallel dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+g+ffg|fgg+gg+fff+g+ggf|gff+gg+ggg
  g=ggg
  }

sq30437# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30440, but 90 degrees away...
  f=ggg+g+fgf|gfg+gg+fff+g+gfg|fgf+gg+ggg
  g=ggg
  }

sq30438# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+g+fgg|ffg+gg+fff+g+gff|ggf+gg+ggg
  g=ggg
  }

sq30439# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+g+fff|fgg+gg+fff+g+ggg|gff+gg+ggg
  g=ggg
  }

sq30440# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30437, but 90 degrees away...
  f=ggg+g+fff|ffg+gg+fff+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30441# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; VERY dusty, intriguing.
  f=ggg+g+fff|fgf+gg+fff+g+ggg|gfg+gg+ggg
  g=ggg
  }

sq30442# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=g+g+f|fgf|fg-g-f|f+gg+ff+ggg+fgg+ggg+ggg
  g=ggg
  }

sq30443# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=f+g+f|fgf|fg-g-f|f+gg+gf+ggg+gfg+ggg+ggg
  g=ggg
  }

sq30444# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=g+g+f|fgf|fg-g-f|f+gg+gf+ggg+ffg+ggg+ggg
  g=ggg
  }

sq30445# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dusts.
  Axiom c53f+g+c12f
  f=g+g+f|fgf|fg-g-f|f+gg+fg+ggg+fgf+ggg+ggg
  g=ggg
  }

sq30446# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=g+g+f|f+g+f|ff|f+gg+ff+ggg+fgg+ggg+ggg
  g=ggg
  }

sq30447# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=f+g+f|f+g+f|ff|f+gg+gf+ggg+gfg+ggg+ggg
  g=ggg
  }

sq30448# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=g+g+f|f+g+f|ff|f+gg+gf+ggg+ffg+ggg+ggg
  g=ggg
  }

sq30449# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=g+g+f|f+g+f|ff|f+gg+fg+ggg+fgf+ggg+ggg
  g=ggg
  }

sq30450# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  ; Same shape as 30149, but 90 degrees away...
  f=f+g+f|f+g+f|ff|f+gg+gg+ggg+gff+ggg+ggg
  g=ggg
  }

sq30451# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=f+g+f|f+g+f|ff|f+gg+fg+ggg+ggf+ggg+ggg
  g=ggg
  }

sq30452# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=f+g+f|f+g+f|ff|f+gg+gf+ggg+gfg+ggg+ggg
  g=ggg
  }

sq30453# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs:  WAY cool
  Axiom c53f+g+c12f
  f=g+g+f|f+g+f|f-g+f|f+g+ff+ggg+fgg+ggg+ggg
  g=ggg
  }

sq30454# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs:  WAY cool
  Axiom c53f+g+c12f
  f=f+g+f|f+g+f|f-g+f|f+g+gf+ggg+gfg+ggg+ggg
  g=ggg
  }

sq30455# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=g+g+f|f+g+f|f-g+f|f+g+gf+ggg+ffg+ggg+ggg
  g=ggg
  }

sq30456# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=g+g+f|f+g+f|f-g+f|f+g+fg+ggg+fgf+ggg+ggg
  g=ggg
  }

sq30457# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=f+g+f|f+g+f|f-g+f|f+g+gg+ggg+gff+ggg+ggg
  g=ggg
  }

sq30458# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=g+g-f|f-g+f|fgf|fg+gg+ff+ggg+fgg+ggg+ggg
  g=ggg
  }

sq30459# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust.
  Axiom c53f+g+c12f
  f=f+g-f|f-g+f|fgf|fg+gg+gf+ggg+gfg+ggg+ggg
  g=ggg
  }

sq30460# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=g+g-f|f-g+f|fgf|fg+gg+gf+ggg+ffg+ggg+ggg
  g=ggg
  }

sq30461# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=g+g-f|f-g+f|fgf|fg+gg+fg+ggg+fgf+ggg+ggg
  g=ggg
  }

sq30462# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gff+g+fff|ggg+gg+fgg+g+ggg|fff+gg+ggg
  g=ggg
  }

sq30463# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust.
  Axiom c53f+g+c12f
  f=fgf+g+fff|ggg+gg+gfg+g+ggg|fff+gg+ggg
  g=ggg
  }

sq30464# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggf+g+fff|ggg+gg+ffg+g+ggg|fff+gg+ggg
  g=ggg
  }

sq30465# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gfg+g+fff|ggg+gg+fgf+g+ggg|fff+gg+ggg
  g=ggg
  }

sq30466# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=gff+g+ffg|fgg+gg+fgg+g+ggf|gff+gg+ggg
  g=ggg
  }

sq30467# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust.
  Axiom c53f+g+c12f
  f=fgf+g+ffg|fgg+gg+gfg+g+ggf|gff+gg+ggg
  g=ggg
  }

sq30468# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=ffg+g+ffg|fgg+gg+ggf+g+ggf|gff+gg+ggg
  g=ggg
  }

sq30469# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=ggf+g+ffg|fgg+gg+ffg+g+ggf|gff+gg+ggg
  g=ggg
  }

sq30470# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=fgg+g+ffg|fgg+gg+gff+g+ggf|gff+gg+ggg
  g=ggg
  }

sq30471# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gff+g+fgf|gfg+gg+fgg+g+gfg|fgf+gg+ggg
  g=ggg
  }

sq30472# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust.
  Axiom c53f+g+c12f
  f=fgf+g+fgf|gfg+gg+gfg+g+gfg|fgf+gg+ggg
  g=ggg
  }

sq30473# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=ggf+g+fgf|gfg+gg+ffg+g+gfg|fgf+gg+ggg
  g=ggg
  }

sq30474# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust.
  Axiom c53f+g+c12f
  f=gff+g+fgg|ffg+gg+fgg+g+gff|ggf+gg+ggg
  g=ggg
  }

sq30475# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs:  WAY cool
  Axiom c53f+g+c12f
  f=fgf+g+fgg|ffg+gg+gfg+g+gff|ggf+gg+ggg
  g=ggg
  }

sq30476# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ffg+g+fgg|ffg+gg+ggf+g+gff|ggf+gg+ggg
  g=ggg
  }

sq30477# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs:  WAY cool
  Axiom c53f+g+c12f
  f=fgg+g+fgg|ffg+gg+gff+g+gff|ggf+gg+ggg
  g=ggg
  }

sq30478# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=ggf+g+fgg|ffg+gg+ffg+g+gff|ggf+gg+ggg
  g=ggg
  }

sq30479# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=gfg+g+fgg|ffg+gg+fgf+g+gff|ggf+gg+ggg
  g=ggg
  }

sq30480# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs:  WAY cool
  Axiom c53f+g+c12f
  f=gff+g+fff|fgg+gg+fgg+g+ggg|gff+gg+ggg
  g=ggg
  }

sq30481# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=fgf+g+fff|fgg+gg+gfg+g+ggg|gff+gg+ggg
  g=ggg
  }

sq30482# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs:  WAY cool
  Axiom c53f+g+c12f
  f=ffg+g+fff|fgg+gg+ggf+g+ggg|gff+gg+ggg
  g=ggg
  }

sq30483# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=fgg+g+fff|fgg+gg+gff+g+ggg|gff+gg+ggg
  g=ggg
  }

sq30484# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggf+g+fff|fgg+gg+ffg+g+ggg|gff+gg+ggg
  g=ggg
  }

sq30485# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gfg+g+fff|fgg+gg+fgf+g+ggg|gff+gg+ggg
  g=ggg
  }

sq30486# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gff+g+fff|ffg+gg+fgg+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30487# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=fgf+g+fff|ffg+gg+gfg+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30488# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ffg+g+fff|ffg+gg+ggf+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30489# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=fgg+g+fff|ffg+gg+gff+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30490# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggf+g+fff|ffg+gg+ffg+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30491# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gfg+g+fff|ffg+gg+fgf+g+ggg|ggf+gg+ggg
  g=ggg
  }

sq30492# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gff+g+fff|fgf+gg+fgg+g+ggg|gfg+gg+ggg
  g=ggg
  }

sq30493# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=fgf+g+fff|fgf+gg+gfg+g+ggg|gfg+gg+ggg
  g=ggg
  }

sq30494# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=fgg+g+fff|fgf+gg+gff+g+ggg|gfg+gg+ggg
  g=ggg
  }

sq30495# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=gfg+g+fff|fgf+gg+fgf+g+ggg|gfg+gg+ggg
  g=ggg
  }

sq30496# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30006
  Axiom c53f+g+c12f
  f=ggg+f+g+f|fgf|fg-g-f|f+gg+ff+ggg+ggg+ggg
  g=ggg
  }

sq30497# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30012
  Axiom c53f+g+c12f
  ; (Axiom note:  see sq30006)
  f=ggg+f+g+f|f+g+f|ff|f+gg+ff+ggg+ggg+ggg
  g=ggg
  }

sq30498# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30014
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|f-g+f|f+g+ff+ggg+ggg+ggg
  g=ggg
  }

sq30499# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30029
  Axiom c53f+g+c12f
  f=f+g-f|f-g+f|fgf|fg+gg+ff
  g=ggg
  }

sq30500# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30137
  Axiom c53f+g+c12f
  f=ggg+fff+g+fff|ggg+gg+ggg+g+ggg|fff+gg
  g=ggg
  }

sq30501# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30145
  Axiom c53f+g+c12f
  f=ggg+fff+g+ffg|fgg+gg+ggg+g+ggf|gff+gg
  g=ggg
  }

sq30502# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30147
  Axiom c53f+g+c12f
  f=ggg+fff+g+fgf|gfg+gg+ggg+g+gfg|fgf+gg
  g=ggg
  }

sq30503# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30148
  Axiom c53f+g+c12f
  f=ggg+fff+g+fgg|ffg+gg+ggg+g+gff|ggf+gg
  g=ggg
  }

sq30504# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30149
  Axiom c53f+g+c12f
  f=ggg+fff+g+fff|fgg+gg+ggg+g+ggg|gff+gg
  g=ggg
  }

sq30505# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30151
  ; "F" eternally tiling itself!
  Axiom c53f+g+c12f
  f=ggg+fff+g+fff|ffg+gg+ggg+g+ggg|ggf+gg
  g=ggg
  }

sq30506# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30153
  Axiom c53f+g+c12f
  f=ggg+fff+g+fff|fgf+gg+ggg+g+ggg|gfg+gg
  g=ggg
  }

sq30507# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30436
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+g+ffg|fgg+gg+fff+g+ggf|gff+gg
  g=ggg
  }

sq30508# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30437
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30440, but 90 degrees away...
  f=ggg+ggg+g+fgf|gfg+gg+fff+g+gfg|fgf+gg
  g=ggg
  }

sq30508n { ; Anthony Hanmer 30/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30437, G\F\G version
  Axiom c53f+g+c12f
  ; Same shape as 30440, but 90 degrees away...
  f=ggg+ggg+g+fgf|gfg+gg+fff+g+gfg|fgf+gg
  g=ggg
  }

sq30509# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30438
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+g+fgg|ffg+gg+fff+g+gff|ggf+gg
  g=ggg
  }

sq30510# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30439
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+g+fff|fgg+gg+fff+g+ggg|gff+gg
  g=ggg
  }

sq30511# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30440
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30437, but 90 degrees away...
  f=ggg+ggg+g+fff|ffg+gg+fff+g+ggg|ggf+gg
  g=ggg
  }

sq30512# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; Pure dust; vertical version of 30441
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; VERY dusty, intriguing.
  f=ggg+ggg+g+fff|fgf+gg+fff+g+ggg|gfg+gg
  g=ggg
  }

sq30513# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30442
  Axiom c53f+g+c12f
  f=ggg+g+g+f|fgf|fg-g-f|f+gg+ff+ggg+fgg+ggg
  g=ggg
  }

sq30514# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30443
  Axiom c53f+g+c12f
  f=ggg+f+g+f|fgf|fg-g-f|f+gg+gf+ggg+gfg+ggg
  g=ggg
  }

sq30515# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30444
  Axiom c53f+g+c12f
  f=ggg+g+g+f|fgf|fg-g-f|f+gg+gf+ggg+ffg+ggg
  g=ggg
  }

sq30516# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; Pure dust; vertical version of 30445
  Axiom c53f+g+c12f
  f=ggg+g+g+f|fgf|fg-g-f|f+gg+fg+ggg+fgf+ggg
  g=ggg
  }

sq30517# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30446
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|ff|f+gg+ff+ggg+fgg+ggg
  g=ggg
  }

sq30518# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30447
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|ff|f+gg+gf+ggg+gfg+ggg
  g=ggg
  }

sq30519# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30448
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|ff|f+gg+gf+ggg+ffg+ggg
  g=ggg
  }

sq30520# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30449
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|ff|f+gg+fg+ggg+fgf+ggg
  g=ggg
  }

sq30521# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30450
  Axiom c53f+g+c12f
  ; Same shape as 30149, but 90 degrees away...
  f=ggg+f+g+f|f+g+f|ff|f+gg+gg+ggg+gff+ggg
  g=ggg
  }

sq30522# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30451
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|ff|f+gg+fg+ggg+ggf+ggg
  g=ggg
  }

sq30523# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30452
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|ff|f+gg+gf+ggg+gfg+ggg
  g=ggg
  }

sq30524# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30453
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|f-g+f|f+g+ff+ggg+fgg+ggg
  g=ggg
  }

sq30525# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30454
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|f-g+f|f+g+gf+ggg+gfg+ggg
  g=ggg
  }

sq30526# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30455
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|f-g+f|f+g+gf+ggg+ffg+ggg
  g=ggg
  }

sq30527# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30458
  Axiom c53f+g+c12f
  f=ggg+g+g-f|f-g+f|fgf|fg+gg+ff+ggg+fgg+ggg
  g=ggg
  }

sq30528# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; Pure dust; vertical version of 30459
  Axiom c53f+g+c12f
  f=ggg+f+g-f|f-g+f|fgf|fg+gg+gf+ggg+gfg+ggg
  g=ggg
  }

sq30529# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30464
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fff|ggg+gg+ffg+g+ggg|fff+gg
  g=ggg
  }

sq30530# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30466
  Axiom c53f+g+c12f
  f=ggg+gff+g+ffg|fgg+gg+fgg+g+ggf|gff+gg
  g=ggg
  }

sq30531# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30467
  Axiom c53f+g+c12f
  f=ggg+fgf+g+ffg|fgg+gg+gfg+g+ggf|gff+gg
  g=ggg
  }

sq30532# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30468
  Axiom c53f+g+c12f
  f=ggg+ffg+g+ffg|fgg+gg+ggf+g+ggf|gff+gg
  g=ggg
  }

sq30533# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30469
  Axiom c53f+g+c12f
  f=ggg+ggf+g+ffg|fgg+gg+ffg+g+ggf|gff+gg
  g=ggg
  }

sq30534# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30470
  Axiom c53f+g+c12f
  f=ggg+fgg+g+ffg|fgg+gg+gff+g+ggf|gff+gg
  g=ggg
  }

sq30535# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30471
  Axiom c53f+g+c12f
  f=ggg+gff+g+fgf|gfg+gg+fgg+g+gfg|fgf+gg
  g=ggg
  }

sq30536# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30473
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fgf|gfg+gg+ffg+g+gfg|fgf+gg
  g=ggg
  }

sq30537# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30475
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fgg|ffg+gg+gfg+g+gff|ggf+gg
  g=ggg
  }

sq30538# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30476
  Axiom c53f+g+c12f
  f=ggg+ffg+g+fgg|ffg+gg+ggf+g+gff|ggf+gg
  g=ggg
  }

sq30539# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30477
  Axiom c53f+g+c12f
  f=ggg+fgg+g+fgg|ffg+gg+gff+g+gff|ggf+gg
  g=ggg
  }

sq30540# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30479
  Axiom c53f+g+c12f
  f=ggg+gfg+g+fgg|ffg+gg+fgf+g+gff|ggf+gg
  g=ggg
  }

sq30541# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30480
  Axiom c53f+g+c12f
  f=ggg+gff+g+fff|fgg+gg+fgg+g+ggg|gff+gg
  g=ggg
  }

sq30542# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30481
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fff|fgg+gg+gfg+g+ggg|gff+gg
  g=ggg
  }

sq30543# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30483
  Axiom c53f+g+c12f
  f=ggg+fgg+g+fff|fgg+gg+gff+g+ggg|gff+gg
  g=ggg
  }

sq30544# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30484
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fff|fgg+gg+ffg+g+ggg|gff+gg
  g=ggg
  }

sq30545# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30485
  Axiom c53f+g+c12f
  ; (Axiom note:  see sq30006)
  f=ggg+gfg+g+fff|fgg+gg+fgf+g+ggg|gff+gg
  g=ggg
  }

sq30546# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30486
  Axiom c53f+g+c12f
  f=ggg+gff+g+fff|ffg+gg+fgg+g+ggg|ggf+gg
  g=ggg
  }

sq30547# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30487
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fff|ffg+gg+gfg+g+ggg|ggf+gg
  g=ggg
  }

sq30548# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30488
  Axiom c53f+g+c12f
  f=ggg+ffg+g+fff|ffg+gg+ggf+g+ggg|ggf+gg
  g=ggg
  }

sq30549# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30489
  Axiom c53f+g+c12f
  f=ggg+fgg+g+fff|ffg+gg+gff+g+ggg|ggf+gg
  g=ggg
  }

sq30550# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30490
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fff|ffg+gg+ffg+g+ggg|ggf+gg
  g=ggg
  }

sq30551# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30491
  Axiom c53f+g+c12f
  f=ggg+gfg+g+fff|ffg+gg+fgf+g+ggg|ggf+gg
  g=ggg
  }

sq30552# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30492
  Axiom c53f+g+c12f
  f=ggg+gff+g+fff|fgf+gg+fgg+g+ggg|gfg+gg
  g=ggg
  }

sq30553# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30493
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fff|fgf+gg+gfg+g+ggg|gfg+gg
  g=ggg
  }

sq30554# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30494
  Axiom c53f+g+c12f
  f=ggg+fgg+g+fff|fgf+gg+gff+g+ggg|gfg+gg
  g=ggg
  }

sq30555# { ; Anthony Hanmer 14/8/2003
  Angle 4 ; 3x3 square HTile, a-p (vertical) dust, tiles in only 2
  ; One of my best HTs:  vertical version of 30495
  Axiom c53f+g+c12f
  f=ggg+gfg+g+fff|fgf+gg+fgf+g+ggg|gfg+gg
  g=ggg
  }

sq30556# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Boring, but wait for all the variations!; using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FFF+G+fff|fff+GG+GGG+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq30556r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+fff|fff+GG+GGG+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq30557# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=FFF+G+gff|fff+GG+GGG+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30557r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+gff|fff+GG+GGG+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30558# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FFF+G+fgf|fff+GG+GGG+G+gfg|ggg+GG+GGG
  g=ggg
  }

sq30558r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+fgf|fff+GG+GGG+G+gfg|ggg+GG+GGG
  g=ggg
  }

sq30559# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Needs variations, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=FFF+G+fff|gff+GG+GGG+G+ggg|fgg+GG+GGG
  g=ggg
  }

sq30559r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+fff|gff+GG+GGG+G+ggg|fgg+GG+GGG
  g=ggg
  }

sq30560# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=FFF+G+ggf|fff+GG+GGG+G+ffg|ggg+GG+GGG
  g=ggg
  }

sq30560r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+ggf|fff+GG+GGG+G+ffg|ggg+GG+GGG
  g=ggg
  }

sq30561# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FFF+G+gfg|fff+GG+GGG+G+fgf|ggg+GG+GGG
  g=ggg
  }

sq30561r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+gfg|fff+GG+GGG+G+fgf|ggg+GG+GGG
  g=ggg
  }

sq30562# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FFF+G+fff|gfg+GG+GGG+G+ggg|fgf+GG+GGG
  g=ggg
  }

sq30562r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+fff|gfg+GG+GGG+G+ggg|fgf+GG+GGG
  g=ggg
  }

sq30563# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=FFF+G+gff|gff+GG+GGG+G+fgg|fgg+GG+GGG
  g=ggg
  }

sq30563r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+gff|gff+GG+GGG+G+fgg|fgg+GG+GGG
  g=ggg
  }

sq30564# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=FFF+G+ggf|fgf+GG+GGG+G+ffg|gfg+GG+GGG
  g=ggg
  }

sq30564r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+ggf|fgf+GG+GGG+G+ffg|gfg+GG+GGG
  g=ggg
  }

sq30565# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=FFF+G+ggf|ffg+GG+GGG+G+ffg|ggf+GG+GGG
  g=ggg
  }

sq30565r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+ggf|ffg+GG+GGG+G+ffg|ggf+GG+GGG
  g=ggg
  }

sq30566# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  ; Y-axis symmetry
  Axiom c53f+g+c12f
  f=FFF+G+ggg|gff+GG+GGG+G+fff|fgg+GG+GGG
  g=ggg
  }

sq30566r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+ggg|gff+GG+GGG+G+fff|fgg+GG+GGG
  g=ggg
  }

sq30567# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FFF+G+ggg|fgf+GG+GGG+G+fff|gfg+GG+GGG
  g=ggg
  }

sq30567r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+ggg|fgf+GG+GGG+G+fff|gfg+GG+GGG
  g=ggg
  }

sq30568# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FFF+G+gfg|ggg+GG+GGG+G+fgf|fff+GG+GGG
  g=ggg
  }

sq30568r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+gfg|ggg+GG+GGG+G+fgf|fff+GG+GGG
  g=ggg
  }

sq30569# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=FFF+G+ggf|ggg+GG+GGG+G+ffg|fff+GG+GGG
  g=ggg
  }

sq30569r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+ggf|ggg+GG+GGG+G+ffg|fff+GG+GGG
  g=ggg
  }

sq30570# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  ; Y-axis symmetry
  Axiom c53f+g+c12f
  f=FFF+G+ggg|fgg+GG+GGG+G+fff|gff+GG+GGG
  g=ggg
  }

sq30570r { ; Anthony Hanmer 1/9/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+ggg|fgg+GG+GGG+G+fff|gff+GG+GGG
  g=ggg
  }

sq30571# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FFF+G+ggg|gfg+GG+GGG+G+fff|fgf+GG+GGG
  g=ggg
  }

sq30571r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG|FFF|GGG+G+ggg|gfg+GG+GGG+G+fff|fgf+GG+GGG
  g=ggg
  }

sq30572# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Variation on 30556, using a modified Sq3 DNA
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=GFF+G+fff|fff+GG+FGG+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq30573# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Variation on 30556, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=FGF+G+fff|fff+GG+GFG+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq30574# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Variation on 30556, using a modified Sq3 DNA
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=GGF+G+fff|fff+GG+FFG+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq30575# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Variation on 30556, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=GFG+G+fff|fff+GG+FGF+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq30576# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Variation on 30556, using a modified Sq3 DNA
  ; Pure dust
  Axiom c53f+g+c12f
  f=GGG+G+fff|fff+GG+FFF+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq30577# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=GFF+G+gff|fff+GG+FGG+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30578# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=FGF+G+gff|fff+GG+GFG+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30579# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=FFG+G+gff|fff+GG+GGF+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30580# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=GGF+G+gff|fff+GG+FFG+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30581# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=GFG+G+gff|fff+GG+FGF+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30582# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=FGG+G+gff|fff+GG+GFF+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30583# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=GGG+G+gff|fff+GG+FFF+G+fgg|ggg+GG+GGG
  g=ggg
  }

sq30584# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30558
  Axiom c53f+g+c12f
  f=GFF+G+fgf|fff+GG+FGG+G+gfg|ggg+GG+GGG
  g=ggg
  }

sq30585# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30558
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FGF+G+fgf|fff+GG+GFG+G+gfg|ggg+GG+GGG
  g=ggg
  }

sq30586# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30558
  Axiom c53f+g+c12f
  f=GGF+G+fgf|fff+GG+FFG+G+gfg|ggg+GG+GGG
  g=ggg
  }

sq30587# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA:  variation on 30558
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=GFG+G+fgf|fff+GG+FGF+G+gfg|ggg+GG+GGG
  g=ggg
  }

sq30588# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30559
  Axiom c53f+g+c12f
  f=GFF+G+fff|gff+GG+FGG+G+ggg|fgg+GG+GGG
  g=ggg
  }

sq30589# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30559
  Axiom c53f+g+c12f
  f=GGF+G+fff|gff+GG+FFG+G+ggg|fgg+GG+GGG
  g=ggg
  }

sq30590# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30559
  Axiom c53f+g+c12f
  f=GFG+G+fff|gff+GG+FGF+G+ggg|fgg+GG+GGG
  g=ggg
  }

sq30591# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30559
  Axiom c53f+g+c12f
  f=FGG+G+fff|gff+GG+GFF+G+ggg|fgg+GG+GGG
  g=ggg
  }

sq30592# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA:  variation on 30560
  Axiom c53f+g+c12f
  f=GFF+G+ggf|fff+GG+FGG+G+ffg|ggg+GG+GGG
  g=ggg
  }

sq30593# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30560
  Axiom c53f+g+c12f
  f=FFG+G+ggf|fff+GG+GGF+G+ffg|ggg+GG+GGG
  g=ggg
  }

sq30594# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30560
  Axiom c53f+g+c12f
  f=FGG+G+ggf|fff+GG+GFF+G+ffg|ggg+GG+GGG
  g=ggg
  }

sq30595# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30560
  Axiom c53f+g+c12f
  f=GGG+G+ggf|fff+GG+FFF+G+ffg|ggg+GG+GGG
  g=ggg
  }

sq30596# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA:  variation on 30561
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FGF+G+gfg|fff+GG+GFG+G+fgf|ggg+GG+GGG
  g=ggg
  }

sq30597# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30562
  Axiom c53f+g+c12f
  f=GFF+G+fff|gfg+GG+FGG+G+ggg|fgf+GG+GGG
  g=ggg
  }

sq30598# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30562
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FGF+G+fff|gfg+GG+GFG+G+ggg|fgf+GG+GGG
  g=ggg
  }

sq30599# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30562
  Axiom c53f+g+c12f
  f=GGF+G+fff|gfg+GG+FFG+G+ggg|fgf+GG+GGG
  g=ggg
  }

sq30600# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA:  variation on 30562
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=GGG+G+fff|gfg+GG+FFF+G+ggg|fgf+GG+GGG
  g=ggg
  }

sq30600r { ; Anthony Hanmer 30/8/2003
  Angle 4  ; e-r
  Axiom +c53f+g+c12f
  f=GGG+G+fff|gfg+GG+GGG|FFF|GGG+G+ggg|fgf+GG+GGG
  g=ggg
  }

sq30601# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=GFF+G+gff|gff+GG+FGG+G+fgg|fgg+GG+GGG
  g=ggg
  }

sq30602# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=FGF+G+gff|gff+GG+GFG+G+fgg|fgg+GG+GGG
  g=ggg
  }

sq30603# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=GGF+G+gff|gff+GG+FFG+G+fgg|fgg+GG+GGG
  g=ggg
  }

sq30604# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=GFG+G+gff|gff+GG+FGF+G+fgg|fgg+GG+GGG
  g=ggg
  }

sq30605# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=FGG+G+gff|gff+GG+GFF+G+fgg|fgg+GG+GGG
  g=ggg
  }

sq30606# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=GGG+G+gff|gff+GG+FFF+G+fgg|fgg+GG+GGG
  g=ggg
  }

sq30607# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=GFF+G+ggf|fgf+GG+FGG+G+ffg|gfg+GG+GGG
  g=ggg
  }

sq30608# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=FFG+G+ggf|fgf+GG+GGF+G+ffg|gfg+GG+GGG
  g=ggg
  }

sq30609# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=GGF+G+ggf|fgf+GG+FFG+G+ffg|gfg+GG+GGG
  g=ggg
  }

sq30610# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=GFG+G+ggf|fgf+GG+FGF+G+ffg|gfg+GG+GGG
  g=ggg
  }

sq30611# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=FGG+G+ggf|fgf+GG+GFF+G+ffg|gfg+GG+GGG
  g=ggg
  }

sq30612# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=GGG+G+ggf|fgf+GG+FFF+G+ffg|gfg+GG+GGG
  g=ggg
  }

sq30613# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30565
  Axiom c53f+g+c12f
  f=FGF+G+ggf|ffg+GG+GFG+G+ffg|ggf+GG+GGG
  g=ggg
  }

sq30614# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure minimalism, using a modified Sq3 DNA:  variation on 30565
  Axiom c53f+g+c12f
  f=FFG+G+ggf|ffg+GG+GGF+G+ffg|ggf+GG+GGG
  g=ggg
  }

sq30615# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30565
  Axiom c53f+g+c12f
  f=GGF+G+ggf|ffg+GG+FFG+G+ffg|ggf+GG+GGG
  g=ggg
  }

sq30616# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30565
  Axiom c53f+g+c12f
  f=GFG+G+ggf|ffg+GG+FGF+G+ffg|ggf+GG+GGG
  g=ggg
  }

sq30617# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30566
  Axiom c53f+g+c12f
  f=FGF+G+ggg|gff+GG+GFG+G+fff|fgg+GG+GGG
  g=ggg
  }

sq30618# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Minimalist, using a modified Sq3 DNA:  variation on 30566
  Axiom c53f+g+c12f
  f=GGF+G+ggg|gff+GG+FFG+G+fff|fgg+GG+GGG
  g=ggg
  }

sq30619# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30566
  Axiom c53f+g+c12f
  f=GFG+G+ggg|gff+GG+FGF+G+fff|fgg+GG+GGG
  g=ggg
  }

sq30620# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30567
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FGF+G+ggg|fgf+GG+GFG+G+fff|gfg+GG+GGG
  g=ggg
  }

sq30621# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30567
  Axiom c53f+g+c12f
  f=GGF+G+ggg|fgf+GG+FFG+G+fff|gfg+GG+GGG
  g=ggg
  }

sq30622# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30568
  Axiom c53f+g+c12f
  f=GFF+G+gfg|ggg+GG+FGG+G+fgf|fff+GG+GGG
  g=ggg
  }

sq30623# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA:  variation on 30568
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=FGF+G+gfg|ggg+GG+GFG+G+fgf|fff+GG+GGG
  g=ggg
  }

sq30624# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30568
  Axiom c53f+g+c12f
  f=GGF+G+gfg|ggg+GG+FFG+G+fgf|fff+GG+GGG
  g=ggg
  }

sq30625# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30568
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=GFG+G+gfg|ggg+GG+FGF+G+fgf|fff+GG+GGG
  g=ggg
  }

sq30626# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; Pure dust, using a modified Sq3 DNA:  variation on 30569
  Axiom c53f+g+c12f
  f=GFF+G+ggf|ggg+GG+FGG+G+ffg|fff+GG+GGG
  g=ggg
  }

sq30627# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30569
  Axiom c53f+g+c12f
  f=FFG+G+ggf|ggg+GG+GGF+G+ffg|fff+GG+GGG
  g=ggg
  }

sq30628# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30569
  Axiom c53f+g+c12f
  f=GFG+G+ggf|ggg+GG+FGF+G+ffg|fff+GG+GGG
  g=ggg
  }

sq30629# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30569
  Axiom c53f+g+c12f
  f=FGG+G+ggf|ggg+GG+GFF+G+ffg|fff+GG+GGG
  g=ggg
  }

sq30632# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30570
  Axiom c53f+g+c12f
  f=FFG+G+ggg|fgg+GG+GGF+G+fff|gff+GG+GGG
  g=ggg
  }

sq30633# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA:  variation on 30570
  Axiom c53f+g+c12f
  f=GGF+G+ggg|fgg+GG+FFG+G+fff|gff+GG+GGG
  g=ggg
  }

sq30635# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA:  variation on 30570
  Axiom c53f+g+c12f
  f=FGG+G+ggg|fgg+GG+GFF+G+fff|gff+GG+GGG
  g=ggg
  }

sq30636# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30571
  Axiom c53f+g+c12f
  f=GFF+G+ggg|gfg+GG+FGG+G+fff|fgf+GG+GGG
  g=ggg
  }

sq30637# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; One of my VERY best HTs, using a modified Sq3 DNA:  variation on 30571
  Axiom c53f+g+c12f
  f=GGF+G+ggg|gfg+GG+FFG+G+fff|fgf+GG+GGG
  g=ggg
  }

sq30638# { ; Anthony Hanmer 17/8/2003
  Angle 4 ; 3x3 square HTile, all-lines-parallel (vertical) dust, tiles in only 2
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=GGG+FFF+G+fff|fff+GG+G+ggg|ggg+GG+GGG
  g=ggg
  }

sq30436a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  ; (Axiom note for the a-p type:  see sq30006)
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+g+ffg|fgg+gg+fff+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30437a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30440, but 90 degrees away...
  f=ggg+ggg+g+fgf|gfg+gg+fff+g+gfg|fgf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30438a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+g+fgg|ffg+gg+fff+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30439a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+g+fff|fgg+gg+fff+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30440a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30437, but 90 degrees away...
  f=ggg+ggg+g+fff|ffg+gg+fff+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30441a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; VERY dusty, intriguing.
  f=ggg+ggg+g+fff|fgf+gg+fff+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30442a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+g+g+f|fgf|fg-g-f|f+gg+ff+ggg+fgg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30443a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+f+g+f|fgf|fg-g-f|f+gg+gf+ggg+gfg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30444a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+g+g+f|fgf|fg-g-f|f+gg+gf+ggg+ffg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30445a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dusts.
  Axiom c53f+g+c12f
  f=ggg+g+g+f|fgf|fg-g-f|f+gg+fg+ggg+fgf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30446a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|ff|f+gg+ff+ggg+fgg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30447a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|ff|f+gg+gf+ggg+gfg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30448a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|ff|f+gg+gf+ggg+ffg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30449a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|ff|f+gg+fg+ggg+fgf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30450a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  ; Same shape as 30149, but 90 degrees away...
  f=ggg+f+g+f|f+g+f|ff|f+gg+gg+ggg+gff+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30451a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|ff|f+gg+fg+ggg+ggf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30452a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|ff|f+gg+gf+ggg+gfg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30453a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|f-g+f|f+g+ff+ggg+fgg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30454a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|f-g+f|f+g+gf+ggg+gfg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30455a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|f-g+f|f+g+gf+ggg+ffg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30456a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+g+g+f|f+g+f|f-g+f|f+g+fg+ggg+fgf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30457a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+f+g+f|f+g+f|f-g+f|f+g+gg+ggg+gff+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30458a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+g+g-f|f-g+f|fgf|fg+gg+ff+ggg+fgg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30459a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust.
  Axiom c53f+g+c12f
  f=ggg+f+g-f|f-g+f|fgf|fg+gg+gf+ggg+gfg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30460a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+g+g-f|f-g+f|fgf|fg+gg+gf+ggg+ffg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30461a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=ggg+g+g-f|f-g+f|fgf|fg+gg+fg+ggg+fgf+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30462a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+gff+g+fff|ggg+gg+fgg+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30463a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust.
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fff|ggg+gg+gfg+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30464a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fff|ggg+gg+ffg+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30465a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+gfg+g+fff|ggg+gg+fgf+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30466a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+gff+g+ffg|fgg+gg+fgg+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30467a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust.
  Axiom c53f+g+c12f
  f=ggg+fgf+g+ffg|fgg+gg+gfg+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30468a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+ffg+g+ffg|fgg+gg+ggf+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30469a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+ggf+g+ffg|fgg+gg+ffg+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30470a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+fgg+g+ffg|fgg+gg+gff+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30471a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+gff+g+fgf|gfg+gg+fgg+g+gfg|fgf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30472a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust.
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fgf|gfg+gg+gfg+g+gfg|fgf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30473a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fgf|gfg+gg+ffg+g+gfg|fgf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30474a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust.
  Axiom c53f+g+c12f
  f=ggg+gff+g+fgg|ffg+gg+fgg+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30475a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my VERY best HTs:  WAY cool
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fgg|ffg+gg+gfg+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30476a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+ffg+g+fgg|ffg+gg+ggf+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30477a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+fgg+g+fgg|ffg+gg+gff+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30478a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fgg|ffg+gg+ffg+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30479a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs
  Axiom c53f+g+c12f
  f=ggg+gfg+g+fgg|ffg+gg+fgf+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30480a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+gff+g+fff|fgg+gg+fgg+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30481a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fff|fgg+gg+gfg+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30482a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my VERY best HTs
  Axiom c53f+g+c12f
  f=ggg+ffg+g+fff|fgg+gg+ggf+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30483a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+fgg+g+fff|fgg+gg+gff+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30484a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fff|fgg+gg+ffg+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30485a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+gfg+g+fff|fgg+gg+fgf+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30486a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+gff+g+fff|ffg+gg+fgg+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30487a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fff|ffg+gg+gfg+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30488a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+ffg+g+fff|ffg+gg+ggf+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30489a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+fgg+g+fff|ffg+gg+gff+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30490a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+ggf+g+fff|ffg+gg+ffg+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30491a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+gfg+g+fff|ffg+gg+fgf+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30492a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+gff+g+fff|fgf+gg+fgg+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30493a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+fgf+g+fff|fgf+gg+gfg+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30494a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+fgg+g+fff|fgf+gg+gff+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30495a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  Axiom c53f+g+c12f
  f=ggg+gfg+g+fff|fgf+gg+fgf+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30496a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30006
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g+f|fgf|fg-g-f|f+gg+ff+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30497a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30012
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g+f|f+g+f|ff|f+gg+ff+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30498a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30014
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g+f|f+g+f|f-g+f|f+g+ff+ggg+ggg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30499a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30029
  Axiom c53f+g+c12f
  f=ggg+f+g-f|f-g+f|fgf|fg+gg+ff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30500a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30137
  Axiom c53f+g+c12f
  f=ggg+ggg+fff+g+fff|ggg+gg+ggg+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30501a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30145
  Axiom c53f+g+c12f
  f=ggg+ggg+fff+g+ffg|fgg+gg+ggg+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30502a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30147
  Axiom c53f+g+c12f
  f=ggg+ggg+fff+g+fgf|gfg+gg+ggg+g+gfg|fgf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30503a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30148
  Axiom c53f+g+c12f
  f=ggg+ggg+fff+g+fgg|ffg+gg+ggg+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30504a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30149
  Axiom c53f+g+c12f
  f=ggg+ggg+fff+g+fff|fgg+gg+ggg+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30505a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30151
  ; "F" eternally tiling itself!
  Axiom c53f+g+c12f
  f=ggg+ggg+fff+g+fff|ffg+gg+ggg+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30506a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30153
  Axiom c53f+g+c12f
  f=ggg+ggg+fff+g+fff|fgf+gg+ggg+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30507a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30436
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+ggg+g+ffg|fgg+gg+fff+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30508a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30437
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30440, but 90 degrees away...
  f=ggg+ggg+ggg+g+fgf|gfg+gg+fff+g+gfg|fgf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30509a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30438
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+ggg+g+fgg|ffg+gg+fff+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30510a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30439
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  f=ggg+ggg+ggg+g+fff|fgg+gg+fff+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30511a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30440
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; Same shape as 30437, but 90 degrees away...
  f=ggg+ggg+ggg+g+fff|ffg+gg+fff+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30512a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust; vertical version of 30441
  Axiom c53f+g+c12f
  ; Employs only 1-sided a-p lines, but it works.
  ; VERY dusty, intriguing.
  f=ggg+ggg+ggg+g+fff|fgf+gg+fff+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30513a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30442
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g+f|fgf|fg-g-f|f+gg+ff+ggg+fgg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30514a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30443
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g+f|fgf|fg-g-f|f+gg+gf+ggg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30515a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30444
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g+f|fgf|fg-g-f|f+gg+gf+ggg+ffg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30516a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust; vertical version of 30445
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g+f|fgf|fg-g-f|f+gg+fg+ggg+fgf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30517a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30446
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g+f|f+g+f|ff|f+gg+ff+ggg+fgg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30518a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30447
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g+f|f+g+f|ff|f+gg+gf+ggg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30519a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30448
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g+f|f+g+f|ff|f+gg+gf+ggg+ffg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30520a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30449
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g+f|f+g+f|ff|f+gg+fg+ggg+fgf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30521a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30450
  Axiom c53f+g+c12f
  ; Same shape as 30149, but 90 degrees away...
  f=ggg+ggg+f+g+f|f+g+f|ff|f+gg+gg+ggg+gff+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30522a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30451
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g+f|f+g+f|ff|f+gg+fg+ggg+ggf+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30523a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30452
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g+f|f+g+f|ff|f+gg+gf+ggg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30524a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30453
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g+f|f+g+f|f-g+f|f+g+ff+ggg+fgg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30525a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30454
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g+f|f+g+f|f-g+f|f+g+gf+ggg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30526a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30455
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g+f|f+g+f|f-g+f|f+g+gf+ggg+ffg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30527a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30458
  Axiom c53f+g+c12f
  f=ggg+ggg+g+g-f|f-g+f|fgf|fg+gg+ff+ggg+fgg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30528a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust; vertical version of 30459
  Axiom c53f+g+c12f
  f=ggg+ggg+f+g-f|f-g+f|fgf|fg+gg+gf+ggg+gfg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30529a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30464
  Axiom c53f+g+c12f
  f=ggg+ggg+ggf+g+fff|ggg+gg+ffg+g+ggg|fff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30530a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30466
  Axiom c53f+g+c12f
  f=ggg+ggg+gff+g+ffg|fgg+gg+fgg+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30531a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30467
  Axiom c53f+g+c12f
  f=ggg+ggg+fgf+g+ffg|fgg+gg+gfg+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30532a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30468
  Axiom c53f+g+c12f
  f=ggg+ggg+ffg+g+ffg|fgg+gg+ggf+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30533a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30469
  Axiom c53f+g+c12f
  f=ggg+ggg+ggf+g+ffg|fgg+gg+ffg+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30534a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30470
  Axiom c53f+g+c12f
  f=ggg+ggg+fgg+g+ffg|fgg+gg+gff+g+ggf|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30535a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30471
  Axiom c53f+g+c12f
  f=ggg+ggg+gff+g+fgf|gfg+gg+fgg+g+gfg|fgf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30536a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30473
  Axiom c53f+g+c12f
  f=ggg+ggg+ggf+g+fgf|gfg+gg+ffg+g+gfg|fgf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30537a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30475
  Axiom c53f+g+c12f
  f=ggg+ggg+fgf+g+fgg|ffg+gg+gfg+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30538a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30476
  Axiom c53f+g+c12f
  f=ggg+ggg+ffg+g+fgg|ffg+gg+ggf+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30539a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30477
  Axiom c53f+g+c12f
  f=ggg+ggg+fgg+g+fgg|ffg+gg+gff+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30540a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30479
  Axiom c53f+g+c12f
  f=ggg+ggg+gfg+g+fgg|ffg+gg+fgf+g+gff|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30541a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30480
  Axiom c53f+g+c12f
  f=ggg+ggg+gff+g+fff|fgg+gg+fgg+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30542a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30481
  Axiom c53f+g+c12f
  f=ggg+ggg+fgf+g+fff|fgg+gg+gfg+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30543a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30483
  Axiom c53f+g+c12f
  f=ggg+ggg+fgg+g+fff|fgg+gg+gff+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30544a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30484
  Axiom c53f+g+c12f
  f=ggg+ggg+ggf+g+fff|fgg+gg+ffg+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30545a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30485
  Axiom c53f+g+c12f
  f=ggg+ggg+gfg+g+fff|fgg+gg+fgf+g+ggg|gff+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30546a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30486
  Axiom c53f+g+c12f
  f=ggg+ggg+gff+g+fff|ffg+gg+fgg+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30547a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30487
  Axiom c53f+g+c12f
  f=ggg+ggg+fgf+g+fff|ffg+gg+gfg+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30548a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30488
  Axiom c53f+g+c12f
  f=ggg+ggg+ffg+g+fff|ffg+gg+ggf+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30549a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30489
  Axiom c53f+g+c12f
  f=ggg+ggg+fgg+g+fff|ffg+gg+gff+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30550a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30490
  Axiom c53f+g+c12f
  f=ggg+ggg+ggf+g+fff|ffg+gg+ffg+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30551a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30491
  Axiom c53f+g+c12f
  f=ggg+ggg+gfg+g+fff|ffg+gg+fgf+g+ggg|ggf+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30552a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30492
  Axiom c53f+g+c12f
  f=ggg+ggg+gff+g+fff|fgf+gg+fgg+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30553a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30493
  Axiom c53f+g+c12f
  f=ggg+ggg+fgf+g+fff|fgf+gg+gfg+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30554a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30494
  Axiom c53f+g+c12f
  f=ggg+ggg+fgg+g+fff|fgf+gg+gff+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30555a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; vertical version of 30495
  Axiom c53f+g+c12f
  f=ggg+ggg+gfg+g+fff|fgf+gg+fgf+g+ggg|gfg+gg+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30556a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Boring, but wait for all the variations!; using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+FFF+G+fff|fff+GG+GGG+G+ggg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30557a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+gff|fff+GG+GGG+G+fgg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30558a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+FFF+G+fgf|fff+GG+GGG+G+gfg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30559a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Needs variations, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+fff|gff+GG+GGG+G+ggg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30560a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+ggf|fff+GG+GGG+G+ffg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30561a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+FFF+G+gfg|fff+GG+GGG+G+fgf|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30562a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+FFF+G+fff|gfg+GG+GGG+G+ggg|fgf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30563a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+gff|gff+GG+GGG+G+fgg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30564a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+ggf|fgf+GG+GGG+G+ffg|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30565a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+ggf|ffg+GG+GGG+G+ffg|ggf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30566a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+ggg|gff+GG+GGG+G+fff|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30567a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+ggg|fgf+GG+GGG+G+fff|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30568a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+gfg|ggg+GG+GGG+G+fgf|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30569a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+ggf|ggg+GG+GGG+G+ffg|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30570a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FFF+G+ggg|fgg+GG+GGG+G+fff|gff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30571a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+FFF+G+ggg|gfg+GG+GGG+G+fff|fgf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30572a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Variation on 30556, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+GFF+G+fff|fff+GG+FGG+G+ggg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30573a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Variation on 30556, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+FGF+G+fff|fff+GG+GFG+G+ggg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30574a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Variation on 30556, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+GGF+G+fff|fff+GG+FFG+G+ggg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30575a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Variation on 30556, using a modified Sq3 DNA
  Axiom c53f+g+c12f
  f=ggg+GFG+G+fff|fff+GG+FGF+G+ggg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30576a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Variation on 30556, using a modified Sq3 DNA
  ; Pure dust
  Axiom c53f+g+c12f
  f=ggg+GGG+G+fff|fff+GG+FFF+G+ggg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30577a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=ggg+GFF+G+gff|fff+GG+FGG+G+fgg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30578a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=ggg+FGF+G+gff|fff+GG+GFG+G+fgg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30579a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=ggg+FFG+G+gff|fff+GG+GGF+G+fgg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30580a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=ggg+GGF+G+gff|fff+GG+FFG+G+fgg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30581a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=ggg+GFG+G+gff|fff+GG+FGF+G+fgg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30582a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=ggg+FGG+G+gff|fff+GG+GFF+G+fgg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30583a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30557
  Axiom c53f+g+c12f
  f=ggg+GGG+G+gff|fff+GG+FFF+G+fgg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30584a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30558
  Axiom c53f+g+c12f
  f=ggg+GFF+G+fgf|fff+GG+FGG+G+gfg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30585a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30558
  Axiom c53f+g+c12f
  f=ggg+FGF+G+fgf|fff+GG+GFG+G+gfg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30586a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30558
  Axiom c53f+g+c12f
  f=ggg+GGF+G+fgf|fff+GG+FFG+G+gfg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30587a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA:  variation on 30558
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+GFG+G+fgf|fff+GG+FGF+G+gfg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30588a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30559
  Axiom c53f+g+c12f
  f=ggg+GFF+G+fff|gff+GG+FGG+G+ggg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30589a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30559
  Axiom c53f+g+c12f
  f=ggg+GGF+G+fff|gff+GG+FFG+G+ggg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30590a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30559
  Axiom c53f+g+c12f
  f=ggg+GFG+G+fff|gff+GG+FGF+G+ggg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30591a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30559
  Axiom c53f+g+c12f
  f=ggg+FGG+G+fff|gff+GG+GFF+G+ggg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30592a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA:  variation on 30560
  Axiom c53f+g+c12f
  f=ggg+GFF+G+ggf|fff+GG+FGG+G+ffg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30593a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30560
  Axiom c53f+g+c12f
  f=ggg+FFG+G+ggf|fff+GG+GGF+G+ffg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30594a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30560
  Axiom c53f+g+c12f
  f=ggg+FGG+G+ggf|fff+GG+GFF+G+ffg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30595a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30560
  Axiom c53f+g+c12f
  f=ggg+GGG+G+ggf|fff+GG+FFF+G+ffg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30596a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA:  variation on 30561
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+FGF+G+gfg|fff+GG+GFG+G+fgf|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30597a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30562
  Axiom c53f+g+c12f
  f=ggg+GFF+G+fff|gfg+GG+FGG+G+ggg|fgf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30598a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30562
  Axiom c53f+g+c12f
  f=ggg+FGF+G+fff|gfg+GG+GFG+G+ggg|fgf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30599a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30562
  Axiom c53f+g+c12f
  f=ggg+GGF+G+fff|gfg+GG+FFG+G+ggg|fgf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30600a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA:  variation on 30562
  ; Y-axis symmetry
  Axiom c53f+g+c12f
  f=ggg+GGG+G+fff|gfg+GG+FFF+G+ggg|fgf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30601a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=ggg+GFF+G+gff|gff+GG+FGG+G+fgg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30602a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=ggg+FGF+G+gff|gff+GG+GFG+G+fgg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30603a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=ggg+GGF+G+gff|gff+GG+FFG+G+fgg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30604a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=ggg+GFG+G+gff|gff+GG+FGF+G+fgg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30605a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=ggg+FGG+G+gff|gff+GG+GFF+G+fgg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30606a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30563
  Axiom c53f+g+c12f
  f=ggg+GGG+G+gff|gff+GG+FFF+G+fgg|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30607a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=ggg+GFF+G+ggf|fgf+GG+FGG+G+ffg|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30608a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=ggg+FFG+G+ggf|fgf+GG+GGF+G+ffg|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30609a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=ggg+GGF+G+ggf|fgf+GG+FFG+G+ffg|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30610a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=ggg+GFG+G+ggf|fgf+GG+FGF+G+ffg|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30611a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=ggg+FGG+G+ggf|fgf+GG+GFF+G+ffg|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30612a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30564
  Axiom c53f+g+c12f
  f=ggg+GGG+G+ggf|fgf+GG+FFF+G+ffg|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30613a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30565
  Axiom c53f+g+c12f
  f=ggg+FGF+G+ggf|ffg+GG+GFG+G+ffg|ggf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30614a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure minimalism, using a modified Sq3 DNA:  variation on 30565
  Axiom c53f+g+c12f
  f=ggg+FFG+G+ggf|ffg+GG+GGF+G+ffg|ggf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30615a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30565
  Axiom c53f+g+c12f
  f=ggg+GGF+G+ggf|ffg+GG+FFG+G+ffg|ggf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30616a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30565
  Axiom c53f+g+c12f
  f=ggg+GFG+G+ggf|ffg+GG+FGF+G+ffg|ggf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30617a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30566
  Axiom c53f+g+c12f
  f=ggg+FGF+G+ggg|gff+GG+GFG+G+fff|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30618a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Minimalist, using a modified Sq3 DNA:  variation on 30566
  Axiom c53f+g+c12f
  f=ggg+GGF+G+ggg|gff+GG+FFG+G+fff|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30619a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30566
  Axiom c53f+g+c12f
  f=ggg+GFG+G+ggg|gff+GG+FGF+G+fff|fgg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30620a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30567
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+FGF+G+ggg|fgf+GG+GFG+G+fff|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30621a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30567
  Axiom c53f+g+c12f
  f=ggg+GGF+G+ggg|fgf+GG+FFG+G+fff|gfg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30622a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30568
  Axiom c53f+g+c12f
  f=ggg+GFF+G+gfg|ggg+GG+FGG+G+fgf|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30623a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA:  variation on 30568
  ; X-axis reflectional symmetry
  Axiom c53f+g+c12f
  f=ggg+FGF+G+gfg|ggg+GG+GFG+G+fgf|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30624a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30568
  Axiom c53f+g+c12f
  f=ggg+GGF+G+gfg|ggg+GG+FFG+G+fgf|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30625a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30568
  Axiom c53f+g+c12f
  f=ggg+GFG+G+gfg|ggg+GG+FGF+G+fgf|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30626a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; Pure dust, using a modified Sq3 DNA:  variation on 30569
  Axiom c53f+g+c12f
  f=ggg+GFF+G+ggf|ggg+GG+FGG+G+ffg|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30627a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30569
  Axiom c53f+g+c12f
  f=ggg+FFG+G+ggf|ggg+GG+GGF+G+ffg|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30628a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30569
  Axiom c53f+g+c12f
  f=ggg+GFG+G+ggf|ggg+GG+FGF+G+ffg|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30629a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30569
  Axiom c53f+g+c12f
  f=ggg+FGG+G+ggf|ggg+GG+GFF+G+ffg|fff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30632a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30570
  Axiom c53f+g+c12f
  f=ggg+FFG+G+ggg|fgg+GG+GGF+G+fff|gff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30633a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA:  variation on 30570
  Axiom c53f+g+c12f
  f=ggg+GGF+G+ggg|fgg+GG+FFG+G+fff|gff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30635a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA:  variation on 30570
  Axiom c53f+g+c12f
  f=ggg+FGG+G+ggg|fgg+GG+GFF+G+fff|gff+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30636a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30571
  Axiom c53f+g+c12f
  f=ggg+GFF+G+ggg|gfg+GG+FGG+G+fff|fgf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30637a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; using a modified Sq3 DNA:  variation on 30571
  Axiom c53f+g+c12f
  f=ggg+GGF+G+ggg|gfg+GG+FFG+G+fff|fgf+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30638a { ; Anthony Hanmer 24/8/2003
  Angle 4 ; 3x3 square HTile, a-p dust, tiles in only 2
  ; 90-degree rotation
  ; One of my best HTs, using a modified Sq3 DNA:  variation on 30572
  Axiom c53f+g+c12f
  f=ggg+GFF+G+fff|fff+GG+FGG+G+ggg|ggg+GG+ggg+ggg+ggg+ggg
  g=ggg
  }

sq30639 { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 1
  Axiom c9f+c47f+c12f+c14f
  f=G+gfg|ggg+GF+G+fgg|ggg+GG+G+ggf|ffg+GG+F+ggg|ggf+FG+GGG
  g=ggg
  }

sq30639a { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 1
  Axiom c9f+c47f+c12f+c14f
  f=GGG+G+gfg|ggg+GF+G+fgg|ggg+GG+G+ggf|ffg+GG+F+ggg|ggf+FG+GGG+GGG+GGG+GGG
  g=ggg
  }

sq30639b { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 1
  Axiom c9f+c47f+c12f+c14f
  f=GGG+GGG+G+gfg|ggg+GF+G+fgg|ggg+GG+G+ggf|ffg+GG+F+ggg|ggf+FG+GGG+GGG+GGG
  g=ggg
  }

sq30639c { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 1
  Axiom c9f+c47f+c12f+c14f
  f=GGG+GGG+GGG+G+gfg|ggg+GF+G+fgg|ggg+GG+G+ggf|ffg+GG+F+ggg|ggf+FG+GGG+GGG
  g=ggg
  }

sq30640 { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 2
  Axiom c9f+c47f+c12f+c14f
  f=G+ggg|gfg+GF+G+fgg|ggg+GG+G+gff|fgg+GG+F+ggg|ggf+FG+GGG
  g=ggg
  }

sq30640a { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 2
  Axiom c9f+c47f+c12f+c14f
  f=GGG+G+ggg|gfg+GF+G+fgg|ggg+GG+G+gff|fgg+GG+F+ggg|ggf+FG+GGG+GGG+GGG+GGG
  g=ggg
  }

sq30640b { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 2
  Axiom c9f+c47f+c12f+c14f
  f=GGG+GGG+G+ggg|gfg+GF+G+fgg|ggg+GG+G+gff|fgg+GG+F+ggg|ggf+FG+GGG+GGG+GGG
  g=ggg
  }

sq30640c { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 2
  Axiom c9f+c47f+c12f+c14f
  f=GGG+GGG+GGG+G+ggg|gfg+GF+G+fgg|ggg+GG+G+gff|fgg+GG+F+ggg|ggf+FG+GGG+GGG
  g=ggg
  }

sq30641 { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 3
  Axiom c9f+c47f+c12f+c14f
  f=G+gfg|ggg+GF+G+ggg|ggf+GG+G+ggf|ffg+GG+F+fgg|ggg+FG+GGG
  g=ggg
  }

sq30641a { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 3
  Axiom c9f+c47f+c12f+c14f
  f=GGG+G+gfg|ggg+GF+G+ggg|ggf+GG+G+ggf|ffg+GG+F+fgg|ggg+FG+GGG+GGG+GGG+GGG
  g=ggg
  }

sq30641b { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 3
  Axiom c9f+c47f+c12f+c14f
  f=GGG+GGG+G+gfg|ggg+GF+G+ggg|ggf+GG+G+ggf|ffg+GG+F+fgg|ggg+FG+GGG+GGG+GGG
  g=ggg
  }

sq30641c { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 3
  Axiom c9f+c47f+c12f+c14f
  f=GGG+GGG+GGG+G+gfg|ggg+GF+G+ggg|ggf+GG+G+ggf|ffg+GG+F+fgg|ggg+FG+GGG+GGG
  g=ggg
  }

sq30642 { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 4
  Axiom c9f+c47f+c12f+c14f
  f=G+ggg|gfg+GF+G+ggg|ggf+GG+G+gff|fgg+GG+F+fgg|ggg+FG+GGG
  g=ggg
  }

sq30642a { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 4
  Axiom c9f+c47f+c12f+c14f
  f=GGG+G+ggg|gfg+GF+G+ggg|ggf+GG+G+gff|fgg+GG+F+fgg|ggg+FG+GGG+GGG+GGG+GGG
  g=ggg
  }

sq30642b { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 4
  Axiom c9f+c47f+c12f+c14f
  f=GGG+GGG+G+ggg|gfg+GF+G+ggg|ggf+GG+G+gff|fgg+GG+F+fgg|ggg+FG+GGG+GGG+GGG
  g=ggg
  }

sq30642c { ; Anthony Hanmer 28/8/2004
  Angle 4 ; "ht" as an HT, version 4
  Axiom c9f+c47f+c12f+c14f
  f=GGG+GGG+GGG+G+ggg|gfg+GF+G+ggg|ggf+GG+G+gff|fgg+GG+F+fgg|ggg+FG+GGG+GGG
  g=ggg
  }

