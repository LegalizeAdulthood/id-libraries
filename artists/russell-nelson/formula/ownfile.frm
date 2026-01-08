 comment {
 FRACTINT.DOC has instructions for adding new formulas to this file.
 Note that there are several hard-coded restrictions in the formula
 interpreter:

 1) The fractal name through the open curly bracket must be on a single line.
 2) There is a current hard-coded limit of 30 formulas per formula file, only
    because of restrictions in the prompting routines.
 3) Formulas must currently be less than 200 characters long.
 3) Comments, like this one, are set up using dummy formulas with no
    formula name or the special name "comment".  There can be as many
    of these "comment" fractals as desired, they can be interspersed with
    the real formulas, and they have no length restriction.

 }

Mandelbrot(XAXIS) {
   z = Pixel:
   z = sqr(z) + pixel,
   |z| <= 4
   }

{ The following is a formula taken from a Compuserve GIF file called RAMANUJAN1
  as suggested by an equation in an article about the life and work of Indian 
  mathematician Srinivasa Ramanujan in the book "The World of Mathematics" Vol.
  1, pp 366-376.}

  Ramanujan1(ORIGIN) {
       z = pixel:
       z = (cosh(p1 * sqr(z)) - sinh(p2 * sqr(z))/(p2 * sqr(z)))/z,
       |z|<= 4   
}

{ The following formula came from Tobey J. E. Reed when asked how he made his
  IMAGE1 and IMAGE2 fractals.}

  LeeMandel1(XYAXIS) {
       z = pixel:
       c = sqr(pixel)/z,
       c = z + c,
       z = sqr(z),
       |z| < P1 
  }

  LeeMandel2(XYAXIS) {
       z = pixel:
       c = sqr(pixel)/z,
       c = z + c,
       z = sqr(c * pixel),
       |z| < 4
  }

  Tobey3(XAXIS) {
       z = pixel:
       c = pixel - sqr(z),
       c = pixel + c/z,
       z = c - z * pixel,
       |z| < 4
  }

ConformalMapping {
	c = pixel, RealZ = Real(c), ImagZ = Imag(c):
		RealZ = Sqr(RealZ) + (RealZ * ImagZ) + Real(c);
		ImagZ = Sqr(ImagZ) + (RealZ * ImagZ) + Imag(c);
		z = RealZ + (ImagZ * (0, 1)),
	|z| < 4
}

Sterling(XAXIS) {
	z = Pixel:  z = ((z/2.7182818)^z)/sqr(6.2831853*z),
	|z| <= 4
}

Sterling2(XAXIS) {
	z = pixel:  z = ((z/2.7182818)^z)/sqr(6.2631853*Z) + pixel,
	|z| <= 4
}

Sterling3(XAXIS) {
	z = Pixel:  z = ((z/2.7182818)^z)/sqr(6.2831853*z) - pixel,
	|z| <= 4
}

Something (xaxis) {
	z = pixel:
	z = pixel + z*z + 1/z/z,
	|z| <= 4
}

Somethingelse (xyaxis) {
	z = 1:
	z = pixel * (z*z + 1/z/z),
	|z| <= 1000000
}

JSomethingelse (xyaxis) {
	z = pixel:
	z = p1 * (z*z + 1/z/z),
	|z| <= 1000000
}

No_name(xaxis) {
	z = pixel:
	z=z+z*z+(1/z*z)+pixel,
	|z| <= 4
}
comment {
It seems not so ugly at first glance and lot of corners to zoom in.
Try this:
  Corners		x		y
Top-left	  -1.178372	  -0.601683
bottom-right      -0.978384	  -0.751678
center		  -1.07838	  -0.67668
}

Tim's_Error(XAXIS) {
	z = pixel, c = z ^ (z - 1):
	z = sqr(z);
	t2 = real(z)*real(c) + imag(z)*imag(c);
	t3 = real(t2)*imag(c) - imag(z)*real(c);
	z = t2 + t3 + pixel,
	|z| <= 4
}
comment {
A reverse enginerring of a coding error by Tim Wegner done while hard coding
MarksMandelPwr fractal.  Looks like a bug-eyed bird of prey.
}

