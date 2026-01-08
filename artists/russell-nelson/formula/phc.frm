comment {

         Pseudo HiColor (PHC) and Pseudo TrueColor (PTC) formulas
         ========================================================

  These formulas work only under Fractint versions 19.5 and later.  They
  will NOT work correctly under versions 19.4 and earlier.  They replace
  earlier formulas with the same or similar names that ran under 19.4

  Phc.frm may be updated from time to time to add new formulas,
  optimize older formulas, or modify the formulas to reflect changes in
  Fractint.

  All 82 formulas require passes=1.

  Developed by Jim Deutch, Lee Skinner, Sylvie Gallet, George Martin,
               Jan Maarten van der Valk, Les St Clair, Ron Barnett,
               Brian Jones, Jo Weber, and Robert Carr.

  Compiled by Lee Skinner, Optimized by Sylvie Gallet

  Please refer to phctutor.txt (download phctutor.zip from Compuserve
  forum Graphdev library 4) by Sylvie Gallet for instructions on
  how to write PHC and PTC formulas.

  Warning: Symmetry statements in formulas or pars may alter the
  checkerboard pattern along the axes.


  Formulas included in this file (last update: 08-29-96):

  Formula:           Author:                   Source:        Date:
  ----------------------------------------------------------------------
  JDfrm010           Jim Deutch                Forum message  07-15-96
  JDfrm021a          Jim Deutch                Forum message  07-19-96
  JDfrm031           Jim Deutch                Forum message  07-22-96
  JDfrm038           Jim Deutch                Forum message  08-06-96
  JD-LS0             Lee Skinner               Forum message  07-18-96
  JD-LS-JM           Jan Maarten van der Valk  Forum message  07-18-96
  JD-SG-01           Sylvie Gallet             Phc-sg-1       07-30-96
  JD-SG-02           Sylvie Gallet             Phc-sg-1       07-30-96
  JD-SG-03           Sylvie Gallet             Phc-sg-1       07-30-96
  JD-SG-04           Sylvie Gallet             Phc-sg-1       07-30-96
  JD-SG-05           Sylvie Gallet             E-mail         07-30-96
  JD-SG-06           Sylvie Gallet             E-mail         07-31-96
  JD-SG-07           Sylvie Gallet             E-mail         07-31-96
  JD-SG-08           Sylvie Gallet             E-mail         07-31-96
  JD-SG-09           Sylvie Gallet             E-mail         07-31-96
  phc_map            Sylvie Gallet             E-mail         08-10-96
  phc+4mandels       Sylvie Gallet             E-mail         08-16-96
  ptc+4mandels       Sylvie Gallet             Fractint.frm   08-21-96
  ptc+3mandels       Sylvie Gallet             E-mail         08-21-96
  ptc+mjn            Sylvie Gallet             Fractint.frm   08-21-96
  manjul_lace        George Martin             E-mail         07-22-96
  Lesfrm02g_PHC      Les St Clair              E-mail         08-21-96
  LesPHCfrm01        Les St Clair              Les_phc.frm    08-12-96
  MandJulia          Ron Barnett               Reb008.frm     08-08-96
  IkeJulia           Ron Barnett               Reb008.frm     08-08-96
  MandelIke          Ron Barnett               Reb008.frm     08-08-96
  TwoIkes            Ron Barnett               Reb008.frm     08-08-96
  TwoMands           Ron Barnett               Reb008.frm     08-08-96
  AnotherTwoIkes     Ron Barnett               Reb008.frm     08-08-96
  PHC-Frame-Robert   Ron Barnett               Reb008.frm     08-08-96
  PHC-Ikenaga01      Ron Barnett               Reb008.frm     08-08-96
  PHC-Ikenaga02      Ron Barnett               Reb008.frm     08-08-96
  PHC-Ikenaga03      Ron Barnett               Reb008.frm     08-08-96
  PHC-Spider01       Ron Barnett               Reb008.frm     08-08-96
  PHC-Manowar01      Ron Barnett               Reb008.frm     08-08-96
  BJ-MandJulia       Brian Jones               Bj-phc01.frm   08-19-96
  BJ-MandJulia-a     Brian Jones               E-mail         08-21-96
  BJ-Newton*2        Brian Jones               Bj-phc01.frm   08-19-96
  BJ-Newton*2-b      Brian Jones               Bj-phc01.frm   08-19-96
  BJ-Newton*2-c      Brian Jones               Bj-phc01.frm   08-19-96
  BJ-Newton*2-g      Brian Jones               E-mail         08-21-96
  BJ-PHC-G3-03-a     Brian Jones               Bj-phc01.frm   08-19-96
  BJ-Newton*2+Man-b  Brian Jones               Bj-phc01.frm   08-19-96
  BJ-JDfrm010m2      Brian Jones               Bj-phc01.frm   08-19-96
  BJ-JDfrm010m3      Brian Jones               Bj-phc01.frm   08-19-96
  BJ-JDfrm010m7-a    Brian Jones               E-mail         08-21-96
  BJ-MandsJulia      Brian Jones               Bj-phc01.frm   08-19-96
  BJ-MandsJulia-b    Brian Jones               E-mail         08-21-96
  BJ-MandsJulia-b-2  Brian Jones               E-mail         08-21-96
  BJ-MandsJulia-b-4  Brian Jones               Bj-phc01.frm   08-19-96
  BJ-Spider-a        Brian Jones               E-mail         08-21-96
  BJ-Spider-c        Brian Jones               Bj-phc01.frm   08-19-96
  BJ-Lamda*2-a       Brian Jones               Bj-phc01.frm   08-19-96
  BJ-PHC-CmplxNwtn-1 Brian Jones               E-mail         08-21-96
  JoWe_02_PHC        Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_03_PHC_n      Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_03_PHC_n1     Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_04_PHC        Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_11b_PHC       Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_11b_PHC2      Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_13_PHC        Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_14_PHC        Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_14_PHC_2      Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_19_PHC        Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_19_PHC_2      Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_19_PHC_3      Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_19_PHC_4      Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_CN_02_PHC     Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_CN_02a_PHC    Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_CN_12_PHC     Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_CN_12_PHC_2   Jo Weber                  jowe_phc.frm   08-29-96
  JoWe_what_10_PHC   Jo Weber                  jowe_phc.frm   09-09-96
  JoWe_CN_01_PHC     Jo Weber                  jowe_phc.frm   09-09-96
  JoWe_what_02m_PHC  Jo Weber                  jowe_phc.frm   09-09-96
  JoWe_04a_PHC       Jo Weber                  jowe_phc.frm   09-09-96
  JoWe_04b_PHC       Jo Weber                  jowe_phc.frm   09-09-96
  JoWe_04c_PHC       Jo Weber                  jowe_phc.frm   09-09-96
  JoWe_14_PHC_3      Jo Weber                  jowe_phc.frm   09-09-96
  JoWe_20_PHC        Jo Weber                  jowe_phc.frm   09-09-96
  Carr2731           Robert Carr               E-mail         09-05-96
  Carr2735           Robert Carr               Forum message  09-07-96
}

