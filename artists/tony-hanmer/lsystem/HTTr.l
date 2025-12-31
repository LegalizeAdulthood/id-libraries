tr20001* { ; Anthony Hanmer 2000
  Angle 6 ; My 2nd HT
  ; (& 1st 2x2 triangular HT)
  ; I think there are no more 2x2 triangular HTiles to be found.
  ; (I am later proved to be SO wrong.)
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f|f++f
  }

tr20001u { ; Anthony Hanmer 2001
  Angle 6 ; a textured version of 271
  Axiom f
  f=f+f|f++gf
  }

tr20001v { ; Anthony Hanmer 2003
  Angle 6 ; 4x4 start instead of 2x2
  Axiom c9f++c12f++c14f
  ; also an HTile, starting from tr20001_2;
  ; proves that higher-iteration starts of lower-edge-length HTiles
  ; (factors of those iteration ns) are identical to higher iterations
  ; of the lower-edge-length tiles (in this case, a start of 16 fs = 2nd
  ; iteration of a 4-f tile)
  f=f+f|f++f+ff|ff++f++ff|ff++f|f++f
  }

tr20001w { ; Anthony Hanmer 26/8/2003
  Angle 6 ;
  ; Just for the heck of it...!
  Axiom c9f++c12f++c14f
  f=f+f|f++g|f|g
  g=gg
  }

tr20001x { ; Anthony Hanmer 26/8/2003
  Angle 6 ;
  ; Just for the heck of it...!
  Axiom c9f++c12f++c14f
  f=g|f|g+f|f++f
  g=gg
  }

tr20001y { ; Anthony Hanmer 26/8/2003
  Angle 6 ;
  ; Just for the heck of it...!
  Axiom c9f++c12f++c14f
  f=g|f|g+f|f++g|f|g
  g=gg
  }

tr20001z { ; Anthony Hanmer 26/8/2003
  Angle 6 ;
  ; Just for the heck of it...!
  Axiom c9f++c12f++c14f
  f=f|f|g+f|f++f|f|g
  g=gg
  }

tr20001a { ; Anthony Hanmer 17/3/2003
  Angle 6 ; 120-degree Rotation of my 2nd HT
  ; (This may not necessarily be a new HT,
  ; but it proves the principle for Tr types.
  ; More new tiles to be found in size 3 and higher.)
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=gg++f+f|f++f++gg++gg
  g=gg
  }

tr20001b { ; Anthony Hanmer 17/3/2003
  Angle 6 ; 240-degree Rotation of my 2nd HT
  ; (This may not necessarily be a new HT,
  ; but it proves the principle for Tr types.)
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=gg++gg++f+f|f++f++gg
  g=gg
  }

tr20002# { ; Anthony Hanmer 5/10/2002
  Angle 6 ; 2nd 2x2 triangular HTile, 1st dust
  ; A-p... and the only possible a-p Tr HT in all
  ; side Lengths, due to Tr space limitations.
  ; This makes it the first and unique (so far) omnipresent
  ; "most orthodox" Tr HT.  (11/9/2003)
  Axiom c9f++c12f++c14f
  f=f+g++f|f--g++f
  g=gg
  }

tr20002k { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 2nd 2x2 triangular HTile, 1st dust
  Axiom f ; Colour 1
  f=>1f+g++f|f--g++<1f
  g=gg
  }

tr20002l { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 2nd 2x2 triangular HTile, 1st dust
  Axiom f ; Colour 2
  f=>1f+g++>1f|<1f--g++<1f
  g=gg
  }

tr20002m { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 2nd 2x2 triangular HTile, 1st dust
  Axiom f ; Colour 3
  f=>1f+g++<1f|>1f--g++<1f
  g=gg
  }

tr20002n { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 2nd 2x2 triangular HTile, 1st dust
  Axiom f ; Colour 4
  f=>1f+g++<1f|<1f--g++>1f
  g=gg
  }

tr20002r {; Anthony Hanmer 11/9/2003
  Angle 6 ; First successful try of e-r treatment
  Axiom f ; on a Tr...
  f=gg|ff|gg++g+f|f++g++gg++gg
  g=gg
  }

tr20002s { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 120-degree rotation of e-r...
  ; Demonstrates that this doesn't work.
  Axiom c9f++c12f++c14f
  f=gg++gg|ff|gg++g+f|f++g++gg++gg++gg++gg
  g=gg
  }

tr20002t { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 240-degree rotation of e-r...
  ; Demonstrates that this doesn't work.
  Axiom c9f++c12f++c14f
  f=gg++gg++gg|ff|gg++g+f|f++g++gg++gg++gg
  g=gg
  }

tr20003* { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 3rd 2x2 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f; Unexpected but true
  f=f+f|g--f|g+f
  g=gg
  }

tr20004* { ; Anthony Hanmer 14/10/2002
  Angle 6 ; 4th 2x2 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f; Unexpected but true
  f=f+g++f|g--f++f
  g=gg
  }

tr20005~ { ; Anthony Hanmer 11/10/2002
  Angle 6 ; Something new:
  ; A textured version of tr20001
  Axiom c9f++c12f++c14f
  f=f+@.5f+f|ff|f-f|ff@2++f
  }

tr20005k { ; Anthony Hanmer 11/10/2002
  Angle 6 ; Something new:
  ; A textured version of tr20001
  Axiom f ; Colour 1
  f=>1f+@.5f+f|ff|f-f|ff@2++<1f
  }

tr20006^ { ; Anthony Hanmer 18/10/2002
  Angle 6 ; 6th 2x2 triangular HTile (sf)
  Axiom c9f;++c12f++c14f
  f=f+f+f|g-f++g
  g=gg
  }

tr20006k { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 6th 2x2 triangular HTile (sf)
  Axiom f ; Colour 1
  f=>1f+f+f|g-<1f++g
  g=gg
  }

tr20006l { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 6th 2x2 triangular HTile (sf)
  Axiom f ; Colour 2
  f=>1f+>1f+<1f|g-<1f++g
  g=gg
  }

tr20006m { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 6th 2x2 triangular HTile (sf)
  Axiom f ; Colour 3
  f=>1f+<1f+>1f|g-<1f++g
  g=gg
  }

tr20006n { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 6th 2x2 triangular HTile (sf)
  Axiom f ; Colour 4
  f=>1f+<1f+<1f|g->1f++g
  g=gg
  }

tr20007^ { ; Anthony Hanmer 18/10/2002
  Angle 6 ; 7th 2x2 triangular HTile (sf)
  Axiom c9f;++c12f++c14f
  f=f+f+g++f++g--f++g
  g=gg
  }

tr20007k { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 7th 2x2 triangular HTile (sf)
  Axiom f ; Colour 1
  f=>1f+f+g++f++g--<1f++g
  g=gg
  }

tr20007l { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 7th 2x2 triangular HTile (sf)
  Axiom f ; Colour 2
  f=>1f+>1f+g++<1f++g--<1f++g
  g=gg
  }

tr20007m { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 7th 2x2 triangular HTile (sf)
  Axiom f ; Colour 3
  f=>1f+<1f+g++>1f++g--<1f++g
  g=gg
  }

tr20007n { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 7th 2x2 triangular HTile (sf)
  Axiom f ; Colour 4
  f=>1f+<1f+g++<1f++g-->1f++g
  g=gg
  }

tr20008* { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 8th 2x2 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=f+f|f--g++f++gg
  g=gg
  }

tr20009* { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 9th 2x2 triangular HTile
  ; One of my VERY best HTs:  sheer simplicity
  Axiom c9f++c12f++c14f
  f=f+f|g--f++f++gg
  g=gg
  }

tr20009k { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 9th 2x2 triangular HTile
  Axiom f ; Colour 1
  f=>1f+f|g--f++<1f++gg
  g=gg
  }

tr20009l { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 9th 2x2 triangular HTile
  Axiom f ; Colour 2
  f=>1f+>1f|g--<1f++<1f++gg
  g=gg
  }

tr20009m { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 9th 2x2 triangular HTile
  Axiom f ; Colour 3
  f=>1f+<1f|g-->1f++<1f++gg
  g=gg
  }

tr20009n { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 9th 2x2 triangular HTile
  Axiom f ; Colour 4
  f=>1f+<1f|g--<1f++>1f++gg
  g=gg
  }

tr20010* { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 10th 2x2 triangular HTile
  Axiom c9f++c12f++c14f
  f=gg++gg++f+f|f++f++gg
  g=gg
  }

tr20011* { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 11th 2x2 triangular HTile
  Axiom c9f++c12f++c14f
  f=gg++gg++f+f|g--f|g+f++gg
  g=gg
  }

tr20012* { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 12th 2x2 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=g+f|f++g++fg++gf++gg
  g=gg
  }

tr20013^ { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 13th 2x2 triangular HTile (sf)
  Axiom c9f;++c12f++c14f
  f=gg++f+f|f++g++gf++gg
  g=gg
  }

tr20013k { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 13th 2x2 triangular HTile (sf)
  Axiom f ; Colour 1
  f=gg++>1f+f|f++g++g<1f++gg
  g=gg
  }

tr20013l { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 13th 2x2 triangular HTile (sf)
  Axiom f ; Colour 2
  f=gg++>1f+>1f|<1f++g++g<1f++gg
  g=gg
  }

tr20013m { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 13th 2x2 triangular HTile (sf)
  Axiom f ; Colour 3
  f=gg++>1f+<1f|>1f++g++g<1f++gg
  g=gg
  }

tr20013n { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 13th 2x2 triangular HTile (sf)
  Axiom f ; Colour 4
  f=gg++>1f+<1f|<1f++g++g>1f++gg
  g=gg
  }

tr20014* { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 14th 2x2 triangular HTile
  ; X-axis reflectional symmetry
  ; One of my VERY best HTs:  again, very simple
  Axiom c9f++c12f++c14f
  f=gg++g+f|f++f++fg++gg
  g=gg
  }

tr20015* { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 15th 2x2 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=gg++g+f|f++g++ff++gg
  g=gg
  }

tr20016^ { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 16th 2x2 triangular HTile (sf)
  Axiom c9f;++c12f++c14f
  f=g+f|g--f|g+f++gg++fg++gg
  g=gg
  }

tr20016k { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 16th 2x2 triangular HTile (sf)
  Axiom f ; Colour 1
  f=g+>1f|g--f|g+f++gg++<1fg++gg
  g=gg
  }

tr20016l { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 16th 2x2 triangular HTile (sf)
  Axiom f ; Colour 2
  f=g+>1f|g-->1f|g+<1f++gg++<1fg++gg
  g=gg
  }

tr20016m { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 16th 2x2 triangular HTile (sf)
  Axiom f ; Colour 3
  f=g+>1f|g--<1f|g+>1f++gg++<1fg++gg
  g=gg
  }

tr20016n { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 16th 2x2 triangular HTile (sf)
  Axiom f ; Colour 4
  f=g+>1f|g--<1f|g+<1f++gg++>1fg++gg
  g=gg
  }

tr20017^ { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 17th 2x2 triangular HTile (sf)
  Axiom c9f;++c12f++c14f
  f=g+f|g--f|g+g++ff++gg++gg
  g=gg
  }

tr20017k { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 17th 2x2 triangular HTile (sf)
  Axiom f ; Colour 1
  f=g+>1f|g--f|g+g++f<1f++gg++gg
  g=gg
  }

tr20017l { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 17th 2x2 triangular HTile (sf)
  Axiom f ; Colour 2
  f=g+>1f|g-->1f|g+g++<1f<1f++gg++gg
  g=gg
  }

tr20017m { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 17th 2x2 triangular HTile (sf)
  Axiom f ; Colour 3
  f=g+>1f|g--<1f|g+g++>1f<1f++gg++gg
  g=gg
  }

tr20017n { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 17th 2x2 triangular HTile (sf)
  Axiom f ; Colour 4
  f=g+>1f|g--<1f|g+g++<1f>1f++gg++gg
  g=gg
  }

tr20018* { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 18th 2x2 triangular HTile
  Axiom c9f++c12f++c14f
  f=gg++f+f|g--f|g+g++gf++gg
  g=gg
  }

tr20019^ { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 19th 2x2 triangular HTile (sf)
  Axiom c9f;++c12f++c14f
  f=gg++g+f|g--f|g+f++gg++fg
  g=gg
  }

tr20019k { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 19th 2x2 triangular HTile (sf)
  Axiom f ; Colour 1
  f=gg++g+>1f|g--f|g+f++gg++<1fg
  g=gg
  }

tr20019l { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 19th 2x2 triangular HTile (sf)
  Axiom f ; Colour 2
  f=gg++g+>1f|g-->1f|g+<1f++gg++<1fg
  g=gg
  }

tr20019m { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 19th 2x2 triangular HTile (sf)
  Axiom f ; Colour 3
  f=gg++g+>1f|g--<1f|g+>1f++gg++<1fg
  g=gg
  }

tr20019n { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 19th 2x2 triangular HTile (sf)
  Axiom f ; Colour 4
  f=gg++g+>1f|g--<1f|g+<1f++gg++>1fg
  g=gg
  }

tr20020^ { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 20th 2x2 triangular HTile (sf)
  Axiom c9f;++c12f++c14f
  f=g+f++g|f--g++g++fg++gf++gg
  g=gg
  }

tr20020k { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 20th 2x2 triangular HTile (sf)
  Axiom f ; Colour 1
  f=g+>1f++g|f--g++g++fg++g<1f++gg
  g=gg
  }

tr20020l { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 20th 2x2 triangular HTile (sf)
  Axiom f ; Colour 2
  f=g+>1f++g|>1f--g++g++<1fg++g<1f++gg
  g=gg
  }

tr20020m { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 20th 2x2 triangular HTile (sf)
  Axiom f ; Colour 3
  f=g+>1f++g|<1f--g++g++>1fg++g<1f++gg
  g=gg
  }

tr20020n { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 20th 2x2 triangular HTile (sf)
  Axiom f ; Colour 4
  f=g+>1f++g|<1f--g++g++<1fg++g>1f++gg
  g=gg
  }

tr20021~ { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 21st 2x2 triangular HTile (almost sf)
  Axiom c9f;++c12f++c14f
  f=gg++f+f++g|f--g++f++gf++gg
  g=gg
  }

tr20021k { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 21st 2x2 triangular HTile (almost sf)
  Axiom c9f;++c12f++c14f; Colour 1
  f=gg++>1f+f++g|f--g++f++g<1f++gg
  g=gg
  }

tr20021l { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 21st 2x2 triangular HTile (almost sf)
  Axiom c9f;++c12f++c14f; Colour 2
  f=gg++>1f+>1f++g|f--g++<1f++g<1f++gg
  g=gg
  }

tr20021m { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 21st 2x2 triangular HTile (almost sf)
  Axiom c9f;++c12f++c14f; Colour 3
  f=gg++>1f+<1f++g|f--g++>1f++g<1f++gg
  g=gg
  }

tr20021n { ; Anthony Hanmer 23/10/2002
  Angle 6 ; 21st 2x2 triangular HTile (almost sf)
  Axiom c9f;++c12f++c14f; Colour 4
  f=gg++>1f+<1f++g|f--g++<1f++g>1f++gg
  g=gg
  }

tr20022~ { ; Anthony Hanmer 14/10/2002
  Angle 6 ; ... Unsure what to call this:
  Axiom c11f++c12f
  f=f+f++g|f--g++f
  ; It seems to cover the triangle in only 2 colours,
  ; but with infinitesimal overlap.  (Pseudotile?)
  g=gg
  }

tr20022x { ; Anthony Hanmer 14/10/2002
  Angle 6 ; ... Unsure what to call this:
  Axiom f ; Colour 1
  f=>1f+f++g|f--g++<1f
  ; It seems to cover the triangle in only 2 colours,
  ; but with infinitesimal overlap.  (Pseudotile?)
  g=gg
  }

tr30001* { ; Anthony Hanmer 9/9/2002
  Angle 6 ; Eureka!  The 2nd triangular HT!
  Axiom c9f++c12f++c14f; (1st 3x3 triangular HT)
  ; One of my VERY best HTs
  f=f++f|f++ff|ff++ff
  }

tr30001a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=ggg++f++f|f++ff|ff++ff++ggg++ggg
  g=ggg
  }

tr30001b { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 240-degree rotation
  ; Not new, I think
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f|f++ff|ff++ff++ggg
  g=ggg
  }

tr30002* { ; Anthony Hanmer 9/9/2002
  Angle 6 ; Eureka!  The 3rd triangular HT!
  Axiom c9f++c12f++c14f; (2nd 3x3 triangular HT)
  ; One of my VERY best HTs
  f=f++f--f--f|f++f++f+ff
  }

tr30002a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  ; Not new, I think
  Axiom c9f++c12f++c14f
  f=ggg++f++f--f--f|f++f++f+ff++ggg++ggg
  g=ggg
  }

tr30002b { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 240-degree rotation
  ; Not new, I think
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f--f--f|f++f++f+ff++ggg
  g=ggg
  }

tr30003* { ; Anthony Hanmer 9/9/2002
  Angle 6 ; Eureka!  The 4th triangular HT!
  Axiom c9f++c12f++c14f; (3rd 3x3 triangular HT)
  ; One of my VERY best HTs
  f=f++f|f++f--f|f++f++ff
  }

tr30003a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  ; Not new, I think
  Axiom c9f++c12f++c14f
  f=ggg++f++f|f++f--f|f++f++ff++ggg++ggg
  g=ggg
  }

tr30003b { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 240-degree rotation
  ; Not new, I think
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f|f++f--f|f++f++ff++ggg
  g=ggg
  }

tr30004* { ; Anthony Hanmer 9/9/2002
  Angle 6 ; Eureka!  The 5th triangular
  Axiom c9f++c12f++c14f; HT...!
  f=f++f--ff|ff++f+ff; (4th 3x3 triangular)
  }

tr30005* { ; Anthony Hanmer 9/9/2002
  Angle 6 ; Eureka!  The 6th triangular
  Axiom c9f++c12f++c14f; HT...!
  f=f++f--f++f|f--f++f+ff; (5th 3x3 triangular)
  }

tr30006* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 6th 3x3 triangular HTile
  Axiom c9f++c12f++c14f; Related to 8925
  f=f+ff|ff++f+f|f++f
  }

tr30007* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 7th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+ff++f|f--ff++ff
  }

tr30008* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 8th 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f|f--f++f+f|f++f
  }

tr30008a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  ; Not new, I think
  Axiom c9f++c12f++c14f
  f=ggg++f++f|f++f--f|f++f++ff++ggg++ggg
  g=ggg
  }

tr30008b { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 240-degree rotation
  ; Not new, I think
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f|f++f--f|f++f++ff++ggg
  g=ggg
  }

