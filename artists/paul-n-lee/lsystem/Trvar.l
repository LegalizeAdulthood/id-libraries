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


Trvar.l

_README    { ;   Anthony Hanmer 2001
  angle 4    ;   Variations on Trees, Bushes and Plants
  axiom f
  f=f
  }

Tree01     { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4    ;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx  ; a pseudo-spacefilling tree
  X=@iq2[-fx]+fx
  }

Tree01c1   { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4    ;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx  ; a pseudo-spacefilling tree, colour version 1
  X=@iq2[>1-fx]<1+fx
  }

Tree01c2   { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4    ;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx  ; a pseudo-spacefilling tree, colour version 2
  X=@iq2[>1-fx]>1+fx
  }

Tree02       { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 12     ;    Tree1, angle changed to 12, @ to inverse of sqrt 2 -
  axiom +++FX  ; a Levy's Curve variation
  X=@iq2[--FX]++FX
  }

Tree02a      { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 12     ;    Tree1, angle changed to 12, @ to Golden Ratio -
  axiom +++FX  ;
  X=@.6180339887449[--FX]++FX
  }

Tree03      { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8     ;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
  axiom ++FX  ; a Levy's Curve variation
  X=@iq2[-FX]+FX
  }

Tree03a     { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8     ;    Tree1, angle changed to 8, @ to Golden Ratio -
  axiom ++FX  ;
  X=@.6180339887449[-FX]+FX
  }

Tree04      { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8     ;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
  axiom ++FX  ;
  X=@iq2[--FX]+FX
  }

Tree04a     { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8     ;    Tree1, angle changed to 8, @ to Golden Ratio -
  axiom ++FX  ;
  X=@.6180339887449[--FX]+FX
  }

Tree05 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
  axiom ++FX; Twindragon tree
  X=@iq2[---FX]+FX
  }

Tree05a { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;    Tree1, angle changed to 8, @ to Golden Ratio -
  axiom ++FX;
  X=@.6180339887449[---FX]+FX
  }

Tree06 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
  axiom ++FX; mirror image of Tree04
  X=@iq2[-FX]++FX
  }

Tree07 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
  axiom ++FX; Twindragon tree, mirror image of Tree05
  X=@iq2[-FX]+++FX
  }

Tree08 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
  axiom ++FX;
  X=@iq2[--FX]+++FX
  }

Tree08a { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;    Tree1, angle changed to 8, @ to Golden Ratio -
  axiom ++FX;
  X=@.6180339887449[--FX]+++FX
  }

Tree09 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
  axiom ++FX; mirror image of Tree08
  X=@iq2[---FX]++FX
  }

Tree10 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling... smoke?
  X=@iq2[-gx]+fx
  }

Tree10c1 { ; Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling... smoke?  (Colour version 1)
  X=@iq2[>1-gx]<1+fx
  }

Tree10c2 { ; Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling... smoke?  (Colour version 2)
  X=@iq2[>1-gx]>1+fx
  }

Tree10a { ;  Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to Golden Ratio -
  axiom +fx;
  X=@.6180339887449[-gx]+fx
  }

Tree11 { ;    Anthony Hanmer 2001, adapted from
  angle 8;    Tree10, angle changed to 8 - Twindragon tree
  axiom ++FX
  X=@iq2[---GX]+FX
  }

Tree12 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling ... dust?
  X=@iq2[-fgx]+fx
  }

Tree13 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling ... dust?
  X=@iq2[-fgx]+fgx
  }

Tree14 { ;   Anthony Hanmer 2001, adapted from
  angle 8;   Tree12, angle changed to 8 - Twindragon tree
  axiom ++fx
  X=@iq2[---fgx]+fx
  }

Tree15 { ;   Anthony Hanmer 2001, adapted from
  angle 8;   Tree1, angle changed to 8 - Twindragon tree
  axiom ++fx
  X=@iq2[---fgx]+fgx
  }

Tree16 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 12;   Tree1, angle changed to 12, @ to .615
  axiom +++fx
  X=@.615[--fx--]++fx++
  }