;                          PHC formulas
;                          ============

;                  16-bit phc's have 2 pixels per color

; ---------- Jim Deutch -----------------------------------------------

JDfrm010 { ; Jim Deutch [104074,3171], 1996  Requires passes=1
           ; The Original PHC formula
  z = 0
  c = whitesq * pixel - (whitesq == 0) * pixel:
  z = z*z + c
  |z| < 4
}

JDfrm021a { ; Jim Deutch [104074,3171], 1996  Requires passes=1
  a = pixel , r = |a| , b = abs(a)
  q = conj(flip(b)) / real(r)
  z = a * real(whitesq) :
  z2 = z*z
  rz2 = z2 * real(r)
  sinzoz = sin(z) / (z+(whitesq==0))
  z = sinzoz / (rz2+(whitesq==0)) * real(whitesq) + (q + z2) * real((whitesq==0))
  |z| - 4 < 10000000 * whitesq
}

JDfrm031 { ; Jim Deutch [104074,3171], 1996  Requires passes=1
           ; generalized 2-Julia pseudo-HiColor
           ; p1 = 1st julia parameters
           ; p2 = 2nd julia parameters
           ; p3 slides 1st julia around the plane wrt the 2nd
  z = pixel + p3*whitesq
  p = p1*whitesq + p2*(whitesq==0) :
  z = z*z + p
  |z| < 4
}

