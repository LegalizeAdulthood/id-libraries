;; FOR FRACTINT v19.6

;; Jo_We_72 - color plugin
;; Same as Jo_We_71 with other colors.

;; Time listed on the first line reflects creation on a P233MMX
;; running a resolution of 1600x1200 with 256 colors.

;; Par and Images Copyright 1999 by Hans-Joachim Weber
;; Images in this file MAY NOT BE USED FOR COMMERCIAL PURPOSES without the
;; consent of me.

;; Jo Weber
;; CIS 100424,35

;; calculated with Fractint v19.6
;; 5/1999
;; needs Jo_We_71.FRM

;; Your comments are welcome!

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

JoWe55d36a { ; from a modified Carr-formula
            ; 5/1999 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + c/p2
|z| <=p3
 }
