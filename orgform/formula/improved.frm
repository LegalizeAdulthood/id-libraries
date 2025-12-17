;improved.frm
;comment {
;
; FRACTINT.DOC has instructions for adding new formulas to this file.
; There are several hard-coded restrictions in the formula interpreter:
;
; 1) The fractal name through the open curly bracket must be on a single line.
;
; 2) There is a hard-coded limit of 200 formulas per formula file, only
;    because of restrictions in the prompting routines.
;
; 3) Formulas can contain at most 250 operations (references to variables and
;    arithmetic); this is bigger than it sounds, no formula in the default
;    fractint.frm uses even 100.
;
; 3) Comment blocks can be set up using dummy formulas with no formula name
;    or with the special name "comment".
;
; The formulas are listed alphabetically.
;
; Note that the builtin "cos" function had a bug which was corrected in
; version 16.     recreate an image from a formula which used cos before
; v16, change "cos" in the formula to "cosxx" which is a new function
; provided for backward compatibility with that bug.
; }
;
{==================================================================}


AltJTet (XAXIS) {; Lee Skinner
   z = p1:
   z = (pixel ^ z) + p1,
       |z| <= (p2 + 3)
  }


{==================================================================}

AltMTet (XAXIS) {; Lee Skinner
   ; try p1 = 1.5
   z = 0:
   z = (pixel ^ z) + pixel,
       |z| <= (p1 + 3)
  }


{==================================================================}

Bogus1 {; Fractal Creations
   ; try p1 = 2 and p2 = 4
   z = 0;
   z = z + p1,
       |z| <= p2
  }


{==================================================================}

CGhalley (XYAXIS) {; Chris Green
   ; try p1 = 1, p2 = 0.0001
   ; note--use floating point
   z   = (1,1):
   z5  = z*z*z*z*z;
   z6  = z*z5;
   z7  = z*z6;
   z8  = z7 - z - pixel;
   z   = z-p1*(z8/ ((7.0*z6-1)-(42.0*z5)*z8/(14.0*z6-2))),
         p2 <= |z8|
  }


{==================================================================}

Cubic (XYAXIS) {; Lee Skinner
   ; try p1 = 2, p2 = 3
   t1 = pixel,
   t2 = t1*t1 + 1
   t3 = 3*t1,
   a  = t2/t3,
   b  = p1*a*a*a + (t2 - 2)/t3,
   d  = p2*a*a,
   z  = 0 - a:
   z  = z*z*z - d*z + b,
        |z| < p1 + 3
  }


{==================================================================}

Dragon (ORIGIN) {; Mark Peterson
   ; try p1 = (-0.74543, 0.2), p2 = 4, fn1 = sqr
   ; note p2 should not be zero
   z = pixel:
   z = fn1(z) + p1,
       |z| <= p2
  }


{==================================================================}

Daisy (ORIGIN) {; Mark Peterson
   ; try p1 = (0.11031, -0.67037) and p2 = 4
   ; note p2 should not be zero
   z = pixel:
   z = z*z + p1,
       |z| <= p2

  }


{==================================================================}

DeltaLog (XAXIS) {; Mark Peterson
   ; try p1 = 1, p2 = 4, fn1 = log, fn2 = sqr
   ; note p2 should not be zero
   z = pixel, c = fn1(pixel):
   z = fn2(z) + c/p1,
       |z| <= p2
  }


{==================================================================}

Ent {; Scott Taylor
   ; try p1 = (.5, .75), p1 = 0, p2 = 4, fn1 = exp
   z    = pixel,
   y    = fn1(z)+p1,
   base = log(p1):
   z    = y * log(z)/base,
          |z| <= p2
  }


{==================================================================}

Ent2 {; Scott Taylor
   ; try p1 = 2, fn1 = cos, fn2 = cosh
   ; try potential = 255/355
   z    = pixel,
   y    = fn1(z),
   base = log(p1):
   z    = fn2( y * log(z) / base ),
          |z| <= p1
  }


{==================================================================}

FnDog (XYAXIS)  {; Scott Taylor
   z = pixel,
   b = p1+2:
   z = fn1( z ) * pixel,
       |z| <= b
  }


{==================================================================}

Fzppfncs  {; Lee Skinner
   ; try p1 = 50, fn1 = cos, fn2 = sin
   z = pixel,
   f = 1./fn1(pixel):
   z = fn2(z) + f,
       |z| <= p1
  }

