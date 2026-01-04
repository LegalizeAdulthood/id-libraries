comment = ( ; Builtin.Frm
 ;
 ; Formulas for some of Fractint's built-in fractal types.
 ;
 ;   by Chuck Ebbert  CompuServe [76306,1226]
 ;
 ;  Revised 14 Jan 1993
 ;
 }


barnsleyj1 { ; Chuck Ebbert.                        added 12 Jan 1993
 ; p1 = Parameter (default (0.6,1.1) ), real(p2) = bailout (default 4)
 z = pixel,  ; next, set c=default if p1=0, else c=p1
 c = ((0.6,1.1) * (|p1|<=0) + p1 ),
 ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  ; Use the "<=" or "<" operators when doing if-then-else.
  ; Put the compare operation after the multiply for speed gain.
  ; Extra parens are needed to get the correct results.
  z = (((z-1) * (0<=z) + (z+1) * (real(z)<0) ) * c ),
   |z| <= t  ; use t for the bailout test
 }

barnsleyj2 { ; Chuck Ebbert.                        added 12 Jan 1993
 ; p1 = Parameter (default (0.6,1.1) ), real(p2) = bailout (default 4)
 z = pixel,  ; next, set c=default if p1=0, else c=p1
 c = ((0.6,1.1) * (|p1|<=0) + p1 ),
 ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  t2 = real(z) * imag(c) + real(c) * imag(z),
  z = (((z-1) * (0<=t2) + (z+1) * (real(t2)<0) ) * c ),
   |z| <= t  ; use t for the bailout test
 }

barnsleyj3 { ; Chuck Ebbert.                        added 14 Jan 1993
 ; p1 = Parameter c, real(p2) = bailout (default 4)
 z = pixel,  ; next set c=(.1,.36) if p1=0
 c = ((0.1,0.36) * (|p1|<=0) + p1 ),
 ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = (z*z-1 + ( c*real(z) * (real(z)<=0) ) ),
   |z| <= t  ; use t for the bailout test
 }

barnsleym1 { ; Chuck Ebbert.                      changed 12 Jan 1993
 ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
 z = pixel + p1, c = pixel,
 ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  ; Use the "<=" or "<" operators when doing if-then-else.
  ; Put the compare operation after the multiply for speed gain.
  ; Extra parens are needed to get the correct results.
  z = (((z-1) * (0<=z) + (z+1) * (real(z)<0) ) * c ),
   |z| <= t  ; use t for the bailout test
 }

barnsleym2 { ; Chuck Ebbert.                       added 12 Jan 1993
 ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
 z = pixel + p1, c = pixel,
 ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  t2 = real(z) * imag(c) + real(c) * imag(z),
  z = (((z-1) * (0<=t2) + (z+1) * (real(t2)<0) ) * c ),
   |z| <= t  ; use t for the bailout test
 }

barnsleym3 { ; Chuck Ebbert.                        added 14 Jan 1993
 ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
 z = pixel + p1, c = pixel,
 ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = (z*z-1 + ( c*real(z) * (real(z)<=0) ) ),
   |z| <= t  ; use t for the bailout test
 }

fnxfn  { ; Chuck Ebbert.
 ; duplicate of built-in 'fn*fn' type.
 ; P2 = bailout (default 64)
 z = pixel,
 t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * fn2(z),
   |z| <= t
 }

fnxzpz  { ; Chuck Ebbert.
 ; Near duplicate of built-in 'fn*z+z' type.
 ; P1 = first coeff., P2 = second coeff. (default 1)
 ; bailout is fixed at 64
 z = pixel,
 m1 = (1 * (|p1|<=0) + p1 ),      ; force 1 if p1=0
 m2 = (1 * (|p2|<=0) + p2 ):      ; force 1 if p2=0
  z = (m1 * fn1(z) + m2 ) * z,
   |z| <= 64  ; always bail out at 64
 }

fnzpfnpix { ; Chuck Ebbert.
 ; Duplicate of built-in type 'fn(z)+fn(pix)'
 ; P1 = perturbation of z(0)
 ; p2 = multiplication factor (default 1)
 z = pixel + p1,
 ; CAE changed line below to test |p2|, not |real(p2)|    12 Jan 1993
 c = ((1 * (|p2|<=0) + p2 ) * fn2(pixel) ):
  z = fn1(z) + c,
   |z| <= 64  ; bailout is fixed at 64
 }