Whatever_the_name(XAXIS) {
	z = pixel:
	z=z*z+(1/z*z)+pixel,
}

Jm_03a {; generalized Jm Richard-Collard type 
  z=pixel,t=p1+4: 
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel, 
    |z|<=t 
  } 

Jm_11a {; generalized Jm Richard-Collard type 
  z=pixel,t=p1+4: 
   z=fn1(fn2(fn3(fn4(z)*pixel)))+pixel, 
    |z|<=t 
  } 

Newducks(XAXIS) {
   z=pixel,t=1+pixel:
   z=sqr(z)+t,
   |z|<=4
   }

SinInvZ(XYAXIS) {
   z=pixel,inv=1/pixel+p1:
   z=sin(inv/z),
   |z|<=4
   }
 
CosInvZ(XYAXIS) {
   z=pixel,inv=1/pixel+p1:
   z=cos(inv/z),
   |z|<=4
   }
 
TanInvZ(XYAXIS) {
   z=pixel,inv=1/pixel+p1:
   t=inv/z;
   z=sin(t)/cos(t),
   |z|<=4
   }
 
SinhInvZ(XYAXIS) {
   z=pixel,inv=1/pixel+p1:
   z=sinh(inv/z),
   |z|<=4
   }
 
CoshInvZ(XYAXIS) {
   z=pixel,inv=1/pixel+p1:
   z=cosh(inv/z),
   |z|<=4
   }
 
TanhInvZ(XYAXIS) {
   z=pixel,inv=1/pixel+p1:
   z=tanh(inv/z),
   |z|<=4
   }

MyMandel {
   z=pixel:
   z=real(z)^2+real(z)*imag(z)+flip(imag(z)^2-real(z)*imag(z))+pixel
   |z|<=4
   }

IAC { 
   z = pixel: 
   z = z ^1.5 - .02, 
   |z| <= 4 
   }    

cardioid {
  z=0, x=real(pixel), y=imag(pixel),
  c=x*(cos(y)+x*sin(y)):
  z=sqr(z)+c,
  |z| < 4
  }

alt (xaxis) { 
  z=0, c=pixel, k=1: 
  z=sqr(z) + c, 
  c=c+k*p1/z, k=((11-3*k)*k-4)/2, 
  |z| <= 4 
  } 

testm { ; Try p1=0.25 and p2=0.15 with float=y or potential=255/800/255
  z = 0, c=pixel: 
  z = sqr(z)+c, 
  c=c+(p1 * (|z| <= p2)) 
  |z| <= 4 
  } 

test_formula {
  z = 0, c=pixel:
  z = sqr(z)+c,
  c=c+p1/z,
  |z| <= 4
  }

quadrants {
  z=0, c=pixel,
  r1=(0.0,1.0), r2=(-1.0,0.0), r3=(0.0,-1.0), r4=1:
  z=sqr(z)+c,
  x=real(z), y=imag(z),
  xp=(0 < x), xn=(x < 0), yp=(0 < y), yn=(y < 0),
  k1=xp*yp, k2=xn*yp, k3=xn*yn, k4=xp*yn,
  k=k1*r1+k2*r2+k3*r3+k4*r4,
  c=c+k*p1/z,
  |z| <= 4
  }

flip0_man(XAXIS) { ; Rick Hughes 'flip swaps the real & imag coordinates'
   z=0:
   z = flip(sqr(z) + pixel),
   |z| <= 4
   }

flip1_man { ; Rick Hughes
   z=0:
   pixel = flip(pixel),
   z = sqr(z) + pixel,
   |z| <= 4
   }

flip2_man { ; Rick Hughes
   z=0:
   pixel = flip(pixel),
   z = flip(sqr(z) + pixel),
   |z| <= 4
   }

flip3_man(XAXIS) { ; Rick Hughes
   z = 0:
   z = 1/flip(sqr(z) + pixel),
   |z| <= 4
   }

JulibrotSlice1 {; Randy Hutson - 2D slice of 4D Julibrot
  z = real(p1)+flip(imag(pixel)), c = real(pixel)+flip(imag(p1)):
  z = sqr(z)+c,
  LastSqr <= 4
  }

