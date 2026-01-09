; fml_0401.l, a collection of l-systems posted to the 
; Fractint mail list during January 2004
; compiled by Roger Kaufman

;========================================================================;
;From: a_hanmer at hotmail.com (Tony (Anthony) Hanmer)
;Date: Thu Jan 22 21:05:37 2004
;Subject: [Fractint] Some new tiles

;STs.l

ST30016* { ; Anthony Hanmer 7/2002
Angle 6 ; nc; and 3 together make a tile
Axiom c9f++c12f++c14f
f=@2f@.5--f++f+@2f@.5-f--f++@2f@.5
}

ST30023* { ; Anthony Hanmer 7/2002
Angle 6 ; nc; and 3 together make a tile
Axiom c9f++c12f++c14f
f=ff+f+f--f-f-f+f+f++f-f-ff
}

ST30040* { ; Anthony Hanmer 7/2002
Angle 6 ; nc; and 3 together make a tile
Axiom c9f++c12f++c14f
f=@2f@.5+f++f--@2f-f--f++f+f@.5++f--f-@2f@.5
}

ST40001* { ; Anthony Hanmer 2000 (was T105aa, my first ST and first square 
ST)
Angle 4; non-crossing (nc); and 4 together make a tile
Axiom c9f+c10f+c12f+c14f
f=ffff+fff+ff+f+f-f-ff-fff-ffff
}

ST40009* {; Anthony Hanmer 6/2002 (was T105aa03b)
Angle 4  ; nc; and 4 together make a tile
Axiom c9f+c10f+c12f+c14f
f=f+@iq2f+@iq2f-@q2f-@q2f
}

ST40465* { ; Anthony Hanmer 7/2002
Angle 4 ; nc; and 4 together make a tile
Axiom c9f+c10f+c12f+c14f
f=f+f-f+f-f-f+f-f-@2f@.5+f+f-f+f+f-f+f-f
}

ST60020* { ; Anthony Hanmer 6/2002
Angle 6 ; nc; and 6 together make a tile
Axiom c1f+c2f+c3f+c4f+c5f+c6f
f=ff+f+f+ff-f-f-ff
}

ST60059* { ; Anthony Hanmer 6/2002
Angle 6 ; nc; and 6 together make a tile
Axiom c1f+c2f+c3f+c4f+c5f+c6f
f=f-f+f+@2f@.5+f+f-f-@2f@.5-f-f+f
}

ST60062* { ; Anthony Hanmer 6/2002
Angle 6 ; nc; and 6 together make a tile
Axiom c1f+c2f+c3f+c4f+c5f+c6f
f=f-ff+f+f+f+f-f-f-f-ff+f
}

;========================================================================;
;From: a_hanmer at hotmail.com (Tony (Anthony) Hanmer)
;Date: Tue Jan 27 00:30:36 2004
;Subject: [Fractint] Derivations

;deriv.l

Alfonseca029 { ; Manuel Alfonseca rendered for fractint
Angle 4 ; altered by Anthony Hanmer 2001
Axiom +A
A=f-[A+A]+f[+fA]A
f=ff
}

Alfonseca097 { ; Manuel Alfonseca rendered for fractint
Angle 12 ; altered by Anthony Hanmer 2001
Axiom A
A=f-[A+A]+!f[+!fA]-A
f=ff
}

Alfonseca120 { ; Manuel Alfonseca rendered for fractint
Angle 16 ; altered by Anthony Hanmer 2001
Axiom A
A=f-[A+A]+f[+fA]-!A
f=ff
}

;========================================================================;
;From: a_hanmer at hotmail.com (Tony (Anthony) Hanmer)
;Date: Tue Jan 27 00:33:04 2004
;Subject: [Fractint] Golden Ratio and related plants

pl03-- {  ; Anthony Hanmer 2001
Angle 3; Golden Ratio plant series
Axiom x
x=f[+!@.6180339887499x-x]
}

pl03a {  ; Anthony Hanmer 2001
Angle 3; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!-x]!
}

pl04+ {  ; Anthony Hanmer 2001
Angle 4; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!+x]
}

pl04+++ {  ; Anthony Hanmer 2001
Angle 4; Golden Ratio plant series
Axiom x
x=f[+!@.6180339887499x!+x]
}

pl04b {  ; Anthony Hanmer 2001
Angle 4; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!-x]!
}

pl05++ {  ; Anthony Hanmer 2001
Angle 5; Golden Ratio plant series
Axiom x
x=f[+!@.6180339887499x+x]
}