Tree17 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6;   Tree1, angle changed to 6, @ to .5
  axiom fx
  X=@.5[fx+]@2fx[+fx]
  }

Tree18 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6;   Tree1, angle changed to 6, @ to .615
  axiom fx
  X=@.615[fx-][fx][+fx]
  }

Tree19 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 12;   Tree1, angle changed to 12, @ to .615
  axiom ++++++fx
  X=@.615[fx--][--fx++]
  }

Tree20 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to .615
  axiom fx++fx
  X=@.615[fx-][-fx+]
  }

Tree21 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to .5
  axiom fx;
  X=@.5+fx[-fx]@2+fx
  }

Tree22 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 12;   Tree1, angle changed to 12, @ to .615
  axiom +++++fx
  X=@.615[gx--][--fx++]
  }

Tree23 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to .5
  axiom fx;
  X=@.5+fx[-gx]@2+fx
  }

Tree24 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to .5
  axiom fx;
  X=@.5+fx[-fx]@2+gx
  }

Tree25 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to .5
  axiom fx;
  X=@.5+gx[-fx]@2+gx
  }

Tree26 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 12;   Tree1, angle changed to 12, @ to .615
  axiom ++++++fx
  X=@.615[fx--][--fgx++]
  }

Tree27 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to .615
  axiom fx
  X=@.615[fx-][fgx][+fx]
  }

Tree28 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6;   Tree1, angle changed to 6, @ to .615
  axiom +++fx
  X=@.615[fx-][-fx+]
  }

Tree29 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 3;   Tree1, angle changed to 3, @ to .615
  axiom [fx]+[fx]+[fx];
  X=@.615[-fx]+fx
  }

Tree30 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2
  axiom ++fx;
  X=@iq2fx[-fx+]@q2fx
  }

Tree30a { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;    Tree1, angle changed to 4, @ to inverse of sqrt 2
  axiom fx-fx-fx-fx;
  X=@iq2fx[-fx+]@q2fx
  }

Tree30b { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;    Tree1, angle changed to 4, @ to inverse of sqrt 2
  axiom fx++fx;
  X=@iq2fx[-fx+]@q2fx
  }

Tree31 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4
  axiom ++fx;
  X=fx[-fx+]fx
  }

Tree31a { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;    Tree1, angle changed to 4
  axiom fx-fx-fx-fx;
  X=fx[-fx+]fx
  }

Tree32 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling... dust?
  X=@iq2[-gfxg]+gfxg
  }

Tree33 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling tree
  X=@iq2[-ffx]+fx
  }

Tree33c { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling tree (colour version)
  X=@iq2[>1-ffx]<1+fx
  }

Tree34 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
  axiom +fx; a pseudo-spacefilling... dust?
  X=@iq2[-fgfx]+fx
  }

Tree35 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 12;   Tree1, angle changed to 12, @ to inverse of sqrt 2 -
  axiom +++fx;
  X=@iq2[--ffx]++fx
  }

Tree36 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 12;   Tree1, angle changed to 12, @ to inverse of sqrt 2 -
  axiom +++fx;
  X=@iq2[--fgfx]++fx
  }

Tree37 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;   Tree1, angle changed to 8, @ to inverse of sqrt 2
  axiom +fx;
  X=@iq2[--ffx]+fx
  }

Tree38 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;   Tree1, angle changed to 8, @ to inverse of sqrt 2
  axiom +fx;
  X=@iq2[--fgfx]+fx
  }

Tree39 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;   Tree1, angle changed to 8, @ to inverse of sqrt 2
  axiom +fx;
  X=@iq2[-ffx]++fx
  }

Tree40 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 8;   Tree1, angle changed to 8, @ to inverse of sqrt 2
  axiom +fx;
  X=@iq2[-fgfx]++fx
  }

Tree50 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6;   Tree1,
  axiom fx;
  X=@iq2[--fx]+fx
  }