Silverado { ; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = pixel, zz=z*z, zzz=zz*z, z = (1.-p1)*zz + (p1*zzz), test = (p2+4)*(p2+4):
  z = z + pixel
  zsq = z*z
  zcu = zsq*z
  z = (1.-p1)*zsq + p1*zcu,
  |z| <= test
  }

Mandel1 { ; Classic Mandelbrot
  z = pixel:
   z = z * z + pixel
    |z| <= 4
 }

Mandel2 { ; Classic Mandel, using LastSqr for bailout
 z = pixel * pixel:
  z = sqr(z + pixel )
   LastSqr <= 4
 }

COMMENT {
 Mandel2 is a simplified version of the one in your message.  Both of these
generate the 'right' picture but they do it in different ways.  At the end
of each orbit calc, Z contains the 'right' value in the first formula, but
in the second it contains a *partially calculated* orbit.  Z has been
squared,
but C has not been added yet.  If you look at the orbits for these two
formulas you can see the difference.  The second formula takes advantage of
the fact that when you use the sqr() function, the modulus of whatever is
being squared is saved in lastsqr.  Thus the magnitude test is correct but
the orbit is not.

 Lee's second formula is leaving Z partially calculated but is using the
modulus of the partially calculated value instead of the right modulus.
Here's what I came up with (including speedups for the dev. version FP
code:)
}

Silverado2 { ; Rollo Silver
  st=1-p1,zz=pixel*pixel,z=zz*pixel*real(p1)+zz*real(st):
   z=z+pixel
   zz=sqr(z) ; and save mod in lastsqr
   z=zz*z*real(p1)+zz*real(st)
    4 > lastsqr
 } 

M-SetInNewton(XAXIS) {; use float=yes
  z = 0,  c = pixel,  cminusone = c-1:
  oldz = z,  nm = 3*c-2*z*cminusone, dn = 3*(3*z*z+cminusone),
  z = nm/dn+2*z/3,   |(z-oldz)|>=|0.01|
 }

F'M-SetInNewtonA(XAXIS) {; use float=yes
  z = 0,  c = fn1(pixel),  cminusone = c-1:
  oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone),
  z = nm/dn+2*z/p1, |(z-oldz)|>=|0.01|
 }

Unity {; This is a test
  z = 0, one = pixel:
  one = (x * x) + (y * y), y = (2 - one) * x, x = (2 - one) * y
  |one| <= 4
  }

F'M-SetInNewtonB(XAXIS) { ; use float=yes, periodicity=no
  ; set p1 >= 3, 1e-30 < p2 < .01
  z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
  oldz = z,
  z= (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1),
  |z - oldz| >= p2
  }

F'M-SetInNewtonC(XAXIS) { ; same as F'M-SetInNewtonB except for bailout
  ; use float=yes, periodicity=no
  ; (3 <= p1 <= ?) and (1e-30 < p2 < .01)
  z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
  z = (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1),
  abs(|z| - real(lastsqr) ) >= p2
  }

Tetrate(XAXIS) { ; duplicate of built-in type.
  ; p1=initial perturbation of z(0), p2 changes bailout from 4.
  z = pixel + p1, b = real(p2) + 4:
  z = pixel ^ z;
  |z| <= b;
  }

FnxZpZ  { ; Duplicate of built-in 'fn*z+z' type.  p1, p2 same as built-in
  z = pixel:
  z = (p1 * fn1(z) + p2 ) * z,
  |z| <= 64
  }

FnZpFnPix { ; Duplicate of built-in type 'fn(z)+fn(pix).'
  ; P1 = perturbation of z(0), p2 = multiplication factor.
  z = pixel + p1, c = p2 * fn2(pixel):
  z = fn1(z) + c,
  |z| <= 64
  }

LambdaFnOrFn { ; Chuck Ebbert -- Duplicate of built-in 'lambda(fn||fn).'
  ; P1 = lambda, real(p2) changes shift value from default of 1,
  ;  imag(p2) changes bailout from default of 64.
  z = pixel, modz = |z|, b = imag(p2) + 64, t = real(p2) + 1:
  z = ( fn1(z) * (modz<t) + fn2(z) * (real(t)<=modz ) ) * p1,
  modz = |z|,
  modz <= b
  }