JDfrm038 { ; Jim Deutch [104074,3171], 1996  Requires passes=1
  ; p1 = Julia parameters
  ; p2 = bailout test
  z = c = pixel
  r = |c|:
  rz2 = r * z * z
  sinzoz = sin(z) / (z+(whitesq==0))
  z = (sinzoz / rz2)*whitesq + (z*z+p1)*(whitesq==0)
  |z| < p2
}

; ---------- Lee Skinner ----------------------------------------------

JD-LS0 { ; Lee Skinner [75450,3631], 1996  Requires passes=1
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  pixel = whitesq * f1 + (whitesq==0) * f2
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

; ---------- Jan Maarten van der Valk ---------------------------------

JD-LS-JM { ; Jan Maarten van der Valk [100256,3721], 1996  Requires passes=1
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  pixel = whitesq * f1 + (whitesq==0) * f2
  z = 0
  c = pixel:
  z = log(z)*z+c
  |z| < 4
  }

; ---------- Sylvie Gallet --------------------------------------------

JD-SG-01 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; Mandel: z^(p1+1) + c , inverted Newton: z^p1 - 1 = 0
  ; use p2 to adjust the size of the inverted Newton set
  z = pixel * whitesq + (p2/(pixel-p2) + 1) * (whitesq == 0)
  c = pixel , b1 = 256 , b2 = 0.000001 , ex = p1 - 1 :
   zd = z^ex , zn = zd*z , n = zn - 1 , d = p1 * zd
   zo = zn*z + c , ze = z - n/d
   z = zo * whitesq + ze * (whitesq == 0)
    (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  }

JD-SG-02 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; Mandel: z^2 + c , inverted Newton: z^p1 - 1 = 0
  ; use p2 to adjust the size of the inverted Newton set
  z = pixel * whitesq + (p2/(pixel-p2) + 1) * (whitesq == 0)
  c = pixel , b1 = 256 , b2 = 0.000001 , ex = p1 - 1 :
   zd = z^ex , zn = zd*z , n = zn - 1 , d = p1 * zd
   zo = z*z + c , ze = z - n/d
   z = zo * whitesq + ze * (whitesq == 0)
    (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  }

JD-SG-03 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; Mandel: z^(p1+1) + c , Newton: z^p1 - 1 = 0
  ; use p2 to adjust the size of the inverted Newton set
  z = c = pixel , b1 = 256 , b2 = 0.000001 , ex = p1 - 1 :
   zd = z^ex , zn = zd*z , n = zn - 1 , d = p1 * zd
   zo = zn*z + c , ze = z - n/d
   z = zo * whitesq + ze * (whitesq == 0)
    (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  }

JD-SG-04 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; use p1 and p2 to adjust the inverted Mandel
  z = c = pixel * whitesq + (p1 / (pixel+p2)) * (whitesq == 0) :
   z = z*z + c
    |z| < 4
 }

JD-SG-05 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; use p1 and p2 to adjust the 2nd Mandel
  ; p1 = -1 (default)
  p1 = p1 * (p1!=0) - (p1==0)
  z = 0 , c = pixel * whitesq + (p1*pixel+p2) * (whitesq == 0) :
   z = z*z + c
    |z| < 4
 }

JD-SG-06 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  z = flip(imag(p1)) * (whitesq == 0) + real(p1) * whitesq
  c = pixel :
   z = z*z + c
    |z| < 4
 }

JD-SG-07 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; p1 = perturbation of z(0) for the Mandel set
  ; p2 = parameter for the Julia set
  c = pixel * (whitesq == 0) + p2 * whitesq
  z = (c + p1) * (whitesq == 0) + pixel * whitesq :
   z = z*z + c
    |z| < 4
 }

JD-SG-08 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; p1 = parameter for the 1st Julia set
  ; p2 = parameter for the 2nd Julia set
  c = p1 * (whitesq == 0) + p2 * whitesq
  z = pixel :
   z = z*z + c
    |z| < 4
 }

JD-SG-09 { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; use p1 and p2 to adjust the 2nd Mandel:
  ; real(p1) = size factor
  ; imag(p1) = rotation angle (in degrees), negative = clockwise
  ; p2 = translation, positive = right/up
  sf = abs(real(p1)) , r = -flip(imag(p1))*pi/180
  z = 0 , c = pixel * whitesq + exp(r)*(pixel-p2)/sf * (whitesq == 0) :
   z = z*z + c
    |z| < 4
 }