tr30009# { ; Anthony Hanmer 5/10/2002
  Angle 6 ; 9th 3x3 triangular HTile, 1st dust
  Axiom c9f++c12f++c14f; WOW - "Koch (variation) Dust Tile"...!
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  f=f+fg++f|f--gf++f++f|f+f
  g=ggg
  }

tr30009a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  ; a and b are the same if the 0-degree member has
  ; X-axis reflectional symmetry
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++f+fg++f|f--gf++f++f|f+f++ggg++ggg
  g=ggg
  }

tr30009b { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 240-degree rotation
  ; a and b are the same if the 0-degree member has
  ; X-axis reflectional symmetry
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f+fg++f|f--gf++f++f|f+f++ggg
  g=ggg
  }

tr30009k { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 9th 3x3 triangular HTile, 1st dust
  Axiom f ; "Koch Dust Tile", colour 1
  f=>1f+fg++f|f--gf++f++f|f+<1f
  g=ggg
  }

tr30009l { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 9th 3x3 triangular HTile, 1st dust
  Axiom f ; "Koch Dust Tile", colour 2
  f=>1f+>1fg++>1f|>1f--gf++<1f++<1f|<1f+<1f
  g=ggg
  }

tr30009m { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 9th 3x3 triangular HTile, 1st dust
  Axiom f ; "Koch Dust Tile", colour 3
  f=>1f+<1fg++>1f|<1f--gf++>1f++<1f|>1f+<1f
  g=ggg
  }

tr30009n { ; Anthony Hanmer 28/8/2003
  Angle 6 ; Analogue of the new 1/8 tiles of a Square, but it may not fit.
  Axiom c9f++c12f++c14f
  f=g|f|g+fg++f|f--gf++g|f|g++f|f+g|f|g
  g=ggg
  }

tr30009r { ; Anthony Hanmer 11/9/2003
  Angle 6 ; 9th 3x3 triangular HTile, 1st dust, e-r version
  Axiom c9f++c12f++c14f; WOW - "Koch (variation) Dust Tile"...!
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  f=g|f|g+fg++f|f--gf++g|f|g++f|f+g|f|g
  g=ggg
  }

tr30010# { ; Anthony Hanmer 5/10/2002
  Angle 6 ; 10th 3x3 triangular HTile, 2nd dust
  Axiom c9f++c12f++c14f; WOW - "Sierpinski (variation) Dust Tile"...!
  ; One of my VERY best HTs
  ; X-axis symmetry
  f=f+gf++f++f|f--f--fg++ff
  g=ggg
  }

tr30010a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  ; a and b are the same if the 0-degree member
  ; has axial symmetry...?
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ggg++f+gf++f++f|f--f--fg++ff++ggg++ggg
  g=ggg
  }

tr30010b { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 240-degree rotation
  ; a and b are the same if the 0-degree member
  ; has axial symmetry...?
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f+gf++f++f|f--f--fg++ff++ggg
  g=ggg
  }

tr30010k { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 10th 3x3 triangular HTile, 2nd dust
  Axiom f ; "Sierpinski Dust Tile", colour 1
  f=>1f+gf++f++f|f--f--fg++f<1f
  g=ggg
  }

tr30010l { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 10th 3x3 triangular HTile, 2nd dust
  Axiom f ; "Sierpinski Dust Tile", colour 2
  f=>1f+g>1f++>1f++>1f|f--<1f--<1fg++<1f<1f
  g=ggg
  }

tr30010m { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 10th 3x3 triangular HTile, 2nd dust
  Axiom f ; "Sierpinski Dust Tile", colour 3
  f=>1f+g<1f++>1f++<1f|f-->1f--<1fg++>1f<1f
  g=ggg
  }

tr30010n { ; Anthony Hanmer 28/8/2003
  Angle 6 ; Analogue of the new 1/8 tiles of a Square, but it may not fit.
  Axiom c9f++c12f++c14f
  f=g|f|g+gf++f++f|f--f--fg++gg|ff|gg
  g=ggg
  }

tr30010r { ; Anthony Hanmer 11/9/2003
  Angle 6 ; 10th 3x3 triangular HTile, 2nd dust, e-r version
  Axiom c9f++c12f++c14f; WOW - "Sierpinski (variation) Dust Tile"...!
  ; One of my VERY best HTs
  ; X-axis symmetry
  f=g|f|g+gf++f++f|f--f--fg++gg|ff|gg
  g=ggg
  }

tr30011# { ; Anthony Hanmer 5/10/2002
  Angle 6 ; 11th 3x3 triangular HTile, 3rd dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+g+f--f|f++f--f|f--g++ff
  g=ggg
  }

tr30012# { ; Anthony Hanmer 6/10/2002
  Angle 6 ; 12th 3x3 triangular HTile, 4th dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f|f+g++f|f--gf++ff
  g=ggg
  }

tr30013^ { ; Anthony Hanmer 6/10/2002
  Angle 6 ; 13th 3x3 triangular HTile, 5th (sf) dust
  Axiom c9f++c12f++c14f; (Perfectly regular)
  f=f++g--ff++g+f|f-g--ff++g+ff
  g=ggg
  }

tr30014# { ; Anthony Hanmer 6/10/2002
  Angle 6 ; 14th 3x3 triangular HTile, 6th dust
  Axiom c9f++c12f++c14f
  f=f++f|f++gf|f--f|f-g++ff
  g=ggg
  }

tr30015# { ; Anthony Hanmer 11/10/2002
  Angle 6 ; 15th 3x3 triangular HTile, 7th dust
  Axiom c9f++c12f++c14f
  f=f+g+f|f--f|f--g++f+f|f++f
  g=ggg
  }

tr30016# { ; Anthony Hanmer 18/10/2002
  Angle 6 ; 16th 3x3 triangular HTile, 8th dust
  ; Another breakthrough:  Baselines do NOT
  ; have to be connected!
  Axiom c9f++c12f++c14f
  f=f+f--f|f--g++f+f+gf|gg-f--gf++gg
  g=ggg
  }

tr30017# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 17th 3x3 triangular HTile, 9th dust
  ; This turns out to be the 120-degree rotation of Tr30009...
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f+fg++f|f--gf++f++f|f+f++ggg
  g=ggg
  }

tr30017a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  ; A.k.a Tr20009
  Axiom c9f++c12f++c14f
  f=ggg++ggg++ggg++f+fg++f|f--gf++f++f|f+f++ggg++ggg++ggg
  g=ggg
  }

tr30018# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 18th 3x3 triangular HTile, 10th dust
  Axiom c9f++c12f++c14f
  f=gfg++ggg++f+fg++f|f--gf++g++f|f+f++ggg
  g=ggg
  }

tr30019# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 19th 3x3 triangular HTile, 11th dust
  Axiom c9f++c12f++c14f
  f=ggg++gfg++f+fg++f|f--gf++g++f|f+f++ggg
  g=ggg
  }

tr30020# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 20th 3x3 triangular HTile, 12th dust
  Axiom c9f++c12f++c14f
  f=fgg++ggg++g+fg++f|f--gf++f++f|f+f++ggg
  g=ggg
  }

tr30021# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 21st 3x3 triangular HTile, 13th dust
  Axiom c9f++c12f++c14f
  f=ggg++ffg++g+fg++f|f--gf++g++f|f+f++ggg
  g=ggg
  }

tr30022# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 22nd 3x3 triangular HTile, 14th dust
  Axiom c9f++c12f++c14f
  f=ffg++ggg++g+fg++f|f--gf++g++f|f+f++ggg
  g=ggg
  }

tr30023# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 23rd 3x3 triangular HTile, 15th dust
  Axiom c9f++c12f++c14f
  f=fgg++ggg++g+gf++f++f|f--f--fg++ff++ggg
  g=ggg
  }

tr30024# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 24th 3x3 triangular HTile, 16th dust
  Axiom c9f++c12f++c14f
  f=ggg++fgg++g+gf++f++f|f--f--fg++ff++ggg
  g=ggg
  }

tr30025# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 25th 3x3 triangular HTile, 17th dust
  Axiom c9f++c12f++c14f
  f=gfg++ggg++f+gf++f++f|f--f--fg++gf++ggg
  g=ggg
  }

tr30026# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 26th 3x3 triangular HTile, 18th dust
  Axiom c9f++c12f++c14f
  f=ggg++gfg++f+gf++f++f|f--f--fg++gf++ggg
  g=ggg
  }

tr30027# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 27th 3x3 triangular HTile, 19th dust
  ; This turns out to be the 120-degree rotation of Tr30001...
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f|f++ff|ff++ff++ggg
  g=ggg
  }

tr30027a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  ; A.k.a. Tr30001
  Axiom c9f++c12f++c14f
  f=ggg++ggg++ggg++f++f|f++ff|ff++ff++ggg++ggg++ggg
  g=ggg
  }

tr30028# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 28th 3x3 triangular HTile, 20th dust
  Axiom c9f++c12f++c14f
  f=fgg++ggg++g++f|f++ff|ff++ff++ggg
  g=ggg
  }

tr30029# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 29th 3x3 triangular HTile, 21st dust
  Axiom c9f++c12f++c14f
  f=ggg++fgg++g++f|f++ff|ff++ff++ggg
  g=ggg
  }

tr30030# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 30th 3x3 triangular HTile, 22nd dust
  Axiom c9f++c12f++c14f
  f=gfg++ggg++f++f|f++ff|ff++gf++ggg
  g=ggg
  }

tr30031# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 31st 3x3 triangular HTile, 23rd dust
  Axiom c9f++c12f++c14f
  f=ggg++gfg++f++f|f++ff|ff++gf++ggg
  g=ggg
  }

tr30032# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 32nd 3x3 triangular HTile, 24th dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ggf++ggg++f++f|f++ff|ff++fg++ggg
  g=ggg
  }

tr30032a { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggf++ggg++f++f|f++ff|ff++fg++ggg++ggg++ggg
  g=ggg
  }

tr30032b { ; Anthony Hanmer 20/3/2003
  Angle 6 ; 240-degree rotation
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggg++ggf++ggg++f++f|f++ff|ff++fg++ggg++ggg
  g=ggg
  }

tr30033# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 33rd 3x3 triangular HTile, 25th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggf++f++f|f++ff|ff++fg++ggg
  g=ggg
  }

tr30034# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 34th 3x3 triangular HTile, 26th dust
  Axiom c9f++c12f++c14f
  f=ffg++ggg++g++f|f++ff|ff++gf++ggg
  g=ggg
  }

tr30035# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 35th 3x3 triangular HTile, 27th dust
  Axiom c9f++c12f++c14f
  f=ggg++ffg++g++f|f++ff|ff++gf++ggg
  g=ggg
  }

tr30036# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 36th 3x3 triangular HTile, 28th dust
  Axiom c9f++c12f++c14f
  f=fgg++gfg++g++f|f++ff|ff++gf++ggg
  g=ggg
  }

tr30037# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 37th 3x3 triangular HTile, 29th dust
  Axiom c9f++c12f++c14f
  f=gfg++fgg++g++f|f++ff|ff++gf++ggg
  g=ggg
  }

tr30038# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 38th 3x3 triangular HTile, 30th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gff++ggg++f++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30039# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 39th 3x3 triangular HTile, 31st dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++gff++f++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30040# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 40th 3x3 triangular HTile, 32nd dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gfg++ggf++f++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30041# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 41st 3x3 triangular HTile, 33rd dust
  Axiom c9f++c12f++c14f
  f=ggf++gfg++f++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30042# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 42nd 3x3 triangular HTile, 34th dust
  Axiom c9f++c12f++c14f
  f=fgf++ggg++g++f|f++ff|ff++fg++ggg
  g=ggg
  }

tr30043# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 43rd 3x3 triangular HTile, 35th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++fgf++g++f|f++ff|ff++fg++ggg
  g=ggg
  }

tr30044# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 44th 3x3 triangular HTile, 36th dust
  Axiom c9f++c12f++c14f
  f=fgg++ggf++g++f|f++ff|ff++fg++ggg
  g=ggg
  }

tr30045# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 45th 3x3 triangular HTile, 37th dust
  Axiom c9f++c12f++c14f
  f=ggf++fgg++g++f|f++ff|ff++fg++ggg
  g=ggg
  }

tr30046# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 46th 3x3 triangular HTile, 38th dust
  Axiom c9f++c12f++c14f
  f=fff++ggg++g++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30047# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 47th 3x3 triangular HTile, 39th dust
  Axiom c9f++c12f++c14f
  f=ggg++fff++g++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30048# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 48th 3x3 triangular HTile, 40th dust
  Axiom c9f++c12f++c14f
  f=fgg++gff++g++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30049# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 49th 3x3 triangular HTile, 41st dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gfg++fgf++g++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30050# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 50th 3x3 triangular HTile, 42nd dust
  Axiom c9f++c12f++c14f
  f=ggf++ffg++g++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30051# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 51st 3x3 triangular HTile, 43rd dust
  Axiom c9f++c12f++c14f
  f=gff++fgg++g++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30053# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 53rd 3x3 triangular HTile, 45th dust
  Axiom c9f++c12f++c14f
  f=ffg++ggf++g++f|f++ff|ff++gg++ggg
  g=ggg
  }

tr30054# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 54th 3x3 triangular HTile, 46th dust
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f--f--f|f++f++f+ff++ggg
  g=ggg
  }

tr30055# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 55th 3x3 triangular HTile, 47th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=fgg++ggg++g++f--f--f|f++f++f+ff++ggg
  g=ggg
  }

tr30056# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 56th 3x3 triangular HTile, 48th dust
  Axiom c9f++c12f++c14f
  f=ggg++fgg++g++f--f--f|f++f++f+ff++ggg
  g=ggg
  }

tr30057# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 57th 3x3 triangular HTile, 49th dust
  Axiom c9f++c12f++c14f
  f=gfg++ggg++f++f--f--f|f++f++f+gf++ggg
  g=ggg
  }

tr30058# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 58th 3x3 triangular HTile, 50th dust
  Axiom c9f++c12f++c14f
  f=ggg++gfg++f++f--f--f|f++f++f+gf++ggg
  g=ggg
  }

tr30059# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 59th 3x3 triangular HTile, 51st dust
  Axiom c9f++c12f++c14f
  f=ggf++ggg++f++f--f--f|f++f++f+fg++ggg
  g=ggg
  }

tr30060# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 60th 3x3 triangular HTile, 52nd dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggf++f++f--f--f|f++f++f+fg++ggg
  g=ggg
  }

tr30061# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 61st 3x3 triangular HTile, 53rd dust
  Axiom c9f++c12f++c14f
  f=ffg++ggg++g++f--f--f|f++f++f+gf++ggg
  g=ggg
  }

tr30062# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 62nd 3x3 triangular HTile, 54th dust
  Axiom c9f++c12f++c14f
  f=ggg++ffg++g++f--f--f|f++f++f+gf++ggg
  g=ggg
  }

tr30063# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 63rd 3x3 triangular HTile, 55th dust
  Axiom c9f++c12f++c14f
  f=fgg++gfg++g++f--f--f|f++f++f+gf++ggg
  g=ggg
  }

tr30064# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 64th 3x3 triangular HTile, 56th dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=gff++fgg++g++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30065# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 65th 3x3 triangular HTile, 57th dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=gff++ggg++f++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30066# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 66th 3x3 triangular HTile, 58th dust
  Axiom c9f++c12f++c14f
  f=ggg++gff++f++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30067# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 67th 3x3 triangular HTile, 59th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=gfg++ggf++f++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30068# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 68th 3x3 triangular HTile, 60th dust
  Axiom c9f++c12f++c14f
  f=ggf++gfg++f++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30069# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 69th 3x3 triangular HTile, 61st dust
  Axiom c9f++c12f++c14f
  f=fgf++ggg++g++f--f--f|f++f++f+fg++ggg
  g=ggg
  }

tr30070# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 70th 3x3 triangular HTile, 62nd dust
  Axiom c9f++c12f++c14f
  f=ggg++fgf++g++f--f--f|f++f++f+fg++ggg
  g=ggg
  }

tr30071# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 71st 3x3 triangular HTile, 63rd dust
  Axiom c9f++c12f++c14f
  f=fgg++ggf++g++f--f--f|f++f++f+fg++ggg
  g=ggg
  }

tr30072# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 72nd 3x3 triangular HTile, 64th dust
  Axiom c9f++c12f++c14f
  f=ggf++fgg++g++f--f--f|f++f++f+fg++ggg
  g=ggg
  }

tr30074# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 74th 3x3 triangular HTile, 66th dust
  Axiom c9f++c12f++c14f
  f=ggg++fff++g++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30075# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 75th 3x3 triangular HTile, 67th dust
  Axiom c9f++c12f++c14f
  f=fgg++gff++g++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30076# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 76th 3x3 triangular HTile, 68th dust
  Axiom c9f++c12f++c14f
  f=gfg++fgf++g++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30077# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 77th 3x3 triangular HTile, 69th dust
  Axiom c9f++c12f++c14f
  f=ggf++ffg++g++f--f--f|f++f++f+gg++ggg
  g=ggg
  }

tr30078# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 78th 3x3 triangular HTile, 70th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f|f++f--f|f++f++ff++ggg
  g=ggg
  }

tr30079# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 79th 3x3 triangular HTile, 71st dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=fgg++ggg++g++f|f++f--f|f++f++ff++ggg
  g=ggg
  }

tr30080# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 80th 3x3 triangular HTile, 72nd dust
  Axiom c9f++c12f++c14f
  f=ggg++fgg++g++f|f++f--f|f++f++ff++ggg
  g=ggg
  }

tr30081# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 81st 3x3 triangular HTile, 73rd dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gfg++ggg++f++f|f++f--f|f++f++gf++ggg
  g=ggg
  }

tr30082# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 82nd 3x3 triangular HTile, 74th dust
  Axiom c9f++c12f++c14f
  f=ggg++gfg++f++f|f++f--f|f++f++gf++ggg
  g=ggg
  }

tr30083# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 83rd 3x3 triangular HTile, 75th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggf++ggg++f++f|f++f--f|f++f++fg++ggg
  g=ggg
  }

tr30084# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 84th 3x3 triangular HTile, 76th dust
  ; One of my VERY best HTs:  pure simplicity
  Axiom c9f++c12f++c14f
  f=ggg++ggf++f++f|f++f--f|f++f++fg++ggg
  g=ggg
  }

tr30085# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 85th 3x3 triangular HTile, 77th dust
  ; One of my VERY best HTs:  cool
  Axiom c9f++c12f++c14f
  f=ffg++ggg++g++f|f++f--f|f++f++gf++ggg
  g=ggg
  }

tr30086# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 86th 3x3 triangular HTile, 78th dust
  Axiom c9f++c12f++c14f
  f=ggg++ffg++g++f|f++f--f|f++f++gf++ggg
  g=ggg
  }

tr30087# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 87th 3x3 triangular HTile, 79th dust
  Axiom c9f++c12f++c14f
  f=fgg++gfg++g++f|f++f--f|f++f++gf++ggg
  g=ggg
  }