pl06- {  ; Anthony Hanmer 2001
Angle 6; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!-x]
}

pl06+ {  ; Anthony Hanmer 2001
Angle 6; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!+x]
}

pl08+++ {  ; Anthony Hanmer 2001
Angle 8; Golden Ratio plant series
Axiom x
x=f[+!@.6180339887499x!+x]
}

pl08-c1 {; Anthony Hanmer 2001
Angle 8; Golden Ratio plant series
Axiom x; colour 1
x=f[+@.6180339887499>1x!-x]
}

pl08e {  ; Anthony Hanmer 2001
Angle 8; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!-x!-@.6180339887499x]
}

pl12a {   ; Anthony Hanmer 2001
Angle 12; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!+++++x]
}

pl16- {   ; Anthony Hanmer 2001
Angle 16; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!-x]
}

pl16+++ {   ; Anthony Hanmer 2001
Angle 16; Golden Ratio plant series
Axiom x
x=f[+!@.6180339887499x!+x]
}

pl24+ {   ; Anthony Hanmer 2001
Angle 24; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x!+x]
}

pl24b {   ; Anthony Hanmer 2001
Angle 24; Golden Ratio plant series
Axiom x
x=f[+@.6180339887499x+x+x!+@.6180339887499x+x+x]!
}

;========================================================================;
;From: a_hanmer at hotmail.com (Tony (Anthony) Hanmer)
;Date: Tue Jan 27 12:08:11 2004
;Subject: [Fractint] A couple more

;Trvar.l

_README {;   Anthony Hanmer 2001
angle 4;   Variations on Trees, Bushes and Plants
axiom f
f=f
}

Tree01 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 4;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
axiom +fx; a pseudo-spacefilling tree
X=@iq2[-fx]+fx
}

Tree01c1 {;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 4 ;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
axiom +fx ; a pseudo-spacefilling tree, colour version 1
X=@iq2[>1-fx]<1+fx
}

Tree01c2 {;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 4 ;   Tree1, angle changed to 4, @ to inverse of sqrt 2 -
axiom +fx ; a pseudo-spacefilling tree, colour version 2
X=@iq2[>1-fx]>1+fx
}

Tree02 { ;     Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 12;    Tree1, angle changed to 12, @ to inverse of sqrt 2 -
axiom +++FX; a Levy's Curve variation
X=@iq2[--FX]++FX
}

Tree02a { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 12;    Tree1, angle changed to 12, @ to Golden Ratio -
axiom +++FX;
X=@.6180339887449[--FX]++FX
}

Tree03 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 8;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
axiom ++FX; a Levy's Curve variation
X=@iq2[-FX]+FX
}

Tree03a { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 8;    Tree1, angle changed to 8, @ to Golden Ratio -
axiom ++FX;
X=@.6180339887449[-FX]+FX
}

Tree04 { ;    Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 8;    Tree1, angle changed to 8, @ to inverse of sqrt 2 -
axiom ++FX;
X=@iq2[--FX]+FX
}

Tree04a { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 8;    Tree1, angle changed to 8, @ to Golden Ratio -
axiom ++FX;
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

Tree55 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 6;   Tree1,
axiom fx;
X=@iq2[--fx][++fx]--fx
}

Tree56 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 6;   Tree1,
axiom fx;
X=@.615[-fx]+@i.615fx
}

Tree57 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 4;   Tree1,
axiom +fx;
X=@iq2[-fx]+@q2fx
}

Tree58 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 3;   Tree1,
axiom fx;
X=@.615[-fx]+fx
}

Tree59 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 3;   Tree1,
axiom fx;
X=@.615[-gx]+fx
}

Tree60 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 4;   Tree1,
axiom +x;  a spacefilling tree
x=f@iq2[-x!]+fx
}

Tree61 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 4;   Tree1,
axiom x;
x=f@iq2[-x]!+fx
}

Tree62 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 4;   Tree1,
axiom +x;
x=f@.68[+x!]+fx
}

Tree63 { ;   Anthony Hanmer 2001, adapted from Adrian Mariano's
angle 4;   Tree1,
axiom +x;   a spacefilling tree
x=f@iq2[+x]!+fx
}

Plant01a { ; Adrian Mariano, from the Algorithmic Beauty of Plants
; Plant-like structure, figure 1.24a p.25
; also p.285a The Science of Fractal Images
angle 4
axiom +f
f=F[+F]F[-F]F
}

Plant01b { ; Adrian Mariano, altered by Anthony Hanmer 2001
angle 4
axiom +f
f=F[+F]F[-F]
}