phc_map { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  ; requires maxiter = 256, inside = 0 and outside = iter
  d = scrnmax / 256
  z = real(scrnpix) / real(d) * whitesq + \
      imag(scrnpix) / imag(d) * (whitesq == 0)
  z = 257 * (z < 1) + z * (z >= 1) :
   z = z - 1
    z >= 1
  }

phc+4mandels { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  iter = 0 , limit = trunc(maxit/2) * (maxit < 400) + 200 * (maxit >= 400)
  z = c = pixel * (whitesq + p1 * (whitesq == 0))
  c1 = pixel * (p2 * whitesq + p3 * (whitesq == 0)) :
   z = z * (iter != limit)
   c = c * (iter < limit) + c1 * (iter >= limit)
   z = z*z + c
   iter = iter + 1
    |z| <= 4
  }

; ---------- George Martin --------------------------------------------

manjul_lace { ; George Martin [76440,1143]  Requires passes=1
;
; var           white squares                   black squares
;
  z  =whitesq*    1.5*pixel  +(whitesq==0)*    pixel
  c  =whitesq*    1.5*pixel  +(whitesq==0)*    (-.75, .1234567):
;
;begin iterations
  z = z*z + c
  |z| <= 4
}

; ---------- Les St Clair ---------------------------------------------

Lesfrm02g_PHC { ; Les St Clair [101461,2032], 1996  Requires passes=1
    ; modified Lesfrm02
    ; generalised version to incorporate new funcions
    ; some functions requires Fractint 19.4 or later
    ; use fn3 to select round, floor, ceil, trunc
    ; use p2 to select degree of influence for above functions
    ; Amalgamated with manjul_lace formula by George Martin to enable PHC
  z = whitesq * 1.5*pixel + (whitesq==0) * pixel
  c = whitesq * 1.5*pixel + (whitesq==0) * (-.75, .1234567)
  p = p2 / (fn2(c)*c*c*c) :
  ; begin iterations
  z = z + fn3(fn1(z)*p) / p2
  |z| <= 4
}

LesPHCfrm01 { ; Les St Clair [101461,2032], 1996  Requires passes=1
  ; Modified Vincent D. Presogna formula (Block_4.fmr)
  ; Amalgamated with manjul_lace.frm by George Martin to enable PHC
z = whitesq * 1.5*pixel + (whitesq==0) * pixel
c = whitesq * 1.5*pixel + (whitesq==0) * (-.75, .1234567):
r = tan(1/z) + p1
q = floor(z) - p2 * ceil(c) - p1
z = fn1(z) * r * q
round(z) < 4
}

; ---------- Ron Barnett ----------------------------------------------

MandJulia   { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	; p3 will shift the julia set wrt the mandelbrot set
	; p2 is for the Julia value
	; Ron Barnett, 1996  Requires passes=1
	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
	z=z*z+c, |z|<=4}

IkeJulia   { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	; p3 will shift the julia set wrt the ikenaga set
	; p2 is for the Julia value
	z = whitesq*((1-pixel)/3)^0.5+(whitesq==0)*(pixel+p3),
	c = whitesq*p1*pixel + (whitesq==0)*p2:
	z=z*z*z+(c-1)*z-c, |z|<=4}

MandelIke   { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	; p3 will shift the ikenaga set wrt the mandelbrot set
	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2*pixel:
	z=whitesq*(z*z*z+(c-1)*z-c) + (whitesq==0)*(z*z+c), |z|<=4}

TwoIkes   { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	; p3 will shift the two ikenaga sets wrt to each other
	z = p1*whitesq*(pixel+p3)+p2*(whitesq==0)*((1-pixel)/3)^0.5,
	c = pixel:
	z=z*z*z+(c-1)*z-c, |z|<=4}

TwoMands   { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	; p3 will shift the two mandelbrot sets wrt to each other
	z = c = pixel+(whitesq==0)*p3:
	z=whitesq*(z^p1+c)+(whitesq==0)*(z^p2+c), |z|<=4}