tr30088# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 88th 3x3 triangular HTile, 80th dust
  Axiom c9f++c12f++c14f
  f=gfg++fgg++g++f|f++f--f|f++f++gf++ggg
  g=ggg
  }

tr30089# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 89th 3x3 triangular HTile, 81st dust
  Axiom c9f++c12f++c14f
  f=gff++ggg++f++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30090# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 90th 3x3 triangular HTile, 82nd dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++gff++f++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30091# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 91st 3x3 triangular HTile, 83rd dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gfg++ggf++f++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30092# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 92nd 3x3 triangular HTile, 84th dust
  Axiom c9f++c12f++c14f
  f=ggf++gfg++f++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30093# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 93rd 3x3 triangular HTile, 85th dust
  ; One of my VERY best HTs:
  ; sort of a Cantor Dust variation tile
  Axiom c9f++c12f++c14f
  f=fgf++ggg++g++f|f++f--f|f++f++fg++ggg
  g=ggg
  }

tr30094# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 94th 3x3 triangular HTile, 86th dust
  Axiom c9f++c12f++c14f
  f=ggg++fgf++g++f|f++f--f|f++f++fg++ggg
  g=ggg
  }

tr30095# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 95th 3x3 triangular HTile, 87th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=fgg++ggf++g++f|f++f--f|f++f++fg++ggg
  g=ggg
  }

tr30096# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 96th 3x3 triangular HTile, 88th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggf++fgg++g++f|f++f--f|f++f++fg++ggg
  g=ggg
  }

tr30097# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 97th 3x3 triangular HTile, 89th dust
  ; Same as tr30096...
  Axiom c9f++c12f++c14f
  f=ggf++fgg++g++f|f++f--f|f++f++fg++ggg
  g=ggg
  }

tr30098# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 98th 3x3 triangular HTile, 90th dust
  Axiom c9f++c12f++c14f
  f=ggg++fff++g++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30099# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 99th 3x3 triangular HTile, 91st dust
  Axiom c9f++c12f++c14f
  f=fgg++gff++g++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30100# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 100th 3x3 triangular HTile, 92nd dust
  Axiom c9f++c12f++c14f
  f=gfg++fgf++g++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30101# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 101st 3x3 triangular HTile, 93rd dust
  Axiom c9f++c12f++c14f
  f=ggf++ffg++g++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30102# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 102nd 3x3 triangular HTile, 94th dust
  Axiom c9f++c12f++c14f
  f=gff++fgg++g++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30103# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 103rd 3x3 triangular HTile, 95th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=fgf++gfg++g++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30104# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 104th 3x3 triangular HTile, 96th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ffg++ggf++g++f|f++f--f|f++f++gg++ggg
  g=ggg
  }

tr30105# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 105th 3x3 triangular HTile, 97th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f--ff|ff++f+ff++ggg
  g=ggg
  }

tr30106# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 106th 3x3 triangular HTile, 98th dust
  Axiom c9f++c12f++c14f
  f=fgg++ggg++g++f--ff|ff++f+ff++ggg
  g=ggg
  }

tr30109# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 109th 3x3 triangular HTile, 101st dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++gfg++f++f--ff|ff++f+gf++ggg
  g=ggg
  }

tr30110# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 110th 3x3 triangular HTile, 102nd dust
  Axiom c9f++c12f++c14f
  f=ggf++ggg++f++f--ff|ff++f+fg++ggg
  g=ggg
  }

tr30111# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 111th 3x3 triangular HTile, 103rd dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggf++f++f--ff|ff++f+fg++ggg
  g=ggg
  }

tr30113# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 113th 3x3 triangular HTile, 105th dust
  Axiom c9f++c12f++c14f
  f=ggg++ffg++g++f--ff|ff++f+gf++ggg
  g=ggg
  }

tr30117# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 117th 3x3 triangular HTile, 109th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ggg++gff++f++f--ff|ff++f+gg++ggg
  g=ggg
  }

tr30119# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 119th 3x3 triangular HTile, 111th dust
  Axiom c9f++c12f++c14f
  f=ggf++gfg++f++f--ff|ff++f+gg++ggg
  g=ggg
  }

tr30121# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 121st 3x3 triangular HTile, 113th dust
  Axiom c9f++c12f++c14f
  f=ggg++fgf++g++f--ff|ff++f+fg++ggg
  g=ggg
  }

tr30122# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 122nd 3x3 triangular HTile, 114th dust
  Axiom c9f++c12f++c14f
  f=fgg++ggf++g++f--ff|ff++f+fg++ggg
  g=ggg
  }

tr30123# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 123rd 3x3 triangular HTile, 115th dust
  Axiom c9f++c12f++c14f
  f=ggf++fgg++g++f--ff|ff++f+fg++ggg
  g=ggg
  }

tr30124# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 124th 3x3 triangular HTile, 116th dust
  Axiom c9f++c12f++c14f
  f=fff++ggg++g++f--ff|ff++f+gg++ggg
  g=ggg
  }

tr30126# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 126th 3x3 triangular HTile, 118th dust
  Axiom c9f++c12f++c14f
  f=fgg++gff++g++f--ff|ff++f+gg++ggg
  g=ggg
  }

tr30127# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 127th 3x3 triangular HTile, 119th dust
  Axiom c9f++c12f++c14f
  f=gfg++fgf++g++f--ff|ff++f+gg++ggg
  g=ggg
  }

tr30128# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 128th 3x3 triangular HTile, 120th dust
  Axiom c9f++c12f++c14f
  f=ggf++ffg++g++f--ff|ff++f+gg++ggg
  g=ggg
  }

tr30129# { ; Anthony Hanmer 19/10/2002
  Angle 6 ; 129th 3x3 triangular HTile, 121st dust
  Axiom c9f++c12f++c14f
  f=gff++fgg++g++f--ff|ff++f+gg++ggg
  g=ggg
  }

tr30132# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 132nd 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+ff++fgg++ggg++ggg
  g=ggg
  }

tr30133# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 133rd 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+ff++ggg++fgg++ggg
  g=ggg
  }

tr30134# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 134th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+gf++gfg++ggg++ggg
  g=ggg
  }

tr30135# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 135th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+gf++ggg++gfg++ggg
  g=ggg
  }

tr30136# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 136th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+fg++fgf++ggg++ggg
  g=ggg
  }

tr30137# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 137th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+fg++ggg++fgf++ggg
  g=ggg
  }

tr30138# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 138 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+fg++ggf++ggg++ggg
  g=ggg
  }

tr30139# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 139th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+fg++ggg++ggf++ggg
  g=ggg
  }

tr30140# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 140th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f|f++f--f|f++f++ff++fgg++ggg++ggg
  g=ggg
  }

tr30141# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 141th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f|f++f--f|f++f++ff++ggg++fgg++ggg
  g=ggg
  }

tr30142# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 142nd 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++f--f|f++f++gf++gfg++ggg++ggg
  g=ggg
  }

tr30143# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 143rd 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++f--f|f++f++gf++ggg++gfg++ggg
  g=ggg
  }

tr30144# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 144th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++f--f|f++f++fg++ggf++ggg++ggg
  g=ggg
  }

tr30145# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 145th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++f--f|f++f++fg++ggg++ggf++ggg
  g=ggg
  }

tr30145a { ; Anthony Hanmer 31/3/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs,
  ; now shown to be another's rotation
  Axiom c9f++c12f++c14f
  f=ggg++f++f|f++f--f|f++f++fg++ggg++ggf++ggg++ggg++ggg
  g=ggg
  }

tr30145b { ; Anthony Hanmer 31/3/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs,
  ; now shown to be another's rotation
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f++f|f++f--f|f++f++fg++ggg++ggf++ggg++ggg
  g=ggg
  }

tr30146# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 146th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f|f++f--f|f++f++fg++fgf++ggg++ggg
  g=ggg
  }

tr30147# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 147th 3x3 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=g++f|f++f--f|f++f++fg++ggg++fgf++ggg
  g=ggg
  }

tr30148# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 148th 3x3 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f|f++f--f|f++f++gg++fff++ggg++ggg
  g=ggg
  }

tr30149# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 149th 3x3 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f|f++f--f|f++f++gg++ggg++fff++ggg
  g=ggg
  }

tr30150# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 150th 3x3 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+gg++fgf++gfg++ggg
  g=ggg
  }

tr30151# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 151st 3x3 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+gg++gfg++fgf++ggg
  g=ggg
  }

tr30152# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 152nd 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  ; beautiful X-axis rotational symmetry
  Axiom c9f++c12f++c14f
  f=g+f--f|f++f++fg++gg+f|f++f++fgg++ggg
  g=ggg
  }

tr30153# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 153rd 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g+f--f|f++f++gg++gf+f|f++f++fgg++ggg
  g=ggg
  }

tr30154# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 154th 3x3 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g+f--f|f++f++gg++ff+f|f++f++ggg++ggg
  g=ggg
  }

tr30155# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 155th 3x3 triangular HTile, dust
  ; Identical to tr30067
  Axiom c9f++c12f++c14f
  f=gfg++gg+f++f++f|f--f--f++f++fgg++ggg
  g=ggg
  }

tr30156* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 156th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|g++ff|gg++ff++g++g|f++gg|ff++gg++ggg++ggg
  g=ggg
  }

tr30157* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 157th 3x3 triangular HTile
  ; 30156, 1 position around
  Axiom c9f++c12f++c14f
  f=f++f|g++ff|gg++ff++ggg++g++g|f++gg|ff++gg++ggg
  g=ggg
  }

tr30158^ { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 158th 3x3 triangular HTile (sf)
  Axiom f
  f=f+ff|gg++f+f|g++f++g+gg|ff++g+g|f++g++ggg++ggg
  g=ggg
  }

tr30158a { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 158th 3x3 triangular HTile (sf)
  Axiom f ; Colour 1
  f=>1f+ff|gg++f+f|g++f++g+gg|ff++g+g|<1f++g++ggg++ggg
  g=ggg
  }

tr30159* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 159th 3x3 triangular HTile
  ; One of my VERY best HTs
  ; (30158, 1 position around)
  Axiom c9f++c12f++c14f
  f=f+ff|gg++f+f|g++f++ggg++g+gg|ff++g+g|f++g++ggg
  g=ggg
  }

tr30160* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 160th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+ff++f|g--gg++ff++g+gg++g|f--ff++gg++ggg++ggg
  g=ggg
  }

tr30161* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 160th 3x3 triangular HTile
  ; 30160, 1 position around
  Axiom c9f++c12f++c14f
  f=f+ff++f|g--gg++ff++ggg++g+gg++g|f--ff++gg++ggg
  g=ggg
  }

tr30162* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 162nd 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+fg++f|g--g+f|g++g++ff++g+gg++g|f--g+g|f++f++gg++ggg++ggg
  g=ggg
  }

tr30163* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 163rd 3x3 triangular HTile
  ; 30162, 1-sided line variation
  Axiom c9f++c12f++c14f
  f=f+fg++g|f--g+f|g++g++ff++g+gg++f|g--g+g|f++f++gg++ggg++ggg
  g=ggg
  }

tr30164* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 164th 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+fg++f|g--g+f|g++g++gf++g+gg++g|f--g+g|f++f++fg++ggg++ggg
  g=ggg
  }

tr30165* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 165th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+gf++f++f|g--g--gg++ff++g+gg++g++g|f--f--fg++gg++ggg++ggg
  g=ggg
  }

tr30166* { ; Anthony Hanmer 14/11/2002
  Angle 6 ; 166th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+gf++f++f|g--g--gg++gf++g+gg++g++g|f--f--fg++fg++ggg++ggg
  g=ggg
  }

tr30167* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 167th 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f+ff++g++f--f--f++gg++ggg++ggg
  g=ggg
  }

tr30168* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 167th 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+g++f++f+ff++g++f--f--f++gg++g+f++g++g+gg++ggg
  g=ggg
  }

tr30169* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 169th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+f++g++f+ff++g++f--f--f++gg++g+g++f++g+gg++ggg
  g=ggg
  }

tr30170* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 170th 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++g+ff++g++f--f--f++gg++g+g++g++f+gg++ggg
  g=ggg
  }

tr30171* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 171st 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+g++g++f+ff++g++f--f--f++gg++g+f++f++g+gg++ggg
  g=ggg
  }

tr30172* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 172nd 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+g++f++g+ff++g++f--f--f++gg++g+f++g++f+gg++ggg
  g=ggg
  }

tr30173* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 173rd 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+f++g++g+ff++g++f--f--f++gg++g+g++f++f+gg++ggg
  g=ggg
  }

tr30174* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 174th 3x3 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ff++f++f--f|g+gf++g++g|f++f--f--g|gg++ggg++ggg
  g=ggg
  }

tr30175* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 175th 3x3 triangular HTile
  ; 30174, 1 position around
  Axiom c9f++c12f++c14f
  f=ff++f++f--f|g+gf++ggg++g++g|f++f--f--g|gg++ggg
  g=ggg
  }

tr30176* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 176th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++g++f--f|g+gf++g++g|f++f--f--g|gg++gg++f++g--g|g+gg++ggg
  g=ggg
  }

tr30177* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 177th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++f++g--f|g+gf++g++g|f++f--f--g|gg++gg++g++f--g|g+gg++ggg
  g=ggg
  }

tr30178 { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 178th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++f++f--g|g+gf++g++g|f++f--f--g|gg++gg++g++g--f|g+gg++ggg
  g=ggg
  }

tr30179* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 179th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++g++g--f|g+gf++g++g|f++f--f--g|gg++gg++f++f--g|g+gg++ggg
  g=ggg
  }

tr30180* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 180th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++f++g--g|g+gf++g++g|f++f--f--g|gg++gg++g++f--f|g+gg++ggg
  g=ggg
  }

tr30181* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 181st 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++g++f--g|g+gf++g++g|f++f--f--g|gg++gg++f++g--f|g+gg++ggg
  g=ggg
  }

tr30182* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 182nd 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ff+g++ff++f+gf++g++f--ff|g+g++gg++ggg++ggg
  g=ggg
  }

tr30183* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 183rd 3x3 triangular HTile
  ; 30182, 1 position around
  Axiom c9f++c12f++c14f
  f=ff+g++ff++f+gf++ggg++g++f--ff|g+g++gg++ggg
  g=ggg
  }

tr30184* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 184th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff+g++gf++f+gf++g++f--ff|g+g++gg++gg+g++fg++g+gg++ggg
  g=ggg
  }

tr30185* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 185th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff+g++fg++f+gf++g++f--ff|g+g++gg++gg+g++gf++g+gg++ggg
  g=ggg
  }

tr30186* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 186th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff+g++ff++g+gf++g++f--ff|g+g++gg++gg+g++gg++f+gg++ggg
  g=ggg
  }

tr30187* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 187th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff+g++gg++f+gf++g++f--ff|g+g++gg++gg+g++ff++g+gg++ggg
  g=ggg
  }

tr30188* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 188th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff+g++fg++g+gf++g++f--ff|g+g++gg++gg+g++gf++f+gg++ggg
  g=ggg
  }

tr30189* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 189th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff+g++gf++g+gf++g++f--ff|g+g++gg++gg+g++fg++f+gg++ggg
  g=ggg
  }

tr30190* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 190th 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f++f|g-g++ff++gg++gg|f--f++f+gg++ggg++ggg
  g=ggg
  }

tr30191* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 191st 3x3 triangular HTile
  ; 30190, 1 position around
  Axiom c9f++c12f++c14f
  f=f++f--f++f|g-g++ff++ggg++gg++gg|f--f++f+gg++ggg
  g=ggg
  }

tr30192* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 192nd 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++g--f++f|g-g++ff++gg++gg|f--f++f+gg++g++f--g++g|g-g++gg++ggg
  g=ggg
  }

tr30193* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 193rd 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f--g++f|g-g++ff++gg++gg|f--f++f+gg++g++g--f++g|g-g++gg++ggg
  g=ggg
  }

tr30194* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 194th 3x3 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f++g|g-g++ff++gg++gg|f--f++f+gg++g++g--g++f|g-g++gg++ggg
  g=ggg
  }

tr30195* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 195th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++g--g++f|g-g++ff++gg++gg|f--f++f+gg++g++f--f++g|g-g++gg++ggg
  g=ggg
  }

tr30196* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 196th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f--g++g|g-g++ff++gg++gg|f--f++f+gg++g++g--f++f|g-g++gg++ggg
  g=ggg
  }

tr30197* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 197th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++g--f++g|g-g++ff++gg++gg|f--f++f+gg++g++f--g++f|g-g++gg++ggg
  g=ggg
  }

tr30198* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 198th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+ff|gg++g+f|g++g++g+gg|ff++f+g|f++g++ggf++ggg
  g=ggg
  }

tr30199* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 199th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+gg|ff++f+f|g++f++g+ff|gg++g+g|f++g++ggg++ggg
  g=ggg
  }

tr30200* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 200th 3x3 triangular HTile...
  Axiom c9f++c12f++c14f
  f=f+gg|ff++f+g|f++f++g+ff|gg++g+f|g++g++ggg++ggg
  g=ggg
  }

tr30201* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 201st 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+ff|gg++f+g|f++f++g+gg|ff++g+f|g++g++ggg++ggg
  g=ggg
  }

tr30202* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 202nd 3x3 triangular HTile
  ; 30199, 1 position around
  Axiom c9f++c12f++c14f
  f=f+gg|ff++f+f|g++f++ggg++g+ff|gg++g+g|f++g++ggg
  g=ggg
  }

tr30203* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 203rd 3x3 triangular HTile
  ; 30200, 1 position around
  Axiom c9f++c12f++c14f
  f=g+gg|ff++f+g|f++f++ggg++f+ff|gg++g+f|g++g++ggg
  g=ggg
  }

tr30204* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 204th 3x3 triangular HTile
  ; 30201, 1 position around
  Axiom c9f++c12f++c14f
  f=f+ff|gg++g+g|f++f++gfg++g+gg|ff++g+f|g++g++ggg
  g=ggg
  }

tr30205* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 205th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+f++f|g--g++f+f|g++f++g+g++g|f--f++g+g|f++g++ggg++ggg
  g=ggg
  }

tr30206* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 206th 3x3 triangular HTile
  ; 30205, 1 position around
  Axiom c9f++c12f++c14f
  f=f+f++f|g--g++f+f|g++f++ggg++g+g++g|f--f++g+g|f++g++ggg
  g=ggg
  }

tr30207* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 207th 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+g++f|g--f++f+f|g++f++g+f++g|f--g++g+g|f++g++ggg++ggg
  g=ggg
  }

tr30208* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 208th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+f++g|f--g++g+f|g++f++g+g++f|g--f++g+g|f++g++gfg++ggg
  g=ggg
  }

tr30209* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 209th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+f++f|g--g++g+g|f++f++g+g++g|f--f++g+f|g++g++gfg++ggg
  g=ggg
  }