Fzppfnct  {; Lee Skinner
   ; try p1 = 50, fn1 = sin, fn2 = cos, fn3 = sin
   z = pixel,
   f = fn2(pixel)/fn3(pixel):
   z = fn1(z) + f,
       |z|<= p1
  }


Fzppfnpo  {; Lee Skinner
   ; try p1 = 50
   z = pixel,
   f = 2*(pixel)^(pixel):
   z = fn1(z) + f,
       |z| <= p1
  }

Fzppfnre  {; Lee Skinner
   ; try p1 = 50 and p2 = 1
   z = pixel,
   f = 1./(pixel):
   z = fn1(z) + f * p2,
       |z| <= p1
  }

Fzppfnse  {; Lee Skinner
   ; try p1 = 50, fn1 = sin, fn2 = sin
   z = pixel,
   f = 1./fn2(pixel):
   z = fn1(z) + f,
       |z| <= p1
  }

Fzppfnsr  {; Lee Skinner
   ; try p1 = 50
   z = pixel,
   f = (pixel)^.5:
   z = fn1(z) + f,
       |z| <= p1
  }

Fzppfnta  {; Lee Skinner
   ; try p1 = 50
   z = pixel,
   f = fn2(pixel):
   z = fn1(z) + f,
       |z|<= p1
  }


{==================================================================}

Gamma (XAXIS)={ ; Jm Richard-Collard
   ; try p1 = 6.2   ; note that p1 above is two times pi
   z = pixel:
   z = (p1*z)^(0.5)*(z^z)*exp(-z)+pixel
   |z|<=p2
  }


{===============
Halley (XYAXIS) {; Chris Green
   ; try p1 = 1.0 and p2 = 0.0001
   ; note--use floating point
   z  = pixel:
   z5 = z*z*z*z*z;
   z6 = z*z5;
   z7 = z*z6;
   z  = z-p1*((z7-z)/((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))),
        p2 <= |z7-z|
   }


{==================================================================}

InvMandel (XAXIS) {; Mark Peterson
   ; try p1 = 1, p2 = 4, fn1 = sqr
   ; note p2 should not be zero
   c = z = p1 / pixel:
   z = fn1(z) + c;
       |z| <= p2
  }


{==================================================================}

HalleySin (XYAXIS) {; Chris Green
   ; try p1 = 0.1, p2 = 0.0001, fn1 = sin, fn2 = cos
   ; note--use floating point
   z  = pixel:
   s  = fn1(z),
   c  = fn2(z)
   z=z-p1*(s/(c-(s*s)/(c+c))),
   p2 <= |s|
  }


{==================================================================}

HyperMandel {; Chris Green.
   ; try p1 = 1.8, p2 = 2.0, fn1 = sqr
   ; note--use floating point
   a    = (0,0),
   b    = (0,0):
   z    = z+1
   anew = fn1(a)-fn1(b)+pixel
   b    = p2*a*b+p1
   a    = anew,
          |a|+|b| <= 4
  }


{==================================================================}
{ These types are generalizations of types sent to us by the French
  mathematician Jm Richard-Collard. If we hadn't generalized them
  there would be --ahhh-- quite a few. With 11 possible values for
  each fn variable,Jm_03, for example, has 14641 variations! }

Jm_01 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = (fn1(fn2(z^pixel)))*pixel,
       |z| <= t
  }

Jm_02 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = (z^pixel)*fn1(z^pixel),
       |z| <= t
  }

Jm_03 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))*pixel,
       |z| <= t
  }

Jm_04 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel)),
       |z| <= t
  }

Jm_05 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2((z^pixel))),
       |z| <= t
  }

Jm_06 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3((z^z)*pixel))),
       |z| <= t
  }

Jm_07 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3((z^z)*pixel)))*pixel,
       |z| <= t
  }

Jm_08 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3((z^z)*pixel)))+pixel,
       |z| <= t
  }

Jm_09 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(fn4(z))))+pixel,
       |z| <= t
  }

Jm_10 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(fn4(z)*pixel))),
       |z| <= t
  }

Jm_11 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(fn4(z)*pixel)))*pixel,
       |z| <= t
  }

Jm_12 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(z)*pixel)),
       |z| <= t
  }

Jm_13 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(z)*pixel))*pixel,
       |z| <= t
  }

Jm_14 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(z)*pixel))+pixel,
       |z| <= t
  }