AnotherTwoIkes   { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	; p3 will shift the two ikenaga sets wrt to each other
	z =whitesq*((1-pixel)/p1)^(1/(p1-1))+(whitesq==0)*((1-pixel-p3*(whitesq==0))/p2)^(1/(p2-1)):
	z=whitesq*(z^p1+(pixel-1)*z-pixel)+(whitesq==0)*(z^p2+(pixel-1)*z-pixel), |z|<=4}

PHC-Frame-Robert { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	z=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
	z=z*z*z/5+z*z+c, |z|<=100}

PHC-Ikenaga01 { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	z=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
       z=z*z*z+(c-1)*z-c, |z|<=100}

PHC-Ikenaga02 { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	z=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)),
	z=conj(z),c=conj(c):
	z=z*z*z+(c-1)*z-c, |z|<=100}

PHC-Ikenaga03 { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	z=whitesq*(real(pixel)-flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)-flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)-flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)-flip(imag(pixel)*p1)):
	z=z*z*z+(c-1)*z-c, |z|<=100}

PHC-Spider01 { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	z=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
	z=z*z+c,
	c=c/2+z, |z|<=100}

PHC-Manowar01 { ; Ron Barnett [70153,1233], 1996  Requires passes=1
	z=z1=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
	z=z*z+z1+c,
	z1=z, |z|<=100}

; ---------- Brian Jones ----------------------------------------------

BJ-MandJulia   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                 ; Modification of Ron Barnett's MandJulia frm
	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z=fn1(z*z)*pi,
	z=z*z+c, |z|<4}

BJ-MandJulia-a   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                   ; Modification of Ron Barnett's MandJulia frm
	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z=fn1(z+z)+fn2(z*c)*pi,
	z=z*z+c, |z|<4}

BJ-Newton*2  { ; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
        root = 1,
       	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z3 = z * (z * z + c),
        z4 = z3 * z,
        z = (3 * z4 + root) / (4 * z3),
	 .004 <= |z4 - Root|}

BJ-Newton*2-b  { ; Brian Jones [102702,2213], 1996  Requires passes=1
                 ; Modification of Ron Barnett's MandJulia frm
        root = 1,
       	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z3 = (z * z) * (z * z) * (z + c),
        z4 = z3 * z,
        z = (3 * z4 + root) / (4 * z3),
	 .004 <= |z4 - Root|}

BJ-Newton*2-c  { ; Brian Jones [102702,2213], 1996  Requires passes=1
                 ; Modification of Ron Barnett's MandJulia frm
        root = 1,
       	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z3 = (z * z) * (z * z * z) * (z + c) ,
        z4 = z3 * z,
        z = (3 * z4 + root) / (4 * z3),
	 .004 <= |z4 - Root|}

BJ-Newton*2-g  { ; Brian Jones [102702,2213], 1996  Requires passes=1
                 ; Modification of Ron Barnett's MandJulia frm
        root = 1,
       	z = pixel+(whitesq==0)*p3 * -abs(flip(pixel*3)),
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z3 = fn1(z) * 5 * fn4((z) * fn3(z) * fn2(z*2)) * (z + c),
        z4 = z3 * z,
        z = (3 * z4 + root) / (4 * z3),
	 .004 <= |z4 - Root|}

BJ-PHC-G3-03-a   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                   ; Modification of Sylvie Gallet's 3-03
                   ; & Ron Barnett's MandJulia frm
	z = pixel+(whitesq==0)*p3,
        x = real(z)+(whitesq==0)*p3 , y = imag(z):
  	x1 = x - p1*fn1(y*y+p2*fn2(y)),
 	y1 = y - p1*fn1(x*x+p2*fn2(x)),
	z = (z*z+c) / x1+flip(y1),
	|z|<=4}