tr30210* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 210th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+g++g|f--f++f+f|g++f++g+f++f|g--g++g+g|f++g++ggg++ggg
  g=ggg
  }

tr30211* { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 211th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+f++g|f--g++f+g|f++f++g+g++f|g--f++g+f|g++g++ggg++ggg
  g=ggg
  }

tr30212# { ; Anthony Hanmer 15/11/2002
  Angle 6 ; 212th 3x3 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+g++f|g--f++f+g|f++f++g+f++g|f--g++g+f|g++g++ggg++ggg
  g=ggg
  }

tr30213* { ; Anthony Hanmer 16/11/2002
  Angle 6 ; 213th 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++g--f++f--f--gg++ff++g+gg++f++f--f++g+gg++ggg++ggg
  g=ggg
  }

tr30214* { ; Anthony Hanmer 16/11/2002
  Angle 6 ; 214th 3x3 triangular HTile
  ; 30213, 1 position around
  Axiom c9f++c12f++c14f
  f=f++g--f++f--f--gg++ff++ggg++g+gg++f++f--f++g+gg++ggg
  g=ggg
  }

tr30215* { ; Anthony Hanmer 16/11/2002
  Angle 6 ; 215th 3x3 triangular HTile
  ; 30213, 1-sided line variation
  Axiom c9f++c12f++c14f
  f=f++g--f++f--g--gg++ff++g+gg++f++f--f++g+gg++g++g--g++g--f--gg++gg++ggg
  g=ggg
  }

tr30216* { ; Anthony Hanmer 16/11/2002
  Angle 6 ; 216th 3x3 triangular HTile
  ; 30213, 1-sided line variation
  Axiom c9f++c12f++c14f
  f=f++g--g++g--f--gg++ff++g+gg++f++f--f++g+gg++g++g--f++f--g--gg++gg++ggg
  g=ggg
  }

tr30217* { ; Anthony Hanmer 16/11/2002
  Angle 6 ; 217th 3x3 triangular HTile
  ; 30213, 1-sided line variation
  Axiom c9f++c12f++c14f
  f=f++g--f++g--g--gg++ff++g+gg++f++f--f++g+gg++g++g--g++f--f--gg++gg++ggg
  g=ggg
  }

tr30218# { ; Anthony Hanmer 23/5/2003
  Angle 6 ; 218th 3x3 triangular HTile, dust
  ; [What's wrong with this one?!]
  ; At LAST, 1-sided interiors for side length >2!
  ; The standard 1-s key:  fs on 1 side, gs on the *other*,
  ; opposing directions.  Also:  spread these over 3 or 4 sides,
  ; not just 2; or make them partially 1-sided, not fully.
  Axiom c9f++c12f++c14f
  f=f++f|g++ff|gg++ff++g+gg|ff++gg++g++g|f+gg+ggg
  g=ggg
  }

tr30219# { ; Anthony Hanmer 23/5/2003
  Angle 6 ; 219th 3x3 triangular HTile, dust
  ; 1-sided interior, divided between 3 sides
  Axiom c9f++c12f++c14f
  f=f++f|g++gf|gf++ff++g+fg|fg++gg++g++g|f+gg++ggg
  g=ggg
  }

tr30220# { ; Anthony Hanmer 23/5/2003
  Angle 6 ; 220th 3x3 triangular HTile, dust
  ; 1-sided interior, divided between 3 sides
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f|g++gf|fg++ff++g+fg|gf++gg++g++g|f+gg++ggg
  g=ggg
  }

tr30221* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 221st 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f|g--g++f+f|g--f--f--g++f++ggg++gg+g|f++g++ggg
  g=ggg
  }

tr30222* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 222nd 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f|g--g++f+f|f--f--f--g++f++ggg++ggg++ggg
  g=ggg
  }

tr30223* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 223rd 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=f+f++f|g--g++f+g|g--f--f--g++f++ggg++gg+f|f++g++ggg
  g=ggg
  }

tr30224* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 224th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|g--f--f++f+g|f++f++ggg++ggg++ggg
  g=ggg
  }

tr30224a { ; Anthony Hanmer 31/3/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=ggg++f+f++f++f|g--f--f++f+g|f++f++ggg++ggg++ggg++ggg++ggg
  g=ggg
  }

tr30224b { ; Anthony Hanmer 31/3/2003
  Angle 6 ; 240-degree rotation
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f+f++f++f|g--f--f++f+g|f++f++ggg++ggg++ggg++ggg
  g=ggg
  }

tr30225* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 225th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--g--f++ff++g+g++g++g|g--f--g++gg++ggg++ggg
  g=ggg
  }

tr30225a { ; Anthony Hanmer 31/3/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=ggg++f+f++f++f|f--g--f++ff++g+g++g++g|g--f--g++gg++ggg++ggg++ggg++ggg
  g=ggg
  }

tr30225b { ; Anthony Hanmer 31/3/2003
  Angle 6 ; 240-degree rotation
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f+f++f++f|f--g--f++ff++g+g++g++g|g--f--g++gg++ggg++ggg++ggg
  g=ggg
  }

tr30226* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 226th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--f--g++ff++g+g++g++g|g--g--f++gg++ggg++ggg
  g=ggg
  }

tr30227* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 227th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|g--f--f++ff++gg+g|f++g++ggg++ggg
  g=ggg
  }

tr30228* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 228th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|g--f--g++ff++g+g++g++g|f--g--f++gg++ggg++ggg
  g=ggg
  }

tr30229* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 229th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++ff++f+g++g++g|g--f--g++gg++ggg++ggg
  g=ggg
  }

tr30230* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 230th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++ff++g+g++g++g|g--f--g++gg++fgg++ggg
  g=ggg
  }

tr30231* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 231st 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--g--f++gf++g+g++g++g|g--f--g++fg++ggg++ggg
  g=ggg
  }

tr30232* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 232nd 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--g--f++gf++g+g++g++g|g--f--g++gg++gfg++ggg
  g=ggg
  }

tr30233* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 233rd 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--g--f++fg++g+g++g++g|g--f--g++gf++ggg++ggg
  g=ggg
  }

tr30234* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 234th 3x3 triangular HTile
  ; 1-sided interior
  ; A perfectly orthodox triangular tile, at last
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--g--f++fg++g+g++g++g|g--f--g++gg++ggf++ggg
  g=ggg
  }

tr30234k { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 234th 3x3 triangular HTile
  ; 1-sided interior
  ; A perfectly orthodox triangular tile, at last; colour 1
  Axiom f
  f=>1f+f++f++f|f--g--f++fg++g+g++g++g|g--f--g++gg++gg<1f++ggg
  g=ggg
  }

tr30234a { ; Anthony Hanmer 31/3/2003
  Angle 6 ; 120-degree rotation
  ; Invariant under rotation!
  Axiom c9f++c12f++c14f
  f=ggg++f+f++f++f|f--g--f++fg++g+g++g++g|g--f--g++gg++ggf++ggg++ggg++ggg
  g=ggg
  }

tr30234b { ; Anthony Hanmer 31/3/2003
  Angle 6 ; 240-degree rotation
  ; Invariant under rotation!
  Axiom c9f++c12f++c14f
  f=ggg++ggg++f+f++f++f|f--g--f++fg++g+g++g++g|g--f--g++gg++ggf++ggg++ggg
  g=ggg
  }

tr30235* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 235th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++gg++g+g++g++g|g--f--g++fg++fgf++ggg
  g=ggg
  }

tr30236* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 236th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++gg++g+g++g++g|g--f--g++gg++fff++ggg
  g=ggg
  }

tr30237* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 237th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--g--f++gg++g+g++g++g|g--f--g++gg++gff++ggg
  g=ggg
  }

tr30238* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 238th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++gf++g+g++g++g|g--f--g++gg++ffg++ggg
  g=ggg
  }

tr30239* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 239th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++gg++f+g++g++g|g--f--g++fg++ggf++ggg
  g=ggg
  }

tr30240* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 240th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++gg++f+g++g++g|g--f--g++gg++gff++ggg
  g=ggg
  }

tr30241* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 241st 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++gg++f+g++g++g|g--f--g++ff++ggg++ggg
  g=ggg
  }

tr30242* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 242nd 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=g+f++f++f|f--g--f++gg++g+g++g++g|g--f--g++gg++fff++ggg
  g=ggg
  }

tr30243* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 243rd 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=g++f|g++f--f|g++g++fg++g++g|f++g--g|f++f++gg++fgf++ggg
  g=ggg
  }

tr30244* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 244th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|g++f--f|g++g++fg++g++g|f++g--g|f++f++gg++ggf++ggg
  g=ggg
  }

tr30245* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 245th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=g++f|g++f--f|g++g++ff++g++g|f++g--g|f++f++gg++fgg++ggg
  g=ggg
  }

tr30246* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 246th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=f++f|g++f--f|g++g++gf++g++g|f++g--g|f++f++gg++gfg++ggg
  g=ggg
  }

tr30247* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 247th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|g++f--f|g++g++gg++g++g|f++g--g|f++f++gg++gff++ggg
  g=ggg
  }

tr30248* { ; Anthony Hanmer 24/5/2003
  Angle 6 ; 248th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|g++ff|gg++FF++G++g|f++gg|ff++GG++GGG++GGG
  g=ggg
  }

tr30249* { ; Anthony Hanmer 25/5/2003
  Angle 6 ; 249th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|f++gg|ff++FF++G++f|g++ff|gg++GG++GGG++GGG
  g=ggg
  }

tr30250* { ; Anthony Hanmer 25/5/2003
  Angle 6 ; 250th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|g++gg|ff++FF++G++g|f++ff|gg++GG++GGG++GGG
  g=ggg
  }

tr30251* { ; Anthony Hanmer 25/5/2003
  Angle 6 ; 251st 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|f++ff|gg++FF++G++f|g++gg|ff++GG++GGG++GGG
  g=ggg
  }

tr30252* { ; Anthony Hanmer 26/5/2003
  Angle 6 ; 252nd 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=GFG++GGF++F++f--f--f|g++f++f+GG++G+f|g++GG
  g=ggg
  }

tr30253* { ; Anthony Hanmer 26/5/2003
  Angle 6 ; 253rd 3x3 triangular HTile
  Axiom c9f++c12f++c14f
  f=GFG++GGF++F++g--f--f|f++f++f+GG++G++f|g+GG
  g=ggg
  }

tr30254* { ; Anthony Hanmer 26/5/2003
  Angle 6 ; 254th 3x3 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=GFG++GGF++F++f--f--f|f++f++g+GG++G++g|f+GG
  g=ggg
  }

tr30255* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 255th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G+f++f++f|f--f--g++FF++F+g++g++g|g--g--f++GG++GGG++GGG
  g=ggg
  }

tr30256* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 256th 3x3 triangular HTile
  ; One of my VERY best HTs
  ; 1-sided interior
  ; X-axis rotational symmetry
  Axiom c9f++c12f++c14f
  f=F+f++f++f|f--f--g++FG++G+g++g++g|g--g--f++GG++GGF++GGG
  g=ggg
  }

tr30257* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 257th 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G+f++f++f|f--f--g++FG++F+g++g++g|g--g--f++GG++GGF++GGG
  g=ggg
  }

tr30258* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 258th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+g++f++f|f--f--f++FF++G+f++g++g|g--g--g++GG++GGG++GGG
  g=ggg
  }

tr30259* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 259th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+g++f++f|f--f--f++FF++F+f++g++g|g--g--g++GG++GGG++GGG
  g=ggg
  }

tr30260* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 260th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+g++f++f|f--f--f++FG++G+f++g++g|g--g--g++GG++GGF++GGG
  g=ggg
  }

tr30261* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 261st 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G+g++f++f|f--f--f++FG++F+f++g++g|g--g--g++GG++GGF++GGG
  g=ggg
  }

tr30262* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 262nd 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+f++g++f|f--f--f++FF++G+g++f++g|g--g--g++GG++GGG++GGG
  g=ggg
  }

tr30263* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 263rd 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+f++f++g|f--f--f++FF++G+g++g++f|g--g--g++GG++GGG++GGG
  g=ggg
  }

tr30264* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 264th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=G+f++g++f|f--f--f++FF++F+g++f++g|g--g--g++GG++GGG++GGG
  g=ggg
  }

tr30265* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 265th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+f++g++f|f--f--f++FG++G+g++f++g|g--g--g++GG++GGF++GGG
  g=ggg
  }

tr30266* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 266th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+f++f++g|f--f--f++FF++F+g++g++f|g--g--g++GG++GGG++GGG
  g=ggg
  }

tr30267* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 267th 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f++g|f--f--f++FG++G+g++g++f|g--g--g++GG++GGF++GGG
  g=ggg
  }

tr30268* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G++f|g++gf|fg++FF++F+fg|gf++GG++g++g|f+GG++GGG
  g=ggg
  }

tr30269* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++gf|fg++FG++G+fg|gf++GG++g++g|f+GF++GGG
  g=ggg
  }

tr30270* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+f++f|g--g++F+f|f--f--f--g++F++FGG++GGG++GGG
  g=ggg
  }

tr30271* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|g--g++F+f|f--f--f--g++G++GGG++GGF++GGG
  g=ggg
  }

tr30272* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+f++f|g--g++F+g|g--f--f--g++F++FGG++GG+f|f++G++GGG
  g=ggg
  }

tr30273* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|g--g++F+g|g--f--f--g++G++GGG++GG+f|f++F++GGG
  g=ggg
  }

tr30274* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=G+f++f++f|g--f--f++F+g|f++F++FGG++GGG++GGG
  g=ggg
  }

tr30275* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f++f|g--f--f++F+g|f++G++GGG++GGF++GGG
  g=ggg
  }

tr30276* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=G+f++f++f|g--f--g++FF++F+g++g++g|f--g--f++GG++GGG++GGG
  g=ggg
  }

tr30277* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f++f|g--f--g++FG++G+g++g++g|f--g--f++GG++GGF++GGG
  g=ggg
  }

tr30278* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G++f|g++f--f|g++g++FG++G++g|f++g--g|f++f++GG++FGF++GGG
  g=ggg
  }

tr30279* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G++f|g++f--f|g++g++GG++G++g|f++g--g|f++f++GG++FFF++GGG
  g=ggg
  }

tr30280* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+f++f|f--f++F+f|g++F++G+g++g|g--g++G+g|f++G++GGG++GGG
  g=ggg
  }

tr30281* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f|f--f++F+g|f++F++G+g++g|g--g++G+f|g++G++GGG++GGG
  g=ggg
  }

tr30282* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|g--f++F+f|f++F++G+g++g|f--g++G+g|g++G++GGG++GGG
  g=ggg
  }

tr30283* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+f++g|f--f++F+f|f++F++G+g++f|g--g++G+g|g++G++GGG++GGG
  g=ggg
  }

tr30284* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f|f--g++F+f|f++F++G+g++g|g--f++G+g|g++G++GGG++GGG
  g=ggg
  }

tr30285* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+g++f|f--f++F+f|f++F++G+f++g|g--g++G+g|g++G++GGG++GGG
  g=ggg
  }

tr30286* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|g--f++F+f|g++F++G+g++g|f--g++G+g|f++G++GGG++GGG
  g=ggg
  }

tr30287* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+f++g|f--f++F+f|g++F++G+g++f|g--g++G+g|f++G++GGG++GGG
  g=ggg
  }

tr30288* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+g++f|f--f++F+f|g++F++G+f++g|g--g++G+g|f++G++GGG++GGG
  g=ggg
  }

tr30289* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|g--f++F+g|f++F++G+g++g|f--g++G+f|g++G++GGG++GGG
  g=ggg
  }

tr30290* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+f++g|f--f++F+g|f++F++G+g++f|g--g++G+f|g++G++GGG++GGG
  g=ggg
  }

tr30291* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f|f--g++F+g|f++F++G+g++g|g--f++G+f|g++G++GGG++GGG
  g=ggg
  }

tr30292* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+g++f|f--f++F+g|f++F++G+f++g|g--g++G+f|g++G++GGG++GGG
  g=ggg
  }

tr30293* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|g--g++F+f|f++F++G+g++g|f--f++G+g|g++G++GGG++GGG
  g=ggg
  }

tr30294* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+f++g|f--g++F+f|f++F++G+g++f|g--f++G+g|g++G++GGG++GGG
  g=ggg
  }

tr30295* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+g++f|f--g++F+f|f++F++G+f++g|g--f++G+g|g++G++GGG++GGG
  g=ggg
  }

tr30296* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+g++g|f--f++F+f|f++F++G+f++f|g--g++G+g|g++G++GGG++GGG
  g=ggg
  }

tr30297* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|f--f++F+f|g++G++G+g++g|g--g++G+g|f++G++GGF++GGG
  g=ggg
  }

tr30298* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f|f--f++F+g|f++G++G+g++g|g--g++G+f|g++G++GGF++GGG
  g=ggg
  }

tr30299* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|g--f++F+f|f++G++G+g++g|f--g++G+g|g++G++GGF++GGG
  g=ggg
  }

tr30300* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+f++g|f--f++F+f|f++G++G+g++f|g--g++G+g|g++G++GGF++GGG
  g=ggg
  }

tr30301* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f|f--g++F+f|f++G++G+g++g|g--f++G+g|g++G++GGF++GGG
  g=ggg
  }

tr30302* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+g++f|f--f++F+f|f++G++G+f++g|g--g++G+g|g++G++GGF++GGG
  g=ggg
  }

tr30303* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f|g--f++F+f|g++G++G+g++g|f--g++G+g|f++G++GGF++GGG
  g=ggg
  }

tr30304* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++g|f--f++F+f|g++G++G+g++f|g--g++G+g|f++G++GGF++GGG
  g=ggg
  }

tr30305* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+g++f|f--f++F+f|g++G++G+f++g|g--g++G+g|f++G++GGF++GGG
  g=ggg
  }

tr30306* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f|g--f++F+g|f++G++G+g++g|f--g++G+f|g++G++GGF++GGG
  g=ggg
  }

tr30307* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++g|f--f++F+g|f++G++G+g++f|g--g++G+f|g++G++GGF++GGG
  g=ggg
  }

tr30308* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f|f--g++F+g|f++G++G+g++g|g--f++G+f|g++G++GGF++GGG
  g=ggg
  }

tr30309* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+g++f|f--f++F+g|f++G++G+f++g|g--g++G+f|g++G++GGF++GGG
  g=ggg
  }

tr30310* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f|g--g++F+f|f++G++G+g++g|f--f++G+g|g++G++GGF++GGG
  g=ggg
  }

tr30311* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++g|f--g++F+f|f++G++G+g++f|g--f++G+g|g++G++GGF++GGG
  g=ggg
  }

tr30312* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+g++f|f--g++F+f|f++G++G+f++g|g--f++G+g|g++G++GGF++GGG
  g=ggg
  }