Magnet1M(XAXIS) { ; Dupe of built-in type. P1=initial perturbation of z(0).
  z = p1, cm1 = pixel - 1, cm2 = cm1 - 1:
  z = sqr( (z*z+cm1 ) / (z+z+cm2 ) );
  |z-1| > .000030517578 && |z| <= 100;
  }

Magnet2M(XAXIS) { ; Dupe of built-in type. P1 = initial perturbation of z(0).
  z=p1,c1=pixel-1,c1x3=c1*3,c2x3=c1x3-3,c1c2=c1*c1-c1,c1c2p1=c1c2+1:
  z=sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) );
  |z-1| > .000030517578 && |z| <= 100;
  }

Gen_01 {; generalized type p1=p2=0, fn1=fn2=fn3=ident, fn4=sqr gives Mandelbrot
  z=pixel, t=p1+4, q = (p2+1) * fn1(pixel):
  z=fn2(fn3(fn4(z))) + q,
  |z|<=t
  }

FractalFenderC (XAXIS_NOPARM) {; Spectacular!
    ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1, x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel, x = |z|
   x <= 4
  ;SOURCE: fract196.frm
}

SpecC (XAXIS_NOPARM) {
     ; modified for if..else by George Martin 3/18/97
   z = p1
   x = |z| :
   IF (x>1)
      z = fn1(z)+pixel
   ENDIF
   z = fn2(z)+pixel
   x = |z|
   x <= 4
  ;SOURCE: skinner.frm
}

z^3-1=0(XAXIS)  {         ; Advanced Fractal Programming in C  - Stevens
   ; Run with inside = ZMAG to turn off periodicity checking
   x=real(pixel), y=imag(pixel):
   x2 = x*x, y2 = y*y,
   xold = x, yold = y, xmy = x2 - y2,
   d = 3 * (xmy * xmy + 4*x2*y2),
   x = .66666667*x + xmy/d,   y = .66666667*y - 2*x*y/d,
   x != xold && y != yold
   }

 ScSkZCZZ(XYAXIS) { z = pixel, TEST = (p1+3): z = (z*cosxx(z)) - z,
|z|<TEST }

RCL_10 { ; Ron Lewen, 76376,2567
  ;
  z=pixel:
  z=flip((z*z+pixel)/(pixel*pixel+z))
  |z| <= 4
  }

ScottSIC(XYAXIS) { z = pixel, TEST = (p1+3): z = sqr(1/cosxx(z)),
  |z|<TEST }