BJ-Newton*2+Man-b {; Brian Jones [102702,2213], 1996  Requires passes=1
                   ; Modification of Ron Barnett's TwoMands frm
                   ; Edited for Fractint v. 20 by George Martin, 10/98
  root=1
  z = c = pixel+(whitesq==0)*p3:
  z = whitesq*(z^p1+c)+(whitesq==0)*(z^p2+c)
  z3 = fn1(z * z) * fn2(z * z * z) * fn3(z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}

BJ-JDfrm010m2 { ; Brian Jones [102702,2213], 1996  Requires passes=1
                ; Modified Lee Skinner/Jim Deutch frm
  pixel = (((whitesq==0)*fn1(pixel*(3/sqrt(pixel))))-whitesq) * pixel + whitesq * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

BJ-JDfrm010m3 { ; Brian Jones [102702,2213], 1996  Requires passes=1
                ; Modified Lee Skinner/Jim Deutch frm
  pixel = (((whitesq==0)*fn1(pixel*fn2(3/sqrt(pixel))))-whitesq) * pixel + whitesq * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

BJ-JDfrm010m7-a { ; Brian Jones [102702,2213], 1996  Requires passes=1
                  ; Jim Deutch/modified by Lee Skinner.
  pixel = whitesq * pixel + (whitesq==0) * -pixel
  z = sqr(flip(pixel)) , c = pixel:
  z = z*z + c
  |z| < 4
}

BJ-MandsJulia   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                  ; Modification of Ron Barnett's MandJulia frm
	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z=fn1(z+z)*pi,
	z=z*z+c, |z|<4}

BJ-MandsJulia-b   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                    ; Modification of Ron Barnett's MandJulia frm
        ; p3 will shift the julia set wrt the mandelbrot set
        ; p2 is for the Julia value
        z = (pixel * pixel)+(whitesq==0)*p3,
        c = whitesq*p1*pixel + (whitesq==0)*p2:
        z=fn1(z+z)*pi,
        z=z*z+c, |z|<4}

BJ-MandsJulia-b-2   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                      ; Modification of Ron Barnett's MandJulia frm
	; p3 will shift the julia set wrt the mandelbrot set
	; p2 is for the Julia value
	z = (pixel * flip(fn1(pixel*3)))+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z=sin(z+z)*pi,
	z=z*z+c, |z|<4}

BJ-MandsJulia-b-4   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                      ; Modification of Ron Barnett's MandJulia frm
	z = (pixel * flip(fn1(pixel*3)))+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
        z=sin(z+z)*pi,
	z=z*z+c, |z|<4}

BJ-Spider-a   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                ; Modification of Ron Barnett's MandJulia frm
	z = pixel+whitesq*p1,
	c = pixel + (whitesq==0)*p2:
        z = (sqr(z) + c)/p3,
  	c = z + c/2,
	 |z|<4}

BJ-Spider-c   { ; Brian Jones [102702,2213], 1996  Requires passes=1
                ; Modification of Ron Barnett's MandJulia frm
	z = pixel+(whitesq==0)*p3,
	c = pixel * p1 * (whitesq==0)/p2:
	z = sqr(z) + c,
	c = z + fn1(c/2)/p1,
	 |z|<4}

BJ-Lamda*2-a    { ; Brian Jones [102702,2213], 1996  Requires passes=1
                  ; Modification of Ron Barnett's MandJulia frm
       	z = pixel+ whitesq*p1 :
	m = p2,
	z = (sin(z) * p2)/p3,
	abs(imag(z)) <= 64 && abs(real(z)) <= 64
}

BJ-PHC-CmplxNwtn-1  { ; Brian Jones [102702,2213], 1996  Requires passes=1
                      ; Modification of Ron Barnett's MandJulia frm
        pm1 = p1-1,
        z = pixel+(whitesq==0)*p2,
        oldz = whitesq*pixel + (whitesq==0)*p2:
        oldz = z,
        z = (pm1*(z^p1) +1)/(p1 * z^pm1),
        |(z-oldz)|>=|0.01|
}

; ---------- Jo Weber -------------------------------------------------

JoWe_02_PHC(XYAXIS) { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1))
  z=(fn1(a1)*whitesq+fn2(a2)*fn1(a3)*(whitesq==0))*pixel,
}

JoWe_03_PHC_n { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1))
  t=fn1(z)
  z = (c^(sqr(t))-c*fn2(t))*whitesq+(c^(fn1(a3)/fn2(a2)))*(whitesq==0)+c,
  |z|>=0.5
}