halley6 { ; Chris Green. Halley's for x(x^6-1)=0.  Mods by C. Ebbert.
 ; Same as built-in halley type with order = 6
 ; real(p1) = relaxation coefficient, usually 1 to 1.5 (default 1)
 ; real(p2) = epsilon (default .0001).
 m = (1 * (abs(real(p1))<=0) + p1 ),      ; force 1 if real(p1)=0
 d = (.0001 * (abs(real(p2))<=0) + p2 ),  ; force .0001 if real(p2)=0
 z=pixel, sqrz=sqr(z):
  oldmod = lastsqr,  ; save old modulus
  z5=sqrz*sqrz*z, z6=z5*z, z7mz=(z6-1)*z,
  z = z7mz / (z5*42*z7mz/(z6*14-2) - z6*7 + 1 ) * real(m) + z,
  sqrz = sqr(z),  ; lastsqr now contains |z|
   abs(lastsqr - oldmod ) >= d  ; bailout changed to match built-in
 }

hypercomplex { ; Chuck Ebbert -- must use periodicity=0,float=yes
 ; P1 is (cj,ck), bailout is real(p2) (default 64)
 z = zi = 0,
 t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  a = fn1(z-imag(zi)+flip(real(zi)) ),
  b = fn1(z+imag(zi)-flip(real(zi)) ),
  z = (b+a)/2 + pixel,
  zi = (flip(real(b))+imag(a)-imag(b)-flip(real(a)) ) / 2 + p1,
   |zi| + |z| <= t
 }

julia { ;                                         changed 13 Jan 1993
 ; p1=parameter (default (.3,.6) )
 ; bailout is real(p2) (default 4)
 z = pixel,  ; next, force c=(.3,.6) if p1=0
 c = ((0.3,0.6) * (|p1|<=0) + p1 ),
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + c,
   |z| <= t
 }

julia4 { ; Chuck Ebbert                             added 13 Jan 1993
 ; p1=Parameter (default (.6,.55) )
 ; bailout is real(p2) (default 4)
 ; force c=(.6,.55) if p1=0
 z = pixel, c = ((0.6,0.55) * (|p1|<=0) + p1 ),
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z*z) + c,
   |z| <= t
 }

julzpower { ; Chuck Ebbert                          added 12 Jan 1993
 ; p1 = Parameter C (default (0.3,0.6) )                  13 Jan 1993
 ; p2 = exponent (default 2)
 ; bailout fixed at 4
 z = pixel + p1, c = ((0.3,0.6) * (|p1|<=0) + p1 ),
 m = (2 * (|p2|<=0) + p2 ):  ; changed 'ex' to 'm'        13 Jan 1993
  z = z^real(m) + c,  ; should be  real(int(m))           13 Jan 1993
   |z| <= 4
 }

julzzpwr { ; Chuck Ebbert                           added 12 Jan 1993
 ;                                                renamed 13 Jan 1993
 ; p1 = Parameter C (default (-0.3,0.3) )                 13 Jan 1993
 ; p2 = exponent (default 2)
 ; bailout fixed at 4
 z = pixel + p1, c = ((-0.3,0.3) * (|p1|<=0) + p1 ),
 m = (2 * (|p2|<=0) + p2 ):
  z = z^z + z^real(m) + c,  ; should be  real(int(m))     13 Jan 1993
   |z| <= 4
 }

lambdafn { ; Chuck Ebbert.
 ; P1 is lambda, P2 = bailout (default 64).
 ; lambda default is (1,.4)
 z = pixel,
 ; CAE added leading zero below in (1,.4)                 12 Jan 1993
 m = ((1, 0.4) * (|p1|<=0) + p1 ),  ; force (1,.4) when p1=0
 t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * m,
   abs(imag(z)) <= t && abs(real(z)) <= t
 }

lambdafnorfn { ; Chuck Ebbert.  Same as 'lambda(fn|fn)'.  14 Jan 1993
 ; p1 is lambda (default (1,.1), real(p2) = bailout (default 64)
 ; imag(p2) = shift value (default 1)
 z = pixel,
 m = ((1, 0.1) * (|p1|<=0) + p1 ),  ; force (1,.1) when p1=0
 s = (1 * (abs(imag(p2))<=0) + imag(p2) * (0<imag(p2)) ),
 t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  modz = |z|,
  z = ((fn1(z) * (real(modz)<s) + fn2(z) * (s<=modz) ) * m ),
   abs(imag(z)) <= t && abs(real(z)) <= t
 }

magnet1j { ; Chuck Ebbert.                          added 12 Jan 1993
 ; p1 = Parameter c
 ; real(p2) = bailout (default is 100)
 z = pixel, cm1 = p1 - 1, cm2 = cm1 - 1,
 t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( (z*z+cm1 ) / (z+z+cm2 ) ),
   |z-1| > .000030517578 && |z| <= t
 }

magnet1m { ; Chuck Ebbert.
 ; p1 = initial perturbation of z(0).
 ; real(p2) = bailout (default is 100)
 z = p1, cm1 = pixel - 1, cm2 = cm1 - 1,
 t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( (z*z+cm1 ) / (z+z+cm2 ) ),
   |z-1| > .000030517578 && |z| <= t
 }

magnet2j { ; Chuck Ebbert.                          added 12 Jan 1993
 ; p1 = Parameter c
 ; real(p2) = bailout (default 100)
 z=pixel,c1=p1-1,c1x3=c1*3,c2x3=c1x3-3,c1c2=c1*c1-c1,c1c2p1=c1c2+1,
 t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) ),
   |z-1| > .000030517578 && |z| <= t
 }

