X-Originating-IP:  [212.72.143.2]
X-Originating-Email:  [a_hanmer@hotmail.com]
X-Sender:  a_hanmer@hotmail.com
From:  "Tony (Anthony) Hanmer" <a_hanmer@hotmail.com>
To:  fractint@mailman.xmission.com
Date:  Wed, 28 Jan 2004 00:07:35 +0500
Subject:  [Fractint] A couple more


Another pair of small L-systems files I have included below in their 
entirety are Trvar.l and TTiles.l.  The former is another set of my 
variations on others' work - Trees, Bushes and Plants.  The latter contains 
a few tiles I have found - some of which may be new, others not.  A few of 
them are also mlr - multiple-layer redundant; in other words, they have 
several layers of the same thing on top of each other, and are in need of 
simplification to remove this extra unnecessary repetition.  But all of them 
are interesting.  If any of the tiles are, in fact, my rediscoveries of 
others' tiles, I'd like to be informed about it.

Paste the files separately into a text editor and call them Trvar.l and 
TTiles.l; then save them into your Fractint directory and you're ready to 
use their contents as type Lsystem.

Tony Hanmer
Tbilisi, Republic of Georgia


TTiles.l

_README  { ; Anthony Hanmer 2000-2002
  Angle 4  ; Miscellaneous tiles, some of them perhaps not new.
  Axiom f
  f=f
  }

ADH0794  { ; Anthony Hanmer 2000
  Angle 6  ; a tile
  Axiom f
  f=+@.5ff+++ff++@2g
  }

ADH01782 { ; Anthony Hanmer 2000
  Angle 4  ; DC type
  Axiom f
  f=ff++f+f+f
  }

adh6280  { ; Anthony Hanmer 2001
  Angle 3  ; a tile; rounding needed
  Axiom f
  ;Axiom c9f+c12f+c14f  ; 3 colours
  ;Axiom c32[f]+c35[f]+c39[f]+c42[f]+c44[f]+c2[f]  ; 6-coloured star
  f=f+f-f-f+f+f-f
  ;f=>1f+f-f-f+f+f-<1f  ; colour 1
  }

adh6543  { ; Anthony Hanmer 2001
  Angle 4  ; a new tile!
  Axiom f  ; (though massively layer-redundant, or mlr)
  ;Axiom c9f|c12f
  f=+!ff|ff-!@2f@.5
  ;f=+!>1ff|ff-!@2<1f@.5  ; colour 1
  ;Axiom x ; (6543 using x instead of f)
  ;x=+!fx|fx-!@2f@.5  ; Rhombic tile of 1:2 bricks
  }

adh6544  { ; Anthony Hanmer 2001
  Angle 8  ; The new tile's Angle can be changed
  Axiom f  ; (mlr)
  f=+!ff|ff---!@2f@.5
  }

adh6545  { ; Anthony Hanmer 2001
  Angle 8  ; The new tile's Angle can be changed
  Axiom f  ; (mlr)
  f=+++!ff|ff-!@2f@.5
  }

adh6672  { ; Anthony Hanmer 2001
  Angle 4  ; a tile
  Axiom +x
  x=f[@.5x]+![@.5x]+!+!f[@.5x]-![@.5x]
  ;x=>1f[@.5x]+![@.5x]+!+!f[@.5x]-![@.5<1x]  ; colour 1
  }

adh6748  { ; Anthony Hanmer 2001
  Angle 4  ; tile w/td"vines", sides ratio 1:GR
  Axiom x
  x=f+![@.6180339887499x]+[@.6180339887499x]|[@.6180339887499x]
  ;x=>1f+![@.6180339887499x]+[@.6180339887499x]|[@.6180339887499<1x]  ; colour 1
  }

adh8320  { ; Anthony Hanmer 6/2002
  Angle 3  ; nice overlapping hex tile
  Axiom f
  f=f+@2f@.5-f
  ;f=>1f+@2f@.5-<1f  ; colour 1
  }

adh8735a { ; Anthony Hanmer 7/2002
  Angle 6  ; a hexagonal (tile) echo of 8735
  Axiom f
  f=f+f|@2f@.5|f-f
           ; Hausdorff dimension:  log(5)/log() =
  }

adh9622  { ; Anthony Hanmer 19/10/2002
  Angle 6  ; I BELIEVE this is a tile...
  Axiom f  ; but it's hard to prove.
  f=f++f--g++f|f--g++f+g
  g=gg
  }

T325     { ; Anthony Hanmer 2000
  Angle 4  ; DC type
  Axiom f;+f+f+f
  ;Axiom c9f-c10f-c12f-c14f  ; colour 1
  ;Axiom c09f-c12f-c09f-c12f--c14f+f+f+f  ; colour 2
  f=f-ff++f-f
  }

==========================================================================