tr30313* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+g++g|f--f++F+f|f++G++G+f++f|g--g++G+g|g++G++GGF++GGG
  g=ggg
  }

tr30314* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|fg++FF++G++g|g++gg|gf++GG++GGG++GGG
  g=ggg
  }

tr30315* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f++gf|ff++FF++G++g|g++fg|gg++GG++GGG++GGG
  g=ggg
  }

tr30316* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|gf++FF++G++g|g++gg|fg++GG++GGG++GGG
  g=ggg
  }

tr30317* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++fg|ff++FF++G++g|g++gf|gg++GG++GGG++GGG
  g=ggg
  }

tr30318* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|gg++FF++G++g|g++gg|ff++GG++GGG++GGG
  g=ggg
  }

tr30319* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f++gg|ff++FF++G++g|g++ff|gg++GG++GGG++GGG
  g=ggg
  }

tr30320* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++fg|gf++FF++G++g|g++gf|fg++GG++GGG++GGG
  g=ggg
  }

tr30321* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f++gf|fg++FF++G++g|g++fg|gf++GG++GGG++GGG
  g=ggg
  }

tr30322* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f++fg|fg++FF++G++g|g++gf|gf++GG++GGG++GGG
  g=ggg
  }

tr30323* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f++gf|gf++FF++G++g|g++fg|fg++GG++GGG++GGG
  g=ggg
  }

tr30324* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|g++ff|ff++FF++G++g|f++gg|gg++GG++GGG++GGG
  g=ggg
  }

tr30325* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f++ff|ff++FF++G++f|g++gg|gg++GG++GGG++GGG
  g=ggg
  }

tr30326* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|fg++FG++G++g|g++gg|gf++GG++GGF++GGG
  g=ggg
  }

tr30327* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++gf|ff++FG++G++g|g++fg|gg++GG++GGF++GGG
  g=ggg
  }

tr30328* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|gf++FG++G++g|g++gg|fg++GG++GGF++GGG
  g=ggg
  }

tr30329* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G++f|f++fg|ff++FG++F++g|g++gf|gg++GG++GGF++GGG
  g=ggg
  }

tr30330* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|gg++FG++G++g|g++gg|ff++GG++GGF++GGG
  g=ggg
  }

tr30331* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++gg|ff++FG++G++g|g++ff|gg++GG++GGF++GGG
  g=ggg
  }

tr30332* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G++f|f++fg|gf++FG++F++g|g++gf|fg++GG++GGF++GGG
  g=ggg
  }

tr30333* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++gf|fg++FG++G++g|g++fg|gf++GG++GGF++GGG
  g=ggg
  }

tr30334* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f++fg|fg++FG++G++g|g++gf|gf++GG++GGF++GGG
  g=ggg
  }

tr30335* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++gf|gf++FG++G++g|g++fg|fg++GG++GGF++GGG
  g=ggg
  }

tr30336* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++ff|ff++FG++G++g|f++gg|gg++GG++GGF++GGG
  g=ggg
  }

tr30337* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f++ff|ff++FG++G++f|g++gg|gg++GG++GGF++GGG
  g=ggg
  }

tr30338* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G++f|f++fg|fg++FG++F++g|g++gf|gf++GG++GGF++GGG
  g=ggg
  }

tr30339* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f--f|f++f++FF++G++g|f++g--g|g++g++GG++GGG++GGG
  g=ggg
  }

tr30340* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f++f--f|f++f++FF++G++f|g++g--g|g++g++GG++GGG++GGG
  g=ggg
  }

tr30341* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++f--f|f++g++FF++G++g|g++g--g|g++f++GG++GGG++GGG
  g=ggg
  }

tr30342* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++g--f|f++f++FF++G++g|g++f--g|g++g++GG++GGG++GGG
  g=ggg
  }

tr30343* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++f--f|g++f++FF++G++g|g++g--g|f++g++GG++GGG++GGG
  g=ggg
  }

tr30344* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++f--g|f++f++FF++G++g|g++g--f|g++g++GG++GGG++GGG
  g=ggg
  }

tr30345* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f--f|f++g++FF++G++g|f++g--g|g++f++GG++GGG++GGG
  g=ggg
  }

tr30346* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f++f--f|f++g++FF++G++f|g++g--g|g++f++GG++GGG++GGG
  g=ggg
  }

tr30347* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f++f--f|g++g++FF++G++g|g++g--g|f++f++GG++GGG++GGG
  g=ggg
  }

tr30348* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++g--f|g++f++FF++G++g|g++f--g|f++g++GG++GGG++GGG
  g=ggg
  }

tr30349* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f--f|g++f++FF++G++g|f++g--g|f++g++GG++GGG++GGG
  g=ggg
  }

tr30350* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f--g|f++f++FF++G++g|f++g--f|g++g++GG++GGG++GGG
  g=ggg
  }

tr30351* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f--f|f++f++FG++G++g|f++g--g|g++g++GG++GGF++GGG
  g=ggg
  }

tr30352* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f++f--f|f++f++FG++G++f|g++g--g|g++g++GG++GGF++GGG
  g=ggg
  }

tr30353* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++f--f|f++g++FG++G++g|g++g--g|g++f++GG++GGF++GGG
  g=ggg
  }

tr30354* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++g--f|f++f++FG++G++g|g++f--g|g++g++GG++GGF++GGG
  g=ggg
  }

tr30355* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++f--f|g++f++FG++G++g|g++g--g|f++g++GG++GGF++GGG
  g=ggg
  }

tr30356* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++f--g|f++f++FG++G++g|g++g--f|g++g++GG++GGF++GGG
  g=ggg
  }

tr30357* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f--f|f++g++FG++G++g|f++g--g|g++f++GG++GGF++GGG
  g=ggg
  }

tr30358* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|f++f--f|f++g++FG++G++f|g++g--g|g++f++GG++GGF++GGG
  g=ggg
  }

tr30359* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++f--f|g++g++FG++G++g|g++g--g|f++f++GG++GGF++GGG
  g=ggg
  }

tr30360* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++g--f|g++f++FG++G++g|g++f--g|f++g++GG++GGF++GGG
  g=ggg
  }

tr30361* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f--f|g++f++FG++G++g|f++g--g|f++g++GG++GGF++GGG
  g=ggg
  }

tr30362* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f--g|f++f++FG++G++g|f++g--f|g++g++GG++GGF++GGG
  g=ggg
  }

tr30363* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G++f|g++f--f|f++f++FF++F++g|f++g--g|g++g++GG++GGG++GGG
  g=ggg
  }

tr30364* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G++f|f++g--f|f++f++FG++F++g|g++f--g|g++g++GG++GGF++GGG
  g=ggg
  }

tr30365* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G++f|f++f--g|f++f++FF++F++g|g++g--f|g++g++GG++GGG++GGG
  g=ggg
  }

tr30366* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G++f|g++f--g|f++f++FF++F++g|f++g--f|g++g++GG++GGG++GGG
  g=ggg
  }

tr30367* { ; Anthony Hanmer 27/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G++f|f++g--f|f++f++FF++F++g|g++f--g|g++g++GG++GGG++GGG
  g=ggg
  }

tr30368* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+ff|gg++F+f|f++F++GGG++G+gg|ff++G+g|g++G++GGG
  g=ggg
  }

tr30369* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+gg|ff++F+f|f++F++GGG++G+ff|gg++G+g|g++G++GGG
  g=ggg
  }

tr30370* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+ff|ff++F+f|g++F++GGG++G+gg|gg++G+g|f++G++GGG
  g=ggg
  }

tr30371* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+ff|ff++F+g|f++F++GGG++G+gg|gg++G+f|g++G++GGG
  g=ggg
  }

tr30372* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+ff|gg++F+f|g++F++GGG++G+gg|ff++G+g|f++G++GGG
  g=ggg
  }

tr30373* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+gg|ff++F+g|f++F++GGG++G+ff|gg++G+f|g++G++GGG
  g=ggg
  }

tr30374* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+ff|gg++F+g|f++F++GGG++G+gg|ff++G+f|g++G++GGG
  g=ggg
  }

tr30375* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+gg|ff++F+f|g++F++GGG++G+ff|gg++G+g|f++G++GGG
  g=ggg
  }

tr30376* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+fg|gf++F+f|f++F++GGG++G+gf|fg++G+g|g++G++GGG
  g=ggg
  }

tr30377* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+fg|gf++F+f|g++F++G+gf|gg++G+g|g++G++G+gg|fg++G+g|f++G++GGG
  g=ggg
  }

tr30378* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+fg|gf++F+g|f++F++G+gf|gg++G+g|g++G++G+gg|fg++G+f|g++G++GGG
  g=ggg
  }

tr30379* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f|g++F++f|g++f|g++F++G+g|f++GG++GG++g|f+G++GGG
  g=ggg
  }

tr30380* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f|g++F++f|g++f|g++G++G+g|f++GG++GG++g|f+F++GGG
  g=ggg
  }

tr30381* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++g|f++F++f|g++f|g++F++G+f|g++GG++GG++g|f+G++GGG
  g=ggg
  }

tr30382* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++g|f++F++f|g++f|g++G++G+f|g++GG++GG++g|f+F++GGG
  g=ggg
  }

tr30383* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++g|f++F++g|f++f|g++F++G+f|g++GG++GG++f|g+G++GGG
  g=ggg
  }

tr30384* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++g|f++F++g|f++f|g++G++G+f|g++GG++GG++f|g+F++GGG
  g=ggg
  }

tr30385* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f|f++F++f|g++f|g++F++G+g|g++GG++GG++g|f+G++GGG
  g=ggg
  }

tr30386* { ; Anthony Hanmer 28/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++f|f++F++f|g++f|g++G++G+g|g++GG++GG++g|f+F++GGG
  g=ggg
  }

tr30387* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|f+G++fg|gf+F++G++f|g+G++gf|fg+G++GFG++GGG
  g=ggg
  }

tr30388* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g+G++fg|gf+F++G++g|f+G++gf|fg+G++GFG++GGG
  g=ggg
  }

tr30389* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g+G++fg|gf+G++G++g|f+G++gf|fg+G++GFF++GGG
  g=ggg
  }

tr30390* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|f+G++fg|gf+G++G++f|g+G++gf|fg+G++GFF++GGG
  g=ggg
  }

tr30391* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f+G++gf|gf+F++G++g|g+G++fg|fg+G++GFG++GGG
  g=ggg
  }

tr30392* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|g+G++gf|gf+F++G++g|f+G++fg|fg+G++GFG++GGG
  g=ggg
  }

tr30393* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|f+G++gf|gf+F++G++f|g+G++fg|fg+G++GFG++GGG
  g=ggg
  }

tr30394* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|g+G++gf|gf+F++G++f|f+G++fg|fg+G++GFG++GGG
  g=ggg
  }

tr30395* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g+G++gf|gf+G++G++g|f+G++fg|fg+G++GFF++GGG
  g=ggg
  }

tr30396* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f+G++gf|gf+G++G++f|g+G++fg|fg+G++GFF++GGG
  g=ggg
  }

tr30397* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|g+G++gf|gf+G++G++f|f+G++fg|fg+G++GFF++GGG
  g=ggg
  }

tr30398* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs:  WOW.
  Axiom c9f++c12f++c14f
  f=F++g|f+G++fg|gf+F++GGG++G++f|g+G++gf|fg+G++GFG
  g=ggg
  }

tr30399* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|g+G++fg|gf+F++GGG++G++g|f+G++gf|fg+G++GFG
  g=ggg
  }

tr30400* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f+G++gf|gf+F++GGG++G++g|g+G++fg|fg+G++GFG
  g=ggg
  }

tr30401* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|g+G++gf|gf+F++GGG++G++g|f+G++fg|fg+G++GFG
  g=ggg
  }

tr30402* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f+F++ff|gg+F++G++g|g+G++gg|fg+G++G++g|g+G++gg|gf+G++GGG
  g=ggg
  }

tr30403* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|f+F++gg|ff+F++G++g|g+G++fg|gg+G++G++g|g+G++gf|gg+G++GGG
  g=ggg
  }

tr30404* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f+F++fg|gf+F++G++g|g+G++gf|gg+G++G++f|g+G++gg|fg+G++GGG
  g=ggg
  }

tr30405* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f+F++fg|gf+F++G++g|g+G++gg|fg+G++G++f|g+G++gf|gg+G++GGG
  g=ggg
  }

tr30406* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g+F++fg|gf+F++G++g|g+G++gf|gg+G++G++g|f+G++gg|fg+G++GGG
  g=ggg
  }

tr30407* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++f|g+F++fg|gf+F++G++g|g+G++gg|fg+G++G++g|f+G++gf|gg+G++GGG
  g=ggg
  }

tr30408* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|f+F++fg|gf+G++G++g|g+G++gf|gg+G++G++f|g+G++gg|fg+F++GGG
  g=ggg
  }

tr30409* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F++g|f+F++fg|gf+G++G++g|g+G++gg|fg+G++G++f|g+G++gf|gg+F++GGG
  g=ggg
  }

tr30410* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g+F++fg|gf+G++G++g|g+G++gg|fg+G++G++g|f+G++gf|gg+F++GGG
  g=ggg
  }

tr30411* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs:  such intricate borders!
  Axiom c9f++c12f++c14f
  f=F++f|g+G++fg|gf+G++G++g|g+G++gg|fg+G++G++g|f+F++gf|gg+F++GGG
  g=ggg
  }

tr30412* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f++g|f--g--g++FF++G+g++g++f|g--f--g++GG++G+g++g++g|g--g--f++GG++GGG
  g=ggg
  }

tr30413* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=F+f++f++g|f--g--g++FF++G+g++g++f|g--g--f++GG++G+g++g++g|g--f--g++GG++GGG
  g=ggg
  }

tr30414* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  Axiom c9f++c12f++c14f
  f=G+f++f++g|f--g--g++FF++G+g++g++f|g--f--g++GG++F+g++g++g|g--g--f++GG++GGG
  g=ggg
  }

tr30415* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+f++f++g|f--g--g++FG++G+g++g++f|g--f--g++GG++F+g++g++g|g--g--f++GF++GGG
  g=ggg
  }

tr30416* { ; Anthony Hanmer 29/5/2003
  Angle 6 ; 3x3 triangular HTile
  ; 1-sided interior
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+f++f++g|f--g--g++FG++G+g++g++f|g--g--f++GG++G+g++g++g|g--f--g++GF++GGG
  g=ggg
  }

tr40001* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 1st 4x4 triangular HTile!
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++fff|fff++f++f|f++f|f++ff
  }

tr40002* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 2nd 4x4 triangular HTile
  Axiom c9f++c12f++c14f; Related to 8974
  f=f+fff|fff++f+ff|ff++f+f|f++f
  }

tr40003* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 3rd 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f++fff|fff++f++ff|ff+ff
  }

tr40004* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 4th 4x4 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+fff|fff++f++ff|ff+f+f|f++f
  }

tr40005* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 5th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|f-f|f--f--f|f-f--f|f+fff
  }

tr40006* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 6th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|f-f|f--f--f|f-f++ff+f|f++f
  }

tr40007* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 7th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|fff--f|f+f+ff|ff++ff
  }

tr40008* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 8th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff++f|f--fff++f+ff|ff++ff
  }

tr40009* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 9th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|fff++f++f|f++f|f++f+f|f++f
  }

tr40010* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 10th 4x4 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+ff-f--f+f|f-f++f+ff--f|f+fff
  }

tr40011* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 11th 4x4 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+ff-f--f+f|f-f++f+ff++ff+f|f++f
  }

tr40012* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 12th 4x4 triangular EDr tile
  Axiom c9f++c12f++c14f; (Same as Tr20001_2)
  f=f+ff|ff--f|f+f++ff|ff+f++f|f+f
  }

tr40013* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 13th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff|ff++f++ff|ff+f++f|f++f|f++f
  }

tr40014* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 14th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff|ff--f|f+f++f|f++f|f++f++f|f+f
  }

tr40015* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 15th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff|ff++f++f|f++f|f++f++f|f++f|f++f
  }

tr40016* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 16th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|f++f|f+ff--f|f+f++f|f+ff
  }

tr40017* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 17th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|f++f|f+ff++f++f|f+f+f|f++f
  }

tr40018* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 18th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff-f|f+ff--f|f+f++f|f+f++f|f+f
  }

tr40019* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 19th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff-f|f+ff++f++f|f+f++f|f++f|f++f
  }

tr40020* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 20th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f|f+f++f-f--f|f+ff++f|f+f
  }

tr40021* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 21st 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f|f+f++f-f++ff++f|f++f|f++f
  }

tr40022* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 22nd 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f-f--f--f|f++f++f+f--f|f+ff++f|f+f
  }

tr40023* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 23rd 4x4 triangular HTile
  ; Reflection of 40022
  Axiom c9f++c12f++c14f
  f=f+f-f--f--f|f++f++f+f++ff++f|f++f|f++f
  }

tr40024* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 24th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+f-f+f++f--f++f|f--f++f--f-f+f++fff
  }

tr40025* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 25th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++f-f|f+f++f+ff|ff++f++f|f+f
  }

tr40026* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 26th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+f-f+f|f-f+f++f+f|f++f++f|f++f|f++f
  }

tr40027* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 27th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--f--f++f+f++f++f|f--f--f++ff
  }

tr40027a { ; Anthony Hanmer 11/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++f+f++f++f|f--f--f++f+f++f++f|f--f--f++ff++gggg++gggg
  g=gggg
  }

tr40027b { ; Anthony Hanmer 11/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++gggg++f+f++f++f|f--f--f++f+f++f++f|f--f--f++ff++gggg
  g=gggg
  }

tr40028* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 28th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f++f--f--f|f++f++f--f++f++f|f++fff
  }

tr40029* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 29th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff++f++f--f|f++f--f--ff++ff+f|f++f
  }

tr40030* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 30th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+g++f--f--f|f++f++f+ff++gfgg++gggg++gggg
  g=gggg
  }

tr40031* { ; Anthony Hanmer 10/9/2002
  Angle 6 ; 31st 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f|f--f++f+f++f++f|f--f--f++f+f|f++f
  }

tr40032* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 32nd 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f++fff|f-f|f--ff++f+f|f++ff
  }

tr40033* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 33rd 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|f-f|f--ff++f+f|f++f+f|f++f
  }

tr40034* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 34th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++ff|ff++f+ff|ff++f++f|f+f
  }

tr40035* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 35th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff|ff++f+ff|ff++f++f|f++f|f++f
  }

tr40036* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 36th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f++fff|f++f|f+f+f|f++f++fff
  }

tr40037* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 37th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff++f|f--f++f|f+f+f|f++f++fff
  }

tr40038* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 38th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|f++f|f+f+f|f++f++ff+f|f++f
  }

tr40039* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 39th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f++fff|f-f|ff|f+ff++fff
  }