magnet2m { ; Chuck Ebbert.
 ; p1 = initial perturbation of z(0).
 ; real(p2) = bailout (default 100)
 z=p1,c1=pixel-1,c1x3=c1*3,c2x3=c1x3-3,c1c2=c1*c1-c1,c1c2p1=c1c2+1,
 t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) ),
   |z-1| > .000030517578 && |z| <= t
 }

mandel { ;                                        changed 12 Jan 1993
 ; p1=initial perturbation of z
 ; bailout is real(p2) (default 4)
 z = pixel + p1, c = pixel,
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + c,
   |z| <= t
 }

mandel4 { ; Chuck Ebbert                            added 12 Jan 1993
 ; p1=initial perturbation of z
 ; bailout is real(p2) (default 4)
 z = pixel + p1, c = pixel,
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z*z) + c,  ;                                    13 Jan 1993
   |z| <= t
 }

manowar { ; Chuck Ebbert                            added 12 Jan 1993
 ; p1=initial perturbation of z
 ; bailout is real(p2) (default 4)
 z = pixel + p1, z1=z, c=pixel,
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  oldz = z,
  z = sqr(oldz) + z1 + c,
  z1 = oldz,
   |z| <= t
 }

manowarj { ; Chuck Ebbert                           added 12 Jan 1993
 ; p1 = Parameter c
 ; bailout is real(p2) (default 4)
 z = pixel, z1 = z, c = p1,
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  oldz = z,
  z = sqr(oldz) + z1 + c,
  z1 = oldz,
   |z| <= t
 }

manzpower { ; Chuck Ebbert                          added 12 Jan 1993
 ; p1 = initial perturbation of z
 ; p2 = exponent (default 2)
 ; bailout fixed at 4
 z = pixel + p1, c = pixel,
 ex = (2 * (|p2|<=0) + p2 ):
  z = z^real(ex) + c,  ; should be real(int(ex))          13 Jan 1993
   |z| <= 4
 }

manzzpwr { ; Chuck Ebbert                           added 12 Jan 1993
 ; p1 = initial perturbation of z
 ; p2 = exponent (default 2)
 ; bailout fixed at 4
 z = pixel + p1, c = pixel,
 ex = (2 * (|p2|<=0) + p2 ):
  z = z^z + z^real(ex) + c,  ; should be real(int(ex))    13 Jan 1993
   |z| <= 4
 }

spider { ; Chuck Ebbert                             added 12 Jan 1993
 ; p1=initial perturbation of z
 ; bailout is real(p2) (default 4)
 z = pixel + p1, c = pixel,
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + c,
  c = z + c/2,
   |z| <= t
 }

tetrate {
 ; p1 = initial perturbation of z(0).
 ; real part of p2 = bailout (default 4)
 z = pixel + p1,
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = pixel ^ z,
   |z| <= t
 }

timserror { ; Chuck Ebbert                          added 12 Jan 1993
 ; same as built-in "tim's_error" type
 ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
 t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ),
 z = pixel + p1, c = z ^ (z-1):
  z = fn1(z),
  ; must be careful to leave imag part of z unchanged     13 Jan 1993
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z)),
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c) ) + pixel,
   |z| <= t
 }

Unity(XYAXIS) {; Mark Peterson's fractal ported to parser by Tim Wegner
       ; needs periodicity=no float=yes at Fractint command line
       ; ddelmin is a somewhat arbitrary small number, haven't played with it
   ddelmin = 0.00008, x = real(Pixel), y = imag(Pixel):
   One = sqr(x) + sqr(y) ,
   y = (2.0 - One) * x,
   x = (2.0 - One) * y,
   One <= 2.0 && |One - 1.0| > ddelmin
}