JoWe_03_PHC_n1 {; Jo Weber [100424,35], 1996    Requires passes=1
  z = c = pixel:
  a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1))
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  b2=(fn1(a2)-fn2(a1)*fn2(a3))*whitesq-(c^(fn1(a3)/fn2(a2)))*(whitesq==0)
  z=b1
  b3=(1.0>=|z|)
  if (b3)
    z=b2
  endif
  1.0>=|z|
  ;SOURCE: phc.frm
}

JoWe_04_PHC {; Jo Weber [100424,35], 1996       Requires passes=1
  z = c =pixel:
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  a1=fn1(z), a2=p1/a1
  b2=(a1-a2+pixel)*(whitesq==0)+c*a1*(a2-0.34)*whitesq
  z=b1
  b3=(|z|<=4)
  if (b3)
    z=b2
  endif
  |z|<=4
  ;SOURCE: phc.frm
}

JoWe_11b_PHC(XYAXIS) { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel
  p=1*(|p1|<0)+p1 :
  a1=fn1(z), a2=fn2(p/a1),
  a1=a1*whitesq, a2=a2*(whitesq==0),
  z=(a1+a2)^pixel,
  |z|<=4
}

JoWe_11b_PHC2(XYAXIS) { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel
  p=1*(|p1|<0)+p1 :
  a1=fn1(z), a2=fn2(p/a1),
  a1=a1*whitesq, a2=a2*(whitesq==0),
  z=(a1-a2)^pixel,
  |z|<=4
}

JoWe_13_PHC { ; Jo Weber [100424,35], 1996  Requires passes=1
  c = p1
  z = pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a-b)*whitesq+(a^b)*(whitesq==0)
}

JoWe_14_PHC { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = c =pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a/b)*whitesq+(a*b)*(whitesq==0)
}

JoWe_14_PHC_2 { ; Jo Weber [100424,35], 1996  Requires passes=1
  c=p1
  z=pixel:
  a=fn1(z)*c*whitesq
  b=c/fn2(z)*(whitesq==0)
  z=a+b*pixel
}

JoWe_19_PHC { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*whitesq
  |z|>=0.5
}

JoWe_19_PHC_2 { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  |z|>=0.5
}

JoWe_19_PHC_3 { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*whitesq-p1*fn3(t)*(whitesq==0)
  |z|>=0.5
}

JoWe_19_PHC_4 { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*whitesq+(c*fn2(t)*(whitesq==0))
}

JoWe_CN_02_PHC(XAXIS){ ; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1.51,  z = pixel :
  oldz = z,
  z = (pm1*(z^p1)*(whitesq==0) +1)/(p1 * z^pm1)+z*whitesq
  |(z-oldz)|>=|0.001|
}

JoWe_CN_02a_PHC(YAXIS){ ; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1.51,  z = pixel :
  oldz = z,
  z = (pm1*(z^p1)*whitesq +1)/(p1 * z^pm1)+oldz*(whitesq==0),
  |(z-oldz)|>=|0.001|
}

JoWe_CN_12_PHC{ ; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1,  z = pixel :
  oldz = z,
  z = (pm1*(z^p1)*whitesq +0.5)/(p1 * z^pm1)+oldz*(whitesq==0),
  |(z-oldz)|>=|0.001|
}

JoWe_CN_12_PHC_2 { ; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1,  z = pixel :
  oldz = z,
  z = (pm1*(z^p1)*whitesq +0.5)/(p1 * z^pm1)+z*(whitesq==0),
  |(z-oldz)|>=|0.001|
}

JoWe_what_10_PHC { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=sqr(z), a2=p1/a1,
  b1=(fn1(z)*fn2(z)+(p1/z*z)+pixel)*whitesq,
  b2=(fn1(z)*fn2(z)+a2+pixel)*(whitesq==0),
  z=b1-b2,
  |z|>=0.05
}

JoWe_CN_01_PHC    { ; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1,  z = pixel :
  oldz = z,
  z = (pm1*(z^p1)*whitesq +1)/(p1 * z^pm1)+z*(whitesq==0)
  |(z-oldz)|>=|0.001|
}

JoWe_what_02m_PHC { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=sqr(z), a2=(2/a1)*whitesq,
  z=a1*(whitesq==0)+a2+pixel,
}