tr40040* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 40th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff++f|f--f-f|ff|f+ff++fff
  }

tr40041* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 41st 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff|f-f|ff|f+ff++ff+f|f++f
  }

tr40042* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 42nd 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff++f|f--fff++f++ff|ff+ff
  }

tr40043* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 43rd 4x4 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+fff++f|f--fff++f++f|f++f|f++ff
  }

tr40044* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 44th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f+f++f-ff|ff+f++f-f|f+f++ff
  }

tr40045* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 45th 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++f-ff++f|f--ff+f++f-f|f+f++ff
  }

tr40046* { ; Anthony Hanmer 11/9/2002
  Angle 6 ; 46th 4x4 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=ff++f-ff|ff+f++f-f|f+f++f+f|f++f
  }

tr40051# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 51st 4x4 triangular HTile, 1st dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+gf++f|ff|f-f--f--f|f++f++f-fg++fff
  g=gggg
  }

tr40052# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 52nd 4x4 triangular HTile, 2nd dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=f+g-f|f--g++f|ff|f--f++f++f|f--f--fgg++fff
  g=gggg
  }

tr40052r { ; Anthony Hanmer 11/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=g|f|g+g-f|f--g++f|ff|f--f++f++f|f--f--fgg++ggg|fff|ggg
  g=gggg
  }

tr40053# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 53rd 4x4 triangular HTile, 3rd dust
  Axiom c9f++c12f++c14f
  f=f+gff++f++f|f--f--f-f++f|f--f--fg++fff
  g=gggg
  }

tr40054# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 54th 4x4 triangular HTile, 4th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=f+ggf++f++f|f--f--fgg++f+f++f++f|f--f--f++ff
  g=gggg
  }

tr40054r { ; Anthony Hanmer 11/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=g|f|g+ggf++f++f|f--f--fgg++g|f|g+f++f++f|f--f--f++gg|ff|gg
  g=gggg
  }

tr40055# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 55th 4x4 triangular HTile, 5th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+gf++f++f|f--f--fg++ff+f++f++f|f--f--f++f
  g=gggg
  }

tr40056# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 56th 4x4 triangular HTile, 6th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=f+ggf++f++f|f--f--fg++f+f|f-f-f|f-g++fff
  g=gggg
  }

tr40056r { ; Anthony Hanmer 11/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=g|f|g+ggf++f++f|f--f--fg++f+f|f-f-f|f-g++ggg|fff|ggg
  g=gggg
  }

tr40057# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 57th 4x4 triangular HTile, 7th dust
  Axiom c9f++c12f++c14f
  f=f+ggf++f++f|f--f--f-f++f+f|f-f--f--gg++fff
  g=gggg
  }

tr40058# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 58th 4x4 triangular HTile, 8th dust
  Axiom c9f++c12f++c14f
  f=f+ggf++f++f|f--f--f-f++f++g--f|f++g--f--f--gg++fff
  g=gggg
  }

tr40059# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 59th 4x4 triangular HTile, 9th dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f++f|f--f--f++f++ff|ff++g+f|f-g++ff
  g=gggg
  }

tr40060# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 60th 4x4 triangular HTile, 10th dust
  Axiom c9f++c12f++c14f
  f=f+ggf++f++ff|ff--f--fgg++f++ff|ff+ff
  g=gggg
  }

tr40061# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 61st 4x4 triangular HTile, 11th dust
  Axiom c9f++c12f++c14f
  f=f+ggf++f++f|f--f--fgg++f++ff|f+f|f++f+ff
  g=gggg
  }

tr40062# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 62nd 4x4 triangular HTile, 12th dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++ggf|f--f|f-gg++f+f++f++f|f--f--f++ff
  g=gggg
  }

tr40063# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 63rd 4x4 triangular HTile, 13th dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++ggf|f--f|f-gg++f+gf++f++f|f--f--fg++ff
  g=gggg
  }

tr40064# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 64th 4x4 triangular HTile, 14th dust
  Axiom c9f++c12f++c14f
  f=f+ggf|f--f|f-gg++f+gf++f++f|f--f--fg++f+f|f++f
  g=gggg
  }

tr40065# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 65th 4x4 triangular HTile, 15th dust
  Axiom c9f++c12f++c14f
  f=f++f--fff|ff-g--ff|ff++g--f++f+fff
  g=gggg
  }

tr40066# { ; Anthony Hanmer 15/10/2002
  Angle 6 ; 66th 4x4 triangular HTile, 16th dust
  Axiom c9f++c12f++c14f
  f=f++g--fgf|f-fg--f|f++g--f|ff|f++f--gf++g+fff
  g=gggg
  }

tr40067# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 67th 4x4 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+g++f--f--f|f++f++f+ff++gggg++gfgg++gggg
  g=gggg
  }

tr40068# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 68th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+f++f--f--f|f++f++f+gf++ggfg++gggg++gggg
  g=gggg
  }

tr40069# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 69th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+f++f--f--f|f++f++f+gf++gggg++ggfg++gggg
  g=gggg
  }

tr40070# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 70th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+f++f--f--f|f++f++f+fg++gggf++gggg++gggg
  g=gggg
  }

tr40071* { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 71st 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+f++f--f--f|f++f++f+fg++gggg++gggf++gggg
  g=gggg
  }

tr40071a { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++f++f--f--f|f++f++f+f++f--f--f|f++f++f+fg++gggg++gggf++gggg++gggg++gggg
  g=gggg
  }

tr40071b { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=gggg++gggg++f++f--f--f|f++f++f+f++f--f--f|f++f++f+fg++gggg++gggf++gggg++gggg
  g=gggg
  }

tr40072# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 72nd 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+f++f--f--f|f++f++f+ff++fggg++gggg++gggg
  g=gggg
  }

tr40073# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 73rd 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+f++f--f--f|f++f++f+ff++gggg++fggg++gggg
  g=gggg
  }

tr40074# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 74th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+g++f--f--f|f++f++f+gf++gggg++gffg++gggg
  g=gggg
  }

tr40075# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 75th 4x4 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+g++f--f--f|f++f++f+gf++gffg++gggg++gggg
  g=gggg
  }

tr40076# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 76th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+g++f--f--f|f++f++f+gf++gfgg++ggfg++gggg
  g=gggg
  }

tr40077# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 77th 4x4 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+g++f--f--f|f++f++f+gf++ggfg++gfgg++gggg
  g=gggg
  }

tr40078# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 78th 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++ffff++gggg++gggg
  g=gggg
  }

tr40079# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 79th 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++gggg++ffff++gggg
  g=gggg
  }

tr40080# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 80th 4x4 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++ffgg++ggff++gggg
  g=gggg
  }

tr40081# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 81st 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++ggff++ffgg++gggg
  g=gggg
  }

tr40082# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 82nd 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++fffg++gggf++gggg
  g=gggg
  }

tr40083# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 83rd 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++gfff++fggg++gggg
  g=gggg
  }

tr40084# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 84th 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++fgff++gfgg++gggg
  g=gggg
  }

tr40085# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 85th 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++ffgf++ggfg++gggg
  g=gggg
  }

tr40086# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 86th 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++fggf++gffg++gggg
  g=gggg
  }

tr40087# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 87th 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++gffg++fggf++gggg
  g=gggg
  }

tr40088# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 88th 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++fgfg++gfgf++gggg
  g=gggg
  }

tr40089# { ; Anthony Hanmer 8/11/2002
  Angle 6 ; 89th 4x4 triangular HTile, dust
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+g++f--f--f|f++f++f+gg++gfgf++fgfg++gggg
  g=gggg
  }

tr40090* { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 90th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--f|f++f++f+f++f--f--f|f++f++f+gg++gggg++ggff++gggg
  g=gggg
  }

tr40090a { ; Anthony Hanmer 12/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++f++f--f--f|f++f++f+f++f--f--f|f++f++f+gg++gggg++ggff++gggg++gggg++gggg
  g=gggg
  }

tr40090b { ; Anthony Hanmer 12/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++gggg++f++f--f--f|f++f++f+f++f--f--f|f++f++f+gg++gggg++ggff++gggg++gggg
  g=gggg
  }

tr40091# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 91st 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++g--f--f|f++f++g+f++f--f--f|f++f++f+gg++ggg+f|f++g++ggff++gggg
  g=gggg
  }

tr40092# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 92nd 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--g--f|f++g++f+f++f--f--f|f++f++f+gg++ggg++f|f+g++ggff++gggg
  g=gggg
  }

tr40093# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 93rd 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--g|g++f++f+f++f--f--f|f++f++f+gg++gggg++g+f|f++gff++gggg
  g=gggg
  }

tr40094# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 94th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++g--f--f|f++f++g+f++f--f--f|f++f++f+g+f|f++g++gggg++ggff++gggg
  g=gggg
  }

tr40095# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 95th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--g--f|f++g++f+f++f--f--f|f++f++f+g++f|f+g++gggg++ggff++gggg
  g=gggg
  }

tr40096# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 96th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--g|g++f++f+f++f--f--f|f++f++f+gg++g+f|f++ggg++ggff++gggg
  g=gggg
  }

tr40097# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 97th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++g--f--f|f++f++g+f++f--f--f|f++f++f+fg++ggg+f|f++g++gggf++gggg
  g=gggg
  }

tr40098# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 98th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++g--f--f|f++f++g+f++f--f--f|f++f++f+f+f|f++g++gggg++gggf++gggg
  g=gggg
  }

tr40099# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 99th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--g--f|f++g++f+f++f--f--f|f++f++f+fg++ggg++f|f+g++gggf++gggg
  g=gggg
  }

tr40100# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 100th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--g--f|f++g++f+f++f--f--f|f++f++f+f++f|f+g++gggg++gggf++gggg
  g=gggg
  }

tr40100a { ; Anthony Hanmer 12/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++f++f--g--f|f++g++f+f++f--f--f|f++f++f+f++f|f+g++gggg++gggf++gggg++gggg++gggg
  g=gggg
  }

tr40100b { ; Anthony Hanmer 12/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++gggg++f++f--g--f|f++g++f+f++f--f--f|f++f++f+f++f|f+g++gggg++gggf++gggg++gggg
  g=gggg
  }

tr40101# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 101st 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--g|g++f++f+f++f--f--f|f++f++f+fg++gggg++g+f|f++ggf++gggg
  g=gggg
  }

tr40102# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 102nd 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f--g|g++f++f+f++f--f--f|f++f++f+fg++g+f|f++ggg++gggf++gggg
  g=gggg
  }

tr40103# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 103rd 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--g--f|f++g++f+f++f--f--f|f++f++f+f++f|f+g++fggg++gggf++gggg
  g=gggg
  }

tr40104# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 90th 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--f|f++f++f+f++f--f--f|f++f++f+gg++fggg++ggff++gggg
  g=gggg
  }

tr40105# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 91st 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++g--f--f|f++f++g+f++f--f--f|f++f++f+gg++fgg+f|f++g++ggff++gggg
  g=gggg
  }

tr40106# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 93rd 4x4 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--g|g++f++f+f++f--f--f|f++f++f+gg++fggg++g+f|f++gff++gggg
  g=gggg
  }

tr40107# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 94th 4x4 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=g++g--f--f|f++f++g+f++f--f--f|f++f++f+g+f|f++g++fggg++ggff++gggg
  g=gggg
  }

tr40108# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 95th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--g--f|f++g++f+f++f--f--f|f++f++f+g++f|f+g++fggg++ggff++gggg
  g=gggg
  }

tr40109# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 96th 4x4 triangular HTile, dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=g++f--f--g|g++f++f+f++f--f--f|f++f++f+gg++f+f|f++ggg++ggff++gggg
  g=gggg
  }

tr40110# { ; Anthony Hanmer 21/5/2003
  Angle 6 ; 98th 4x4 triangular HTile, dust
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=g++g--f--f|f++f++g+f++f--f--f|f++f++f+f+f|f++g++fggg++gggf++gggg
  g=gggg
  }

tr40111* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++F++gggg
  ;f=F+fgg|ggf++F+ff|ff++F+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40112* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+f|f++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40113* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+ff|ff++F+f|f++F++G+ggg|ggg++F+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40114* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+ff|ff++F+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++F+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40115* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++G+f|f++F++G+ggg|ggg++G+gg|gg++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40116* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++G+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++F+g|g++G++gggg
  g=gggg
  }

tr40117* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+g|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+f|g++G++gggg
  g=gggg
  }

tr40118* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|g++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|f++G++gggg
  g=gggg
  }

tr40119* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|ff++F+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+ff|gg++G+g|g++G++gggg
  g=gggg
  }

tr40120* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gg++F+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|ff++G+g|g++G++gggg
  g=gggg
  }

tr40121* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+ff|ff++F+f|f++F++G+fgg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40122* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+ff|ff++F+f|f++F++G+ggg|ggf++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40123* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++F++G+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40124* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++F++G+ggg|fgg++G+gg|gg++G+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40125* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++F++G+gfg|ggg++G+gg|gg++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40126* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++F++G+ggg|gfg++G+gg|gg++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40127* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+g|f++F++G+ggg|ggg++G+gg|gg++G+f|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40128* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|g++F++G+ggg|ggg++G+gg|gg++G+g|f++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40129* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+ff|ff++F+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+fff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40130* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+ff|ff++F+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|fff++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40131* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|fg++F+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gf|gf++G+g|g++G++gggg
  g=gggg
  }

tr40132* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gf|gf++F+f|f++F++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+fg|fg++G+g|g++G++gggg
  g=gggg
  }

tr40133* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|ff++F+f|f++F++G+ggg|ggg++G+ff|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40134* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gg++F+f|f++F++G+ggg|ggg++G+gg|ff++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40135* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gg++F+f|f++F++G+ggg|ggg++G+gg|fg++G+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++gggg
  g=gggg
  }

tr40136* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+ff|ff++F+f|f++F++G+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40137* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgf|ggf++F+ff|ff++F+f|f++F++G+gfg|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40138* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|gff++F+ff|ff++F+f|f++F++G+ggg|fgg++G+gg|gg++G+g|g++G++G+gff|ggg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40139* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|fgf++F+ff|ff++F+f|f++F++G+ggg|gfg++G+gg|gg++G+g|g++G++G+gff|ggg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40140* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+g|f++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+f|g++G++gggg
  g=gggg
  }

tr40141* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+f|g++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|f++G++gggg
  g=gggg
  }

tr40142* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+gg|ff++F+f|f++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+ff|gg++G+g|g++G++gggg
  g=gggg
  }

tr40143* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|gg++F+f|f++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|ff++G+g|g++G++gggg
  g=gggg
  }

tr40144* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+ggg|ggf++F+ff|ff++F+f|f++F++F+fgg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40145* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggg++F+ff|ff++F+f|f++F++F+ggg|ggf++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40146* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+f|f++F++F+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40147* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+f|f++F++F+ggg|fgg++G+gg|gg++G+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40148* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+f|f++F++F+gfg|ggg++G+gg|gg++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40149* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+f|f++F++F+ggg|gfg++G+gg|gg++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40150* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+g|f++F++F+ggg|ggg++G+gg|gg++G+f|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40151* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|ff++F+f|g++F++F+ggg|ggg++G+gg|gg++G+g|f++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40152* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+ggg|ggf++F+ff|ff++F+f|f++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+fff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40153* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggg++F+ff|ff++F+f|f++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|fff++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40154* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|fg++F+f|f++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gf|gf++G+g|g++G++gggg
  g=gggg
  }

tr40155* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+gf|gf++F+f|f++F++F+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+fg|fg++G+g|g++G++gggg
  g=gggg
  }

tr40156* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+gg|ff++F+f|f++F++F+ggg|ggg++G+ff|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40157* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|gg++F+f|f++F++F+ggg|ggg++G+gg|ff++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40158* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|gg++F+f|f++F++F+ggg|ggg++G+gg|fg++G+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++gggg
  g=gggg
  }

tr40159* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+ffg|ggf++F+ff|ff++F+f|f++F++F+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40160* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgf|ggf++F+ff|ff++F+f|f++F++F+gfg|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40161* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|gff++F+ff|ff++F+f|f++F++F+ggg|fgg++G+gg|gg++G+g|g++G++G+gff|ggg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40162* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|fgf++F+ff|ff++F+f|f++F++F+ggg|gfg++G+gg|gg++G+g|g++G++G+gff|ggg++G+gg|gg++G+g|g++G++gggg
  g=gggg
  }

tr40163* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+g|f++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+f|g++F++gggg
  g=gggg
  }

tr40164* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|g++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|f++F++gggg
  g=gggg
  }

tr40165* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|ff++F+f|f++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+ff|gg++G+g|g++F++gggg
  g=gggg
  }

tr40166* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gg++F+f|f++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|ff++G+g|g++F++gggg
  g=gggg
  }

tr40167* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+ff|ff++F+f|f++G++G+fgg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40168* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+ff|ff++F+f|f++G++G+ggg|ggf++G+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40169* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40170* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++G++G+ggg|fgg++G+gg|gg++G+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40171* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++G++G+gfg|ggg++G+gg|gg++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40172* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|f++G++G+ggg|gfg++G+gg|gg++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40173* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+g|f++G++G+ggg|ggg++G+gg|gg++G+f|g++G++G+gff|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40174* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+f|g++G++G+ggg|ggg++G+gg|gg++G+g|f++G++G+gff|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40175* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+ff|ff++F+f|f++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+fff|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40176* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+ff|ff++F+f|f++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|fff++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40177* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|fg++F+f|f++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+gf|gf++G+g|g++F++gggg
  g=gggg
  }

tr40178* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gf|gf++F+f|f++G++G+ggg|ggg++G+gg|gg++G+g|g++G++G+gff|ffg++G+fg|fg++G+g|g++F++gggg
  g=gggg
  }

tr40179* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|ff++F+f|f++G++G+ggg|ggg++G+ff|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40180* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gg++F+f|f++G++G+ggg|ggg++G+gg|ff++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40181* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gg++F+f|f++G++G+ggg|ggg++G+gg|fg++G+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++F++gggg
  g=gggg
  }

tr40182* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+ff|ff++F+f|f++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40183* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgf|ggf++F+ff|ff++F+f|f++G++G+gfg|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40184* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  Axiom c9f++c12f++c14f
  f=F+fgg|gff++F+ff|ff++F+f|f++G++G+ggg|fgg++G+gg|gg++G+g|g++G++G+gff|ggg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40185* { ; Anthony Hanmer 28/6/2003
  Angle 6 ; 4x4 triangular HTile;
  ; variation on an L2 HT (Tr00001) using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|fgf++F+ff|ff++F+f|f++G++G+ggg|gfg++G+gg|gg++G+g|g++G++G+gff|ggg++G+gg|gg++G+g|g++F++gggg
  g=gggg
  }