Plant01c { ; Adrian Mariano, altered by Anthony Hanmer 2001
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

Bush05 { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom F
F=FF--[-F+G+]++[+F-G-]
}

Bush05a { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom [F]+[F]+[F]+[F]+[F]+[F]
F=FF--[-F+G+]++[+F-G-]
}

Bush06 { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom F
F=FF-[-F+G+]+[+F-G-]
}

Bush06a { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom F+++F
F=FF-[-F+G+]+[+F-G-]
}

Bush06b { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom F+F+F+F+F+F
F=FF-[-F+G+]+[+F-G-]
}

Bush06c { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom [F]++[F]++[F]
F=FF-[-F+G+]+[+F-G-]
}

Bush06d { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom [F]+[F]+[F]+[F]+[F]+[F]
F=FF-[-F+G+]+[+F-G-]
}

Bush07 { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom F
F=FF--[-F+G+F]++[+F-G-F]
}

Bush07a { ; adapted from Adrian Mariano's Bush, Anthony Hanmer 2001
Angle 6
Axiom [F]++[F]++[F]
F=FF--[-F+G+F]++[+F-G-F]
}

;TTiles.l

_README2 {; Anthony Hanmer 2000-2002
Angle 4; Miscellaneous tiles, some of them perhaps not new.
Axiom f
f=f
}

ADH0794 { ; Anthony Hanmer 2000
Angle 6 ; a tile
Axiom f
f=+@.5ff+++ff++@2g
}

ADH01782 { ; Anthony Hanmer 2000
Angle 4 ; DC type
Axiom f
f=ff++f+f+f
}

adh6280 { ; Anthony Hanmer 2001
Angle 3 ; a tile; rounding needed
Axiom f
;Axiom c9f+c12f+c14f; 3 colours
;Axiom c32[f]+c35[f]+c39[f]+c42[f]+c44[f]+c2[f]; 6-coloured star
f=f+f-f-f+f+f-f
;f=>1f+f-f-f+f+f-<1f; colour 1
}

adh6543 { ; Anthony Hanmer 2001
Angle 4 ; a new tile!
Axiom f ; (though massively layer-redundant, or mlr)
;Axiom c9f|c12f
f=+!ff|ff-!@2f@.5
;f=+!>1ff|ff-!@2<1f@.5; colour 1
;Axiom x ; (6543 using x instead of f)
;x=+!fx|fx-!@2f@.5 ; Rhombic tile of 1:2 bricks
}

adh6544 { ; Anthony Hanmer 2001
Angle 8 ; The new tile's Angle can be changed
Axiom f ; (mlr)
f=+!ff|ff---!@2f@.5
}

adh6545 { ; Anthony Hanmer 2001
Angle 8 ; The new tile's Angle can be changed
Axiom f ; (mlr)
f=+++!ff|ff-!@2f@.5
}

adh6672 { ; Anthony Hanmer 2001
Angle 4 ; a tile
Axiom +x
x=f[@.5x]+![@.5x]+!+!f[@.5x]-![@.5x]
;x=>1f[@.5x]+![@.5x]+!+!f[@.5x]-![@.5<1x]; colour 1
}

adh6748 { ; Anthony Hanmer 2001
Angle 4 ; tile w/td"vines", sides ratio 1:GR
Axiom x
x=f+![@.6180339887499x]+[@.6180339887499x]|[@.6180339887499x]
;x=>1f+![@.6180339887499x]+[@.6180339887499x]|[@.6180339887499<1x]; colour 
1
}

adh8320 { ; Anthony Hanmer 6/2002
Angle 3 ; nice overlapping hex tile
Axiom f
f=f+@2f@.5-f
;f=>1f+@2f@.5-<1f; colour 1
}

adh8735a { ; Anthony Hanmer 7/2002
Angle 6 ; a hexagonal (tile) echo of 8735
Axiom f
f=f+f|@2f@.5|f-f
; Hausdorff dimension:  log(5)/log() =
}

adh9622 { ; Anthony Hanmer 19/10/2002
Angle 6 ; I BELIEVE this is a tile...
Axiom f ; but it's hard to prove.
f=f++f--g++f|f--g++f+g
g=gg
}

T325 { ; Anthony Hanmer 2000
Angle 4 ; DC type
Axiom f;+f+f+f
;Axiom c9f-c10f-c12f-c14f; colour 1
;Axiom c09f-c12f-c09f-c12f--c14f+f+f+f; colour 2
f=f-ff++f-f
}

;========================================================================;
