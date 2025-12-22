;In case those working with lsystems may be interested in this, 
;here is a technique I've noticed for creating new lsystems from old ones.
; 
;It generalizes what Gerald Edgar calls "fractals by tremas".  
;One example may suffice to illustrate the trema method.  
;For Sierpinski's Triangle, an equilateral triangle is dissected 
;into four congruent parts, each similar to the whole, namely, 
;an equilateral triangle.  The middle part of the four parts is deleted.  
;This is the "trema".  Next, each of the remaining three parts is 
;dissected into four congruent parts, each similar to the whole, 
;and the middle part is deleted.  This leaves nine undeleted parts, 
;to each of which dissection and deletion is applied.  The process 
;is repeated indefinitely, continuing with the 27 remaining parts.  
;The limiting result is Sierpinski's Triangle.
; 
;To implement this in Fractint, with a mind towards generalization, 
;one might begin with an lsystem that fills an equilateral triangle 
;by drawing a line segment for each of the four triangles in the dissection.
; 
PreSierp {;
angle 6
axiom x
x=+fy-fx[+++fx]-fy+    ; x fills a triangle left of its initial segment
y=-fx+fy[---fy]+fx-    ; y fills a triangle right, or x traced backwards
f=
}
; 
;Now, deleting the middle part amounts to deleting part of the script 
;for x and y.  A script for Sierpinski's Triangle becomes
; 
Sierpinski {; PreSierp with middle part removed
angle 6
axiom x
x=+fy-fx-fy+
y=-fx+fy+fx-
f=
}
; 
;An isosceles right triangle dissects into two congruent isosceles 
;right triangles.  Applying fractals by tremas to this dissection 
;results in the empty set.  But what if the deletion of parts is 
;delayed a few iterations, when there are more parts to select 
;for deletion?  This opens up innumerable possibilities.
; 
;I tried this with several lystems.  Here are some samples.  The script
; 
Isoscfill {;
angle 8
axiom --x
x=g[+++@q2@i2fx][---@q2@i2fx]
f=
}
; 
;This script fills an isosceles right triangle using its dissection 
;into two congruent isosceles right triangles.  By delaying deletion 
;for two iterations in a certain way (other ways seemed less 
;attractive to me), I got a very nice fractal that would make a 
;lovely diamond-studded silver broach.
; 
Isoscfillp {; Isoscfill pruned
angle 8
axiom --x
x=g[+++@q2@i2fy][---@q2@i2fx]
y=g[+++@q2@i2fx][---@q2@i2fz]
z=g[+++@q2@i2f][---@q2@i2fx]
f=
}
 
;Note that the script for x invokes y, which y invokes z, which z finally 
;deletes a part.
; 
;The script below fills a 30-60 right triangle dissected into three 
;congruent 30-60 right triangles.
 
Lace {; modified to tile with hexagons and Stars of David
angle 12
axiom +x
x=[@qi3+fj]g[@qi3+++++fx][@qi3---fj]
j=[@qi3-fx]g[@qi3-----fj][@qi3+++fx]
f=
}
 
;The scripts below modify the above script to carry out delayed deletions 
;in two different ways to produce two different fractals.
; 
Lacep {; Lace pruned
angle 12
axiom +x
x=[@qi3+fk]g[@qi3+++++fx][@qi3---fj]
j=[@qi3-fy]g[@qi3-----fj][@qi3+++fx]
y=g[@qi3+++++fx][@qi3---fj]
k=g[@qi3-----fj][@qi3+++fx]
f=
}
 
Lacep2 {; Lace pruned another way
angle 12
axiom +x
x=[@qi3+fj]g[@qi3+++++fx][@qi3---fk]
j=[@qi3-fx]g[@qi3-----fj][@qi3+++fy]
y=[@qi3+fj]g[@qi3+++++fx]
k=[@qi3-fx]g[@qi3-----fj]
f=
}
 
;I call this generalization of fractals by tremas pruning.  
;Fractals by tremas prunes the lsystem recursion tree at the root.  
;The above method prunes further up the tree, much as the city prunes 
;trees around power and phone lines.
; 
;Looking at these Fractint images at low iterations, an interesting 
;question occurs to me, must genetic changes in offspring always 
;occur by natural selection or mutation, or can they also be built 
;into the DNA of the organism?
; 
;William
