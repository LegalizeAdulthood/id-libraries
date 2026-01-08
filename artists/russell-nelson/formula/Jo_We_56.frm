;; FOR FRACTINT v19.6 only
;; Jo_We_56
;; Needs JoWe55c36a and JoWe55c36b-formula, which are at the end of this file.
;; The par-file uses JoWe56-1.map, but you MUST look at the images with
;; JoWe56-2.map too.

;; Time listed on the first line reflects creation on a 486DX4-100
;; running a resolution of 1280x1024 with 256 colors.

;; Par and Images Copyright 1997 by Hans-Joachim Weber
;; Images in this file MAY NOT BE USED FOR COMMERCIAL PURPOSES without the
;; consent of me.

;; Jo Weber
;; CIS 100424,35

;; calculated with Fractint v19.6
;; 6/1997

;; Enjoy!  -- Jo  --

JoWe55c36a { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + p2
|z| <=p3
 }

JoWe55c36b { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z1=z2=p1/pixel:
z1=fn2(fn1(z1) + c) + p2
z2=fn4(fn3(z2) + c) + p2
z=z1*whitesq+z2*(whitesq==0)
|z| <=p3
 }