Fzpcophs  {z = pixel, f = pixel ^ (1. / sinh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpcocoh  {z = pixel, f = 1. / cosh(pixel):
     z = cosxx (z)  + f, |z| <= 50}



{ Formula file supplied with FRAC'Cetera Vol 1, Issue 3.
  }

   GLYNN(XAXIS) {; Based on an illustration in Science PROBE!  and a
              ; formula by Earl Glynn in Computers and the Imagination,
              ; by Clifford Pickover.   Try p1 = 1.5, p2 = -0.2
              ; Jon Horner, FRAC'Cetera
              ;
           z = pixel : z = z ^ p1 + p2 , |z| <=4 }


{ Peter Lewman's formulas for Fractint. }

Form3 (XAXIS) {
          z = Pixel, c = Pixel:
          z = c * z * ( p1 - z ),
          |z| < 4
        }

Form4 (XAXIS) {
          z = Pixel, c = P1:
          z = c * z * ( p2 - z ),
          |z| < 4
        }

Form5 (XAXIS) {
          z = Pixel, c = Pixel:
          z = p1 / ( fn1(z) + c ),
          |z| < 4
        }

Form6 (XAXIS) {
          z = Pixel, c = Pixel:
          z = z^6 + fn1(z) + c,
          |z| < 4
        }

Form7 (XYAXIS) {
          z = Pixel, c = Pixel:
          z = ( c * fn1( fn2(z) + 1 ) ) / ( z * ( fn3(z) - 1) ),
          |z| < 4
        }


aaa {
  z = pixel, c = z:
   z = sqr(c);
    |z|<p1
}

aaaa(XAXIS)  {
  z = pixel, c = z:
   z = exp(z*log(z));
    |z| <= p1
}

 Fzppchco  {z = pixel, f = cosxx (pixel):
                       z = cosh (z) + f, |z| <= 50}

Moth (XAXIS_NOPARM) {
   ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=log(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

? {
  if (x<10)
    z=sqr(z)+pixel
  endif
  if (10<=x && x<20)
    z=exp(z)+pixel
  endif
  if (20<=x)
    z=log(z)+pixel
  endif
  x=x+1, |z|<=4
}

hypercomplex { ; Chuck Ebbert
 ; must use periodicity=0
 ; real(p1) is cj, imag(p1) is ck
 ; p2 alters bailout from default of 64
 z=0, zi=0, b=real(p2)+64:
  z=fn1(z)+pixel, zi=fn1(zi)+p1,
   |z| + |zi| <= b
 }

hypercomplex2 { ; Chuck Ebbert -- must use periodicity=0
 ; P1 is (cj,ck), bailout is real(p2) (default 64)
 z = zi = 0,
 t = (64 * (real(p2)<=0) + real(p2) * (0<real(p2)) ):
  a = z - imag(zi) + flip(real(zi)),
  b = z + imag(zi) - flip(real(zi)),
  a = fn1(a),
  b = fn1(b),
  z = (a+b)/2 + pixel,
  zi = (imag(a)-imag(b)+flip(real(b))-flip(real(a)))/2 + p1,
   |z| + |zi| <= t
 }

MandelbrotInNewton(XAXIS) {; use float=yes: from CAL v4.0 by Tim Harris
  z = 0,  c = pixel,  cminusone = c-1:
  oldz = z,
  nm = 3 * c-2 * z * cminusone,
  dn = 3 * (3 * z * z + cminusone),
  z = nm/dn + 2 * z/3,
  |(z-oldz)|>=|0.01|
 }

;Tim Wegner - from a message on the board in GraphDev 1/10/94

Newton_poly2 { ; Tim Wegner - use float=yes
   ; fractal generated by Newton formula z^3 + (c-1)z - c
   ; p1 is c in above formula
   z = pixel, z2 = z*z, z3 = z*z2:
   z = (2*z3 + p1) / (3*z2 + (p1 - 1));
   z2 = z*z;
   z3 = z*z2,
  .004 <= |z3 + (p1-1)*z - p1|
  }

Fish (xaxis) {; Dave Oliver   >INTERNET:D.E.Oliver@soton.ac.uk
              ; try corners -4/4/-3/3
   z=pixel:                       ; initialize z to coordinates at pixel
   z=((pixel^z)-1)*(pixel^(z-1))  ; the "^" means complex exponentiation
   |z|<=4                         ; escape radius is 2 (|z| is sqr(x)+sqr(y))
   }

Fish2 (xaxis) {; Dave Oliver   >INTERNET:D.E.Oliver@soton.ac.uk
               ; (sped up 20% by T. Wegner)
   z=pixel:
   z1 = pixel^(z-1)
   z=((pixel*z1)-1)*(z1)
   |z|<=4
   }

OK-08 {
   z = pixel, c = fn1(pixel): z = z^z / fn2(z);
   z = c / z, |z| <= (5 + p1)  
   }

OK-38 { ; DISECTED CUBIC MANDELBROT
  ; TO GENERATE "STANDARD" CUBIC MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel,  cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 3 + p1:
  zx = real(z), zy = imag(z); x = fn3(zx*zx*zx - k*zx*zy*zy) + cx;
  y = fn4(k*zx*zx*zy - zy*zy*zy) + cy; z =  x + flip(y), |z| < (4 + p2)
  }

NOISY (XAXIS)     {
        z=c=pixel+(rand-(0.5,0.5))*p1*pixel:
        z=z*z+c, |z|<=4}

Unity(XYAXIS) {; Mark Peterson's fractal ported to parser by Tim Wegner
       ; needs periodicity=no float=yes at Fractint command line
       ; ddelmin is a somewhat arbitrary small number, haven't played with it
   ddelmin = .0001, x = real(Pixel), y = imag(Pixel):
   One = sqr(x) + sqr(y) ,
   y = (2.0 - One) * x,
   x = (2.0 - One) * y,
   One <= 2.0 && |One - 1.0| > ddelmin
}