Tree51 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6;   Tree1,
  axiom fx;
  X=@iq2[--fx]++fx
  }

Tree52 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6;   Tree1,
  axiom fx;
  X=@iq2[--fx]-fx
  }

Tree53 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6;   Tree1,
  axiom fx;
  X=@iq2[-fx]++fx[-fx]
  }

Tree54 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6;   Tree1,
  axiom fx;
  X=@iq2[--fx]++fx[--fx]
  }

Tree55    { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6   ;   Tree1,
  axiom fx  ;
  X=@iq2[--fx][++fx]--fx
  }

Tree56    { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 6   ;   Tree1,
  axiom fx  ;
  X=@.615[-fx]+@i.615fx
  }

Tree57     { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4    ;   Tree1,
  axiom +fx  ;
  X=@iq2[-fx]+@q2fx
  }

Tree58    { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 3   ;   Tree1,
  axiom fx  ;
  X=@.615[-fx]+fx
  }

Tree59    { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 3   ;   Tree1,
  axiom fx  ;
  X=@.615[-gx]+fx
  }

Tree60    { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4   ;   Tree1,
  axiom +x  ; a spacefilling tree
  x=f@iq2[-x!]+fx
  }

Tree61   { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4  ;   Tree1,
  axiom x  ;
  x=f@iq2[-x]!+fx
  }

Tree62    { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4   ;   Tree1,
  axiom +x  ;
  x=f@.68[+x!]+fx
  }

Tree63    { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
  angle 4   ;   Tree1,
  axiom +x  ; a spacefilling tree
  x=f@iq2[+x]!+fx
  }

Plant01a  { ; Adrian Mariano, from the Algorithmic Beauty of Plants
            ; Plant-like structure, figure 1.24a p.25
            ; also p.285a The Science of Fractal Images
  angle 4
  axiom +f
  f=F[+F]F[-F]F
  }

Plant01b  { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom +f
  f=F[+F]F[-F]
  }

Plant01c  { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom +f
  f=F[+F]@iq2F@q2[-F]F
  }

Plant01d { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom +f
  f=[+F]F[-F]F
  }

Plant01e { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom +f
  f=F[+F]+F[+F]-F
  }

Plant01f { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom f+f+f+f
  f=F[+F]+[-F]-F
  }

Plant01g { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom +f
  f=F[+F]-[-F]+F
  }

Plant01h { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom f
  f=F[+F]@.5F@2[-F]F
  }

Plant01i { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom f
  f=F[+F]F[-F]F
  }

Plant01ia { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom [f]+[f]+[f]+[f]+[f]+[f]
  f=F[+F]F[-F]F
  }

Plant01j { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom f
  f=F[+F]F[-F]
  }

Plant01ja { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom [f]++[f]++[f]
  f=F[+F]F[-F]
  }

Plant01jb { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom [f]+[f]+[f]+[f]+[f]+[f]
  f=F[+F]F[-F]
  }

Plant01k { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom f
  f=F[+F]@iq2F@q2[-F]F
  }

Plant01ka { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom [f]+[f]+[f]+[f]+[f]+[f]
  f=F[+F]@iq2F@q2[-F]F
  }

Plant01l { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom f
  f=[+F]F[-F]F
  }

Plant01m { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom f
  f=F[+F]+F[+F]-F
  }

Plant01ma { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom [f]+[f]+[f]+[f]+[f]+[f]
  f=F[+F]+F[+F]-F
  }

Plant01mb { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom [f--f]+[f--f]+[f--f]+[f--f]+[f--f]+[f--f]
  f=F[+F]+F[+F]-F
  }

Plant01n { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom f+f+f+f+f+f
  f=F[+F]+[-F]-F
  }

Plant01o { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom f
  f=F[+F]-[-F]+F
  }

Plant01p { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom f
  f=F[+F]@.5F@2[-F]F
  }

Plant01pa { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 6
  axiom [f]+[f]+[f]+[f]+[f]+[f]
  f=F[+F]@.5F@2[-F]F
  }