tr40186* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++g|f++ff|ff++F++f|f++f|f++F++f|f+F++G++f|g++gg|gg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40187* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|g++ff|ff++F++f|f++f|f++F++f|f+F++G++g|f++gg|gg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40188* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++gg|ff++F++f|f++f|f++F++f|f+F++G++g|g++ff|gg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40189* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|gg++F++f|f++f|f++F++f|f+F++G++g|g++gg|ff++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40190* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++gf|gf++F++f|f++f|f++F++f|f+F++G++g|g++fg|fg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40191* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++fg|fg++F++f|f++f|f++F++f|f+F++G++g|g++gf|gf++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40192* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|ff++F++g|f++f|f++F++f|f+F++G++g|g++gg|gg++G++f|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40193* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|ff++F++f|g++f|f++F++f|f+F++G++g|g++gg|gg++G++g|f++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40194* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|ff++F++f|f++g|f++F++f|f+F++G++g|g++gg|gg++G++g|g++f|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40195* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|ff++F++f|f++f|g++F++f|f+F++G++g|g++gg|gg++G++g|g++g|f++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40196* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|ff++F++f|f++f|f++F++g|f+F++G++g|g++gg|gg++G++g|g++g|g++G++f|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40197* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|ff++F++f|f++f|f++F++f|g+F++G++g|g++gg|gg++G++g|g++g|g++G++g|f+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40198* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G++f|f++ff|ff++F++f|f++f|f++F++f|f+F++F++g|g++gg|gg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40199* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|ff++F++f|f++f|f++F++f|f+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+F++GGGG
  g=gggg
  }

tr40200* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++gf|ff++F++f|f++f|f++F++f|f+F++G++g|g++fg|gg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40201* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++fg|ff++F++f|f++f|f++F++f|f+F++G++g|g++gf|gg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40202* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|gf++F++f|f++f|f++F++f|f+F++G++g|g++gg|fg++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40203* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F++f|f++ff|fg++F++f|f++f|f++F++f|f+F++G++g|g++gg|gf++G++g|g++g|g++G++g|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40204* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=F++g|f++gg|ff++F++g|f++g|f++F++g|f+F++G++f|g++ff|gg++G++f|g++f|g++G++f|g+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40205* { ; Anthony Hanmer 30/6/2003
  Angle 6 ; 4x4 triangular HTile
  Axiom c9f++c12f++c14f
  f=F++f|g++ff|gg++F++f|g++f|g++F++f|g+F++G++g|f++gg|ff++G++g|f++g|f++G++g|f+G++G++g|g++gg|gg++G++g|g++g|g++G++g|g+G++GGGG
  g=gggg
  }

tr40206# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variations on Tr40071 and others, re-drawn using the L4 DNA, arranged thus:
  ; 40206-245 - interior variations, in groups of 6 (each in 3 pairs)
  ; 40246-323 - exterior variations on those, 2 sets
  ; 40324-339 - further variations on the above
  ; 340-369 - interior variations on Tr40233
  ; 370-429 - exterior variations on those, in 2 sets
  ; 430-452 - interior variations no Tr40236
  ; 453-498 - exterior variations on those, in 2 sets
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+f|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+g|f++F++GGGG
  ;f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  ;f=f++f--f--f|f++f++f+f++f--f--f|f++f++f+fg++gggg++gggf++gggg
  g=gggg
  }

tr40207# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|f++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|g++F++GGGG
  g=gggg
  }

tr40208# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++G+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40209# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++G+gf|fg++G+f|g++F++GGGG
  g=gggg
  }

tr40210# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+f|g++G++G+gff|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++G+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40211# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|f++G++G+gff|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++G+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40212# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++F+g|g++G++G+fff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40213# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+fgg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40214# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++F+g|g++G++G+gff|fff++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40215# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40216# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++F+g|g++G++G+fff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40217# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++F+g|g++G++G+gff|fff++G+gg|gg++G+g|g++G++G+fgg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40218# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gf++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40219# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40220# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|ff++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40221# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40222# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gf++F+g|g++G++G+gff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40223# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|ff++F+g|g++G++G+gff|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40224# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gf++F+g|g++G++G+gff|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40225# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gf++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+ff|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40226# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gg++F+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40227# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gg++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40228# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++F+g|g++G++G+gff|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40229# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++F+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+ff|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40230# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgf|ggf++F+fg|gf++F+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40231# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40231a { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  ; One of my VERY best HTs
  f=gggg++F+fgg|ggf++F+fg|gf++F+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40231b { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  ; One of my VERY best HTs
  f=gggg++gggg++F+fgg|ggf++F+fg|gf++F+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG++gggg
  g=gggg
  }

tr40232# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|fgf++F+fg|gf++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40233# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  pure simplicity
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40233a { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs:  pure simplicity
  Axiom c9f++c12f++c14f
  f=gggg++F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40233b { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs:  pure simplicity
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG++gggg
  g=gggg
  }

tr40234# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgf|ggf++F+fg|gf++F+g|g++G++G+gfg|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40235# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|fgf++F+fg|gf++F+g|g++G++G+gfg|gfg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40236# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40237# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+gfg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40238# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|gff++F+fg|gf++F+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40239# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40240# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40241# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|fgf++F+fg|gf++F+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+gfg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40242# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++F+g|g++G++G+gff|fff++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40243# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+ff|gf++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40244# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++F+g|g++G++G+fff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40245# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gg++F+g|g++G++G+gff|fff++G+gf|gf++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40246# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++G+f|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40247# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|f++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|g++F++GGGG
  g=gggg
  }

tr40248# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+gff|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++G+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40249# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++G+gf|fg++G+f|g++F++GGGG
  g=gggg
  }

tr40250# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; One of my VERY best HTs
  ; Variation on Tr40071, re-drawn using the L4 DNA
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+f|g++G++F+gff|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++G+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40251# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|f++G++F+gff|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++G+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40252# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+ggg|ggf++F+fg|gf++F+g|g++G++F+fff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40253# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+ggg|ggf++F+fg|gf++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+fgg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40254# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggg++F+fg|gf++F+g|g++G++F+gff|fff++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40255# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggg++F+fg|gf++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40256# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+ggg|ggg++F+fg|gf++F+g|g++G++F+fff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40257# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  Axiom c9f++c12f++c14f
  f=G+ggg|ggg++F+fg|gf++F+g|g++G++F+gff|fff++G+gg|gg++G+g|g++G++G+fgg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40258# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|gf++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40259# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+gff|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40260# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|ff++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40261# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+gff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40262# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+ff|gf++F+g|g++G++F+gff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40263# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|ff++F+g|g++G++F+gff|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40264# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+gg|gf++F+g|g++G++F+gff|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40265# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+gg|gf++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+ff|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40266# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gg++F+g|g++G++F+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40267# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gg++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40268# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+gg|gg++F+g|g++G++F+gff|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40269# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+gg|gg++F+g|g++G++F+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+ff|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40270# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgf|ggf++F+fg|gf++F+g|g++G++F+gfg|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40271# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+gfg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40272# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|fgf++F+fg|gf++F+g|g++G++F+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40273# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40274# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgf|ggf++F+fg|gf++F+g|g++G++F+gfg|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40275# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|fgf++F+fg|gf++F+g|g++G++F+gfg|gfg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40276# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+ffg|ggf++F+fg|gf++F+g|g++G++F+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40277# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+ggf|ffg++G+gg|gg++G+g|g++G++G+gfg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40278# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|gff++F+fg|gf++F+g|g++G++F+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40279# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40280# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+ffg|ggf++F+fg|gf++F+g|g++G++F+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40281# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+ggf|gfg++G+gg|gg++G+g|g++G++G+gfg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40282# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggg++F+fg|gf++F+g|g++G++F+gff|fff++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40283# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggg++F+ff|gf++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40284# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  Axiom c9f++c12f++c14f
  f=G+ggg|ggf++F+fg|gf++F+g|g++G++F+fff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40285# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggg++F+fg|gf++F+g|g++G++F+gff|fff++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40286# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++G+f|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40287# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|f++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|g++F++GGGG
  g=gggg
  }

tr40288# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40289# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++G+gf|fg++F+f|g++F++GGGG
  g=gggg
  }

tr40290# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+f|g++G++G+gff|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++G+gf|fg++F+g|g++F++GGGG
  g=gggg
  }

tr40291# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|f++G++G+gff|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++G+gf|fg++F+g|g++F++GGGG
  g=gggg
  }

tr40292# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++G+g|g++G++G+fff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40293# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+fgg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40294# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++G+g|g++G++G+gff|fff++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40295# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40296# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++G+g|g++G++G+fff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40297# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  Axiom c9f++c12f++c14f
  ; One of my VERY best HTs
  f=F+ggg|ggg++F+fg|gf++G+g|g++G++G+gff|fff++G+gg|gg++G+g|g++G++G+fgg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40298# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40299# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40300# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|ff++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40301# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gf|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40302# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gf++G+g|g++G++G+gff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gg|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40303# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|ff++G+g|g++G++G+gff|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40304# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gf++G+g|g++G++G+gff|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40305# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+ff|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40305a { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++F+fgg|ggf++F+gg|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+ff|fg++F+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40305b { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+fgg|ggf++F+gg|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+ff|fg++F+f|f++F++GGGG++gggg
  g=gggg
  }

tr40306# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gg++G+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40306a { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++F+fgg|ggf++F+fg|gg++G+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40306b { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+fgg|ggf++F+fg|gg++G+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG++gggg
  g=gggg
  }

tr40307# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; Not new
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++F+f|f++F++GGGG
  g=gggg
  }

tr40308# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++G+g|g++G++G+gff|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++F+f|f++F++GGGG
  g=gggg
  }

tr40309# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++G+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+ff|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40310# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgf|ggf++F+fg|gf++G+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40311# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40311a { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++F+fgg|ggf++F+fg|gf++G+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++F+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40311b { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+fgg|ggf++F+fg|gf++G+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++F+f|f++F++GGGG++gggg
  g=gggg
  }

tr40312# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|fgf++F+fg|gf++G+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40313# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40314# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgf|ggf++F+fg|gf++G+g|g++G++G+gfg|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40315# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|fgf++F+fg|gf++G+g|g++G++G+gfg|gfg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40316# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40317# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+gfg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40318# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs; new?
  Axiom c9f++c12f++c14f
  f=F+fgg|gff++F+fg|gf++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40318a { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++F+fgg|gff++F+fg|gf++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40318b { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+fgg|gff++F+fg|gf++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG++gggg
  g=gggg
  }

tr40319# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40319a { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 120-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++F+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40319b { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 240-degree rotation
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++F+f|f++F++GGGG++gggg
  g=gggg
  }

tr40320# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40321# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+gfg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40322# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++G+g|g++G++G+gff|fff++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40323# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+ff|gf++G+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gg|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40324# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++G+g|g++G++G+fff|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gf|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40325# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gg++F+g|g++G++G+gff|ffg++F+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40326# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gg++F+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40327# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gg++G+g|g++G++G+gff|ffg++G+gg|gf++F+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40328# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gg++G+g|g++G++G+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40329# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gg++G+g|g++G++F+gff|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40330# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gg++F+g|g++G++G+gff|ffg++F+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40331# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gg++F+g|g++G++G+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40332# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gg++G+g|g++G++G+gff|ffg++G+gg|gg++F+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40333# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gg++G+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++F+f|f++F++GGGG
  g=gggg
  }

tr40334# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gg++F+g|g++G++F+gff|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40335# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+g|g++G++G+gfg|ffg++F+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40336# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40337# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gfg|ffg++G+gg|gg++F+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40338# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gfg|ffg++G+gg|gg++G+g|g++F++G+ggf|ggg++G+gf|fg++F+f|f++G++GGGG
  g=gggg
  }

tr40339# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40071, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=G+fgg|ggf++F+fg|gf++F+g|g++G++F+gfg|ffg++G+gg|gg++G+g|g++F++G+ggf|ggg++G+gf|fg++G+f|f++G++GGGG
  g=gggg
  }

tr40340# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++F+g|g++G++G+fff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40341# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+fgg|fgf++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40342# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++F+g|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgf++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40343# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++F+g|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+fgg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40344# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+f|f++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40345# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|gfg++G+gg|gg++G+f|f++G++G+ggg|fgg++G+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40346# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+f|g++G++G+gff|gfg++G+gg|gg++G+g|f++G++G+ggg|fgg++G+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40347# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|f++G++G+gff|gfg++G+gg|gg++G+f|g++G++G+ggg|fgg++G+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40348# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40349# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+gff|gfg++G+gf|fg++G+g|g++G++G+ggg|fgg++G+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40350# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gf++F+g|g++G++G+gff|gfg++G+gg|fg++G+g|g++G++G+ggg|fgg++G+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40351# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|ff++F+g|g++G++G+gff|gfg++G+gf|gg++G+g|g++G++G+ggg|fgg++G+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40352# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++F+g|g++G++G+gff|gfg++G+fg|gf++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40353# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+ff|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40354# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++F+g|g++G++G+gff|gfg++G+fg|gg++G+g|g++G++G+ggg|fgg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40355# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++F+g|g++G++G+gff|gfg++G+gg|gf++G+g|g++G++G+ggg|fgg++G+ff|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40356# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|gff++F+fg|gf++F+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40357# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|ffg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40358# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40359# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|gff++F+fg|gf++F+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40360# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++F+f|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40361# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++F+f|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+fgg|fgg++G+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40362# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++F+f|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40363# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++F+f|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgf++G+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40364# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|ff++F+g|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40365# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++F+g|g++G++G+gff|gfg++G+gg|fg++G+g|g++G++G+ggg|fgf++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40366# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gf|gf++F+g|g++G++G+gff|gfg++G+fg|gg++G+g|g++G++G+ggg|fgg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40367# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gf++F+g|g++G++G+gff|gfg++G+gf|gg++G+g|g++G++G+ggg|fgg++G+fg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40368# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40369# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gg++F+g|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40370# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++G+fg|gf++F+g|g++G++G+fff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40371# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++G+fg|gf++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+fgg|fgf++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40372# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++G+fg|gf++F+g|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgf++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40373# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++G+fg|gf++F+g|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+fgg|fgg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40374# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+f|f++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40375# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+g|g++G++G+gff|gfg++G+gg|gg++G+f|f++G++G+ggg|fgg++F+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40376# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+f|g++G++G+gff|gfg++G+gg|gg++G+g|f++G++G+ggg|fgg++F+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40377# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+g|f++G++G+gff|gfg++G+gg|gg++G+f|g++G++G+ggg|fgg++F+gf|fg++G+g|g++F++GGGG
  g=gggg
  }

tr40378# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+ff|ff++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40379# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+g|g++G++G+gff|gfg++G+gf|fg++G+g|g++G++G+ggg|fgg++F+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40380# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+ff|gf++F+g|g++G++G+gff|gfg++G+gg|fg++G+g|g++G++G+ggg|fgg++F+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40381# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|ff++F+g|g++G++G+gff|gfg++G+gf|gg++G+g|g++G++G+ggg|fgg++F+gg|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40382# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+gg|gg++F+g|g++G++G+gff|gfg++G+fg|gf++G+g|g++G++G+ggg|fgg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40383# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+gg|gg++F+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++F+ff|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40384# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+gg|gg++F+g|g++G++G+gff|gfg++G+fg|gg++G+g|g++G++G+ggg|fgg++F+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40385# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+gg|gg++F+g|g++G++G+gff|gfg++G+gg|gf++G+g|g++G++G+ggg|fgg++F+ff|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40386# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|gff++G+fg|gf++F+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40387# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|ffg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40388# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40389# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|gff++G+fg|gf++F+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|fgg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40390# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++G+fg|gf++F+f|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40391# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++G+fg|gf++F+f|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+fgg|fgg++F+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40392# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++G+fg|gf++F+f|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40393# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++G+fg|gf++F+f|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgf++F+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40394# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++G+fg|ff++F+g|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40395# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  Beautiful simplicity
  ; Also:  VERY similar RS
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++G+fg|gf++F+g|g++G++G+gff|gfg++G+gg|fg++G+g|g++G++G+ggg|fgf++F+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40395a { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++F+fgg|ggg++G+fg|gf++F+g|g++G++G+gff|gfg++G+gg|fg++G+g|g++G++G+ggg|fgf++F+gf|gg++G+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40395b { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+fgg|ggg++G+fg|gf++F+g|g++G++G+gff|gfg++G+gg|fg++G+g|g++G++G+ggg|fgf++F+gf|gg++G+f|f++F++GGGG++gggg
  g=gggg
  }

tr40396# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+gf|gf++F+g|g++G++G+gff|gfg++G+fg|gg++G+g|g++G++G+ggg|fgg++F+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40397# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+gg|gf++F+g|g++G++G+gff|gfg++G+gf|gg++G+g|g++G++G+ggg|fgg++F+fg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40398# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40399# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++G+fg|gg++F+g|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40400# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++G+g|g++G++G+fff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40401# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++G+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+fgg|fgf++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40402# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++G+g|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgf++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40403# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggg++F+fg|gf++G+g|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+fgg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40404# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+f|f++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+g|g++F++GGGG
  g=gggg
  }

tr40405# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|gfg++G+gg|gg++G+f|f++G++G+ggg|fgg++G+gf|fg++F+g|g++F++GGGG
  g=gggg
  }

tr40406# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+f|g++G++G+gff|gfg++G+gg|gg++G+g|f++G++G+ggg|fgg++G+gf|fg++F+g|g++F++GGGG
  g=gggg
  }

tr40407# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|f++G++G+gff|gfg++G+gg|gg++G+f|g++G++G+ggg|fgg++G+gf|fg++F+g|g++F++GGGG
  g=gggg
  }

tr40408# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|ff++G+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gg|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40409# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+gff|gfg++G+gf|fg++G+g|g++G++G+ggg|fgg++G+gg|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40410# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+ff|gf++G+g|g++G++G+gff|gfg++G+gg|fg++G+g|g++G++G+ggg|fgg++G+gg|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40411# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|ff++G+g|g++G++G+gff|gfg++G+gf|gg++G+g|g++G++G+ggg|fgg++G+gg|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40412# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++G+g|g++G++G+gff|gfg++G+fg|gf++G+g|g++G++G+ggg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40413# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++G+g|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+ff|ff++F+f|f++F++GGGG
  g=gggg
  }

tr40414# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++G+g|g++G++G+gff|gfg++G+fg|gg++G+g|g++G++G+ggg|fgg++G+gf|ff++F+f|f++F++GGGG
  g=gggg
  }