JoWe_04a_PHC(XYAXIS) { ; Jo Weber [100424,35], 1996  Requires passes=1
  pixel=abs(real(pixel)) + flip(imag(pixel))
  pixel=real(pixel) + flip(abs(imag(pixel)))
  z = pixel:
  a1=fn1(z), a2=p1/a1,
  z=a1*whitesq+a2*(whitesq==0)+pixel,
}

JoWe_04b_PHC(XYAXIS) { ; Jo Weber [100424,35], 1996  Requires passes=1
  pixel=pixel*(-1)^(pixel>0)
  z = pixel:
  a1=fn1(z), a2=fn2(p1/a1),
  z=a1*whitesq+a2*(whitesq==0)+pixel,
}

JoWe_04c_PHC(XYAXIS) { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=fn1(z), a2=p1/a1,
  z=fn2(a1)*(whitesq==0)+fn3(a2)*whitesq+pixel,
}

JoWe_14_PHC_3 { ; Jo Weber [100424,35], 1996  Requires passes=1
  c=p1*(whitesq==0)
  z=pixel:
  a=fn1(z)*c*whitesq
  b=c/fn2(z)*(whitesq==0)
  z=(a+b)*pixel
}

JoWe_20_PHC { ; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  t1=c^t
  u=fn2(z)
  t2=c^u
  t3=t1*(whitesq==0)+t2*whitesq
  z = c^(sqr(t3))
  |z|>=0.5
}

; ---------- Robert Carr ----------------------------------------------

Carr2731(YAXIS) { ; Robert Carr [73753,2420], 1996  Requires passes=1
                  ; Modified Sylvie Gallet frm.
  pixel=-abs(real(pixel))+flip(imag(pixel)),
  b4=|pixel^8|+0.296-flip(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  b5=abs(flip(conj(pixel/2)))+flip(0.01/pixel)
  ;b5=pixel-1/log(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
  l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
  bailout=16,iter=0,pp2=pixel/imag(p2):
  t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
  t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c,
  iter=iter+1
  (|real(z)|) <= bailout
}

Carr2735(YAXIS) { ; Robert Carr [73753,2420], 1996  Requires passes=1
                  ; Modified Sylvie Gallet frm.
  pixel=-abs(real(pixel))+flip(imag(pixel)),
  b4=flip(pixel)+0.25/log(cos(1/pixel))*(tan(0.1/pixel))
  b5=cabs(pixel)+0.15/log(cosxx(1/pixel))*(tan(0.1/pixel))
  c=whitesq*b4-(whitesq==0)*b4-0.3
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
  l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
  bailout=16,iter=0,pp2=pixel/imag(p2):
  t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
  t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c,
  iter=iter+1
  (|real(z)|) <= bailout
}

; ---------------------------------------------------------------------

;                    PTC formulas (24-bit & 32-bit)
;                    ==============================

;                  24-bit ptc's have 3 pixels per color
;                  32-bit ptc's have 4 pixels per color

; ---------- Sylvie Gallet --------------------------------------------

ptc+4mandels { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
               ; 32-bit ptc
  cr = real(scrnpix) + 2*imag(scrnpix)
  r = cr - 4 * trunc(cr / 4)
  c = r == 0 , c1 = p1 * (r == 1)
  c2 = p2 * (r == 2) , c3 = p3 * (r == 3)
  z = c = pixel * (c + c1 + c2 + c3) :
   z = z * z + c
    |z| <= 4
  }

ptc+3mandels { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
               ; 24-bit ptc
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  c = r == 0 , c1 = p1 * (r == 1)
  c2 = p2 * (r == 2)
  z = c = pixel * (c + c1 + c2) :
   z = z * z + c
    |z| <= 4
  }

ptc+mjn { ; Sylvie Gallet [101324,3444], 1996  Requires passes=1
          ; 24-bit ptc
          ; Mandel: z^2 + c , Julia: z^2 + p1 , Newton: z^p2 - 1 = 0
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  z = pixel , b1 = 256 , b2 = 0.000001 , ex = p2 - 1
  c = pixel * (r == 0) + p1 * (r == 1) :
   zd = z^ex , zn = zd*z , n = zn - 1 , d = p2 * zd
   z = (z*z + c) * (r != 2) + (z - n/d) * (r == 2)
    (|z| <= b1 && r != 2) || (|n| >= b2 && r == 2)
  }