Plant02 { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom +f
  f=F[+F]F[-F][F]
  }

Plant03 { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom f
  f=FF-[-F+F]+[+F-F]
  }

Plant05 { ; Adrian Mariano, altered by Anthony Hanmer 2001
  angle 4
  axiom +x
  X=f[+X][-X]FX
  F=FF
  }

Plant07 { ; Ken Philip, altered by Anthony Hanmer 2001
  axiom +Z
  Z=ZGX[+Z][-Z]
  X=X[-FFF][+FFF]FX
  angle 4
  }

Plant07a { ; Ken Philip, altered by Anthony Hanmer 2001
  axiom +Z
  Z=ZGX[+Z][-Z]
  X=X[-GFG][+GFG]FX
  angle 4
  }

Plant10a {  ; Adapted from Adrian Mariano's Plant10, Anthony Hanmer 2001:
   axiom +f ; a tile
   f=f[+ff][-f]f[+f][-ff]f
   angle 4
   }

Plant10aa {  ; Adapted from Adrian Mariano's Plant10, Anthony Hanmer 2001:
   axiom c9f+c10f+c12f+c14f ; a tile
   f=f[+ff][-f]f[+f][-ff]f
   angle 4
   }

Plant10b {  ; Adapted from Adrian Mariano's Plant10, Anthony Hanmer 2001
   axiom +f
   f=f@2[+f]@.5[-f]f[+f][-f]f
   angle 4
   }

Plant10c {  ; Adapted from Adrian Mariano's Plant10, Anthony Hanmer 2001
   axiom +f
   f=f@2[+f][-f]f[+f][-f]@.5f
   angle 4
   }

Plant10d {  ; Adapted from Adrian Mariano's Plant10, Anthony Hanmer 2001
   axiom +f
   f=f@q2[+f][-f]f[+f][-f]@iq2f
   angle 4
   }

Bush01 { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 4
  Axiom +F
  F=FF-[-F+G+F]+[+F-G-F]
  }

Bush01a { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 4
  Axiom F+F+F+F
  F=FF-[-F+G+F]+[+F-G-F]
  }

Bush01b { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 4
  Axiom [F]+[F]+[F]+[F]
  F=FF-[-F+G+F]+[+F-G-F]
  }

Bush02 { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 4
  Axiom +F
  F=FF-[-F+G+]+[+F-G-]
  }

Bush02a { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 4
  Axiom [F]+[F]+[F]+[F]
  F=FF-[-F+G+]+[+F-G-]
  }

Bush03 { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 4
  Axiom +F
  F=FF+[-F-FG]-[+F+FG]
  }

Bush03a { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 4
  Axiom F++F
  F=FF+[-F-FG]-[+F+FG]
  }

Bush03b { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 4
  Axiom [F]++[F]
  F=FF+[-F-FG]-[+F+FG]
  }

Bush04 { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom F
  F=FF-[-F+G+F]+[+F-G-F]
  }

Bush05   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom F
  F=FF--[-F+G+]++[+F-G-]
  }

Bush05a   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom [F]+[F]+[F]+[F]+[F]+[F]
  F=FF--[-F+G+]++[+F-G-]
  }

Bush06   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom F
  F=FF-[-F+G+]+[+F-G-]
  }

Bush06a   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom F+++F
  F=FF-[-F+G+]+[+F-G-]
  }

Bush06b   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom F+F+F+F+F+F
  F=FF-[-F+G+]+[+F-G-]
  }

Bush06c   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom [F]++[F]++[F]
  F=FF-[-F+G+]+[+F-G-]
  }

Bush06d   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom [F]+[F]+[F]+[F]+[F]+[F]
  F=FF-[-F+G+]+[+F-G-]
  }

Bush07   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom F
  F=FF--[-F+G+F]++[+F-G-F]
  }

Bush07a   { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
  Angle 6
  Axiom [F]++[F]++[F]
  F=FF--[-F+G+F]++[+F-G-F]
  }

==========================================================================