tr40415# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gg++G+g|g++G++G+gff|gfg++G+gg|gf++G+g|g++G++G+ggg|fgg++G+ff|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40416# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|gff++F+fg|gf++G+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40417# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|ffg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40418# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+ggg|ffg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40419# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|gff++F+fg|gf++G+g|g++G++G+ggf|ggg++G+gg|gg++G+g|g++G++G+gfg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40420# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++G+f|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40421# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gf++G+f|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+fgg|fgg++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40422# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++G+f|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40423# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++G+f|g++G++G+gff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgf++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40424# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|ff++G+g|g++G++G+gff|gff++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40425# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggg++F+fg|gf++G+g|g++G++G+gff|gfg++G+gg|fg++G+g|g++G++G+ggg|fgf++G+gf|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40426# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gf|gf++G+g|g++G++G+gff|gfg++G+fg|gg++G+g|g++G++G+ggg|fgg++G+gg|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40427# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+gg|gf++G+g|g++G++G+gff|gfg++G+gf|gg++G+g|g++G++G+ggg|fgg++G+fg|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40428# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40429# { ; Anthony Hanmer 15/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40233, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ggg|ggf++F+fg|gg++G+g|g++G++G+fff|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|ff++F+f|f++F++GGGG
  g=gggg
  }

tr40430# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+gfg|ggf++F+fg|gf++F+g|g++G++G+fgf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40431# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fff|ggf++F+fg|gf++F+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40432# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|fgf++F+fg|gf++F+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40433# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|gff++F+fg|gf++F+g|g++G++G+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40434# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggg++F+fg|gf++F+g|g++G++G+ggf|fff++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40435# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+gfg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+fgg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40436# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+gfg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40437# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggg++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40438# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40439# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40440# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40441# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+gg|gf++F+g|g++G++G+ggf|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40442# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gg++F+g|g++G++G+ggf|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40443# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+gg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+ff|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40444# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gg++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40444a { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++F+ffg|ggf++F+fg|gg++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40444b { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+ffg|ggf++F+fg|gg++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++G+f|f++F++GGGG++gggg
  g=gggg
  }

tr40445# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+ff|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40446# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|ff++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40447# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40447a { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40447b { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++G+f|f++F++GGGG++gggg
  g=gggg
  }

tr40448# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40449# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+f|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40450# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|f++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++G+f|g++F++GGGG
  g=gggg
  }

tr40451# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++G+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40452# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++G+gf|fg++G+f|g++F++GGGG
  g=gggg
  }

tr40453# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+gfg|ggf++G+fg|gf++F+g|g++G++G+fgf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40454# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fff|ggf++G+fg|gf++F+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40455# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|fgf++G+fg|gf++F+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40456# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|gff++G+fg|gf++F+g|g++G++G+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40457# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggg++G+fg|gf++F+g|g++G++G+ggf|fff++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40458# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+gfg|ggf++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+fgg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40459# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+gfg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40460# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggg++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40461# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40462# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40463# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40464# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+gg|gf++F+g|g++G++G+ggf|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40465# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gg++F+g|g++G++G+ggf|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40466# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+gg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+ff|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40467# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gg++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|ff++G+f|f++F++GGGG
  g=gggg
  }

tr40467a { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++F+ffg|ggf++G+fg|gg++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|ff++G+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40467b { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+ffg|ggf++G+fg|gg++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|ff++G+f|f++F++GGGG++gggg
  g=gggg
  }

tr40468# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+ff|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40469# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|ff++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40470# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++F+gg|fg++G+f|f++F++GGGG
  g=gggg
  }

tr40470a { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++F+gg|fg++G+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40470b { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++F+gg|fg++G+f|f++F++GGGG++gggg
  g=gggg
  }

tr40471# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++F+gf|gg++G+f|f++F++GGGG
  g=gggg
  }

tr40472# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+f|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40473# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|f++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++F+gf|fg++G+f|g++F++GGGG
  g=gggg
  }

tr40474# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++F+gf|fg++G+g|f++F++GGGG
  g=gggg
  }

tr40475# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++G+fg|gf++F+g|g++G++G+ggf|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++F+gf|fg++G+f|g++F++GGGG
  g=gggg
  }

tr40476# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+gfg|ggf++F+fg|gf++G+g|g++G++G+fgf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40477# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fff|ggf++F+fg|gf++G+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40478# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|fgf++F+fg|gf++G+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40479# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|gff++F+fg|gf++G+g|g++G++G+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40480# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggg++F+fg|gf++G+g|g++G++G+ggf|fff++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40481# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+gfg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+fgg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40482# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+fgg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+gfg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40483# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggg++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggf++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40484# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs:  WAY cool
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggg|ffg++G+gg|gg++G+g|g++G++G+ggf|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40485# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|gfg++G+gg|gg++G+g|g++G++G+ggg|fgg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40486# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|fgg++G+gg|gg++G+g|g++G++G+ggg|gfg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40487# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+gg|gf++G+g|g++G++G+ggf|ffg++G+fg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40488# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gg++G+g|g++G++G+ggf|ffg++G+gg|gf++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40489# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+gg|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+ff|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40490# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gg++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++F+f|f++F++GGGG
  g=gggg
  }

tr40490a { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++F+ffg|ggf++F+fg|gg++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++F+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40490b { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+ffg|ggf++F+fg|gg++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|ff++F+f|f++F++GGGG++gggg
  g=gggg
  }

tr40491# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+ff|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40492# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|ff++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40493# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++F+f|f++F++GGGG
  g=gggg
  }

tr40493a { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 120-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++F+f|f++F++GGGG++gggg++gggg
  g=gggg
  }

tr40493b { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 240-degree rotation
  Axiom c9f++c12f++c14f
  f=gggg++gggg++F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gf|gg++G+g|g++G++G+ggg|ggg++G+gg|fg++F+f|f++F++GGGG++gggg
  g=gggg
  }

tr40494# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gg|fg++G+g|g++G++G+ggg|ggg++G+gf|gg++F+f|f++F++GGGG
  g=gggg
  }

tr40495# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+f|g++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40496# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|f++G++G+ggf|ffg++G+gg|gg++G+g|g++G++G+ggg|ggg++G+gf|fg++F+f|g++F++GGGG
  g=gggg
  }

tr40497# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+f|g++G++G+ggg|ggg++G+gf|fg++F+g|f++F++GGGG
  g=gggg
  }

tr40498# { ; Anthony Hanmer 16/9/2003
  Angle 6 ; 4x4 triangular HTile
  ; Variation on Tr40236, re-drawn using the L4 DNA
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=F+ffg|ggf++F+fg|gf++G+g|g++G++G+ggf|ffg++G+gg|gg++G+g|f++G++G+ggg|ggg++G+gf|fg++F+f|g++F++GGGG
  g=gggg
  }

tr50001* { ; Anthony Hanmer 12/9/2002
  Angle 6 ; 1st 5x5 triangular HTile
  Axiom c9f++c12f++c14f; (Time for a change)
  f=f++f|f++ffff|ffff++ff++fff|fff++ff|ff++ff
  }

tr50002* { ; Anthony Hanmer 12/9/2002
  Angle 6 ; 2nd 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f++ffff|ffff++f++ff|ff+f++fff|fff+ff
  }

tr50003* { ; Anthony Hanmer 12/9/2002
  Angle 6 ; 3rd 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f++ffff|ffff++ff++fff--ff|ff++fff+ff
  }

tr50004* { ; Anthony Hanmer 12/9/2002
  Angle 6 ; 4th 5x5 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f--ffff|ffff++f+ff++fff|fff++ff|ff++ff
  }

tr50005* { ; Anthony Hanmer 12/9/2002
  Angle 6 ; 5th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f--f++f++f|f--f--f++f++ff+f++f--ff|ff++f--f++f++f|f++f|f++f
  }

tr50006* { ; Anthony Hanmer 12/9/2002
  Angle 6 ; 6th 5x5 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f--ff|ff++f++ff|ff++f+fff|fff++f+ff|ff++ff
  }

tr50007* { ; Anthony Hanmer 12/9/2002
  Angle 6 ; 7th 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+ff|f-f|ff|f+f++f+fff|fff++f+ff|ff++f+f|f++f
  }

tr50008* { ; Anthony Hanmer 13/9/2002
  Angle 6 ; 8th 5x5 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++fff|fff++f++ff|ff++fff|fff++ff++f|f+f
  }

tr50009* { ; Anthony Hanmer 13/9/2002
  Angle 6 ; 9th 5x5 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+fff|fff++f++ff|ff++fff|fff++ff++f|f++f|f++f
  }

tr50010* { ; Anthony Hanmer 13/9/2002
  Angle 6 ; 10th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++f-ff|ff+f++f+ff|ff++f++f|f++ff|ff++f++f|f+f
  }

tr50011* { ; Anthony Hanmer 13/9/2002
  Angle 6 ; 11th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f-ff|ff+f++f+ff|ff++f++f|f++ff|ff++f++f|f++f|f++f
  }

tr50012* { ; Anthony Hanmer 14/9/2002
  Angle 6 ; 12th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--ff+f|f++ff|ffff++f+f++f|f++f|f++f++f|f++f|f++ff
  }

tr50013* { ; Anthony Hanmer 14/9/2002
  Angle 6 ; 13th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=ff++f+f|ff+f|f++ff|fff++f++f|f++f++f|f++f|f++f+f|f++f
  }

tr50014* { ; Anthony Hanmer 14/9/2002
  Angle 6 ; 14th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++ff++f|fff|ff+ff++ff+ff|ff++f++ff|ff+f
  }

tr50015* { ; Anthony Hanmer 14/9/2002
  Angle 6 ; 15th 5x5 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+ff++f|fff|ff+ff++ff+ff|ff++f++ff|ff++f|f++f
  }

tr50016* { ; Anthony Hanmer 14/9/2002
  Angle 6 ; 16th 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f+f++ff--fff|fff++ff+ff++ffff|ffff+f
  }

tr50017* { ; Anthony Hanmer 14/9/2002
  Angle 6 ; 17th 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++ff--fff|fff++ff+ff++ffff|ffff++f|f++f
  }

tr50018* { ; Anthony Hanmer 14/9/2002
  Angle 6 ; 18th 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f|f++f|f++f++ff--fff|fff++ff+ff++fff|fff+f
  }

tr50019* { ; Anthony Hanmer 14/9/2002
  Angle 6 ; 19th 5x5 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f+f|f++f++ff--fff|fff++ff+ff++fff|fff++f|f++f
  }

tr50020* { ; Anthony Hanmer 15/9/2002
  Angle 6 ; 20th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--ff|ff++f++ff-ff|ff+ff++f++ff|ff+f++f|f+ff
  }

tr50021* { ; Anthony Hanmer 15/9/2002
  Angle 6 ; 21st 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff-ff|ff+f--f|ff|f+f|f--f++ff++f+f|f-f+f+f|f++f
  }

tr50022* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 22nd 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+ff--ff|f+f++f++f|f--f--f++f++ff++ff+f--f++f|f--f++f++ff
  }

tr50023* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 23rd 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f++f|f--f++f++ff--ff|f+f++f++f|f--f--f++f++ff++ffff
  }

tr50024* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 24th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++ff--ff|f+f++f++f|f--f--f++f++ff++ff+f--f|f++f++ff
  }

tr50025* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 25th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f|f++f++ff--ff|f+f++f++f|f--f--f++f++ff++ff+f|f++ff
  }

tr50026* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 26th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f+f|f++f--ff|f+f++f++f|f--f--f++f++ff++fff++f|f++f|f++f
  }

tr50027* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 27th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+f++f|f+f--ff|f+f++f++f|f--f--f++f++ff++ff+f|f++f+f|f++f
  }

tr50028* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 28th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++f+f|f++f--ff|f+f++f++f|f--f--f++f++ff++fff++f|f+f
  }

tr50029* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 29th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--f|f++f++ff--ff|f+f++f++f|f--f--f++f++ff++ff+f|f++ff
  }

tr50030* { ; Anthony Hanmer 16/9/2002
  Angle 6 ; 30th 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=f+fff-f|ff++ff|f+f|f++f--f--fff--f--f|f++f+ffff
  }

tr50031* { ; Anthony Hanmer 19/9/2002
  Angle 6 ; 31st 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--ff|ff++f++ff|ff++f++ff|ff+f++fff|fff+ff
  }

tr50032* { ; Anthony Hanmer 19/9/2002
  Angle 6 ; 32nd 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=f++f--ffff|ffff++f+f++ff|ff+f++fff|fff+ff
  }

tr50033* { ; Anthony Hanmer 19/9/2002
  Angle 6 ; 33rd 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--ff|ff++f++ff|ff++ff++fff|fff++ff|ff++ff
  }

tr50034* { ; Anthony Hanmer 19/9/2002
  Angle 6 ; 34th 5x5 triangular HTile
  ; One of my best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++ff|ff++f++ff|ff+f++fff|fff+f++ff|ff+f
  }

tr50035* { ; Anthony Hanmer 19/9/2002
  Angle 6 ; 35th 5x5 triangular HTile
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f--ff|ff++f++ff|ff++f++ff|ff++fff|fff++fff
  }

tr50036* { ; Anthony Hanmer 19/9/2002
  Angle 6 ; 36th 5x5 triangular HTile
  ; Needs correcting
  Axiom c9f++c12f++c14f
  f=f+ff|ff++f++ff|ff+f++fff|fff+f+f++ff|ff--f++f
  }

tr50037* { ; Anthony Hanmer 19/9/2002
  Angle 6 ; 37th 5x5 triangular HTile
  Axiom c9f++c12f++c14f
  f=ff++ff|ff+f++fff|fff+f+f++ffff|ffff--f++f
  }

tr50038# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 38th 5x5 triangular HTile, 1st dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom f;c9f++c12f++c14f
  f=f+ggff++f++f|f--f--f-f|ff|f+f++f++f|f--f+gg++f+f--f|f++f++fff
  g=ggggg
  }

tr50038r { ; Anthony Hanmer 13/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=f+ggff++f++f|f--f--f-f|ff|f+f++f++f|f--f+gg++f+f--f|f++f++fff
;  f=g|f|g+gg|ff|gg+ggg|fff|ggg+gggg|ffff|gggg+fffff|ggggg|fffff
  g=gggg
  }

tr50039# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 39th 5x5 triangular HTile, 2nd dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=f+gfgf++f++f|f--f--f-f|ff|f+g++f-f|f+f+fg++f+f--f|f++f++fff
  g=ggggg
  }

tr50039r { ; Anthony Hanmer 13/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=f+gfgf++f++f|f--f--f-f|ff|f+g++f-f|f+f+fg++f+f--f|f++f++fff
;  f=g|f|g+gg|ff|gg+ggg|fff|ggg+gggg|ffff|gggg+fffff|ggggg|fffff
  g=gggg
  }

tr50040# { ; Anthony Hanmer 16/10/2002, re-done 13/9/2003
  Angle 6 ; 40th 5x5 triangular HTile, 3rd dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=F+f--f|f++f++F+f--f|f++f++F+f--f|f++f++FF++G+gff|ffg++G+gf|fg++GG+f|f++G++GGGGG++GGGGG
  g=ggggg
  }

tr50040r { ; Anthony Hanmer 16/10/2002, re-done 13/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=G+f--f|f++f++G+f--f|f++f++G+f--f|f++f++GG|FFFFF|GGGGG++G+gff|ffg++G+gf|fg++GG+f|f++G++GGGGG++GGGGG
  g=gggg
  }

tr50041# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 41st 5x5 triangular HTile, 4th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=f+ffgg++f|f--gg++f|f+ff++f++f|f++f--f++f--f|ff|f-f--f++f++fff
  g=ggggg
  }

tr50041r { ; Anthony Hanmer 13/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=f+ffgg++f|f--gg++f|f+ff++f++f|f++f--f++f--f|ff|f-f--f++f++fff
;  f=g|f|g+gg|ff|gg+ggg|fff|ggg+gggg|ffff|gggg+fffff|ggggg|fffff
  g=gggg
  }

tr50042# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 42nd 5x5 triangular HTile, 5th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++ggff++g++f|f--g--f-f|ff|f+f++f++f|f--f+gg++f+f--f|f++f++fff
  g=ggggg
  }

tr50043# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 43rd 5x5 triangular HTile, 6th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f++f|f++gfgf++g++f|f--g--f-f|ff|f+g++f-f|f+f+fg++f+f--f|f++f++fff
  g=ggggg
  }

tr50044# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 44th 5x5 triangular HTile, 7th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=f+fggg++f|f--gg++f+f|f-f-f|f-g++ff|ff+f++f++f|f+f+f--f|f++f++ff
  g=ggggg
  }

tr50044r { ; Anthony Hanmer 13/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=f+fggg++f|f--gg++f+f|f-f-f|f-g++ff|ff+f++f++f|f+f+f--f|f++f++ff
;  f=g|f|g+gg|ff|gg+ggg|fff|ggg+gggg|ffff|gggg+fffff|ggggg|fffff
  g=gggg
  }

tr50045# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 45th 5x5 triangular HTile, 8th dust
  ; One of my VERY best HTs
  Axiom c9f++c12f++c14f
  f=f+fggg++f|f--gg++f|ff|f++f|f-g++ff|ff+f++f++f|f+f+f--f|f++f++ff
  g=ggggg
  }

tr50046# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 46th 5x5 triangular HTile, 9th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=f+ggff++f++ff--f|f++ff--f--ffgg++f++f|f++f--f++f|f--f++f++fff
  g=ggggg
  }

tr50046r { ; Anthony Hanmer 13/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=f+ggff++f++ff--f|f++ff--f--ffgg++f++f|f++f--f++f|f--f++f++fff
;  f=g|f|g+gg|ff|gg+ggg|fff|ggg+gggg|ffff|gggg+fffff|ggggg|fffff
  g=gggg
  }

tr50047# { ; Anthony Hanmer 16/10/2002
  Angle 6 ; 47th 5x5 triangular HTile, 10th dust
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=f+gg+f|f++ff++f++ff++f|f-f|f++ff--f--ffgg++f++f|f+f+f|f++ff
  g=ggggg
  }

tr50047r { ; Anthony Hanmer 13/9/2003
  Angle 6 ; e-r
  Axiom c9f++c12f++c14f
  f=f+gg+f|f++ff++f++ff++f|f-f|f++ff--f--ffgg++f++f|f+f+f|f++ff
;  f=g|f|g+gg|ff|gg+ggg|fff|ggg+gggg|ffff|gggg+fffff|ggggg|fffff
  g=gggg
  }

tr50048# { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 5x5 triangular HTile
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=F+g--f|f++g++F+f--f|f++f++F+f--g|g++f++FF++G+ffff|ffff++G+gf|fg++GG+f|f++G++GGGGG++GGGGG
  g=ggggg
  }

tr50048r { ; Anthony Hanmer 13/9/2003
  Angle 6 ; 5x5 triangular HTile, e-r
  ; One of my VERY best HTs
  ; X-axis reflectional symmetry
  Axiom c9f++c12f++c14f
  f=G+g--f|f++g++G+f--f|f++f++G+f--g|g++f++GG|FFFFF|GGGGG++G+ffff|ffff++G+gf|fg++GG+f|f++G++GGGGG++GGGGG
  g=ggggg
  }

