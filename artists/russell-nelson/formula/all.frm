;; These are all formulas I know (1256 )
;; I hope there are no duplicates.
;; Use this file as FRACTINT.FRM with Fractint v19.1
;; Jo Weber
;; CIS 100424,35
;; 9. April 1995


001 {
   z = c = pixel:
   z = ((z*z+1)^2 / z*(z*z-1)) * c ;
  |z| <=1
}

   001j {
   z = c = pixel:
   z = ((z*z+1)^2 / z*(z*z-1)) * c ;
  |c| <=1
}

   002 {
   z = c = pixel:
   z = (z*z-1)^2 / z*(z*z+1) * c ;
  |z| <=1
}

   003 {
   z = c = pixel:
   z = (z*z+1)^(-2) / z*(z*z-1) * c ;
  |z| <=1
}

   004 {
   z = c = pixel:
   z = (z*z+1)^2 / z*(c*z-1) * c ;
  |z| <=1
}

   005 {
   z = c = pixel:
   z = (z*z-1)^2 / z*(c*c+1) * c ;
  |z| <=1
}

   006 {
   z = c = pixel:
   z = (z*z+1)^(-2) / z*(c*c-1) * z ;
  |z| <=1
}

   007 {
   z = c = pixel:
   z = (z*z+1)^2 / z*(z*z-1) / c ;
  |z| <=1
}

   008 {
   z = c = pixel:
   z = (z*z-1)^2 / z*(z*z+1) ^ c ;
  |z| <=1
}

   009 {
   z = c = pixel:
   z = (z*z+1)^(-2) / z*(z*z-1)  ;
  |z| <=1
}

   010 {
   z = c = pixel:
   z = (z*z+1)^2 / z*(c*z-1) / c ;
  |z| <=1
}

   011 {
   z = c = pixel:
   z = (z*z-1)^2 / z*(c*c+1) + c ;
  |z| <=1
}

   012 {
   z = c = pixel:
   z = (z*z+1)^(-2) / z*(c*c-1) - z ;
  |z| <=1
}

   013 {
   z = c = pixel:
   z = (z*z + (c-1))^2 / (2*z + (c-1)) ;
  |z| <=1
}

   014 {
   z = c = pixel:
   z = (z*z - (c-1))^2 / (2*z + (c-1)) ;
  |z| <=1
}

   015 {
   z = c = pixel:
   z = (z*z + (c+1))^2 / (2*z + (c-1)) ;
  |z| <=1
}

   016 {
   z = c = pixel:
   z = (z*z + (c-1))^2 / (2*z - (c-1)) ;
  |z| <=1
}

   017 {
   z = c = pixel:
   z = (z*z + (c-1))^2 / (2*z - (c+1)) ;
  |z| <=1
}

401 { ;       These formulafiles are from Karl Geigl 100327,156. 

   z = x = pixel:
   z = fn1 (z) * fn2 (x)
   x = fn1 (x) / fn2 (z)
   |z| < 11;
}

   402 {
   z = x = pixel:
   x = fn1 (z) / fn2 (x)
   z = fn1 (x) * fn2 (z)
   |z| < 11;
}

   403 {
   z = x = pixel:
   x = fn1 (z) * fn2 (x)
   z = fn1 (x) + fn2 (z)
   |z| < 11;
}

   404 {
   z = x = pixel:
   x = fn1 (z) / fn2 (x)
   z = fn1 (x) + fn2 (z)
   |z| < 11;
}

   701 {
   z = c = p1 / pixel:
   z = z^p2 + c^p2 + c
   z <= p1
}

   702 {
   z = c = p1 / pixel:
   z = z^p2 - c^p2 + c
   z <= p1
}

   703 {
   z = c = p1 / pixel:
   z = z^p2 * c^p2 + c
   z <= p1
}

   704 {
   z = c = p1 / pixel:
   z = z^p2 / c^p2 + c
   z <= p1
};

   705 {
   z =c = p2 / pixel:
   z = z^p1 + c^p2 + c
   z <= p2
}

   706 {
   z = c = p2 / pixel:
   z = z^p1 - c^p2 + c
   z <= p2
}

   707 {
   z = c = p2 / pixel:
   z = z^p1 * c^p2 + c
   z <= p2
}

   708 {
   z = c = p2 / pixel:
   z = z^p1 / c^p2 + c
   z <= p2
}

3RDIM01  {;Mandelbrot
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=z*z+c, |z|<=64
}

3RDIM02  {;Tetration
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=c^z, |z|<=32
}

3RDIM03  {;Mandelbrot function
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=fn1(z)+c, |z|<=64
}

3RDIM04  {;Tetrated function     
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=fn1(c)^z, |z|<=64
}

3RDIM05  {;Mandelbrot lambda function
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=fn1(z)*c, |z|<=64
}

3RDIM06  {z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1),
        z=conj(z),c=conj(c):
        z=fn1(z)+c, |z|<=4
}

3RDIM08  {;Mandelbar
        z=p1*real(pixel)+flip(imag(pixel)), 
        c=p2+real(pixel)+p1*flip(imag(pixel)):
        z=conj(z*z)+c, |z|<=4
}

3RDIM10  {;Mandelbrot power function
         z=flip(imag(pixel)),c=p2+real(pixel):
         z=(fn1(z)+c)^p1, |z|<=4
}

3RDIM13  {;Mandelbrot function
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=1/fn1(z)+c, |z|<=64
}

3RDIM14  {;Mandelbrot lambda function
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        z=c/fn1(z), |z|<=64
}

3RDIMFRAME-ROBERT {; Ron Barnett, 1994
              ; floating point required
	z=p1*real(pixel)+flip(imag(pixel)),
	c=p2+real(pixel)+flip(imag(pixel)*p1):
	z=z*z*z/5+z*z+c, |z|<=100
}

3RDIMIKENAGA01 {; Ron Barnett, 1994
              ; floating point required
	z=p1*real(pixel)+flip(imag(pixel)),
	c=p2+real(pixel)+flip(imag(pixel)*p1):
	z=z*z*z+(c-1)*z-c, |z|<=100
}

3RDIMIKENAGA02 {; Ron Barnett, 1994
              ; floating point required
	z=p1*real(pixel)+flip(imag(pixel)),
	c=p2+real(pixel)+flip(imag(pixel)*p1),
	z=conj(z),c=conj(c):
	z=z*z*z+(c-1)*z-c, |z|<=100
}

3RDIMMANOWAR01 {; Ron Barnett, 1994
              ; floating point required
	z=z1=p1*real(pixel)+flip(imag(pixel)),
	c=p2+real(pixel)+flip(imag(pixel)*p1):
	z=z*z+z1+c,
             z1=z, |z|<=100
}

3RDIMSPIDER01 {; Ron Barnett, 1994
              ; floating point required
	z=p1*real(pixel)+flip(imag(pixel)),
	c=p2+real(pixel)+flip(imag(pixel)*p1):
	z=z*z+c,
             c=c/2+z, |z|<=100
}

aaa { ; dan.frm
    z = pixel, c = z:
    z = sqr(c);
    |z|<p1
}

aaaa (XAXIS)  { ; dan.frm
    z = pixel, c = z:
    z = exp(z*log(z));
    |z| <= p1
}

a---mand {
  z = c = pixel:
   z = z^c + sin(c)
    |z|<p1
}

a--mand {
  z = c = pixel:
   z = (sqr(z)+c) / |c|
    |z|<p1
}

aaa-deals {
  z = pixel, a=real(z), b=imag(z), i=((0-1)^0.5):
   x = real(z)
   y = imag(z)
   u = x*x + y*y + a
   v = (0-2)*x*y + b
   z = u + v*i;
    |z|<p1
}

aa-mand-re(XAXIS) {
  z = c = pixel:
   z = sqr(z)+c;
    real(z)<p1
}

aa-mand-im(XAXIS) {
  z = c = pixel:
   z = sqr(z)+c;
    imag(z)<p1
}

aa-diamand {
  z = c = pixel:
   z = sqr(z)+c;
    (real(z)+imag(z))<p1
}

aa-c-to-z(XAXIS)  {
  z = pixel, c = z:
   z = c^z;
    |z| <= p1
}

aa-z-to-c(XAXIS)  {
  z = pixel, c = z:
   z = exp(c*log(z));
    |z| <= p1
}

aa-z-to-z(XAXIS)  {
  z = pixel, c = z:
   z = exp(z*log(z));
    |z| <= p1
}

dots {
  z = c = pixel:
   z = z^c + c
    |z|<p1
}

bizarre {; Edited for Fractint v. 20 by George Martin 10/98
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=log(z)+pixel
  x=x+1
  |z|<=4
}

Fish (xaxis) {; To see the fish, use corners=-4/4/-3/3.
   z=pixel:                       ; initialize z to coordinates at pixel
   z=((pixel^z)-1)*(pixel^(z-1))  ; the "^" means complex exponentiation
   |z|<=4                         ; escape radius is 2 (|z| is sqr(x)+sqr(y))
}

Fish2 (xaxis) {; To see the fish, use corners=-4/4/-3/3.
   z=pixel:
   z1 = pixel^(z-1)
   z=((pixel*z1)-1)*(z1)
   |z|<=4
}


Liar1 { ; by Chuck Ebbert.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
   z = pixel:
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  |z| <= 1 ;
 }

Liar2 { ; by Chuck Ebbert.
        ; Same as Liar1 but use sequential reasoning, calculating
        ;  new y value using new x value.
        ; x(n+1) = 1 - abs(y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
   z = pixel:
   x = 1 - abs(imag(z)-real(z))
   z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1;
 }

Liar3 { ; by Chuck Ebbert.
        ; X: X is true to P1 times the extent that Y is true
        ; Y: Y is true to the extent that X is false.
        ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2 formula.
        ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
   z = pixel:
   x = 1 - abs(imag(z)*real(p1)-real(z) )
   z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1;
}

Liar4 { ; by Chuck Ebbert.
        ; X: X is as true as (p1+1) times Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; Real part of p1 changes probability.  Use floating point.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel, p = p1 + 1:
   z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)));
    |z| <= 1
    }

F'Liar1 { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
    fn1(abs(z))<p1 }

F'Liar1A { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
    |z| <= p1 }

F'Liar1C { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
    fn2(abs(z))<p1 }

F'Liar1D { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
   z = p1 - abs(imag(z)-real(z) ) + flip(p2 - abs(1-real(z)-imag(z) ) );
    |z| <1 }


flip0_man_m(XAXIS) {
   z=0:
   z = flip(sqr(z) + pixel),
   |z| <= 4
   }

flip0_man_j(ORIGIN) {
   z=pixel:
   z = flip(sqr(z) + p1),
   |z| <= 4
   }

flip1_man_m {
   z=0, q = pixel:
   q = flip(q),
   z = sqr(z) + q,
   |z| <= 4
   }

flip1_man_j(ORIGIN) {
   z=pixel, q = p1:
   q = flip(q),
   z = sqr(z) + q,
   |z| <= 4
   }

flip2_man_m { ;
   z=0, q = pixel:
   q = flip(q),
   z = flip(sqr(z) + q),
   |z| <= 4
   }

flip2_man_j(ORIGIN) {
   z=pixel, q = p1:
   q = flip(q),
   z = flip(sqr(z) + q),
   |z| <= 4
   }

flip3_man_m(XAXIS) { ;
   z = 0:
   z = 1/flip(sqr(z) + pixel),
   |z| <= 4
   }

flip3_man_j { ;
   z = pixel:
   z = 1/flip(sqr(z) + p1),
   |z| <= 4
   }

FnxZpZ  {
  ; Duplicate of built-in 'fn*z+z' type.
  ; p1, p2 same as built-in
  z = pixel:
   z = (p1 * fn1(z) + p2 ) * z,
    |z| <= 64
 }

FnZpFnPix {
  ; Duplicate of built-in type 'fn(z)+fn(pix).'
  ; P1 = perturbation of z(0), p2 = multiplication factor.
  z = pixel + p1, c = p2 * fn2(pixel):
   z = fn1(z) + c,
    |z| <= 64
 }

FUGUE_01{;11/29/94
 z=pixel,x=1,y=1,a=p1,b=p2:
 z=fn1(z)+a*b
 |z|<=4
 a=fn1(x*z)
 |a|<=8
 b=fn1(y*z)
 |b|<=16
 }

FUGUE_02{;11/29/94
 z=pixel,a=p1,b=p2:
 z=fn1(z)+a*b
 |z|<=4
 a=fn2(z)
 |a|<=8
 b=fn3(z)
 |b|<=16
 }

FUGUE_03{;11/29/94
 z=pixel,a=p1,b=p2:
 z=fn1(z)*(a+b)
 |z|<=4
 a=fn2(z)
 |a|<=8
 b=fn3(z)
 |b|<=16
 }

FUGUE_04{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)*(a+b+c)
 |z|<=4
 a=fn2(z)
 |a|<=8
 b=fn3(z)
 |b|<=16
 c=fn4(z)
 |c|<=32
 }

FUGUE_05{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)
 |a|<=8
 b=fn3(z)
 |b|<=16
 c=fn4(z)
 |c|<=32
 }  

FUGUE_06{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |a|<=8
 b=fn3(z)+b
 |b|<=16
 c=fn4(z)+c
 |c|<=32
 }

FUGUE_07{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |a|<=8
 b=fn3(z)+b
 |b|<=16
 c=fn4(z)+c
 |c|<=32
 z=fn1(z)*(a*b*c)
 |z|<=64
 a=fn2(z)*a
 |a|<=128
 b=fn3(z)*b
 |b|<=256
 c=fn4(z)*c
 |c|<=512
 }

FUGUE_08{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)*(a*b*c)
 |z|<=4
 a=fn2(z)*a
 |z|<=8
 b=fn3(z)*b
 |z|<=16
 c=fn4(z)*c
 |z|<=32
 z=fn1(z)*(a*b*c)
 |z|<=64
 a=fn2(z)*a
 |z|<=128
 b=fn3(z)*b
 |z|<=256
 c=fn4(z)*c
 |z|<=512
 }

FUGUE_09{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |z|<=8
 b=fn3(z)+b
 |z|<=16
 c=fn4(z)+c
 |z|<=32
 z=fn1(z)+(a*b*c)
 |z|<=64
 a=fn2(z)+a
 |z|<=128
 b=fn3(z)+b
 |z|<=256
 c=fn4(z)+c
 |z|<=512
 }

FUGUE_10{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |z|<=8
 b=fn3(z)+b
 |z|<=16
 c=fn4(z)+c
 |z|<=32
 z=fn1(z)*(a*b*c)
 |z|<=64
 a=fn2(z)*a
 |z|<=128
 b=fn3(z)*b
 |z|<=256
 c=fn4(z)*c
 |z|<=512
 }

FUGUE_11{;12/01/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |z|<=8
 b=fn3(z)+b
 |z|<=16
 c=fn4(z)+c
 |z|<=32
 z=fn1(z)+(a*b*c)/2
 |z|<=64
 a=fn2(z)+a/2
 |z|<=128
 b=fn3(z)+b/2
 |z|<=256
 c=fn4(z)+c/2
 |z|<=512
 }
 
Fzpcocoh  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = 1. / cosh(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpcopch  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (cosh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpcopcs  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (1. / cosxx(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}

Fzpcopct  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (cosxx(pixel) / sin(pixel) ):
                        z = cosxx (z)  + f, |z|<= 50}

Fzpcophc  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (1. / cosh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpcophs  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (1. / sinh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpcopht  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (cosh(pixel) / sinh(pixel) ):
                       z = cosxx (z)+f,|z|<= 50}

Fzpcopse  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (1. / sin(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpcopsh  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (sinh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpcopsq  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (sqr(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpcopta  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (sin(pixel) / cosxx(pixel) ):
                        z = cosxx (z)  + f, |z|<= 50}

Fzpcopth  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (sinh(pixel) / cosh(pixel) ):
                        z = cosxx (z)+f,|z|<= 50}

Fzpcoseh  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = 1. / sinh(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzpfncoh  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = 1./cosh(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzpfnseh  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = 1./sinh(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppchco  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosxx (pixel):
                       z = cosh (z) + f, |z| <= 50}

Fzppchex  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = exp (pixel):
                       z = cosh (z) + f, |z| <= 50}

Fzppchlo  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = log (pixel):
                       z = cosh (z) + f, |z| <= 50}

Fzppchsh  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sinh (pixel):
                       z = cosh (z) + f, |z| <= 50}

Fzppchsi  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sin (pixel):
                       z = cosh (z) + f, |z| <= 50}

Fzppchsq  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sqr (pixel):
                       z = cosh (z) + f, |z| <= 50}

Fzppcoch  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosh (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcocs  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = 1. / cosxx(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcoct  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosxx(pixel) / sin(pixel):
                       z = cosxx (z)  + f, |z|<= 50}

Fzppcoex  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = exp (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcohs  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sinh (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcoht  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosh(pixel) / sinh(pixel):
                       z = cosxx (z)+f,|z|<= 50}

Fzppcolo  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = log (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcopc  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (cosxx(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcope  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (exp(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcopl  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (log(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcopo  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = (pixel) ^ (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcopr  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (1. / pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcops  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (sin(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcore  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = 1. / (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcos   { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosxx (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcose  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = 1. / sin(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcosh  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosh (pixel):
                       z = cosh (z) + f, |z| <= 50}

Fzppcosi  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sin (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcosq  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sqr (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcosr  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = (pixel) ^ 0.5:
                       z = cosxx (z)  + f, |z| <= 50}

Fzppcota  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sin(pixel) / cosxx(pixel):
                       z = cosxx (z)  + f, |z|<= 50}

Fzppcoth  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sinh(pixel) / cosh(pixel):
                       z = cosxx (z)+f,|z|<= 50}

Fzppexch  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosh (pixel):
                       z = exp (z)  + f, |z| <= 50}

Fzppexco  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosxx (pixel):
                       z = exp (z)  + f, |z| <= 50}

Fzppexlo  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = log (pixel):
                       z = exp (z)  + f, |z| <= 50}

Fzppexp   { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = exp (pixel):
                       z = exp (z)  + f, |z| <= 50}

Fzppexsh  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sinh (pixel):
                       z = exp (z)  + f, |z| <= 50}

Fzppexsi  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sin (pixel):
                       z = exp (z)  + f, |z| <= 50}

Fzppexsq  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sqr (pixel):
                       z = exp (z)  + f, |z| <= 50}

Fzppfncs  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = 1./cos(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnct  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = cos(pixel)/sin(pixel):
   z = fn1(z) + f,
    |z|<= 50
  }

Fzppfnht  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = cosh(pixel)/sinh(pixel):
   z = fn1(z)+f,
    |z|<= 50
  }

Fzppfnpo  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = (pixel)^(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnre  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = 1./(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnse  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = 1./sin(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnsr  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = (pixel)^.5:
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnta  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = tan(pixel):
   z = fn1(z) + f,
    |z|<= 50
  }

Fzppfnth  { ;; Lee.FRM (Lee Skinner)
  z = pixel, f = tanh(pixel):
   z = fn1(z)+f,
    |z|<= 50
  }

Fzppshch  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosh (pixel):
                       z = sinh (z) + f, |z| <= 50
}

Fzppshco  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosxx (pixel):
                       z = sinh (z) + f, |z| <= 50
}

Fzppshex  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = exp (pixel):
                       z = sinh (z) + f, |z| <= 50
}

Fzppshlo  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = log (pixel):
                       z = sinh (z) + f, |z| <= 50
}

Fzppshsi  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sin (pixel):
                       z = sinh (z) + f, |z| <= 50
}

Fzppshsq  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sqr (pixel):
                       z = sinh (z) + f, |z| <= 50
}

Fzppsich  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosh (pixel):
                       z = sin (z)  + f, |z| <= 50
}

Fzppsico  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosxx (pixel):
                       z = sin (z)  + f, |z| <= 50
}

Fzppsiex  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = exp (pixel):
                       z = sin (z)  + f, |z| <= 50
}

Fzppsinh  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sinh (pixel):
                       z = sinh (z) + f, |z| <= 50
}

Fzppsish  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sinh (pixel):
                       z = sin (z)  + f, |z| <= 50
}

Fzppsisq  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sqr (pixel):
                       z = sin (z)  + f, |z| <= 50
}

Fzppsqlo  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = log (pixel):
                       z = sqr (z)  + f, |z| <= 50
}

Fzppsqsh  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sinh (pixel):
                       z = sqr (z)  + f, |z| <= 50
}

Fzppsqsi  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sin (pixel):
                       z = sqr (z)  + f, |z| <= 50
}

Gen_01 {; generalized type
  ; p1=p2=0, fn1=fn2=fn3=ident, fn4=sqr gives Mandelbrot
  z=pixel, t=p1+4, q = (p2+1) * fn1(pixel):
   z=fn2(fn3(fn4(z))) + q,
    |z|<=t
  }

Gopalsamy2 {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -4*x*y + p1,
   y = 4*y*y - x*x,
   z = x1 + flip(y), |z| <= 4
}

Gopalsamy3 {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = 3*x*y*y - x*x*x + p1,
   y = y*y*y - 3*x*x*y,
   z = x1 + flip(y), |z| <= 4
}

Gopalsamy4 {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -x*y + p1,
   y = 2*y*y - 3*x*x,
   z = x1 + flip(y), |z| <= 4
}

Gopalsamy5 {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = 2*x*y,
   y1 = x*x - y*y,
   x2 = -2*x1*y1 + p1,
   y = y1*y1 - x1*x1,
   z = x2 + flip(y), |z| <= 4
 }

GopalsamySin2 {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = sin(x)*cosh(y),
   y1 = cos(x)*sinh(y),
   x2 = -2*x1*y1 + p1,
   y = y1*y1 - x1*x1,
   z = x2 + flip(y), |z| <= 100
}

GopalsamySin {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -sin(x)*cosh(y) + p1,
   y = -cos(x)*sinh(y),
   z = x1 + flip(y), |z| <= 100
}

GopalsamyExp {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -exp(x)*cos(y) + p1,
   y = -exp(x)*sin(y),
   z = x1 + flip(y), |z| <= 100
}

GopalsamyExp2 {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = exp(x)*cos(y),
   y1 = exp(x)*sin(y),
   x2 = -2*x1*y1 + p1,
   y = y1*y1 - x1*x1,
   z = x2 + flip(y), |z| <= 100
}

GopalsamySinh2 {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = sinh(x)*cos(y),
   y1 = cosh(x)*sin(y),
   x2 = -2*x1*y1 + p1,
   y = y1*y1 - x1*x1,
   z = x2 + flip(y), |z| <= 100
}

GopalsamySinh {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -sin(x)*cosh(y) + p1,
   y = -cos(x)*sinh(y),
   z = x1 + flip(y), |z| <= 100
}

GopalsamyFn {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = fn1(x)*fn2(y),
   y1 = fn3(x)*fn4(y),
   x2 = -2*x1*y1 + p1,
   y = y1*y1 - x1*x1,
   z = x2 + flip(y), |z| <= 100
}

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

Jm_15 {; Jm Richard-Collard
   z  = pixel,
   t  = p1+4:
   f2 = fn2(z),z=fn1(f2)*fn3(fn4(f2))*pixel,
        |z| <= t
  }

Jm_16 {; Jm Richard-Collard
   z  = pixel,
   t  = p1+4:
   f2 = fn2(z),z=fn1(f2)*fn3(fn4(f2))+pixel,
        |z| <= t
  }

Jm_17 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z)*pixel*fn2(fn3(z)),
       |z| <= t
  }

Jm_18 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z)*pixel*fn2(fn3(z)*pixel),
       |z| <= t
  }

Jm_19 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z)*pixel*fn2(fn3(z)+pixel),
       |z|<=t
  }

Jm_20 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z^pixel),
       |z| <= t
  }

Jm_21 {; Jm Richard-Collard
   z= pixel,
   t= p1+4:
   z= fn1(z^pixel)*pixel,
      |z| <= t
  }

Jm_22 {; Jm Richard-Collard
   z  = pixel,
   t  = p1+4:
   sq = fn1(z),
   z  = (sq*fn2(sq)+sq)+pixel,
        |z| <= t
  }

Jm_24 {; Jm Richard-Collard
   z  = pixel,
   t  = p1+4:
   z2 = fn1(z), z=(fn2(z2*fn3(z2)+z2))+pixel,
        |z| <= t
  }

Jm_25 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z*fn2(z)) + pixel,
       |z|<=t
  }

Jm_26 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(z)) + pixel,
       |z|<=t
  }

Jm_27 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   s = fn1(z),
   z = s + 1/s + pixel,
       |z| <= t
}

Jm_03a {; generalized Jm Richard-Collard type
   z = pixel,
   t = p1+4:
   z = fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel,
      |z|<=t
  }

Jm_11a {; generalized Jm Richard-Collard type
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(fn4(z)*pixel)))+pixel,
       |z|<=t
  }

Jm_23 {; generalized Jm Richard-Collard type
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(z)+pixel*pixel)),
       |z|<=t
  }

Jm_27a {; generalized Jm Richard-Collard type
   z = pixel,
   t = p1+4:
   sqrz = fn1(z), z=sqrz + 1/sqrz + pixel,
       |z|<=t
  }

Jm_28(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z)^fn2(z)+pixel,
	|z|<=4        
}

Jm_29(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z)^fn2(z)*pixel,
	|z|<=4        
}

Jm_30(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z+pixel)^fn2(z+pixel),
	|z|<=4        
}

Jm_31(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z*pixel)^fn2(z*pixel),
	|z|<=4        
}

Jm_32(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z+pixel)^fn2(z*pixel),
	|z|<=4        
}

Jm_33(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z*pixel)^fn2(z*pixel)*pixel,
	|z|<=4        
}

Jm_34(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z*pixel)^fn2(z*pixel)+pixel,
	|z|<=4        
}

Jm_35(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z+pixel)^fn2(z+pixel)+pixel,
	|z|<=4        
}

Jm_36(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z+pixel)^fn2(z+pixel)*pixel,
	|z|<=4        
}

Jm_37(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(pixel)^fn2(z),
	|z|<=4       
}

Jm_38(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z)^fn2(pixel),
	|z|<=4       
}

Jm_39(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z)^fn2(1/z)+pixel,
	|z|<=4       
}

Jm_40(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z)^pixel+pixel^fn2(z),
	|z|<=4       
}

Jm_46(xaxis) {; Jm Collard-Richard
	z=pixel:
	z=exp(-p1*z*z*cos(p2))*cos(p1*z*z*sin(p2))+pixel,
	|z|<=4  
}

Jm_47(xaxis) {; Jm Collard-Richard
	z=pixel:
	z=fn1(p1*z)/fn2(p2*z)+pixel,
	|z|<=4 
}

Jm_50(xaxis) { ; Jm Collard-Richard
	z=pixel:
	z=fn1(z)/fn2(z)+fn3(pixel),
	|z|<=P1      
}

Jm_51(xaxis) {; Jm Collard-Richard
	z=pixel,c=z^fn2(pixel):
	z=fn1(z)+c,
	|z|<=25      
}

Jm_52(xaxis) {; Jm Collard-Richard    -Use FLOAT
	z=pixel,c=z^fn2(pixel):
	z=fn1(z)+c;
	c=fn3(c)+fn4(z),
	|z|<=25     
}

Jm_53(xaxis) {; Jm Collard-Richard  -  Use Float
	c=z=pixel:
	z=fn1(z)+c;
	c=fn2(c)+fn3(z),
	|z|<=25     
}

Jm_54(xaxis) { ;Jm Collard-Richard
               ; pouah !
	z=pixel:
	z=fn1(flip(z))+flip(fn2(z))+pixel
}

Jm_55(xaxis) {; JM Collard-Richard
	z=pixel,stop=25:
	f1=z^p1;
	f2=z^p2;
	z=fn1(f1)*fn2(f2)+pixel,
	|z|<=25      
}

Jm_56(xaxis) { ; Jm Collard-Richard
	z=pixel,stop=25:
	f1=z^p1;
	f2=z^p2;
	z=fn1(f1)/fn2(f2)+pixel,
	|z|<=stop    
}

Jm_57(xaxis) { ; Jm Collard-Richard
	z=pixel,stop=25:
	f1=1/(z^p1);
	f2=1/(z^p2);
	z=fn1(f1)*fn2(f2)+pixel,
	|z|<=stop    
}

Jm_58(xaxis) {; Jm Collard-Richard
	z=pixel,stop=25:
	f1=1/(z^p1);
	f2=1/(z^p2);
	z=fn1(f1)/fn2(f2)+pixel,
	|z|<=stop    
}

Jm_59(xaxis) {; Jm Collard-Richard
	z=pixel,stop=25:
	f1=1/(z^p1);
	f2=1/(z^p2);
	z=(fn1(f1)/fn2(f2))*pixel,
	|z|<=stop    
}

Jm_60(xaxis) {; Jm Collard-Richard
	z=pixel,stop=25:
	f1=(z^p1);
	f2=(z^p2);
	z=(fn1(f1)/fn2(f2))*pixel,
	|z|<=stop    
}

Jm_61(xaxis) {; Jm Collard-Richard
	z=pixel,stop=25:
	f1=1/(z^p1);
	f2=1/(z^p2);
	z=fn1(f1)*fn2(f2)*pixel,
	|z|<=stop    
}

Jm_62(xaxis) {; Jm Collard-Richard
	z=pixel,stop=25:
	f1=(z^p1);
	f2=(z^p2);
	z=fn1(f1)*fn2(f2)*pixel,
	|z|<=stop    
}

Jm_ducks (XAXIS) {; Jm Richard-Collard
   ; try fn1 = sqr
   ; try corners=-1.178372/-0.978384/-0.751678/-0.601683
   z = pixel,
   t = 1+pixel:
   z = fn1(z)+t,
       |z| <= p1 + 4
  }


FlipConjMand_N { ; Jm Collard-Richard
c=z=pixel:
z=flip(conj(z^p1))+c,
|z|<=4         }

ConjFlipMand_N {; Jm Collard-Richard
c=z=pixel:
z=conj(flip(z^p1))+c,
|z|<=4         }

FlipConjJul_N  { ; Jm Collard-Richard
z=pixel:
z=flip(conj(z^p2))+p1,
|z|<=4         }

ConjFlipJul_N  { ;Jm Collard-Richard
z=pixel:
z=conj(flip(z^p2))+p1,
|z|<=4         }

GenMand_N      { ;Jm Collard-Richard
                 ; fn1=flip fn2=conj ... fn3=conj fn4=ident ...
                 ;                       fn3=flip fn4=ident   etc ...
c=z=pixel:
z=fn1(fn2(z^p2))+fn3(fn4(c)),
|z|<=4         }

GenJul_N       {; Jm Collard-Richard  (voir Rem de GenMand_N)
z=pixel:
z=fn1(fn2(z^p2))+fn3(fn4(p1)),
|z|<=4         }

GenInvMand_N   { ; Jm Collard-Richard (voir Rem de GenMand_N)
c=z=1/pixel:
z=fn1(fn2(z^p2))+fn3(fn4(c)),
|z|<=4         }

GenInvJul_N    { ; Jm Collard-Richard (voir Rem de GenMand_N)
z=1/pixel:
z=fn1(fn2(z^p2))+fn3(fn4(p1)),
|z|<=4         }

GenInvJmN-M    { ; Jm Collard-Richard
                 ; voir Rem de GenMand_N et InvJmN-M
c=z=1/(pixel^p2):
z=fn1(fn2(z^p2))+fn3(fn4(c)),
|z|<=4         }

GenInvJmN-J    { ;Jm Collard-Richard
                 ; Voir Rem de GenMand_N et InvJmN-J
z=1/(pixel^p2):
z=fn1(fn2(z^p2))+fn3(fn4(p1)),
|z|<=4         }

GenMand1_N     { ; Jm Collard-Richard
c=z=pixel:
z=fn1(z)*fn2(z)+fn3(fn4(c)),
|z|<=4         }

GenJul1_N      { ; Jm Collard-Richard
z=pixel:
z=fn1(z)*fn2(z)+fn3(fn4(p1)),
|z|<=4         }

GenInvMand1_N  { ; Jm Collard-Richard
c=z=1/pixel:
z=fn1(z)*fn2(z)+fn3(fn4(c)),
|z|<=4         }

GenInvJul1_N   { ; Jm Collard-Richard
z=1/pixel:
z=fn1(z)*fn2(z)+fn3(fn4(p1)),
|z|<=4         }

GenInvJm1N1-M  { ; Jm Collard-Richard
c=z=1/(pixel^p2):
z=fn1(z^p2)*fn2(z^p2)+fn3(fn4(c)),
|z|<=4         }

GenInvJm1N2-M  {; Jm Collard-Richard
c=z=1/(pixel^p2):
z=fn1(z)*fn2(z)+fn3(fn4(c)),
|z|<=4         }

GenInvJm1N1-J  { ; Jm Collard-Richard
z=1/(pixel^p2):
z=fn1(z^p2)*fn2(z^p2)+fn3(fn4(p1)),
|z|<=4         }

GenInvJm1N2-J  { ; Jm Collard-Richard
z=1/(pixel^p2):
z=fn1(z)*fn2(z)+fn3(fn4(p1)),
|z|<=4         }


InvJm1-M(xaxis) { ; Ceci n'est *pas* InvMand2  Jm Collard-Richard
c=z=1/(pixel*pixel):
z=z*z+c       }           ; 'type' Mandelbrot

InvJm1-J        {; Jm Collard-Richard  Ceci n'est *pas* InvJulia2
z=1/(pixel*pixel):
z=z*z+p1      }           ; 'type' Julia

InvJmN-M      {  ; Jm Collard-Richard    Ceci n'est pas InvMandelN
c=z=1/(pixel^p1):
z=z^p1+c,
|z|<=4        }

InvJmN-J      {  ; Jm Collard-Richard   Ceci n'est pas InvJuliaN
z=1/(pixel^p2):
z=z^p2+p1,
|z|<=4        }

InvJmBarN-M   { ; Jm Collard-Richard     Ceci n'est pas InvMandBar_N
c=z=1/(pixel^p1):
z=conj(z)^p1+c,
|z|<=4        }

InvJmBarN-J   {; Jm Collard-Richard   Ceci n'st pas InvJulBar_N
z=1/(pixel^p2):
z=conj(z)^p2+p1,
|z|<=4        }


InvFNJmN-M(xaxis) { ; Jm Collard-Richard
c=z=1/(pixel^p1) :
z=fn1(z^p1)+fn2(c)  }

InvFNJmN-J        {; Jm Collard-Richard
z=1/(pixel^p2):
z=fn1(z^p2)+fn2(p1) }

MandelBar_3_c(xaxis) { ; Jm Collard-Richard
z=c=pixel:
z=conj(z)^3+c,
|z|<=4               }

MandelBar_4_c(xaxis) { ; Jm Collard-Richard
z=c=pixel:
z=conj(z)^4+c,
|z|<=4               }

MandelBar_N          { ; Jm Collard-Richard
z=c=pixel:
z=conj(z)^p1+c,
|z|<=4               }

MandelBarFN(xaxis)     { ; Jm Collard-Richard
z=c=pixel:
z=c*fn1(conj(z)),
|z|<=64              }

FnMandelBar(xaxis)     {; Jm Collard-Richard
z=c=pixel :
z=c*conj(fn1(z)),
|z|<=64              }

InvMandelBar_2_c(xaxis) { ; Jm Collard-Richard
c=z=1/pixel :
z=conj(z)*conj(z)+c }

InvMandelBar_N(xaxis) { ; Jm Collard-Richard
c=z=1/pixel :
z=conj(z)^p1+c           }

InvFNMandelBar_N(xaxis) { ; Jm Collard-Richard
c=z=1/pixel :
z=fn1(conj(z)^p1)+fn2(c) }

FNInvMandelBar_N(xaxis) { ;Jm Collard-Richard
c=z=1/pixel :
z=conj(fn1(z))^p1+fn2(c)    }

     { Voir les Julia_X_c et JuliaBar_X_c   }


Julia_N                  { ; Jm Collard-Richard
                           ; rentrer p1=c et p2 la puissance
z=pixel:
z=z^p2+p1,
|z|<=4                   }

JuliaBar_2(xaxis)        { ; Jm Collard-Richard
z=pixel:
z=conj(z)^2+p1,
|z|<=4                   }

JuliaBar_N               { ; Jm Collard-Richard
z=pixel:
z=conj(z)^p2+p1,
|z|<=4                   }

InvJuliaBar_2            { ; Jm Collard-Richard
z=1/pixel:
z=conj(z)^2+p1           }

InvJuliaBar_N            { ; Jm Collard-Richard
z=1/pixel:
z=conj(z)^p2+p1          }

FnInvJuliaBar_N1          { ; Jm Collard-Richard
z=1/pixel:
z=fn1(conj(z)^p2)+fn2(p1) }

FnInvJuliaBar_N2          {; Jm Collard-Richard
z=1/pixel:
z=fn1(conj(z))^p2+fn2(p1) }

FnInvJuliaBar_N3          { ;Jm Collard-Richard
z=1/pixel:
z=(fn1(conj(z))^p2)+fn2(p1) }

FnJuliaBar_N              {; Jm Collard-Richard
z=pixel:
z=fn1(conj(z))^p2+fn2(p1) }


InvJulia_N                { ; Jm Collard-Richard
z=1/pixel:
z=z^p2+p1 ,
|z|<=4                    }


InvMand_N                 { ;  Jm Collard-Richard
z=c=1/pixel:
z=z^p1+c,
|z|<=4                    }


JTet (XAXIS) {; Lee Skinner
   z = pixel:
   z = (pixel ^ z) + p1,
       |z| <= (p2 + 3)
  }

j1 {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2,
	|z| <= 4
	}

m1 {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1,
	|z| <= 4
	}

jz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*z,
	|z| <= 4
	}

mz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*z,
	|z| <= 4
	}

joz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2/z,
	|z| <= 4
	}

moz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1/z,
	|z| <= 4
	}

jfnz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*fn1(z),
	|z| <= 4
	}

mfnz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*fn1(z),
	|z| <= 4
	}

jc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*c,
	|z| <= 4
	}

mc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*c,
	|z| <= 4
	}

joc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2/c,
	|z| <= 4
	}

moc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1/c,
	|z| <= 4
	}

jfnc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*fn1(c),
	|z| <= 4
	}

mfnc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*fn1(c),
	|z| <= 4
	}

J_TchebychevT2 {
   c = pixel, z = P1:
   z = c*(2*z*z-1),
   |z|<100
}

J_TchebychevT3 {   ;
   c = pixel, z = P1:
   z = c*z*(4*z*z-3),
   |z|<100
}

J_TchebychevT4 {
   c = pixel, z = P1:
   z = c*(z*z*(8*z*z+8)+1),
   |z|<100
}

J_TchebychevT5 {    ;
   c = pixel, z = P1:
   z = c*(z*(z*z*(16*z*z-20)+5)),
   |z|<100
}

J_TchebychevT6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
   |z|<100
}

J_TchebychevT7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
   |z|<100
}

J_TchebychevC2 {
   c = pixel, z = P1:
   z = c*(z*z-2),
   |z|<100
}

J_TchebychevC3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-3),
   |z|<100
}

J_TchebychevC4 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z-4)+2),
   |z|<100
}

J_TchebychevC5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z-5)+5),
   |z|<100
}

J_TchebychevC6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(z*z-6)+9)-2),
   |z|<100
}

J_TchebychevC7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
   |z|<100
}


J_TchebychevU2 {
   c = pixel, z = P1:
   z = c*(4*z*z-1),
   |z|<100
}

J_TchebychevU3 {   ;
   c = pixel, z = P1:
   z = c*z*(8*z*z-4),
   |z|<100
}

J_TchebychevU4 {
   c = pixel, z = P1:
   z = c*(z*z*(16*z*z-12)+1),
   |z|<100
}

J_TchebychevU5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(32*z*z-32)+6),
   |z|<100
}

J_TchebychevU6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
   |z|<100
}

J_TchebychevU7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
   |z|<100
}

J_TchebychevS2 {
   c = pixel, z = P1:
   z = c*(z*z-1),
   |z|<100
}

J_TchebychevS3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-2),
   |z|<100
}

J_TchebychevS4 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z-3)+1),
   |z|<100
}

J_TchebychevS5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z-4)+3),
   |z|<100
}

J_TchebychevS6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(z*z-5)+6)-1),
   |z|<100
}

J_TchebychevS7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
   |z|<100
}

J_Laguerre2 {
   c = pixel, z = P1:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100

}

J_Laguerre3 {
   c = pixel, z = P1:
   z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
   |z| < 100
}

J_Laguerre4 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
   |z| < 100
}

J_Laguerre5 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z * (-z +25) -200) +600) -600) + 120 ) / 120 + c,
   |z| < 100
}

J_Laguerre6 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z*(z*(z -36) +450) -2400) + 5400)-4320) + 720 ) / 720
+ c,
   |z| < 100
}

J_Lagandre2 {
   c = pixel, z = P1:
   z = (3 * z*z - 1) / 2 + c
   |z| < 100
}

J_Lagandre3 {
   c = pixel, z = P1:
   z = z * (5 * z*z - 3) / 2 + c
   |z| < 100
}

J_Lagandre4 {
   c = pixel, z = P1:
   z = (z*z*(35 * z*z - 30) + 3) / 8 + c
   |z| < 100
}

J_Lagandre5 {
   c = pixel, z = P1:
   z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
   |z| < 100
}

J_Lagandre6 {
   c = pixel, z = P1:
   z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
   |z| < 100
}

J_Lagandre7 {
   c = pixel, z = P1:
   z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
   |z| < 100
}

M_TchebychevT2 {
   c = P1, z = Pixel:
   z = c*(2*z*z-1),
   |z|<100
}

M_TchebychevT3 {   ;
   c = P1, z = Pixel:
   z = c*z*(4*z*z-3),
   |z|<100
}

M_TchebychevT4 {
   c = P1, z = Pixel:
   z = c*(z*z*(8*z*z+8)+1),
   |z|<100
}

M_TchebychevT5 {    ;
   c = P1, z = Pixel:
   z = c*(z*(z*z*(16*z*z-20)+5)),
   |z|<100
}

M_TchebychevT6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
   |z|<100
}

M_TchebychevT7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
   |z|<100
}

M_TchebychevC2 {
   c = P1, z = Pixel:
   z = c*(z*z-2),
   |z|<100
}

M_TchebychevC3 {   ;
   c = P1, z = Pixel:
   z = c*z*(z*z-3),
   |z|<100
}

M_TchebychevC4 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z-4)+2),
   |z|<100
}

M_TchebychevC5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z-5)+5),
   |z|<100
}

M_TchebychevC6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(z*z-6)+9)-2),
   |z|<100
}

M_TchebychevC7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
   |z|<100
}


M_TchebychevU2 {
   c = P1, z = Pixel:
   z = c*(4*z*z-1),
   |z|<100
}

M_TchebychevU3 {   ;
   c = P1, z = Pixel:
   z = c*z*(8*z*z-4),
   |z|<100
}

M_TchebychevU4 {
   c = P1, z = Pixel:
   z = c*(z*z*(16*z*z-12)+1),
   |z|<100
}

M_TchebychevU5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(32*z*z-32)+6),
   |z|<100
}

M_TchebychevU6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
   |z|<100
}

M_TchebychevU7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
   |z|<100
}

M_TchebychevS2 {
   c = P1, z = Pixel:
   z = c*(z*z-1),
   |z|<100
}

M_TchebychevS3 {   ;
   c = P1, z = Pixel:
   z = c*z*(z*z-2),
   |z|<100
}

M_TchebychevS4 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z-3)+1),
   |z|<100
}

M_TchebychevS5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z-4)+3),
   |z|<100
}

M_TchebychevS6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(z*z-5)+6)-1),
   |z|<100
}

M_TchebychevS7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
   |z|<100
}

M_Laguerre2 {
   c = P1, z = Pixel:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100

}

M_Laguerre3 {
   c = P1, z = Pixel:
   z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
   |z| < 100
}

M_Laguerre4 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
   |z| < 100
}

M_Laguerre5 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z * (-z +25) -200) +600) -600) + 120 ) / 120 + c,
   |z| < 100
}

M_Laguerre6 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z*(z*(z -36) +450) -2400) + 5400)-4320) + 720 ) / 720
+ c,
   |z| < 100
}

M_Lagandre2 {
   c = P1, z = Pixel:
   z = (3 * z*z - 1) / 2 + c
   |z| < 100
}

M_Lagandre3 {
   c = P1, z = Pixel:
   z = z * (5 * z*z - 3) / 2 + c
   |z| < 100
}

M_Lagandre4 {
   c = P1, z = Pixel:
   z = (z*z*(35 * z*z - 30) + 3) / 8 + c
   |z| < 100
}

M_Lagandre5 {
   c = P1, z = Pixel:
   z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
   |z| < 100
}

M_Lagandre6 {
   c = P1, z = Pixel:
   z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
   |z| < 100
}

M_Lagandre7 {
   c = P1, z = Pixel:
   z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
   |z| < 100
}

LambdaFnOrFn { ;; Ebbert.frm
   ; Duplicate of built-in 'lambda(fn||fn).'
   ; P1 = lambda, real(p2) changes shift value from default of 1,
   ;  imag(p2) changes bailout from default of 64.
  z = pixel, modz = |z|, b = imag(p2) + 64, t = real(p2) + 1:
   z = ( fn1(z) * (modz<t) + fn2(z) * (real(t)<=modz ) ) * p1,
   modz = |z|,
    modz <= b
 }

Leeze (XAXIS) { ;; Lee2.FRM (Lee Skinner)
       s = exp(1.,0.), z = Pixel, f = Pixel ^ s:
                       z = cosxx (z) + f, |z| <= 50 }

Magnet1M(XAXIS) {
  ; Duplicate of built-in type.
  ; P1 = initial perturbation of z(0).
  z = p1, cm1 = pixel - 1, cm2 = cm1 - 1:
   z = sqr( (z*z+cm1 ) / (z+z+cm2 ) );
    |z-1| > .000030517578 && |z| <= 100;
 }

Magnet2M(XAXIS) {
  ; Duplicate of built-in type.
  ; P1 = initial perturbation of z(0).
  z=p1,c1=pixel-1,c1x3=c1*3,c2x3=c1x3-3,c1c2=c1*c1-c1,c1c2p1=c1c2+1:
   z=sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) );
    |z-1| > .000030517578 && |z| <= 100;
 }

N1(XYAXIS) {    z=pixel:  z=1/sin(1/(z*pixel)) ,             |z|<=4
   } ; try maxiter=35 then 200
N_n(XYAXIS) {   z=pixel:  z=(1/sin(1/(z^2*pixel))) ,         |z|<=4
   } ; n integer
N_n1(XYAXIS) {  z=pixel:  z=(1/sin(1/(z^2*pixel)))*pixel ,   |z|<=4
   }
N2(XAXIS){      z=pixel:  z=(1/sin(sinh(z*pixel)))*pixel ,   |z|<=4
   }
N2_1(XYAXIS){   z=pixel:  z=sin(sinh(z*pixel))*pixel   ,     |z|<=4
   }
N2_2(XYAXIS){   z=pixel:  z=sin(sinh(z*pixel))+pixel   ,     |z|<=4
   }
N3(XAXIS)  {    z=pixel:  z=1/sin(1/((z^z)*pixel))     ,     |z|<=4
   }
N3_1(XAXIS) {   z=pixel:  z=1/sin(1/((z^z)*pixel))+pixel,    |z|<=4
   }
N3_2(XAXIS) {   z=pixel:  z=1/sin(1/((z^z)*pixel))*pixel,    |z|<=4
   }
N3sh(XAXIS)   { z=pixel:  z=1/sinh(1/((z^z)*pixel))     ,    |z|<=4
   }
N3_1sh(XAXIS)  {z=pixel:  z=1/sinh(1/((z^z)*pixel))+pixel,   |z|<=4
   }
N3_2sh(XAXIS)  {z=pixel:  z=1/sinh(1/((z^z)*pixel))*pixel,   |z|<=4
   }
N3_1ch(XAXIS) { z=pixel:  z=1/cosh(1/((z^z)*pixel))+pixel,   |z|<=4
   }
N3_2ch(XAXIS) { z=pixel:  z=1/cosh(1/((z^z)*pixel))*pixel,   |z|<=4
   }
N4(XYAXIS) {    z=pixel:  z=(1/sin(1/(z*pixel)))*pixel ,     |z|<=4
   }
N5(XYAXIS) {    z=pixel:  z=(1/sin(1/(z*pixel)))+pixel ,     |z|<=4
   }
N6(XAXIS) {     z=pixel:  z=(1/cos(1/(z*z)))+pixel ,         |z|<=4
   }
N7(XAXIS) {     z=pixel:  z=(1/cos(1/(z*pixel)))+pixel ,     |z|<=4
   }
N8(XYAXIS) {    z=pixel:  z=1/sinh(1/(z*pixel)) ,            |z|<=4
   }
N9(XAXIS) {     z=pixel:  z=1/sinh(1/(z*pixel))+pixel,       |z|<=4
   }
N10(XYAXIS) {   z=pixel:  z=1/sinh(1/(z*pixel))*pixel,       |z|<=4
   }
N11(XYAXIS) {   z=pixel:  z=1/cosh(1/(z*pixel)) ,            |z|<=4
   }
N12(XAXIS)  {   z=pixel:  z=1/cosh(1/(z*pixel))+pixel,       |z|<=4
   }
N13(XYAXIS) {   z=pixel:  z=1/cosh(1/(z*pixel))*pixel,       |z|<=4
   }
N15(XAXIS) {    z=pixel:  z=(sin(z*z*sin(1/(z*z))))+pixel,   |z|<=4
   }
N16(XYAXIS) {   z=pixel:  z=(sin(z*z*sin(1/(z*z))))*pixel,   |z|<=4
   }
ducks(xaxis) {  z=pixel,t=1+pixel:   z=sqr(z)+t,             |z|<=4
   }
; It seems not so ugly at first glance and lot of corners to zoom in.
; try this:
;  Corners              X                  Y
; top-left         -1.178372          -0.601683
; bottom-right     -0.978384          -0.751678
; center           -1.07838           -0.67668

NxA(XAXIS)   { z=pixel:   z=sin(z^pixel)  ,                  |z|<=4
   }
NxB(XAXIS)   { z=pixel:   z=sin(z^pixel)*pixel  ,            |z|<=4
   }
NxE(XAXIS)   { z=pixel:   z=sinh(z^pixel)  ,                 |z|<=4
   }
NxF(XAXIS)   { z=pixel:   z=sinh(z^pixel)*pixel  ,           |z|<=4
   }
NxJ(XYAXIS)  { z=pixel:   z=1/sin(z*pixel)  ,                |z|<=4
   }
NxK(XAXIS)   { z=pixel:   z=(1/sin(z^pixel))*pixel  ,        |z|<=4
   }
NxL(XYAXIS)  { z=pixel:   z=(1/sin(z*pixel))*pixel  ,        |z|<=4
   }
NxM(XAXIS)   { z=pixel:   z=1/cos(z^pixel)  ,                |z|<=4
   }
NxN(XYAXIS)  { z=pixel:   z=1/cos(z*pixel)  ,                |z|<=4
   }
NxP(XYAXIS)  { z=pixel:   z=(1/cos(z*pixel))*pixel  ,        |z|<=4
   }
NxR(XYAXIS)  { z=pixel:   z=1/sinh(z*pixel)  ,               |z|<=4
   }
NxT(XYAXIS)  { z=pixel:   z=(1/sinh(z*pixel))*pixel  ,       |z|<=4
   }
NxU(XAXIS)   { z=pixel:   z=1/cosh(z^pixel)  ,               |z|<=4
   }
NxV(XYAXIS)  { z=pixel:   z=1/cosh(z*pixel)  ,               |z|<=4
   }
NxX(XYAXIS)  { z=pixel:   z=(1/cosh(z*pixel))*pixel  ,       |z|<=4
   }
NxY(XYAXIS)  { z=pixel:   z=z*pixel*sin(z*pixel)  ,          |z|<=4
   }
NxZ(XAXIS)   { z=pixel:   z=z*pixel*sin(z*pixel)+pixel ,     |z|<=4
   }
Nx2(XYAXIS)  { z=pixel:   z=z*pixel*sinh(z*pixel)+pixel ,    |z|<=4
   }
Nx3(XYAXIS)  { z=pixel:   z=z*pixel*cosh(z*pixel)  ,         |z|<=4
   }
Nx5(XYAXIS)  { z=pixel:   z=1/((z*pixel)*sin(z*pixel))   ,   |z|<=4
   }
Nx6(XYAXIS)  { z=pixel:   z=(1/((z*pixel)*sin(z*pixel)))*pixel  , |z|<=4
   }
Nx7(XYAXIS)  { z=pixel:   z=1/((z*pixel)*sinh(z*pixel))  ,   |z|<=4
   }
Nx8(XYAXIS)  { z=pixel:   z=(1/((z*pixel)*sinh(z*pixel)))*pixel  , |z|<=4
   }
Nx9(XAXIS)   { z=pixel:   z=(z^pixel)*sin(z^pixel)  ,        |z|<=4
   }
Ny1(XYAXIS)  { z=pixel:   z=(z^pixel)*sinh(z^pixel)  ,       |z|<=4
   }

comment {
These formulae can be used to initiate exploration in the two "hybridised" 
planes as referred to in 4dfract.txt. Type SJ iterate in the "zc" plane,
and type 3RDIM in the "cz" plane. Ititially, param p2=0. Altering the real
value of p2 in type SJ, or the imaginary value of p2 in type 3rdim, will
step the position of the iterated image along the x or y axis respectively
of the c-plane Mandelbrot set.
Parameter p1, normally set to 0, can, by varying the real value, rotate
the angle of the iteration plane to intermediate planal regions, for some
quite striking effects. p1=1 will revert to the c-plane, and in the case of
z^2+c will produce the familiar Mandelbrot set.

There is enough here for many happy (?) years of iterating. Enjoy.

Gordon Lamb (CIS: 100272,3541)
}

SJMAND01 {;Mandelbrot
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=z*z+c, |z|<=64}

SJMAND02 {;Tetration
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=c^z, |z|<=32}

SJMAND03 {;Mandelbrot function
        z=real(pixel)+p1*(flip(imag(pixel))),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=fn1(z)+c, |z|<=64}

SJMAND04 {;Tetrated function
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=fn1(c)^z, |z|<=64}

SJMAND05 {;Mandelbrot lambda function
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=fn1(z)*c, |z|<=64}

SJMAND06 {z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)),
        z=conj(z),c=conj(c):
        z=fn1(z)+c, |z|<=4}

SJMAND07 {;Mandelbrot function
        ;changing real(p1) will now rotate between ZC & CZ planes
        z=(1-p1)*real(pixel)+p1*flip(imag(pixel)),
        c=p1*real(pixel)+(1-p1)*flip(imag(pixel)):
        z=fn1(z)+c, |z|<=4}

SJMAND08 {;Mandelbar
        z=real(pixel)+flip(imag(pixel))*p1,
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=conj(z*z)+c, |z|<=4}

SJMAND09 { 
        z=real(pixel)+flip(imag(p2)),
        c=real(p2)+flip(imag(pixel)):
        z=z*z+c, |z|<=4}

SJMAND10 {;Mandelbrot power function
        z=real(pixel),c=p2+flip(imag(pixel)):
        z=(fn1(z)+c)^p1, |z|<=4}

SJMAND11 {;Mandelbrot lambda function - lower bailout
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=fn1(z)*c, |z|<=4}

SJMAND12 {;Mandelbrot with perturbed initiator
        z=real(pixel)+p1,c=flip(imag(pixel))+p2:
        z=z*z+c, |z|<=4}

SJMAND13 {;Mandelbrot function
        z=real(pixel)+p1*(flip(imag(pixel))),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=1/fn1(z)+c, |z|<=64}

SJMAND14 {;Mandelbrot lambda function
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=c/fn1(z), |z|<=64}

Silverado(XAXIS) {; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = Pixel, zz=z*z, zzz=zz*z, z = (1.-p1)*zz + (p1*zzz), test = (p2+4)*(p2+4): ;
   z = z + Pixel
   zsq = z*z
   zcu = zsq*z
   z = (1.-p1)*zsq + p1*zcu,
   |z| <= test
  }

Tetrate(XAXIS) { ; duplicate of built-in type.
  ; p1=initial perturbation of z(0), p2 changes bailout from 4.
  z = pixel + p1, b = real(p2) + 4:
   z = pixel ^ z;
    |z| <= b;
 }

ULI_1 {
      z = Pixel: z = fn1(1/fn2(z))
      |z| <= 4
   }

   ULI_2 {
      z = Pixel: z = fn1(1/fn2(z+p1))
      |z| <= p2
   }

   ULI_3 {
      z = Pixel: z = fn1(1/fn2(z+p1)+p1)
      |z| <= p2
   }

   ULI_4 {
      z = Pixel: z = fn1(1/(z+p1))*fn2(z+p1)
      |z| <= p2
   }

   ULI_5 {
      z = Pixel, c = fn1(pixel):
      z = fn2(1/(z+c))*fn3(z+c)
      |z| <= p1
   }

   ULI_6 {
      z = Pixel: z = fn1(p1+z)*fn2(p2-z)
      |z| <= p2+16
   }

TurtleC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin
  z=p1:
  x=real(z)
  IF (x<0)
    z=sqr(z)+pixel
  ELSE
    z=sqr(z)-pixel
  ENDIF
  |z|<=4
}

WaldoTwinsC (XAXIS_NOPARM) { ; The floating point flag MUST be set for these
    z=p1:
    z=cos(sin(z+pixel))+pixel,
    |z|<=4
}


phoenix_m { ; Mandelbrot stye map of the Phoenix curves
   z=x=y=nx=ny=x1=y1=x2=y2=0:
   x2 = sqr(x), y2 = sqr(y),
   x1 = x2 - y2 + real(pixel) + imag(pixel) * nx,
   y1 = 2 * x * y + imag(pixel) * ny,
   nx=x, ny=y, x=x1, y=y1, z=x + flip(y),
   |z| <= 4
   }

phoenix_j (XAXIS) { ; Use P1=0.56667/-0.5   &   .1/.8
   x=real(pixel), y=imag(pixel), z=nx=ny=x1=x2=y1=y2=0:
   x2 = sqr(x), y2 = sqr(y),
   x1 = x2 - y2 + real(p1) + imag(p1) * nx,
   y1 = 2 * x * y + imag(p1) * ny,
   nx=x, ny=y, x=x1, y=y1, z=nx + flip(ny),
   |z| <= 4
   }

non-conformal { ; From Media Magic Calender - August
   z=x=y=x2=y2=0:
   t = x * y,
   x = x2 + t + real(pixel),  y = y2 - t + imag(pixel),
   x2 = sqr(x),  y2 = sqr(y), z=x + flip(y),
   |z| <= 4
   }

hypercomplex { ; Chuck Ebbert -- must use periodicity=0
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

M-SetInNewton(XAXIS) {; use float=yes
	z = 0,  c = pixel,  cminusone = c-1:
	  oldz = z,  nm = 3*c-2*z*cminusone, dn = 3*(3*z*z+cminusone),
	  z = nm/dn+2*z/3,   |(z-oldz)|>=|0.01|
}


F'M-SetInNewtonA(XAXIS) {; use float=yes
                      ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
  oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone),
  z = nm/dn+2*z/p1, |(z-oldz)|>=|0.01|
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

TSinh (XAXIS) {
        z = c = sinh(pixel):
        z = c ^ z,
        z <= (p1 + 3)
}

SymmIcon {
	z = P1, x = P2, bar = (1,-1),
	l = real(P1), a = imag(P2), b = .2, g = .1, w = 0, n = 5:
	zbar = z*bar;
	z = ((l + (a * z * zbar) + (b * real(z^n))  + (w * i)) * z) + g*(zbar^(n-1)) + pixel;
}

ScSkLMS(XAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = log(z) - sin(z), 
   |z|<TEST 
}

ScSkZCZZ(XYAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = (z*cosxx(z)) - z, 
   |z|<TEST 
}

ScottLPC(XAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = log(z)+cosxx(z), 
   |z|<TEST 
}

 ScottLPS(XAXIS)  { 
   z = pixel, TEST = (p1+3): 
   z = log(z)+sin(z), 
   |z|<TEST 
}

 ScottLTC(XAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = log(z)*cosxx(z), 
   |z|<TEST 
}

 ScottLTS(XAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = log(z)*sin(z), 
   |z|<TEST 
}

 ScottSIC(XYAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = sqr(1/cosxx(z)), 
   |z|<TEST 
}

 ScSkCosH(XYAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = cosh(z) - sqr(z), 
   |z|<TEST 
}

ScottSIS(XYAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = sqr(1/sin(z)), 
   |z|<TEST 
}

Mothra (XAXIS) { ; Ron Lewen, 76376,2567
  ; Remember Mothra, the giant Japanese-eating moth?
  ; Well... here he (she?) is as a fractal!
  ;
  z=pixel:
	z2=z*z
	z3=z2*z
	z4=z3*z
	a=z4*z + z3 + z + pixel
	b=z4 + z2 + pixel
	z=b*b/a,
	  |real(z)| <= 100 || |imag(z)| <= 100
  }

Richard1 (XYAXIS) {; Jm Richard-Collard
  z = pixel:
   sq=z*z, z=(sq*sin(sq)+sq)+pixel,
    |z|<=50
  }

Richard2 (XYAXIS) {; Jm Richard-Collard
  z = pixel:
   z=1/(sin(z*z+pixel*pixel)),
    |z|<=50
  }

Richard3 (XAXIS) {; Jm Richard-Collard
  z = pixel:
   sh=sinh(z), z=(1/(sh*sh))+pixel,
    |z|<=50
  }

Richard4 (XAXIS) {; Jm Richard-Collard
  z = pixel:
   z2=z*z, z=(1/(z2*cos(z2)+z2))+pixel,
    |z|<=50
  }

Richard5 (XAXIS) {; Jm Richard-Collard
  z = pixel:
   z=sin(z*sinh(z))+pixel,
    |z|<=50
  }

Richard6 (XYAXIS) {; Jm Richard-Collard
  z = pixel:
   z=sin(sinh(z))+pixel,
    |z|<=50
  }

Richard7 (XAXIS) {; Jm Richard-Collard
  z=pixel:
   z=log(z)*pixel,
    |z|<=50
  }

Richard8 (XYAXIS) {; Jm Richard-Collard
  ; This was used for the "Fractal Creations" cover
  z=pixel,sinp = sin(pixel):
   z=sin(z)+sinp,
    |z|<=50
  }

Richard9 (XAXIS) {; Jm Richard-Collard
  z=pixel:
   sqrz=z*z, z=sqrz + 1/sqrz + pixel,
    |z|<=4
  }

Richard10(XYAXIS) {; Jm Richard-Collard
  z=pixel:
   z=1/sin(1/(z*z)),
    |z|<=50
  }

Richard11(XYAXIS) {; Jm Richard-Collard
  z=pixel:
   z=1/sinh(1/(z*z)),
    |z|<=50
  }

Mandelbrot(XAXIS) {; Mark Peterson
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
   z = z + Pixel
   z = Sqr(z)
	LastSqr <= 4      ; Use LastSqr instead of recalculating
  }

Dragon (ORIGIN) {; Mark Peterson
  z = Pixel:
   z = sqr(z) + (-0.74543, 0.2),
	|z| <= 4
  }

Daisy (ORIGIN) {; Mark Peterson
  z = pixel:
   z = z*z + (0.11031, -0.67037),
	|z| <= 4
  }

InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
   z = sqr(z) + c;
	|z| <= 4
  }

DeltaLog(XAXIS) {; Mark Peterson
  z = pixel, c = log(pixel):
   z = sqr(z) + c,
	|z| <= 4
  }

Newton4(XYAXIS) {; Mark Peterson
  ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
   z3 = z*z*z;
   z4 = z3 * z;
   z = (3 * z4 + Root) / (4 * z3);
	.004 <= |z4 - Root|
  }

Halley (XYAXIS) {; Chris Green. Halley's formula applied to x^7-x=0.
  ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
   z5=z*z*z*z*z;
   z6=z*z5;
   z7=z*z6;
   z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))),
	0.0001 <= |z7-z|
  }

CGhalley (XYAXIS) {; Chris Green -- Halley's formula
  ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  z=(1,1):
   z5=z*z*z*z*z;
   z6=z*z5;
   z7=z*z6;
   z=z-p1*((z7-z-pixel)/ ((7.0*z6-1)-(42.0*z5)*(z7-z-pixel)/(14.0*z6-2))),
	0.0001 <= |z7-z-pixel|
  }

halleySin (XYAXIS) {; Chris Green. Halley's formula applied to sin(x)=0.
  ; Use floating point.
  ; P1 real = 0.1 will create the picture from page 281 of Pickover's book.
  z=pixel:
   s=sin(z), c=cos(z)
   z=z-p1*(s/(c-(s*s)/(c+c))),
	0.0001 <= |s|
  }

NewtonSinExp (XAXIS) {; Chris Green
  ; Newton's formula applied to sin(x)+exp(x)-1=0.
  ; Use floating point.
  z=pixel:
   z1=exp(z)
   z2=sin(z)+z1-1
   z=z-p1*z2/(cos(z)+z1),
	.0001 < |z2|
  }

CGNewton3 {; Chris Green -- A variation on newton iteration.
  ; The initial guess is fixed at (1,1), but the equation solved
  ; is different at each pixel ( x^3-pixel=0 is solved).
  ; Use floating point.
  ; Try P1=1.8.
  z=(1,1):
   z2=z*z;
   z3=z*z2;
   z=z-p1*(z3-pixel)/(3.0*z2),
	0.0001 < |z3-pixel|
  }

HyperMandel {; Chris Green.
  ; A four dimensional version of the mandelbrot set.
  ; Use P1 to select which two-dimensional plane of the
  ; four dimensional set you wish to examine.
  ; Use floating point.
  a=(0,0),b=(0,0):
   z=z+1
   anew=sqr(a)-sqr(b)+pixel
   b=2.0*a*b+p1
   a=anew,
	|a|+|b| <= 4
  }


MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
   z = (pixel ^ z) + pixel,
	|z| <= (P1 + 3)
  }

AltMTet(XAXIS) {; Mandelbrot form 2 of the Tetration formula --Lee Skinner
  z = 0:
   z = (pixel ^ z) + pixel,
	|z| <= (P1 + 3)
  }

AltJTet (XAXIS) {; Julia form 2 of the Tetration formula --Lee Skinner
  z = P1:
   z = (pixel ^ z) + P1,
	|z| <= (P2 + 3)
  }

Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3,
  t3 = 3*p, t2 = p*p,
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3,
  aa3 = a*a*3, z = 0 - a :
   z = z*z*z - aa3*z + b,
	|z| < test
 }


Wineglass(XAXIS) {; Pieter Branderhorst
  c = z = pixel:
   z = z * z + c
   c = (1+flip(imag(c))) * real(c) / 2 + z,
	|z| <= 4 }

FnDog(XYAXIS)  {; Scott Taylor
  z = Pixel, b = p1+2:
   z = fn1( z ) * pixel,
	|z| <= b
  }

Ent {; Scott Taylor
  ; Try params=.5/.75 and the first function as exp.
  ; Zoom in on the swirls around the middle.  There's a
  ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z), base = log(p1):
   z = y * log(z)/base,
	|z| <= 4
  }

Ent2 {; Scott Taylor
  ; try params=2/1, functions=cos/cosh, potential=255/355
  z = Pixel, y = fn1(z), base = log(p1):
   z = fn2( y * log(z) / base ),
	|z| <= 4
  }

LeeMandel1(XYAXIS) {; Kevin Lee
  z=Pixel:
;; c=sqr(pixel)/z, c=z+c, z=sqr(z),  this line was an error in v16
   c=sqr(pixel)/z, c=z+c, z=sqr(c),
	|z|<4
  }

LeeMandel2(XYAXIS) {; Kevin Lee
  z=Pixel:
   c=sqr(pixel)/z, c=z+c, z=sqr(c*pixel),
	|z|<4
   }

LeeMandel3(XAXIS) {; Kevin Lee
  z=Pixel, c=Pixel-sqr(z):
   c=Pixel+c/z, z=c-z*pixel,
	|z|<4
  }

MyFractal {; Fractal Creations example
  c = z = 1/pixel:
   z = sqr(z) + c;
	|z| <= 4
  }

Bogus1 {; Fractal Creations example
  z = 0; z = z + * 2,
   |z| <= 4 }

MandelTangent {; Fractal Creations example (revised for v.16)
  z = pixel:
   z = pixel * tan(z),
	|real(z)| < 32
  }

Mandel3 {; Fractal Creations example
  z = pixel, c = sin(z):
   z = (z*z) + c;
   z = z * 1/c;
	|z| <= 4;
   }

Sterling(XAXIS) {; davisl
  z = Pixel:
   z = ((z/2.7182818)^z)/sqr(6.2831853*z),
	|z| <= 4
  }

Sterling2(XAXIS) {; davisl
  z = Pixel:
   z = ((z/2.7182818)^z)/sqr(6.2831853*z) + pixel,
	|z| <= 4
  }

Sterling3(XAXIS) {; davisl
  z = Pixel:
   z = ((z/2.7182818)^z)/sqr(6.2831853*z) - pixel,
	|z| <= 4
  }

PsudoMandel(XAXIS) {; davisl - try center=0,0/magnification=28
  z = Pixel:
   z = ((z/2.7182818)^z)*sqr(6.2831853*z) + pixel,
	|z| <= 4
  }


Gamma(XAXIS) { ; first order gamma function from Prof. Jm
  ; "It's pretty long to generate even on a 486-33 comp but there's a lot
  ; of corners to zoom in and zoom and zoom...beautiful pictures :)"
  z=pixel,twopi=6.283185307179586,r=10:
   z=(twopi*z)^(0.5)*(z^z)*exp(-z)+pixel
	|z|<=r
  }

ZZ(XAXIS) { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^z;
   z2=(log(z)+1)*z1;
   z=z-(z1-1)/z2 ,
	0.001 <= |solution-z1|
  }

ZZa(XAXIS) { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^(z-1);
   z2=(((z-1)/z)+log(z))*z1;
   z=z-((z1-1)/z2) ,
	.001 <= |solution-z1|
  }


comment {
  You should note that for the Transparent 3D fractals the x, y, z, and t
  coordinates correspond to the 2D slices and not the final 3D True Color
  image.  To relate the 2D slices to the 3D image, swap the x- and z-axis,
  i.e. a 90 degree rotation about the y-axis.
			    -Mark Peterson 6-2-91
  }

MandelXAxis(XAXIS) {    ; for Transparent3D
  z = zt,       ; Define Julia axes as depth/time and the
  c = xy:       ;   Mandelbrot axes as width/height for each slice.
			;   This corresponds to Mandelbrot axes as
			;   height/depth and the Julia axes as width
			;   time for the 3D image.
   z = Sqr(z) + c
	LastSqr <= 4;
  }

OldJulibrot(ORIGIN) {           ; for Transparent3D
  z = real(zt) + flip(imag(xy)),    ; These settings coorespond to the
  c = imag(zt) + flip(real(xy)):    ;   Julia axes as height/width and
					;   the Mandelbrot axes as time/depth
					;   for the 3D image.
   z = Sqr(z) + c
	LastSqr <= 4;
  }

IkenagaMap(XAXIS) {; based upon the Ikenaga function described
	  ; in Dewdneys's The Armchair Universe.
	  ; The initial starting point allows the function to provide a
	  ; "map" for the corresponding Julia function (Julike ) 
	  z = ((1-pixel)/3)^0.5: 
	  z = z*z*z + (pixel-1)*z - pixel, |z| <= 4
   }

   Julike {; a Julia function based upon the Ikenaga function
	  z = Pixel:
	  z = z*z*z + (P1-1)*z - P1, |z| <= 4
   }

   Mask {; try fn1 = log, fn2 = sinh, fn3 = cosh
	  ;P1 = (0,1), P2 = (0,1)
	  ;Use floating point
	  z = fn1(pixel):
	  z = P1*fn2(z)^2 + P2*fn3(z)^2 + pixel, |z| <= 4
   }

   JMask {      
	  z = fn1(pixel):
	  z = P1*fn2(z)^2 + P2, |z| <= 4
   }

   PseudoZeePi {
	  z = pixel:
	  x = 1-z^p1;
	  z = z*((1-x)/(1+x))^(1/p1) + p2, |z| <= 4
   }

   ZeePi {; This Julia function is based upon Ramanujan's iterative
	  ; function for calculating pi
	  z = pixel:
	  x = (1-z^p1)^(1/p1);
	  z = z*(1-x)/(1+x) + p2, |z| <= 4
   }

   IkeNewtMand {
   z = c = pixel:
   zf = z*z*z + (c-1)*z - c;
   zd = 3*z*z + c-1;
   z = z - p1*zf/zd, 0.001 <= |zf|
   }

   IkeNewtJul {
   z =  pixel:
   zf = z*z*z + (p2-1)*z - p2;
   zd = 3*z*z + p2-1;
   z = z - p1*zf/zd, 0.001 <= |zf|
   }

   RecipIke {
   z = pixel:
   z = 1/(z*z*z + (p1-1)*z - p1), |z| <= 4
   }

   Frame-RbtM(XAXIS) {; from Mazes for the Mind by Pickover
   z = c = pixel:
   z = z*z*z/5 + z*z + c, |z| <= 100
   }

   Frame-RbtJ {
   z = pixel:
   z = z*z*z/5 + z*z + p1, |z| <= 100
   }


 Zexpe (XAXIS) {
	  s = exp(1.,0.), z = Pixel:
	  z = z ^ s + pixel, |z| <= 100
   }

 Zexpe2 (XAXIS) {
	  s = exp(1.,0.), z = Pixel:
	  z = z ^ s + z ^ (s * pixel), |z| <= 100
   }

 Ze2 (XAXIS) {
	  s1 = exp(1.,0.),
	  s = s1 * s1,
	  z = Pixel:
	  z = z ^ s + pixel, |z| <= 100
   }


 Exipi (XAXIS) {
	  s = log(-1.,0.) / (0.,1.), z = Pixel:
	  z = z ^ s + pixel, |z| <= 100
   }

 LambdaLog(XAXIS) {
	  z = pixel, c = log(pixel):  
		 z = c * sqr(z) + pixel, 
	  |z| <= 4 
   }


RCL_Cosh (XAXIS) { ; Ron Lewen, 76376,2567
  ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
  ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in 
  ; Pickover's Computers, Pattern, Chaos and Beauty.
  ; Figures 9.9 - 9.13 can be found by zooming.
  ; Use floating point
  ;
  z=0:
	z=cosh(z) + pixel,
	  abs(z) < 40
  }

RCL_11 { ; Ron Lewen, 76376,2567
  ; A variation on the formula used to generate
  ; Figure 9.18 (p. 134) from Pickover's book.
  ; P1 sets the initial value for z.
  ; Try p1=.75, or p1=2, or just experiment!
  ;
  z=real(p1):
	z=z*pixel-pixel/sqr(z)
	z=flip(z),
	  abs(z) < 8
  }

RCL_10 { ; Ron Lewen, 76376,2567
  ;
  ;
  ;
  z=pixel:
	z=flip((z*z+pixel)/(pixel*pixel+z))
	  |z| <= 4
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
}


 TLog (XAXIS) {
   z = c = log(pixel):
   z = c ^ z,
   z <= (p1 + 3)
}

Tchebychev-c6 (XYAXIS) {   ;Advanced Fractal Programming in C  - Stevens
   z=0:
   zsq = z*z,
   z = pixel * (zsq*zsq*zsq - 6*zsq*zsq + 9*zsq - 2),
   |z| <= 4
   }

Tchebychev-t5 (XYAXIS) {   ;Advanced Fractal Programming in C  - Stevens
   z=(0.654,0):
   zcube = z*z*z,
   z = pixel * (16*z*z*zcube - 20*zcube + 5*z),
   |z| <= 4
   }

Fly (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  z=sqr(z)+pixel
  z=sqr(z)-pixel
  |z|<=4
}

FlyC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  IF (x<0)
    z = sqr(z) + pixel
  ELSE
    z = sqr(z) - pixel
  ENDIF
  |z|<=4
}

Zppchco8  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosxx (pixel):
                       z = cosh (z) + f, |z|<=8192}

Legendre(XAXIS)       {   ;Advanced Fractal Programming in C  - Stevens
   z=0:
   zsq = z*z,
   z=.125*(35*zsq*zsq-30*zsq+3)+pixel,
   |z| <= 4
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

z^3-2z-5=0(XAXIS)  {      ; Advanced Fractal Programming in C  - Stevens
   ; --- SLOW on a 486-33 ---  Run with inside = ZMAG
   x=real(pixel), y=imag(pixel):
   x2 = x*x, y2 = y*y, xold = x, yold = y,
   t2 = 3*x2 - 3*y2 -2,          d = t2*t2 + 36*x2*y2,
   t1 = x*x2 - 3*x*y2 - 2*x -5, t3 = 3*x2*y - y2*y - 2*y,
   x = x - (t1 * t2 - 6*x*y*t3)/d,
   y = y - (t1 * (-6*x*y) + t3 * t2)/d,
   x != xold && y != yold
   }

a_spider1 { ; Adjustable spider - After Homer Smith of Art Matrix
            ; try p1 = (.55,0) or (0,.4) or (.4,.35)
   z=0, c=pixel:
   z = z*z + c,        z = fn1(z),
   c = c * p1 + z,     c = fn2(c),
   |z| <= 4
   }

a_spider2 { ; Adjustable spider - After Fractint's version
            ; try p1 = (.55,0) or (0,.4) or (.4,.35)
   z=c=pixel:
   z = z*z + c,        z = fn1(z),
   c = c * p1 + z,     c = fn2(c),
   |z| <= 4
   }

Ajax {;the Final Effort
  z=c=2/pixel:
  z =(z^(real(p1)))*(c^(real(p2))) + c
  |z| <=4
}

Bali {; The difference of two squares
  z=x=1/pixel, c= fn1 (z):
  z = (x+c) * (x-c)
  x=fn2(z)
  |z| <=3
}

Fatso {;
z=x=1/pixel, c= fn1 (z):
z = (x^3)-(c^3); 
x=fn2(z),
|z| <=3
}

Jax {; The original
z=c=2/pixel:
z =(z^4)*(c^4) + c,
|z| <=4
}

Bjax {; 
z=c=2/pixel:
z =(1/((z^(real(p1)))*(c^(real(p2))))*c) + c,
}


; jmc@math.ethz.ch
comment {  Evidemment 0^0=1 ce qui est absolument vrai (du moins en
           theorie des ensembles).Par ailleurs ....                 }



SpNewton4(xyaxis) {; Jm Collard-Richard     (Cf M.I Hiver 93-94)
           ;float=yes .Methode de Newton appliquee au polynome
           ;f(z)=(z^2-1)*(z^2+0.16)
           ; f(z)=0 ssi z=1,-1,0.4i,-0.4i
           ; Nf(z)=z-f(z)/f'(z) les pts fixes de Nf sont les racines de f.
           ; z1=f(z) z2=f'(z) z=z-z1/z2 on cherche les pts fixes.
z=pixel:
z1=(z*z-1)*(z*z+0.16);
z2=4*z^3-1.68*z;
z=z-z1/z2 ,
0.001<=|z1|    }





ZExpZ(xaxis) { ; Jm Collard-Richard z=exp(z) z=(0.318..;+/- 1.337)
z=pixel:
z0=exp(z);
z1=z0-z;
z2=z0-1;
z=z-(z1/z2),
0.0001<=|z1| }

ICHZZ(XAXIS) { ; resolution  cosh(z)*z^z=1    Jm Collard-Richard
; use floating point
z=pixel:
zz=z^z;
sh=sinh(z);
ch=cosh(z);
z1=ch*zz-1;
z2=sh*zz+(log(z)+1)*ch;
z=z-(z1/z2) ,
0.001<=|z1|  }

ICHZ(XAXIS) { ; resolution  cosh(z)*exp(z)=1 sol=0  Jm Collard-Richard
; float=yes
z=pixel:
ex=exp(z);
sh=sinh(z);
ch=cosh(z);
z1=ch*ex-1;
z2=sh*ex+ch*ex;
z=z-(z1/z2) ,
0.001<=|z1| }

ICEZZ(XAXIS) { ;  cos(z)*z^z=1  Jm Collard-Richard
; float=yes
z=pixel:
zz=z^z;
s=sin(z);
c=cos(z);
z1=c*zz-1;
z2=c*(log(z)+1)-s*zz;
z=z-(z1/z2) ,
0.001<=|z1| }

ICEZ(XAXIS) {  ; Jm Collard-Richard
; float=yes
z=pixel:
ex=exp(z);
s=sin(z);
c=cos(z);
z1=c*ex-1;
z2=-s*ex+c*ex;
z=z-(z1/z2) ,
0.001<=|z1| }

SinZZ(XAXIS) {  ; Jm Collard-Richard
; float=yes
z=pixel:
zz=z^z;
szz=sin(z)^sin(z);
z1=szz-zz;
z2=(cos(z)*log(sin(z))+cos(z))*szz-(log(z)+1)*zz;
z=z-(z1/z2) ,
0.001<=|z1| }

SZZS(XAXIS) {  ; Jm Collard-Richard
; float=yes
z=pixel:
sz=sin(z)^z;
zs=z^sin(z);
z1=sz-zs;
z2=(log(sin(z))+z*(cos(z)/sin(z)))*sz-(cos(z)*log(z)+sin(z)/z)*zs;
z=z-(z1/z2) ,
0.001<=|z1| }


Exp2(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=exp(z*z)-exp(z);
z2=2*z*exp(z*z)-exp(z);
z=z-(z1/z2) ,
0.001<=|z1| }

Exp3(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=exp(z^3)-exp(z);
z2=3*z*z*exp(z^3)-exp(z);
z=z-(z1/z2) ,
0.001<=|z1| }

ExpZZ(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=exp(z*log(z))-exp(z);
z2=(log(z)+1)*exp(z*log(z))-exp(z);
z=z-(z1/z2) ,
0.001<=|z1| }

Sin2Z(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z*z)-sin(z);
z2=2*z*cos(z*z)-cos(z);
z=z-(z1/z2) ,
0.001<=|z1| }

SinZ4(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z^4)+sin(z^3)+sin(z^2)+sin(z);
z2=4*(z^3)*cos(z^4)+3*(z^2)*cos(z^3)+2*z*cos(z^2)+cos(z);
z=z-(z1/z2) ,
0.001<=|z1| }

SinE2(XAXIS) { ; Jm Collard-Richard
z=pixel:
expz2=exp(z*z);
s=sin(z);
c=cos(z);
z1=expz2-exp(z)-s;
z2=2*z*expz2-exp(z)-c;
z=z-(z1/z2) ,
0.001<=|z1| }

SinE2Z (XAXIS) {; Jm Collard-Richard
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=pixel:
  expz2=exp(z*z)
  s=sin(z)
  c=cos(z)
  s2=sin(z*z)
  c2=cos(z*z)
  z1=expz2-exp(z)-s2+s
  z2=2*z*expz2-exp(z)-z*c2*2+c
  z=z-(z1/z2)
  0.001<=|z1|
}

SS2Z(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z)*sin(z)-sin(z*z);
z2=sin(2*z)-z*cos(z*z)*2;
z=z-(z1/z2) ,
0.001<=|z1| }

ShZ(XAXIS) {  ; Jm Collard-Richard
z=pixel:
z1=sinh(z);
z2=cosh(z);
z=z-(z1/z2) ,
0.001<=|z1| }

ChZZ(XAXIS) { ; Jm Collard-Richard
z=pixel:
zz=z^z;
z1=cosh(z)-zz;
z2=sinh(z)-(log(z)+1)*zz;
z=z-(z1/z2) ,
0.001<=|z1| }

TgZ(XAXIS) {  ; Jm Collard-Richard
z=pixel:
z1=sin(z)/cos(z);
z2=1+z1*z1;
z=z-(z1/z2) ,
0.001<=|z1| }

TgZz(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z)/cos(z)-z;
z2=(sin(z)/cos(z))^2;
z=z-(z1/z2) ,
0.001<=|z1| }

TgSinZ(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z)/cos(z)-sin(z);
z2=1+(sin(z)/cos(z))^2-cos(z);
z=z-(z1/z2) ,
0.001<=|z1| }

CosZZ(XAXIS) { ; Jm Collard-Richard
z=pixel:
zz=z^z;
z1=cos(z)-zz;
z2=-sin(z)-(log(z)+1)*zz;
z=z-(z1/z2) ,
0.001<=|z1| }

CshZZ(XAXIS) {  ; Jm Collard-Richard
z=pixel:
zz=z^z;
z1=cos(z)-sinh(z)-zz;
z2=-sin(z)-cosh(z)-(log(z)+1)*zz;
z=z-(z1/z2) ,
0.001<=|z1| }


CosZ1(XYAXIS) { ; Resol. cos(z)^cos(z)=1 Jm Collard-Richard
	       ; float=yes
 z=pixel:
 s=sin(z);
 c=cos(z);
 cc=c^c;
 z1=cc-1;
 z2=(-s*log(c)-s)*cc;
 z=z-(z1/z2) ,
 0.001<=|z1| }

SinZ1(XAXIS) { ; Resol. sin(z)^sin(z)=1  Jm Collard-Richard
	       ; float=yes
 z=pixel:
 s=sin(z);
 c=cos(z);
 ss=s^s;
 z1=ss-1;
 z2=(c+c*log(s))*ss;
 z=z-(z1/z2) ,
 0.001<=|z1| }

CosSinZZ(XAXIS) { ; resol. sin(z)^sin(z)=cos(z)^cos(z) Jm Collard-Richard
		  ; use float=yes
 z=pixel:
 s=sin(z) , c=cos(z) , ss=s^s , cc=c^c ,
 z1=ss-cc ,
 z2=(c+c*log(s))*ss+(s*log(c)+s)*cc ,
 z=z-(z1/z2) ,
 0.001<=|z1| }

CSZZ(XAXIS)  { ;resol. cos(sin(z))=z^z     Jm Collard-Richard
	       ; Use Float=yes
 z=pixel:
 zz=z^z;
 s=sin(z);
 c=cos(z);
 z1=cos(s)-zz;
 z2=-c*sin(s)-(log(z)+1)*zz;
 z=z-(z1/z2) ,
 0.001<=|z1| }

S2Z(XAXIS) { ; resol. sin(sin(z)=z - Jm Collard-Richard -  Use float=yes
z=pixel:
z1=sin(sin(z))-z;
z2=cos(z)*cos(sin(z))-1;
z=z-(z1/z2) ,
0.001<=|z1| }


SZZCHZ(xaxis) { ; Jm Collard-Richard - Use FLOAT=YES
		; Resol : sin(z)+z^z=cosh(z)
z=pixel:
s=sin(z);
c=cos(z);
zz=z^z;
sz=sinh(z);
cz=cosh(z);
z1=s+zz-cz;
z2=c+(log(z)+1)*zz-sz;
z=z-(z1/z2),
0.001<=|z1| }

INVZZCZ(xaxis) { ; Jm Collard-Richard   -   use FLOAT=YES
		 ; resol : 1/z^z=cos(z)
z=pixel:
zz=z^z;
z1=(1/zz)-cos(z);
z2=((log(z)+1)*zz)*(-1)*(1/(zz*zz))+sin(z);
z=z-(z1/z2),
0.001<=|z1|   }

INVZZCHZ(Xaxis) { ; Jm Collard-Richard  - Use FLOAT=YES
		  ; resol : 1/z^z=cosh(z)
z=pixel:
zz=z^z;
z1=(1/zz)-cosh(z);
z2=((log(z)+1)*zz)*(-1)*(1/(zz*zz))-sinh(z);
z=z-(z1/z2),
0.001<=|z1|     }

LZZSZ(Xaxis)  { ; Jm Collard-Richard  - Use Float=Yes
		; resol :  log(z^z)=sin(z)
z=pixel:
s=sin(z);
c=cos(z);
zz=z^z;
z1=log(zz)-s;
z2=(((log(z)+1)*zz)/(zz))-c;
z=z-(z1/z2),
0.001<=|z1| }

LZZSHZ(Xaxis) { ; Jm Collard-Richard
		; Resol : log(z^z)=sinh(z)
z=pixel:
sh=sinh(z);
ch=cosh(z);
zz=z^z;
z1=log(zz)-sh;
z2=(((log(z)+1)*zz)/(zz))-ch;
z=z-(z1/z2),
0.001<=|z1|  }

ZZINVCZ(Xaxis) { ; Jm Collard-Richard    -  Use  Float=Yes
		 ; Resol :   z^z=1/cos(z)
z=pixel:
c=cos(z);
s=sin(z);
zz=z^z;
z1=zz-(1/c);
z2=(log(z)+1)*zz-(s/(c*c));
z=z-(z1/z2),
0.001<=|z1|  }

ZZINVCHZ(Xaxis) { ; Jm Collard-Richard   - Use Float=Yes
		  ; Resol : z^z=1/cosh(z)
z=pixel:
ch=cosh(z);
sh=sinh(z);
zz=z^z;
z1=zz-(1/ch);
z2=(log(z)+1)*zz+(sh/(ch*ch));
z=z-(z1/z2),
0.001<=|z1|  }

ZZZZ1(xaxis)  {; Jm Collard-Richard      -- Use Float=Yes
	       ; Resol : z^z=z^(z+1)+1
z=pixel:
l=log(z);
zz=z^z;
zz1=z^(z+1);
z1=zz-zz1-1;
z2=(l+1)*zz-(l+(z+1/z))*zz1;
z=z-(z1/z2) ,
0.001<=|z1|   }

Exp2Z(Xaxis) {; Jm Collard-Richard   ---- Use Float=Yes
	      ; Resol : exp(-1/(z*z))=z
z=pixel:
exp2z=exp(1/(z*(-z)));
z1=exp2z-z;
z2=(2/(z^3))*exp2z-1;
z=z-(z1/z2),
0.001<=|z1|  }

ExpZ2(xaxis)  {;Jm Collard-Richard
        ; exp(z*z)=1  float=yes
z=pixel:
z1=exp(z*z)-1;
z2=2*z*exp(z*z);
z=z-(z1/z2),
0.0001<=|z1| }

ExpZ_N(xaxis) {; Jm Collard-Richard     exp(z^n)=1 p1=n  float=yes
z=pixel:
z0=exp(z^p1);
z1=z0-1;
z2=p1*z^(p1-1)*z0;
z=z-(z1/z2),
0.0001<=|z1| }

InvExpZ_N(xaxis) {; Jm Collard-Richard
                  ; voir ExpZ_N
z=1/pixel:
z0=exp(z^p1);
z1=z0-1;
z2=p1*z^(p1-1)*z0;
z=z-(z1/z2),
0.0001<=|z1|     }


Exp2Z2(xaxis) { ; Jm Collard-Richard   --- Use Float=yes
		; Resol : exp(-1/(z*z))=z*z
z=pixel:
exp2z=exp(1/(z*(-z)));
z1=exp2z-z*z;
z2=(2/(z^3))*exp2z+z*(-2);
z=z-(z1/z2),
0.001<=|z1|    }

Exp2ZZ(Xaxis) {; Jm Collard-Richard    --- Use Float=Yes
	       ; Resol : exp(-1/(z*z))=z^z-1
z=pixel:
exp2z=exp(1/(z*(-z)));
zz=z^z;
z1=exp2z-zz-1;
z2=(2/(z^3))*exp2z-(log(z)+1)*zz;
z=z-(z1/z2),
0.001<=|z1|    }

ExpSinZ(Xaxis) { ; Jm Collard-Richard --- Use Float=Yes
		 ; Resol : exp(sin(z))=1
z=pixel:
es=exp(sin(z));
c=cos(z);
z1=es-1;
z2=c*es;
z=z-(z1/z2),
0.001<=|z1|   }

ExSiCoZ(Xaxis) { ;Jm Collard-Richard  --- Use Float=Yes
		 ; Resol : exp(sin(z))=cos(z)
z=pixel:
s=sin(z);
es=exp(s);
c=cos(z);
z1=es-c;
z2=c*es+s;
z=z-(z1/z2),
0.001<=|z1|   }



LogExp(xaxis) {; Jm Collard-Richard  float=yes
        ; log(z)+exp(z)=0  une solution n'est *pas* z=0  ! UNE solution: z=0.2...
z=pixel:
z1=log(z)+exp(z);
z2=1/z+exp(z);
z=z-(z1/z2),
0.001<=|z1| }

lambtet1 { ;fn1=sin & inside=bof60 gives a striking tropical fish!
           ;see file FISHY.GIF - New Images Nov. 
           ;set fn1=fn2=ident for simple tetrate fractal.            
            z=c=fn2(pixel): z=fn1(c^z), |z|<=4}
lambtet2 {
            z=c=fn2(pixel): z=fn1(z^c), |z|<=4}
lambtet3 { ;fn1=recip will produce infinitely nested crustaceans!
            z=c=fn2(pixel): z=c^fn1(z), |z|<=4}
lambtet4 {
            z=c=fn2(pixel): z=z^fn1(c), |z|<=4}
lambtet5 { 
            z=c=fn2(pixel): z=1/fn1(c^z), |z|<=4}
lambtet6 {
            z=c=fn2(pixel): z=1/fn1(z^c), |z|<=4}
lambtet7 {
            z=c=fn2(pixel): z=c^(1/fn1(z)), |z|<=4}
lambtet8 { 
            z=c=fn2(pixel): z=z^(1/fn1(c)), |z|<=4}
lambtet9 {
            z=c=fn2(pixel): z=fn1(c^fn3(z)), |z|<=4}
comment {
The original Phoenix curve uses 0.56667 for the real part of p1, 
and -0.5 for the real part of p2.
  p1                  p2

0.288732          0.5510029
0.356338          -1.209169
-0.550704         -1.255014
}                      
Phoenix {
      x = pixel; y = 0.0:
      z = (x * x) + p1 + (p2 * y);
      y = x;
      x = z;
}

MandelConj(XAXIS) {; Paul J. Horn , this was mentioned in Pickover's book 
; Compurers, Chaos, Patterns and Beauty.  He didn't give the forumula, so  
; I came up with this
  z = c = Pixel:  ; 
  z = Sqr(conj(z)) + Pixel ,
   |z| <= 4          ; 
  }

MandConj01(XAXIS) {; Paul J. Horn, see MandelConj.  
; This is a variation on a theme.
  z = c = Pixel:  ; 
  z = Sqr(z) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj02(XAXIS) {; Paul J. Horn, see MandelConj. 
; Another variation on the theme. 
  z = c = Pixel:  ; 
  z = Sqr(Conj(z)) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj03(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(conj(z))*conj(z) + Pixel ,
   |z| <= 4          ; 
  }

MandConj04(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr((z))*(z) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj05(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(conj(z))*conj(z) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj06(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(Sqr(conj(z))) + Pixel ,
   |z| <= 4          ; 
  }

MandConj07(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(Sqr((z))) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj08(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(Sqr(conj(z))) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj09  {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = (conj(z))^p1 + Pixel ,
   |z| <= 4          ; 
  }

MandConj10  {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = z^p1 + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj11 {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = (conj(z))^p1 + Conj(Pixel) ,
   |z| <= 4          ; 
  }

ConjMandelbrot(XAXIS) { ; Paul J. Horn
; This uses the last square function and should be the same as
; MandelConj, but with inside=bof60 and outside=summ and zooms
; it does not.
  z = Pixel, z = Sqr(conj(z)):
  z = z + Pixel
  z = Sqr(conj(z))
  LastSqr <= 4
  }

JuliaConj(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; try real part of p1 = -1.1 and imag part of p1 = .09
  z = pixel:  ; 
   z = Sqr(conj(z)) + P1 ,
   |z| <= 4          ; 
  }

JuliConj01(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -.93, imag(p1) = .3, map = blues
  z = pixel:  ; 
   z = Sqr(z) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj02(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .3, imag(p1) = .25, map = neon
  z = pixel:  ; 
   z = Sqr(Conj(z)) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj03 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .40, imag(p1) = 0, map = glasses2
  z = pixel:  ; 
   z = Sqr(conj(z))*conj(z) + P1 ,
   |z| <= 4          ; 
  }

JuliConj04 {; Paul J. Horn - a conjugate Julia (I think)
  ;Try real(p1) = .53, imag(p1) = .63, map = volcano 
  z = pixel:  ; 
   z = Sqr(z)*z + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj05 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .6, imag(p1) = .4, map = chroma
  z = pixel:  ; 
   z = Sqr(conj(z))*conj(z) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj06(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .99, imag(p1) = .72
  z = pixel:  ; 
   z = Sqr(Sqr((conj(z)))) + P1 ,
   |z| <= 4          ; 
  }

JuliConj07(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -.245, imag(p1) = .44, map = royal
  z = pixel:  ; 
   z = Sqr(Sqr(z)) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj08(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -1, imag(p1) = .11, map = blues
  z = pixel:  ; 
   z = Sqr(Sqr((conj(z)))) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj09 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -.677, imag(p1) = .333, real(p2) = 9, map = blues
  z = pixel:  ; 
   z = (conj(z))^P2 + P1 ,
   |z| <= 4          ; 
  }

JuliConj10 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .1005, imag(p1) = .68, real(p2) = 5, map = chroma
  z = pixel:  ; 
   z = (z)^P2 + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj11 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -.37, imag(p1) = .6, real(p2) = 6, map = volcano
  z = pixel:  ; 
   z = (conj(z))^P2 + Conj(P1) ,
   |z| <= 4          ; 
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



IkeGenM {	; Ron Barnett, 1993
   z = ((1-pixel)/(3*p1))^0.5:
   z =p1*z*z*z + (pixel-1)*z - pixel, |z| <= 100
   }

   IkeGenJ {	; Ron Barnett, 1993
   z = pixel:
   z =p1*z*z*z + (p2-1)*z - p2, |z| <= 100
   }

   FrRbtGenM {; Ron Barnett, 1993
   z = pixel:
   z = p1*z*z*z + z*z + pixel, |z| <= 100
   }   

   FrRbtGenJ {; Ron Barnett, 1993
   z = pixel:
   z = p1*z*z*z + z*z + p2, |z| <= 100
   }   
   
   IkeFrRbtGenM {; Ron Barnett, 1993
   z = 2*(1-pixel)/(3*p1):
   z = p1*z*z*z + (pixel-1)*z*z - pixel, |z| <= 100
   }

   IkeFrRbtGenJ {; Ron Barnett, 1993
   z = pixel:
   z = p1*z*z*z + (p2-1)*z*z - p2, |z| <= 100
   }

   PolyGen {	; Ron Barnett, 1993
		;p1 must not be zero
   		;zero can be simulated with a small
   		;value for p1
   		;use floating point
   z=(-p2+(p2*p2+(1-pixel)*3*p1)^0.5)/(3*p1):
   z=p1*z*z*z+p2*z*z+(pixel-1)*z-pixel,|z| <= 100
   }

FlipProbM1 {	; Ron Barnett, 1993
   z = pixel:
   z = flip(z)*(1-z) + pixel, |z| <= 100
   }

FlipProbJ1 {	; Ron Barnett, 1993
   z = pixel:
   z = flip(z)*(1-z) + p1, |z| <= 100
   }

FlipProbM2 {	; Ron Barnett, 1993
   z = pixel:
   z = z*(pixel-flip(z)) + pixel, |z| <= 100
   }

FlipProbJ2 {	; Ron Barnett, 1993
   z = pixel:
   z = z*(p1-flip(z)) + p1, |z| <= 100
   }

FlipLambdaM {	; Ron Barnett, 1993
   z = 0.5:
   z = pixel*z*(1-flip(z)*flip(z)), |z| <= 100
   }

FlipLambdaJ {	; Ron Barnett, 1993
   z = pixel:
   z = p1*z*(1-flip(z)*flip(z)), |z| <= 100
   }

REBRefInd1 {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + pixel, |z| <= 100
   }

REBRefInd2 {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1, |z| <= 100
   }

REBRefInd3 {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = (z*z-1)/(z*z+2)*fn1(z) + p1, |z| <= 100
   }

REBRefInd4 {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = flip(z);
   z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + pixel, |z| <= 100
   }

REBRefInd5 {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = flip(z);
   z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1, |z| <= 100
   }

Gopalsamy1 {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -2*x*y + p1,
   y = y*y - x*x,
   z = x1 + flip(y), |z| <= 4
   }

   Foam {
   z = 0.5:
   x = pixel*(z - 1/z) + p1,
   z = pixel*(x - 1/sqr(x) + p2), |z| <= 100
   }

MandellambdaPwr {; This provide a "map" for LambdaPwr
   z = (1/(p1+1))^(1/p1): 
   z = pixel*z*(1 - z^p1), |z| <= 100
   }

   LambdaPwr {
   z = pixel:
   z = p1*z*(1 - z^p2), |z| <= 100
   }  

   PseudoLambda {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -p1*(x - x*x + y*y) + p2,
   y = -p1*(y - 2*x*y),
   z = x1 + flip(y), |z| <= 100
   }

   PseudoMandelLambda {
   z = 0.5, c = pixel:
   x = real(z), y = imag(z),
   x1 = -c*(x - x*x + y*y) + p1,
   y = -c*(y - 2*x*y),
   z = x1 + flip(y), |z| <= 100
   }



SJIKENAGA01 {; Ron Barnett, 1994
              ; floating point required
	z=real(pixel)+flip(imag(pixel)*p1),
	c=p2+p1*real(pixel)+flip(imag(pixel)):
	z=z*z*z+(c-1)*z-c, |z|<=100}

SJIKENAGA02 {; Ron Barnett, 1994
              ; floating point required
	z=real(pixel)+flip(imag(pixel)*p1),
	c=p2+p1*real(pixel)+flip(imag(pixel)),
	z=conj(z),c=conj(c):
	z=z*z*z+(c-1)*z-c, |z|<100}

SJFRAME-ROBERT {; Ron Barnett, 1994
              ; floating point required
	z=real(pixel)+flip(imag(pixel)*p1),
	c=p2+p1*real(pixel)+flip(imag(pixel)):
	z=z*z*z/5+z*z+c, |z|<=100}

SJSPIDER01 {; Ron Barnett, 1994
              ; floating point required
	z=real(pixel)+flip(imag(pixel)*p1),
	c=p2+p1*real(pixel)+flip(imag(pixel)):
	z=z*z+c,
        c=c/2+z, |z|<=100}

SJMANOWAR01 {; Ron Barnett, 1994
              ; floating point required
	z=z1=real(pixel)+flip(imag(pixel)*p1),
	c=p2+p1*real(pixel)+flip(imag(pixel)):
	z=z*z+z1+c,
        z1=z, |z|<=100}

SJIKENAGA03 {; Ron Barnett, 1994
              ; floating point required
	z=real(pixel)-flip(imag(pixel)*p1),
	c=p2+p1*real(pixel)-flip(imag(pixel)):
	z=z*z*z+(c-1)*z-c, |z|<=100}

Sam_0(XAXIS) {
      z = Pixel:  z = z^z - pixel
   }

   Sam_1(XAXIS) {
      z = Pixel: z = z^(-z) - pixel
   }

   Sam_2(XAXIS) {
      z = Pixel: z = z^(1/z) - pixel
   }

   Sam_3(XAXIS) {
      z = Pixel: z = z^z^z - pixel
   }

   Sam_4(XAXIS) {
      z = Pixel: z = z^(z^(1/z)) - pixel
   }
   Sam_5(XAXIS) {
      z = Pixel: z = z^2.718281828 + pixel
   }

   Sam_6(XYAXIS) {
      z = Pixel: z = z*cos(z) - pixel
   }

   Sam_7(XAXIS) {
      z = Pixel: z = z*sin(z) - pixel
   }

   Sam_8 {
      z = Pixel: z = z^c
   }

   Sam_9(XYAXIS) {
      z = Pixel: z = z*tanh(z)
   }

   Sam_10(XYAXIS) {
      z = Pixel: z = sin(1/z)
   }

   Sam_11(XAXIS) {;Try this with periodicity=none command line
      z = Pixel: z = sinh(1/z)
   }
comment {
  begin select.frm
}

Newt_ellipt_oops { ; Tim Wegner - use float=yes and periodicity=0
   ; fractal generated by Newton formula  (z^3 + c*z^2 +1)^.5
   ; try p1 = 1 and p2 = .1
   ; if p2 is small (say .001), converges very slowly so need large maxit
   ; another "tim's error" - mistook sqr for sqrt (see next)
   z = pixel, z2 = z*z, z3 = z*z2:
   num = (z3 + p1*z2 + 1)^.5      ; f(z)
   denom = (1.5*z2 + p1*z)/num    ; f'(z)
   z = z - (num/denom)            ; z - f(z)/f'(z)
   z2 = z*z
   z3 = z*z2,
   p2 <= |z3 + p1*z2 + 1|         ; no need for sqrt because sqrt(z)==0 iff z==0
  }

Newton_elliptic { ; Tim Wegner - use float=yes and periodicity=0
   ; fractal generated by Newton formula f(z) = (z^3 + c*z^2 +1)^2
   ; try p1 = 1 and p2 = .0001
   z = pixel, z2 = z*z, z3 = z*z2:
   z = z - (z3 + p1*z2 + 1)/(6*z2 + 4*p1*z)      ; z - f(z)/f'(z)
   z2 = z*z
   z3 = z*z2,
   p2 <= |z3 + p1*z2 + 1|  ; no need for sqr because sqr(z)==0 iff z==0
  }

Larry { ; Mutation of 'Michaelbrot' and 'Element'
  ; Mutated by Bradley Beacham [74223,2745]
  ; Original formulas by Michael Theroux [71673,2767]
  ; For 'Michaelbrot', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; For 'Element', set FN1=IDENT & FN2=SQR and P1 & P2 = default
  ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    z = fn1(fn2(z*z)) + c
    |z| <= test
}


Primal {; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = c = Pixel, t = real(p1), test = (p2+10)*(p2+10):
   zsq = z*z
   zcu = zsq*z
   z = (1.-t)*zsq + t*zcu + c
   |z| <= test
  }










SGG001 {
   z=pixel:
   z=z*exp(z)-(sqr(sqr(z)+pixel))
}

; 23.10.1994
SGG002 {
   z=pixel:
   z=z*cosh(1/z)-(exp(z)-pixel)
}

; 23.10.1994
SGG003 {
   z=pixel:
   z=sin(z+sqr(z))-1/pixel
}

; 24.10.1994
SGG004 {
   z=1/pixel:
   z=log(z)+sqr(z+pixel)
}

; 27.10.1994
SGG005 {
   z=pixel,t=p1/p2+.5
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel)),
   |z|<=t+2
}

; 27.10.1994 "Carnival"
SGG006 {
   z=pixel
   z=z*(log(z)/sqr(1/z+cosh(z*z)+pixel))
}

; 28.10.1994
SGG007 {
   z=pixel
   z=z*log(z)/sqr(1/z+cosh(z*z))
   |z|<=2.5
}

; 28.10.1994
SGG008 {
   z=pixel
   z=z+cosxx(z)*flip(z/sqr(z))
}

; 28.10.1994
SGG009 {
   z=pixel
   z=cotan(sqr(z))
}

; 28.10.1994
SGG010 {
   z=pixel
   z=cotanh(z)*real(z)/sinh(z)
}

SGG011 {
   z=pixel
   z=sqr(z)*(sin(z)/cos(z*z))
   |z|<=2
}

;01.01.1995 
SGG012 {
   z=pixel
   b=sqr(z*z)
   z=sqr(b)/log(z)
   b=sqr(z)/log(b)
   |z|<=3
}

;01.01.1995
SGG013 {
   z=y=x=pixel
   z=exp(z)/(sin(y)+sqr(x))
   |z|<=8
}

;01.01.1995
SGG014 {
   z=y=pixel+sqr(pixel)
   z=exp(z)*sin(y)/cos(z)
   y=sin(z)*exp(y)*cos(y)
   |z|<=3
}

;01.01.1995
SGG015 {
   z=pixel  
   z=sqr(z)/sin(z)+1/pixel
   |z|<=4
}

;08.01.1995
SGG016  {
        z=1/pixel
        z1=exp(z)
        z2=sin(z)+z1*.666-z
        z=z+p1*(1/sqr(z2))+z1
}

;10.01.1995
SGG017	{; modified Carr-95.frm
	z=c=pixel;
	z=sqr(z*z)+sqr(c*c);
	z=sqr(z)+sin(c);
	z=sqr(z*z*z)+sin(c*c),
	|z|<=4
}

;10.01.1995
SGG018	{; modified Carr-95.frm
	z=c=sqr(pixel*pixel*pixel);
	z=sqr(z*z)+sqr(c*c);
	z=sqr(z)+sin(c);
	z=sqr(z*z)*tan(c*c),
	|z|<=10
}

;10.01.1995
SGG019	{; modified Carr-95.frm
	z=c=sqr(pixel*pixel*pixel);
	z=sqr(z*z)+sqr(c*c);
	z=sqr(c)+cos(z);
	z=sqr(z*z)*tan(c*c),
	|z|<=2
}

;10.01.1995
SGG020	{; modified Carr-95.frm
	z=c=1/pixel+sqr(pixel);
	z=sqr(z*z)+sqr(c*c);
	c=sin(z)*sqr(z/c)
	z=sqr(z*z*z)+sin(c*c),
	|z|<=4
}

;10.01.1995
SGG021	{; modified Carr-95.frm
	z=c=1/pixel+sqr(pixel);
	z=sqr(z)+cosh(c*z);
	c=sin(z)*sqr(z*c)
	z=sqr(z)+sin(c*z),
	|z|<=4
}


SGG022 {
   z=pixel:
   a=cos(z);
   b=sin(a)+z;
   z=z-p1*(a/b)/cosh(b),
   |z|<=2
}

;14.01.1995 
SGG023 {
   z=a=sqr(pixel*pixel):
   a=z*exp(log(a));
   z=a/sqr(z);
   a=sinh(z)*log(z),
   |z|<=6
}

;14.01.1995
SGG024	{
   z=pixel:
   x=sin(z)^z;
   y=sqr(x)+z;
   z=z*z-exp(x+y),
   |z|<=100
}

;14.01.1995
SGG025 {
   z=pixel+sqr(pixel):
   a=exp(z);
   b=sin(z)*(a-z);
   z=b-p1*b/tanh(a)-sqr(b),
   |z|<=3
}

;14.01.1995
SGG026 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=1/pixel:
  a=b=pixel
  z=sqr(z)+a
  b=a*sin(z)-b
  a=sin(z)+b/0.33
  |z|<=20
}

;14.01.1995
SGG027  {
   z=pixel:
   c=cos(z);
   s=sqr(z);
   h=cosh(z);
   y=c+s/h;
   z=sqr(z+y*y-c-s-h),
   |z|<=2
}

;14.01.1995
SGG028  {
   z=pixel:
   c=cos(z);
   s=sqr(z);
   h=cosh(z);
   y=c+s/h;
   z=sqr(z+y*y+c+s+h),
   |z|<=40
}

;14.01.1995
SGG029  {
   z=pixel:
   c=cos(z);
   s=sqr(z);
   h=cosh(z);
   y=c+s/h;
   z=sqr(z+y*y)+c+s/h,
   |z|<=40
}

;14.01.1995
SGG030  {
   z=pixel:
   e=exp(z);
   l=log(z);
   h=cosh(z);
   y=e-l/h;
   z=sinh((z+y^y)-y)+e+h*l,
   |z|<=20}

;16.01.1995
SGG031  {
   z=pixel:
   e=exp(z);
   h=cosh(z);
   y=e+e*(e-h);
   z=sinh((z+y^y)-y)+log(z),
   |z|<=100
}

;16.01.1995
SGG032 {; Edited for Fractint v. 20 by George Martin 10/98
  z=x=y=pixel:
  x=sqr(z*z*z)
  y=sin(z)+1/z
  x=z+p1+exp(y-x)
  y=z+cos(sqr(x*y))
  z=x*x-cosh(y)
  |z|<=4
}

; guenzel3.frm
; by Siegbert G. Guenzel, CIS 100543,1216

;27.01.1995
SGG033 {
   z=pixel:
   a=sqr(z)*z;
   b=sin(a)-z;
   z=a/b+exp(z),
   |z|<=40
}

;27.01.1995
SGG034 {
   z=pixel+cos(pixel):
   a=exp(z);
   b=sqr(z)+1/a;
   z=b-p1*b/sqr(a)+cosh(b),
   |z|<=2
}

;27.01.1995 
SGG035 {
   z=x=1/pixel:
   z=z*z+sin(x);
   x=1/z+sqr(x),
   |z|<=5
}

;28.01.1995
SGG036 {
   z=1/pixel:
   x=exp(z)*z+z;
   y=sqr(x)/(z*z);
   z=z*z-exp(x+y),
   |z|<=4
}

;28.01.1995
SGG037 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=1/pixel:
  a=b=pixel
  b=a/exp(cos(z))+b
  a=sqr(z*z*z)-b
  z=1/z+a+log(b)
  |z|<=4
}

kgexp1 { 
   z = Pixel:
   z = z ^ 2.71828182845905 + c + pixel,
   |z| <= 100 
}

kgexp2 { 
   z = Pixel, c=fn1(z) :
   z = z ^ 2.71828182845905 - c + pixel,
   |z| <= 100 
}

kgexp3 { 
   z = Pixel, c=fn1(z) :
   z = z ^ 2.71828182845905 + c * pixel,
   |z| <= 100 
}

kgexp4 { 
   z = Pixel, c=fn1(z) :
   z = z ^ 2.71828182845905 + c ^ pixel,
   |z| <= 100 
}

kgexp5 { 
   z = Pixel:
   z = z ^0.5 * z ^ 2.71828182845905 + c + pixel,
   |z| <= 100 
}

kgexp6 { 
   z = Pixel:
   z = c ^ 2.71828182845905 * z ^ pixel,
   |z| <= 100 
}

kgexp7 { 
   z = Pixel:
   z = z + c - 2.71828182845905 ^z,
   |z| <= 100 
}

kgexp8 { 
   z = Pixel:
   z = z ^ 2.71828182845905 + c ^ pixel,
   |z| <= 100 
}

kgexp9 { 
   z = Pixel:
   z = z ^ -2.71828182845905 + pixel,
   |z| <= 100 
}

kgexp10 { 
   z = Pixel:
   z = z + 2.71828182845905 ^ c + c,
   |z| <= 100 
}

kgexp11 { 
   z = Pixel:
   z = z ^ 2.71828182845905 + c ^ 2.71828182845905,
   |z| <= 100 
}

kgexp12 { 
   z = pixel:
   z = z ^ 2.71828182845905 + c,
   |z| <= 100 
}

kgexp13 { 
   z = Pixel:
   z = z ^ 2.71828182845905 + c,
   |z| <= 100 
}

kgexp14 { 
   z = Pixel:
   z = z ^ 2.71828182845905 + c,
   |z| <= 100 
}

oof1 (XAXIS) {
  z = pixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

oof2 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

mongo-01 {
   z = c = pixel:
   z = p1 * fn1(z^z + c) + c/z,
   |z| <= p2
  }

mongo-02 { ;TRY P1 REAL = -1, P2 = 5, FN1 = SQR, FN2 = RECIP
   z = 0, c = pixel:
   z = fn2(fn1(z) + c) + (p1 * z),
   |z| <= p2
  }

mongo-03 {
   z = c = pixel:
   a = (abs(z) > p1)  * (fn1(z) + c);
   b = (abs(z) <= p1) * (fn2(z) + c);
   z = a + b,
   |z| <= p2
  }

mongo-04 {
   z = c = pixel, test = p1/p2:
   a = fn1(z);
   b = (|z| > test)  * (a - c);
   d = (|z| <= test) * (a + c);
   z = b + d,
   |z| <= p1
  }

mongo-05 {
   z = pixel, c = fn1(pixel):
   a = fn2(z);
   b = (|z| >= p1) * (a - c);
   d = (|z| < p1) * (a + c);
   z = a + b + d,
   |z| <= p2
  }

mongo-06 {
   z = c = pixel, d = fn1(pixel):
   a = fn2(z);
   b = (z <= p1) * (a + c + d);
   e = (z > p1) * (a + c - d);
   z = z + b + e,
   |z| <= p2
  }

mongo-07 {
   z = v = pixel:
   oldz = z;
   z = fn1(z)^p1 + v;
   v = oldz,
   |z| <= p2
  }

mongo-08 {
   z = v = pixel:
   a = fn1(z);
   b = (z <= p1) * (a + v);
   e = (z > p1) * (a - v);
   v = z;
   z = b + e,
   |z| <= p2
  }

mongo-09 {
   z = v = pixel:
   a = fn1(z);
   b = (a <= p1) * (a + v);
   e = (a > p1) * fn2(a);
   v = z;
   z = b + e,
   |z| <= p2
  }

mongo-10 {
   z = y = x = pixel:
   a = fn1(z);
   b = (a <= y) * ((a * p1) + y);
   e = (a > y) * ((a * p1) + x);
   x = y;
   y = z;
   z = b + e,
   |z| <= p2
  }

mongo-11 {
   z = y = x = pixel:
   a = (|y| <= p1) * fn1(y);
   b = (|x| <= p1) * fn2(x);
   x = y;
   y = z;
   z = fn3(z) + a + b,
   |z| <= p2
  }

mongo-12 {
   z = pixel, c = (fn1(pixel) * p1):
   x = abs(real(z));
   y = abs(imag(z));
   a = (x <= y) * (fn2(z) + y + c);
   b = (x > y) * (fn2(z) + x + c);
   z = a + b,
   |z| <= p2
  }

mongo-13 {
   z = pixel:
   v = fn1(z);
   x = (z*v);
   y = (z/v);
   a = (|x| <= |y|) * ((z + y) * p1);
   b = (|x| > |y|) * ((z + x) * p1);
   z = fn2((a + b) * v) + v,
   |z| <= p2
  }


newcpcb1{;
z=pixel,a=p1:
z=fn1(z)+fn2(z)*fn1(z^a)
|z|<=4
}

newcpcb2{;
z=pixel,a=p1:
z=(fn1(z)+fn2(z)*fn1(z))
|z|<=4
x=real(z)^a
y=imag(z)^a
a=x*y
}

newcpcb3{;
z=pixel,a=p1,b=p2:
z=(fn1(z)+fn2(z)*fn1(z))^a
|z|<=4
x=real(z)^b
y=imag(z)^b
a=x+y
}

newcpcb4{;
z=pixel,a=p1,b=p2:
z=(fn1(z)+fn2(z)*fn3(z))
|z|<=16
x=real(z)^a
y=imag(z)^b
a=x*y
}

newcpcb5{;
z=pixel,a=p1,b=p2:
z=(fn1(z)+fn2(z)*fn3(z))
|z|<=16
x=real(z)^a
y=imag(z)^b
a=x*y
|a|<=16
a=fn4(a)
}
                           
OrmanDelbrot1 {; Copr. 1995 by Jack Orman
  c = z = Pixel:
   z = fn1(z^3+z^2+z+c)*c
    |z| <= 4
  }

OrmanDelbrot2 {; Copr. 1995 by Jack Orman
  c=z=pixel:
  z=(c*z)^p1+(c*z*z)+c
  |z|<=4
  }

OrmanDelbrot3 {; Copr. 1995 by Jack Orman
   z = Pixel:
   z = pixel * fn1(z)
   |Real(z)| <=  32
  }

OrmanDelbrot4 {; Copr. 1995 by Jack Orman
  c = z = pixel:
   z = z^p1 + fn1(p2)
    |z| <= 4
  }

OrmanDelbrot5 {; Copr. 1995 by Jack Orman
  z = Pixel:
   a=p1
   b=p1-1
   c=p1-2
   z = Z^a-z^b-z^c-p2
    |z| <= 4
  }

OrmanDelbrot6 {; Copr. 1995 by Jack Orman
  z = Pixel:
   a=p1
   b=p1-1
   c=p1-2
   z = ((Z^a-z^b-z^c)/p1)-p2
    |z| <= 8
  }

OrmanDelbrot7 {; Copr. 1995 by Jack Orman
  z = Pixel:
   z = cotan(z)^z + c
    |z| <= 8
  }

OrmanDelbrot8 {; Copr. 1995 by Jack Orman
   c = z = Pixel:
   z =  (z^6+z^5+z^4+z^3+z^2+z+c)/p1
    |z| <= 4
  }

OrmanDelbrot9 {; Copr. 1995 by Jack Orman
  z = Pixel:
   z = fn1(z^5 * z^4)/fn2(z^3 * z^2 * z) + c
    |z| <= 32
  }


OrmandelPower     { ; Copr. 1995 by Jack Orman
                    ; Start with Fn1=ident and Fn2=cotanh
                    ; and P1 = 2
  c=z=pixel:
  z=(fn1(z)/fn2(z))^p1 + c
  |z|<4
  }
      

OrmandelFunc    {; Copr. 1995 by Jack Orman
  z = pixel, c = fn1(pixel):
   z = sqr(z) + c,
    |z| <= 4
  }

OrmanDelbrot3 {; Copr. 1994 by Jack Orman
   z = Pixel:
   z = pixel * fn1(z)
   |Real(z)| <=  32
  }


wiltetrate{; by me
z= pixel :
z=z^(cotanh(z^.5))+pixel,
|z|<=4
}

limerick { ;Bradley Beacham  [74223,2745]
           ;Just an experiment -- nothing earth-shaking...
  z = c = pixel, test = p1 + 4:
    z = fn1(z)
    z = fn1(z)
    z = fn2(z)
    z = fn2(z)
    z = fn1(z) + c
      |z| < test
}

fnglynn { ;Mutation of GLYNN, by Bradley Beacham  [74223,2745]
          ;Original formula by Jon Horner [100112,1700]
          ;Try p1=1.5, p2=-0.2, fn1=ident for 'standard' Glynn
  z = pixel:
    z = fn1(z^p1 + p2)
      |z| < 4
}

glynnout1 { ;Mutation of GLYNN, by Bradley Beacham  [74223,2745]
            ;Original formula by Jon Horner [100112,1700]
            ;in-and-out relative to origin
  z = oldz = pixel:
    in  =  p2 * (|z| <= |oldz|)
    out = -p2 * (|oldz| < |z|)
    oldz = z
    z = fn1(z)^p1 + in + out
      |z| <= 4
}

glynnout2 { ;Mutation of GLYNN, by Bradley Beacham  [74223,2745]
            ;Original formula by Jon Horner [100112,1700]
            ;in-and-out relative to origin
  z = oldz = pixel, k1 = fn1(p2), k2 = fn2(p2):
    in  = k1 * (|z| <= |oldz|)
    out = k2 * (|oldz| < |z|)
    oldz = z
    z = z^p1 + in + out
      |z| <= 4
}

glynnout3 { ;Mutation of GLYNN, by Bradley Beacham  [74223,2745]
            ;Original formula by Jon Horner [100112,1700]
            ;in-and-out relative to fn1(pixel)
  ;p1 = Parameter (default 0), p2 = Parameter (default 0)
  z = pixel, tgt = fn1(pixel), rt=real(tgt), it=imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  =  p2 * (dist <= olddist)
    out = -p2 * (olddist < dist)
    olddist = dist
    z = fn2(z^p1 + in + out)
      |z| <= 4
}






REB004A {; Ron Barnett, 1993
   z = pixel:
   z =p1*fn1(z) + p1*p1*fn2(p2*z) + pixel, |z| <= 100
   }

   REB004B {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   z = pixel + p1*(z/2 + z*z/6 + z*z*z/12), |z| <= 100
   }

   REB004C {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   z = p2 + p1*(z/2 + z*z/6 + z*z*Z/12), |z| <= 100
   }

   REB004D {; Ron Barnett, 1993
   z = pixel:
   z = pixel + fn1(2*z+1)/(2*z+p1), |z| <= 100
   }

   REB004E {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   z = pixel + fn1(2*z+1)/(2*z+p1); 
   z = z + fn2(4*z+1)/(4*z+p2), |z| <= 100
   }

   REB004F {; Ron Barnett, 1993
   z = pixel:
   z = p2 + fn1(2*z+1)/(2*z+p1), |z| <= 100
   }

   REB004G {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   z = p2 + fn1(2*z+1)/(2*z+p1); 
   z = z + fn2(4*z+1)/(4*z+p1), |z| <= 100
   }

   REB004H {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   z = pixel + fn1(3/z - z/4), |z| <= 100
   }

   REB004I {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   z = p1 + fn1(3/z - z/4), |z| <= 100
   }

   REB004J {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = flip(pixel + fn1(3/z - z/4));
   z = x*z + pixel, |z| <= 100
   }

   REB004K {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = flip(pixel + fn1(3/z - z/4));
   z = x*z + p1, |z| <= 100
   }

   REB004L {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = flip(pixel + fn1(p1/z - z/(p2+1)));
   z = x*z + pixel, |z| <= 100
   }

   REB004M {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const - 12*x)*x/(4*const);
   y1 = -fn2(const + 12*x)*y/(4*const);
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x*y;
   z = x2 + flip(y2), |z| <= 100
   }

REB005A	{; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const - 12*x)*x/(4*const);
   y1 = -fn2(const + 12*y)*y/(4*const);
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
   } 

REB005B {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const - x)*x/const;
   y1 = -fn2(const + y)*y/const;
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
   }

REB005C {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const + p1*x)*x/const;
   y1 = -fn2(const + y)*y/const;
   x2 = x1*x1 - y1*y1 + p2;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
   } 

REB005D {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1((const + p1*x)*x/const);
   y1 = -fn2((const + y)*y/const);
   x2 = x1*x1 - y1*y1 + p2;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
   }

REB005E {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1((const - x)*x/const);
   y1 = -fn2((const + y)*y/const);
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
   }

REB005F {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1((const - 12*x)*x/(4*const));
   y1 = -fn2((const + 12*y)*y/(4*const));
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
   } 

REB005G {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const + p1*x)*y/const;
   y1 = -fn2(const + y)*x/const;
   x2 = x1*x1 - y1*y1 + p2;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
   }

sjikenagamap01 {; Ron Barnett, 1994
	y = ((1-pixel)/3)^0.5,
	z=real(y)+flip(imag(y)*p1),
	c=p2+p1*real(pixel)+flip(imag(pixel)):
	z = z*z*z + (c - 1)*z - c, |z|<=100
      }

ikenagaoriginal {; Ron Barnett, 1994
	z = 0, c = pixel:
	z = z*z*z + (c - 1)*z - c, |z|<=100
      }

JMask2 {      ; Ron Barnett, 1995      
      z = fn1(pixel):
      z = P1*fn2(z)^2 + P2*fn3(z)^2 + P3, |z| <= 4
   }

sjjulike01 {; Ron Barnett, 1995
	y = pixel,
	z=real(y)+flip(imag(y)*p1),
	c=p2+p1*real(p3)+flip(imag(p3)):
	z = z*z*z + (c - 1)*z - c, |z|<=100
      }

   Cubicfn {; Ron Barnett, 1995
   z = c = pixel:
   z = fn1((z-1)*(z-1)*(z+1)) - c*P1 + P2; |z| <= 4
   }

RCL_4_M (XAXIS) { ; Ron Lewen, 76376,2567
  ; A Mandelbrot-style variation on Pickover's book,
  ; Figure 8.9 (p. 105).
  ;
  ; Use floating point
  ;
  z=pixel:
    z=sin(z^2) + sin(z) + sin(pixel),
      |z| <= 4
  }

RCL_4_J { ; Ron Lewen, 76376,2567
  ;  A julia-style variation of the formula in Figure 8.9
  ;  (p. 105) of Pickover's book.
  ;
  z=pixel:
    z=sin(z^2) + sin(z) + sin(p1),
   |z| <= 4
  }

RCL_5_M (XAXIS) {; Ron Lewen, 76376,2567
  ;
  ;  A variation on the classical Mandelbrot set
  ;  formula.
  ;
  ;  Use floating point
  ;
  z=pixel:
    z=sin(z^2+pixel),
      |z| <= 4
  }

RCL_5_J (ORIGIN) {; Ron Lewen, 76376,2567
  ;
  ;  A variation on the classical Julia set.
  ;
  ;  Use floating point
  ;
  z=pixel:
    z=sin(z^2+p1),
      |z| <= 4
  }

RCL_6_M (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ;  A variation on the classic Mandelbrot formula
  ;
  ;  Use floating point
  ;
  z=pixel:
    z=sin(z)^2 + pixel,
      |z| <= 4
  }

RCL_6_J (ORIGIN) { ; Ron Lewen, 76376,2567
  ;
  ;  A variation on the classic Julia formula
  ;
  ;  use floating point
  ;
  z=pixel:
    z=sin(z)^2 + p1,
      |z| <= 4
  }

RCL_7 (XAXIS) { ; Ron Lewen, 76376,2567
  ; Inspired by the Spider
  ; fractal type included with Fractint
  ;
  z=c=pixel:
    z=z^2+pixel+c
    c=c^2+pixel+z
      |z| <= 4
  }

RCL_8_M { ; Ron Lewen, 76376,2567
  ;
  ;  Another variation on the classic Mandelbrot
  ;  set.
  ;
  z=pixel:
    z=z^2+flip(pixel)
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_8_J (ORIGIN) { ; Ron Lewen, 76376,2567
  ;
  ;
  ;
  z=pixel:
    z=z^2+flip(p1)
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_9 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ;
  ;
  z=pixel:
    z=(z^2+pixel)/(pixel^2+z)
      |z| <= 4
  }

RCL_Cosh_Flip (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ; A FLIPed version of RCL_Cosh.
  ; An interesting repeating pattern with lots
  ; of detail.
  ;
  ; Use floating point
  ;
  z=0:
    z=flip(cosh(z) + pixel),
      abs(z) < 40
  }

RCL_Cosh_J { ; Ron Lewen, 76376,2567
  ;
  ; A julia-style version of RCL_Cosh above.
  ; Lots of interesting detail to zoom in on.
  ;
  ; Use floating point
  ;
  z=pixel:
    z=cosh(z) + p1,
      abs(z) < 40
  }

RCL_12 (XAXIS) {; Ron Lewen, 76376,2567
                ; Revised for Fractint v20 by G. Martin
  z=pixel:
  z=(z^2+3+pixel)/(z^2-3-pixel)
  |z| <= 10
}

RCL_13 (XAXIS) {; Ron Lewen, 76376,2567
                ; Revised for Fractint v20 by G. Martin
  z=pixel:
  z=(z^2+2+pixel)/(z^2-2+pixel)
  |z| <= 100
}

RCL_14 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  z=pixel:
    z=z^pixel+pixel^z
      |z| <= 96
  }

RCL_15 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^2.71828 + pixel,     |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_16 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ; Set fn1 to sqr to generate Figure 9.18 (p. 134)
  ; from Pickover's book.
  ; Set maxiter >= 1000 to see good detail in the spirals
  ; in the three large lakes.  Also set inside=0.
  ;
  z=0.5:
    z=z*pixel-pixel/fn1(z),
      abs(z) < 8
  }


Zexpe_mandel (XAXIS) { 
   z = Pixel:
   z = z ^ 2 + pixel,
   |z| <= 100 
}

{ Use the following for version 15.14 or later }
MarksMandelPwr_tan (XAXIS) {
   z = pixel, c = z ^ (z - 1):
   z = c * sin(z)/cos(z) + pixel,
   |z| <= 4
}

{ Use the following for version 15.13 or earlier }
MarksMandelPwr_tan_a (XAXIS) {
   z = pixel, c = z ^ (z - 1):
   z = c * sin(z)/conj(cos(z)) + pixel,
   |z| <= 4
}

LogPlusSin (XAXIS) {
   z = pixel:
   z = log(z) + sin(z) + pixel,
   |z| <= 4
}

inandout01 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, c1 = fn1(pixel), c2 = fn2(pixel):
    a = (|z| <= |oldz|) * (c1) ;IN
    b = (|oldz| < |z|)  * (c2) ;OUT
    oldz = z
    z = fn3(z*z) + a + b + p1
    |z| <= test
}

inandout02 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel:
    a = (|z| <= |oldz|) * (fn1(z)) ;IN
    b = (|oldz| < |z|) * (fn2(z))  ;OUT
    oldz = z
    z = a + b + p1
    |z| <= test
}

inandout03 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
    a = (|z| <= |oldz|) * (c)    ;IN
    b = (|oldz| < |z|)  * (z*p1) ;OUT
    c = fn1(a + b)
    oldz = z
    z = fn2(z*z) + c
    |z| <= test
}

inandout04 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
  ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
    a = (|z| <= |oldz|) * (c)   ;IN
    b = (|oldz| < |z|)  * (c*k) ;OUT
    c = a + b
    oldz = z
    z = fn1(z*z) + c
    |z| <= test
}

inandout05 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel:
  a = (|z| <= |oldz|) * (pixel) ;IN
  b = (|oldz| < |z|)  * (oldz)  ;OUT
  oldz = z
  z = fn1(z*z) + a + b + p1
  |z| <= test
}


A1 (XAXIS) {
    z = Pixel:
    z = ((2*(z*z*z))-(3*(z*z))+1)^p1
    z = z+Pixel
    z = Sqr(z) * (p1)
    |z| <= 4;
  }

BirdOfPrey (XAXIS_NOPARM) {; Optimized by Sylvie Gallet
  z = p1 :
  z = cosxx(sqr(z) + pixel) + pixel
  |z| <= 4
}

BirdOfPreyC (XAXIS_NOPARM) {
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
}

BirdOfPreyC.1 (XAXIS_NOPARM) {
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
}

CANON1{;12/2/94 a,b,c are modified by fn(), z value is bailout 
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=(fn2(z)+a)/2
 |z|<=8
 b=(fn3(z)+b)/4
 |z|<=16
 c=(fn4(z)+c)/8
 |z|<=32
 }

CANON2{;12/2/94 z is modified by fn()
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 z=(fn2(z)+a)/2
 |z|<=8
 z=(fn3(z)+b)/4
 |z|<=16
 z=(fn4(z)+c)/8
 |z|<=32
 }

CANON3{;12/2/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=(fn2(z)*a)/2
 |z|<=8
 b=(fn3(z)*b)/4
 |z|<=16
 c=(fn4(z)*c)/8
 |z|<=32
 }

CANON4{;12/3/94
 z=pixel,c=z^2,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=(fn2(z)*a)/2
 |z|<=8
 b=(fn3(z)*b)/4
 |z|<=16
 c=(fn4(z)*c)/8
 |z|<=32
 }

CANON5{;12/3/94
 z=pixel,c=z^2,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 z=(fn2(z)*a)/2
 |z|<=8
 z=(fn3(z)*b)/4
 |z|<=16
 z=(fn4(z)*c)/8
 |z|<=32
 a=z/2
 b=z/4
 c=z/8
 }

CANON6{;12/3/94
 z=pixel,c=z^2,a=p1,b=p2:
 z=fn1(z)-(a*b*c)
 |z|<=4
 a=(fn2(z)-a)/2
 |z|<=8
 b=(fn3(z)-b)/4
 |z|<=16
 c=(fn4(z)-c)/8
 |z|<=32
 }

DeepSpaceProbe (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)+pixel
  z=cosxx(z)+pixel
  x=x+1
  |z|<=4
}

DeepSpaceProbeC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=sin(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
}

DeepSpaceProbeC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
}

DpSpaceProbeTwo (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=cosxx(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}


DpSpaceProbeTwoC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

DpSpaceProbeTwoC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

EvilEyeC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=|z|
  x<=4
}

EvilEyeC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=|z|
  x<=4
}
      

Eyeball (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sinh(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

EyeballC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sinh(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

FractalFender (XAXIS_NOPARM) {; Edited for Fractint v. 20
                              ; by George Martin, 10/98
  z=p1, x=|z|:
  z=cosh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

{ Spectacular! }
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

FractalFender2 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                               ; by George Martin, 10/98
  z=p1, x=|z|:
  z=cosxx(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FractalFender2C (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FractalFender2C.1 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cos(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FlyingSquirrel (XAXIS_NOPARM) {; Edited for Fractint v. 20
                               ; by George Martin 10/98
  z=p1, x=|z|:
  z=sin(z)/cosxx(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FlyingSquirrelC (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                ; by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FlyingSquirrelC.1 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=tan(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

Frog (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  z=tanh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

FrogC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=tanh(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

hypercomplex { ; Chuck Ebbert -- must use periodicity=0
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

IfThenfn1fn2 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=fn1(z)
  ENDIF
  z=fn2(z)+pixel
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}

IfThenElsefn1fn2 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=fn1(z)+pixel
  ELSE
    z=fn2(z)+pixel
  ENDIF
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}

IfElsefn1fn2fn3 (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=fn1(z)+pixel
  ELSEIF (x<20)
    z=fn2(z)+pixel
  ELSE
    z=fn3(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

IslandOfChaos (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cosxx(z)+pixel
  x=x+1
  |z|<=4
}

IslandOfChaosC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
}

IslandOfChaosC.1 (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=tan(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
}

ManInTheOzone (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=cosxx(z)+pixel
  z=sin(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

ManInTheOzoneC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cosxx(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

ManInTheOzoneC.1 (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cos(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

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

MothC (XAXIS_NOPARM) {
   ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=log(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

SinEgg (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                       ; George Martin 10/98
  z=p1, x=|z|:
  z=sin(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

SinEggC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z = sin(z) + pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

SinhEgg (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  z=sinh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

SinhEggC (XAXIS_NOPARM) {
  z=p1, x=|z|:
  IF (x>1)
    z = sinh(z) + pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}

TestSinMandC (XAXIS_NOPARM) {; Rewritten for Fractint v. 20 by
                             ; George Martin, 10/98
  z=p1, x=|z|:
  IF (x > 1)
    z = sin(z)
  ENDIF
  z=sqr(z)+pixel
  x=|z|
  x<=4
}

WaldoTwinsC(XAXIS_NOPARM) {
     z=p1:z=cosxx(sin(z+pixel))+pixel, 
     |z|<=4
}

WaldoTwinsC.1(XAXIS_NOPARM) {
     z=p1:z=cos(sin(z+pixel))+pixel, 
     |z|<=4
}


3daMand01 {; Mandelbrot/Zexpe via Lee Skinner   
     z=real(pixel)+flip(imag(pixel)*p1),
     c=p2+p1*real(pixel)+flip(imag(pixel)):
     z=z^2.71828182845905 + c, |z|<=100
}

3daMand02 {; Mandelbrot/Xexpe/Feigenbaum's alpha constant=exponent    
    z=real(pixel)+flip(imag(pixel)*p1),
    c=p2+p1*real(pixel)+flip(imag(pixel)):
    z=z^2.502907875095 + c, |z|<=100
}

CGNewtonSinExp (XAXIS) {
        z=pixel:
        z1=exp(z);
        z2=sin(z)+z1-z;
        z=z-p1*z2/(cos(z)+z1), .0001 < |z2|
   }

Chico { ; Mutation of 'M-SetInNewton'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Jon Horner [100112,1700]
  ; For 'M-SetInNewton' set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 & p2 = Parameters (default 3,0 and 0,0)
  z = 0,  c = fn1(pixel),  cminusone = c-1
  ; The next line sets k=default if p1=0, else k=p1
  k = (3 * (|p1|<=0) + p1)
  kminusone = k - 1:
    oldz = z
    nm = k*c-kminusone*z*cminusone
    dn = k*(k*z*z+cminusone)
    z = fn2(nm/dn)+kminusone*z/k + p2
    0.01 <= |(z-oldz)|
}

Curly { ; Mutation of 'Natura'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Michael Theroux [71673,2767]
  ; For 'Natura', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    z = fn1(fn2(z*z*z)) + c
    |z| <= test
}

DAFRM02  {;  
   z = pixel :
   z = (z ^ (z - 1) + 7/11) * (fn1(z) + pixel),
   |z| <= 4
}

DAFRM03  {; 
   z = pixel :
   z = z * z^ (1 - z) * fn1(z) + pixel,
   |z| < 4
}

DAFRM04  {;
   z = pixel, c = p1 :
   z = z ^ (z - 1) * fn1(z) + pixel,
   c = c + p2,
   |z| <= 4
}

DAFRM05  {;  M_TchebychevT3
   c = P1, z = Pixel:
   z = c*z*(4*z*z-3),
   |z|<100
}
   
DAFRM06  {;  var M_TchebychevT3
   c = P1, z = Pixel:
   z = 2*c*z*(z*z*3.14159),
   |z|<100
}

DAFRM07  {
   z = pixel, c = p1 :
   z = z ^ (z - 1) * fn1(z) + pixel,
   |z| <= 4
}

DAFRM08 {; Edited for Fractint v. 20 by George Martin, 10/98
         ; The revision is to give the result that the author
         ; intended
  z = pixel, c = z + z^ (1 - z):
  tmp = fn1(z)
  tmp = real(tmp)*real(c)-imag(tmp)*imag(c)\
          + flip(real(tmp)*imag(c)-imag(tmp)*real(c))
  z = tmp + pixel
  |z| <= 100
}

DAFRM09 {; Edited for Fractint v. 20 by George Martin, 10/98
         ; The revision is to give the result that the author
         ; intended
  z = pixel, c = z + z^ (z - 1):
  tmp = fn1(z)
  tmp = real(tmp)*real(c)-imag(tmp)*imag(c)\
         + flip(real(tmp)*imag(c)-imag(tmp)*real(c))
  z = tmp + pixel + 12
  |z| <= 4
}

DAFRM10  { ; var Ron Barnett REB004K
   z = pixel:
   x = flip(pixel + fn1(4/z - z/5 + 125)),
   z = x*z + p1 + 125, 
   |z| <= 100
   }

DAFRM11  { ; var Ron Barnett REB004L
   z = pixel:
   x = flip(pixel + fn1(2*p1/3*z - z/(p2+125))),
   z = x*z + pixel, 
   |z| <= 100
   }

DAFRM12 { ; var Ron Barnett REB004M
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -fn1((x*x + y*y) - 6*x)*x/(2*x*x + y*y),
   y1 = -fn2((x*x + y*y) + 6*x)*y/(2*x*x + y*y),
   x2 = x1*x1 - y1*y1 + p1 + 25,
   y2 = 3*x*y - 25,
   z = x2 + flip(y2), 
   |z| <= 100
   }   

DAFRM21 { 
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -fn1((x*x*x + y*y*y - 1) - 6*x)*x/(2*x*x*x + y*y*y - 1),
   y1 = -fn2((x*x*x + y*y*y - 1) + 6*x)*y/(2*x*x*x + y*y*y - 1),
   x2 = x1*x1*x1 - y1*y1*y1 + p1 + 5,
   y2 = 4*x*y - 18,
   z = x2 + flip(y2),
   |z| <= 100
   }

DrChaosbrot1 (xaxis) {; more phi
  z = c = pixel:
  z = sqr(z) + (((sqrt(5)+ 1)/2)+c)
  |z| <= 4
}

DrChaosbrot2 (xyaxis) {; more phi
  z = c = pixel:
  z = sqr(z) + (((sqrt(5)+ 1)/2)+c)
  |z| <= 4
}

Element (xyaxis) {; phi lingam
  z = pixel:
  z = z*z*z*z + ((sqrt(5) + 1)/2)
  |z| <= 4
}

Groucho { ; Mutation of 'Fish2'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Dave Oliver via Tim Wegner
  ; For 'Fish2', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 = Parameter (default 1,0), real(p2) = Bailout (default 4)
  z = c = pixel
  ; The next line sets k=default if p1=0, else k=p1
  k = ((1,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    z1 = c^(fn1(z)-k)
    z = fn2(((c*z1)-k)*(z1))
    |z| <= test
}

Harpo { ; Mutation of 'Gopalsamy3'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Ron Barnett [70153,1233]
  ; For 'Gopalsamy3' with Ron's suggested parameters,
  ; set FN1 & FN2 = IDENT and P1 & P2 = default
  ; p1 = Parameter (default 1.099,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((1.099,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    x = real(z), y = imag(z)
    x1 = fn1(3*x*y*y - x*x*x) + c
    y = fn2(y*y*y - 3*x*x*y)
    z = x1 + flip(y)
    |z| <= test
}

inandout06 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn2(pixel), c2 = fn3(pixel), olddist =100,
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c1 * (dist <= olddist)
    out = c2 * (olddist < dist)
    olddist = dist
    z = z*z + in + out + p1
      |z| <= test
}

inandout07 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = fn2(z) * (dist <= olddist)
    out = fn3(z) * (olddist < dist)
    olddist = dist
    z = in + out + p1
      |z| <= test
}

inandout08 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (z*p1) * (olddist < dist)
    c = fn2(in + out)
    olddist = dist
    z = fn3(z*z) + c
      |z| <= test
}


inandout09 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
  ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (c*k) * (olddist < dist)
    c = in + out
    olddist = dist
    z = fn2(z*z) + c
      |z| <= test
}

inandout10 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = pixel * (dist <= olddist)
    out = oldz * (olddist < dist)
    olddist = dist
    oldz = z
    z = fn2(z*z) + in + out + p1
      |z| <= test
}

inandout12 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0,0), p2 = Parameter (default 0,0)
  z = pixel, rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = fn1(z) * (dist <= olddist)
    out = fn2(z) * (olddist < dist)
    olddist = dist
    z = in + out + p2
      |z| <= 4
}

inandout13 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), p2 = parameter (default 1,0)
  ;The next line sets k=1 if real(p2)==0, else k=p2
  k = (1 * (real(p2)==0) + p2 * (0 != p2))
  z = c = pixel, rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (z*k) * (olddist < dist)
    c = fn1(in + out)
    olddist = dist
    z = fn2(z*z) + c
      |z| <= 4
}

Michaelbrot (origin) {; based on Golden Mean
  z = pixel:
  z = sqr(z) + ((sqrt(5) + 1)/2)
  |z| <= 4
}

Moe { ; Mutation of 'Zexpe'.  Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Lee Skinner [75450,3631]
  ; For 'Zexpe', set FN1 & FN2 =IDENT and P1 = default
  ; real(p1) = Bailout (default 100)
  s = exp(1.,0.), z = pixel, c = fn1(pixel)
  ; The next line sets test=100 if real(p1)<=0, else test=real(p1)
  test = (100 * (real(p1)<=0) + real(p1) * (0<p1)):
    z = fn2(z)^s + c
    |z| <= test
}

Natura(xyaxis)  {  ;phi yoni
	z = pixel:
	z = z*z*z + ((sqrt(5) + 1)/2) 
	|z| <= 4;
}

Newton_poly2 { ; Tim Wegner - use float=yes
   ; fractal generated by Newton formula z^3 + (c-1)z - c
   ; p1 is c in above formula
   z = pixel, z2 = z*z, z3 = z*z2:
   z = (2*z3 + p1) / (3*z2 + (p1 - 1));
   z2 = z*z;
   z3 = z*z2,
  .004 <= |z3 + (p1-1)*z - p1|
  }

OK-11 { ;overkill.frm - bradley beacham
        ;TRY FN1 = SQR, FN2 = SQR
   z = 0, v = pixel:
   z = fn1(v) + z;
   v = fn2(z) + v,
   |z| <= (5 + p1)
  }

OK-13 { ;overkill.frm - bradley beacham
        ;TRY FN1 = SQR, FN2 = SQR
   z = 0, c = fn1(pixel) :
   z = fn1(z) + c;
   z = fn2(z),
   |z| <= (5 + p1)
  }

OK-21 {;overkill.frm - bradley beacham
   z = pixel, c = fn1(pixel):
   z = fn2(z) + c,
   fn3(z) <= p1
  }

OK-23 {;overkill.frm - bradley beacham
   
   z = c = pixel, k = 1 + p1:
   z = k * fn1(z^z + c) + c/z,
   |z| <= (5 + p2)
  }

OK-26 {;overkill.frm - bradley beacham
  
   z = c = pixel, k = 2 + p1, test = k/(2 + p2):
   a = fn1(z);
   b = (|z| > test)  * (a - c);
   d = (|z| <= test) * (a + c);
   z = b + d,
   |z| <= k
  }

OK-27 {;overkill.frm - bradley beacham

   z = pixel, c = fn1(pixel), k = 1 + p1:
   a = fn2(z);
   b = (|z| >= k) * (a - c);
   d = (|z| < k) * (a + c);
   z = a + b + d,
   |z| <= (10 + p2)
  }

OK-30 {;overkill.frm - bradley beacham
 
   z = v = pixel, k = .5 + p1:
   a = fn1(z);
   b = (z <= k) * (a + v);
   e = (z > k) * (a - v);
   v = z;
   z = b + e,
   |z| <= (5 + p2)
  }

OK-31 {;overkill.frm - bradley beacham

   z = v = pixel, k = .1 + p1:
   a = fn1(z);
   b = (a <= k) * (a + v);
   e = (a > k) * fn2(a);
   v = z;
   z = b + e,
   |z| <= (5 + p2)
  }

OK-36 { ; DISECTED MANDELBROT
  ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, cx = fn1(real(z)), cy = fn2(imag(z)), k = 2 + p1:
  zx = real(z), zy = imag(z);
  x = fn3(zx*zx - zy*zy) + cx;
  y = fn4(k * zx * zy) + cy;
  z = x + flip(y),
  |z| <  (10 + p2)
}

OK-40 { ; DISECTED OK-39
  ; (ASSUMING YOU USE OK-39 WITH FN1= IDENT & FN2 = SQR...)
  z = pixel, cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 2 + p1:
  zx = real(z), zy = imag(z);
  a = zx*cx - zy*cy;
  b = cx*zy + zx*cy;
  x = fn3(a*a - b*b) + cx;
  y = fn4(k*a*b) + cy;
  z = x + flip(y),
  |z| <= (10 + p2)
 }

OK-42 { ;overkill.frm - bradley beacham
        ; MUTATION OF FN + FN
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1,
  p2x = real(p2)+1, p2y = imag(p2)+1:
  zx = real(z), zy = imag(z);
  x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y);
  y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x);
  z = x + flip(y),
  |z| <= 20
}

OK-43 { ;overkill.frm - bradley beacham
        ; DISECTED SPIDER
        ; TO GENERATE "STANDARD" SPIDER, SET P1 = 0,0 & ALL FN = IDENT
  z = c = pixel, k = 2 + p1:
  zx = real(z), zy = imag(z);
  cx = real(c), cy = imag(c);
  x = fn1(zx*zx - zy*zy) + cx;
  y = fn2(k*zx*zy) + cy;
  z = x + flip(y);
  c = fn3((cx + flip(cy))/k) + z,
  |z| <  (10 + p2)
}

OldCGNewtonSinExp (XAXIS) {
        z=pixel:
        z1=exp(z);
        z2=sin(z)+z1-z;
        z=z-p1*z2/(cosxx(z)+z1), .0001 < |z2|
   }

OldManowar (XAXIS) {
           z0 = 0,
           z1 = 0,
         test = p1 + 3,
           c = pixel :
               z = z1*z1 + z0 + c;
               z0 = z1;
               z1 = z,  |z| < test }

OldNewtonSinExp (XAXIS) {; Chris Green
  ; Newton's formula applied to sin(x)+exp(x)-1=0.
  ; Use floating point.
  z=pixel:
   z1=exp(z)
   z2=sin(z)+z1-1
   z=z-p1*z2/(cosxx(z)+z1),
    .0001 < |z2|
  }

phi01(xyaxis) { ;try inside=maxiter and outside=imag on these
	z = ((sqrt(5) + 1)/2)/pixel:
	z =  z*z + pixel*((sqrt(5) + 1)/2)
	|z| <= 4;
}

phi02(xyaxis) { ;try inside=maxiter and outside=imag on these
	c = pixel 
	z = ((sqrt(5) + 1)/2):
	z =  z*z + pixel*((sqrt(5) + 1)/2) + c
	|z| <= 4;
}

phi03(xyaxis) { ;try inside=maxiter and outside=imag on these
	z = ((sqrt(5) + 1)/2)/pixel:
	z =  z*z*z + pixel*((sqrt(5) + 1)/2)
	|z| <= 4;
}

phi04(xyaxis) { ;try inside=maxiter and outside=imag on these
	z = ((sqrt(5) + 1)/2)/pixel:
	z =  z*z + pixel*((sqrt(5) + 1)/2)/((sqrt(5) - 1)/2)
	|z| <= 4;
}

Raphaelbrot(xyaxis) {  ;phi
	z = pixel:
	z = sqr(z) + ((sqrt(5) - 1)/2) 
	|z| <= 4;
}

SPCZ(xaxis) { ; resol. sin(z)^cos(z)=0 -Jm Collard-Richard - Use Float=yes
	z=pixel:
	s=sin(z);
	c=cos(z);
	co=cotan(z);
	sc=s^c;
	z1=sc;
	z2=((c*co)-(s*log(s)))*sc;
	z=z-(z1/z2) ,
	0.001<=|z1| 
}

Tetratephi(xyaxis) { ;?
	z  = c = ((sqrt(5) +1)/2)/pixel:
	z = c^z + ((sqrt(5) +1)/2) 
	|z| <= 4;
}

Zeppo { ; Mutation of 'Liar4'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Chuck Ebbert [76306,1226]
  ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 & p2 = Parameters (default 1,0 and 0,0)
  z = pixel
  ; The next line sets p=default if p1=0, else p=p1
  p = (1 * (|p1|<=0) + p1):
    z =fn1(1-abs(imag(z)*p-real(z)))+flip(fn2(1-abs(1-real(z)-imag(z))))-p2
    |z| <= 1
}

RCL_Cross1  { ; Ron Lewen
  ; Try p1=(0,1), fn1=sin and fn2=sqr.  Set corners at
  ; -10/10/-7.5/7.5 to see a cross shape.  The larger 
  ; lakes at the center of the cross have good detail
  ; to zoom in on.
  ; Use floating point.
  ;
  z=pixel:
    z=p1*fn1(fn2(z+p1)),
      |z| <= 4
  }

RCL_Cross2 { ; Ron Lewen
  ; Try p1=(0,1), fn1=sin and fn2=sqr.  Set corners at
  ; -10/10/-7.5/7.5 to see a deformed cross shape. 
  ; The larger lakes at the center of the cross have
  ; good detail to zoom in on.
  ; Try corner=-1.58172/.976279/-1.21088/-.756799 to see
  ; a deformed mandelbrot set.
  ; Use floating point.
  ;
  z=pixel:
    z=pixel*fn1(fn2(z+p1)),
      |z| <= 4
  }

RCL_Mandel (XAXIS) { ; Ron Lewen
  ; The traditional Mandelbrot formula with a different
  ; escape condition.  Try p1=(1,0).  This is basically the M-Set
  ; with more chaos outside.  p1=(0,0) yields a distorted M-set.
  ; Use floating point
  ;
  z=pixel:
    z=sqr(z) + pixel,
      sin(z) <= p1
  }

RCL_Logistic_1 (XAXIS) { ; Ron Lewen
  ; Based on logistic equation  x -> c(x)(1-x) used
  ; to model animal populations.  Try p1=(3,0.1) to
  ; see a family of spiders out for a walk <G>!
  ;
  z=pixel:
    z=p1*z*(1-z),
      |z| <= 1
  }

RCL_Pick1 (XAXIS) { ; Ron Lewen
  ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
  ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in 
  ; Pickover's Computers, Pattern, Chaos and Beauty.
  ; Figures 9.9 - 9.13 can be found by zooming.
  ; Use floating point
  ;
  z=0:
    z=cosh(z) + pixel,
      abs(z) < 40
  }

RCL_Pick2_M (XAXIS) { ; Ron Lewen
  ; Generates a biomorph of a Pseudo-Mandelbrot set with
  ; extra tails.  Part of Pickover's Biomorph Zoo Collection
  ; Formula is adapted from Pickover's book, Figure 8.9
  ; (p. 105) but the result is different.  Set corners=
  ; -2.640801/1.359199/-1.5/1.5 to center image.  I use the
  ; color map that comes as default in WINFRACT. (I guess I
  ; like purple <G>).
  ; Use floating point
  ;
  z=pixel:
    z=sin(z) + z^2 + pixel,
      |real(z)| < 100 || |imag(z)| < 100
  }
 
RCL_Pick2_J { ; Ron Lewen
  ;  A julia set based on the formula in Figure 8.9
  ;  (p. 105) of Pickover's book.  Very similar to 
  ;  the Frontpiece for Appendix A.
  ;
  z=pixel:
    z=sin(z) + z^2 + p1,
      abs(real(z)) < 100 || abs(imag(z)) < 100
  }

RCL_Pick3 (XAXIS) { ; Ron Lewen
  ; Generates Figure 9.18 (p. 134) from Pickover's book.
  ; Set maxiter >= 1000 to see good detail in the spirals
  ; in the three large lakes.  Also set inside=0.
  ;
  z=0.5:
    z=z*pixel-pixel/sqr(z),
      abs(z) < 8
  }

RCL_Pick4 (XAXIS) { ; Ron Lewen
  ; Variation of formula for Figure 9.18 (p. 134) from Pickover's
  ; book.
  ; Set inside=0 to see three large lakes around a blue "core".
  ;
  z=pixel:
    z=z*pixel-pixel/sqr(z),
      |z| <= 4
  }

RCL_Pick5 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^z + z^5 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick6 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^z + z^6 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick7 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^5 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick8 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^3 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick9 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=sin(z) + 2.71828^z + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick10 (XAXIS) { ; Ron Lewen
  ;
  ;  Variation of Figure 9.18 (p.134) from Pickover's
  ;  Book.  Generates an interesting Biomorph.
  ;
  z=pixel:
    z=z/pixel-pixel*sqr(z),
      abs(z) < 8
  }

RCL_Pick11 (XAXIS) { ; Ron Lewen
  ;
  ;  Formula from Figure 8.3 (p. 98) of Pickover's
  ;  book.  Generates a biomorph.  Figure 8.3 is a
  ;  zoom on one of the shapes at the corner of the
  ;  biomorph.
  ;
  ;  Use Floating Point
  ;
  z=pixel:
    z=z^2+0.5
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick12 { ; Ron Lewen
  ;
  ;  Formula from Figure 12.7 (p. 202) of Pickover's
  ;  book.
  ;
  ;  Use Floating Point
  ;
  z=pixel:
    z=(2.71828^(p1)) * z * (1-z),
      abs(real(z)) < 10 || abs(imag(z)) < 10
  }

RCL_Pick13 { ; Ron Lewen
  ;
  ;  Formula from Frontpiece for Appendix C 
  ;  and Credits in Pickover's book.
  ;  Set p1=(3,0) to generate the Frontpiece
  ;  for Appendix C and to (2,0) for Credits
  ;
  ;  Use Floating Point
  ;
  z=.001:
    z=z^p1+(1/pixel)^p1,
      |z| <= 100
  }

RCL_1 (XAXIS) { ; Ron Lewen
  ;
  ;  An interesting Biomorph inspired by Pickover's
  ;  Computers, Pattern, Choas and Beauty.
  ;
  ;  Use Floating Point
  ;
  z=pixel:
    z=pixel/z-z^2,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_2 (XAXIS) { ; Ron Lewen
  ;
  ;  A biomorph flower?  Simply a change in initial
  ;  conditions from RCL_1 above
  ;
  ;  Use Floating Point
  ;
  z=1/pixel:
    z=pixel/z-z^2
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_3 (XAXIS) { ; Ron Lewen
  ;
  ;  A seemingly endless vertical pattern.  The most activity
  ;  is around the center of the image.
  ;
  ;  Use Floating Point
  ;
  z=pixel:
    z=pixel^z+z^pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Quaternion_J (ORIGIN) { ; Ron Lewen
  ;
  ;  From Pseudocode 10.5 (p. 169) of Pickover's book.
  ;  Looks at Julia set for a0,a2 plane.  p1 selects
  ;  slice in to look at.
  ;  p2 correspondes to a point on the Quaternion
  ;  Mandelbrot set (see below).
  ;  Try (-.745,.113) as a starting point.
  ;
    a0=real(pixel), a2=imag(pixel), a1=real(p1), a3=imag(p1):
    savea0=a0^2-a1^2-a2^2-a3^2+p2
    savea2=2*a0*a2+p2
    a0=savea0
    a2=savea2
      (a0^2+a1^2+a2^2+a3^2) <= 2
  }

RCL_Quaternion_M (XAXIS) { ; Ron Lewen
  ;
  ;  From Pseudocode 10.5 (p. 169) of Pickover's book.
  ;  Looks at Mandelbrot set for a0,a2 plane.
  ;  p1 selects slice in to look at.  p1 should
  ;  not be (0,0) (this yields a blank screen!).
  ;
    a0=a2=pixel, a1=real(p1), a3=imag(p1):
    savea0=a0^2-a1^2-a2^2-a3^2+pixel
    savea2=2*a0*a2+pixel
    a0=savea0
    a2=savea2
      (a0^2+a1^2+a2^2+a3^2) <= 2
  }

alt (xaxis) {
  z=0, c=pixel, k=1:
  z=sqr(z) + c,
  c=c+k*p1/z, k=((11-3*k)*k-4)/2,
  |z| <= 4
  }

cardioid {
  z=0, x=real(pixel), y=imag(pixel),
  c=x*(cos(y)+x*sin(y)):
  z=sqr(z)+c,
  |z| < 4
  }

ConformalMapping {
   c = pixel, RealZ = Real(c), ImagZ = Imag(c):
   realZ = Sqr(RealZ) + (RealZ * ImagZ) + Real(c);
   ImagZ = Sqr(ImagZ) + (RealZ * ImagZ) + Imag(c);
   z = RealZ + (ImagZ * (0, 1)),
   |z| < 4
}

CosInvZ(XYAXIS) {
   z=pixel,inv=1/pixel+p1:
   z=cos(inv/z),
   |z|<=4
   }

CoshInvZ(XYAXIS) {
   z=pixel,inv=1/pixel+p1:
   z=cosh(inv/z),
   |z|<=4
   }

D (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
}

Form3 (XAXIS) { ;Peter Lewman's formulas for Fractint.
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

GLYNN(XAXIS) {; Based on an illustration in Science PROBE!  and a
   ; formula by Earl Glynn in Computers and the Imagination,
   ; by Clifford Pickover.   Try p1 = 1.5, p2 = -0.2
   ; Jon Horner, FRAC'Cetera
   ;
   z = pixel : z = z ^ p1 + p2 , |z| <=4 
   }


IAC  {
   z = pixel:
   z = z ^1.5 - .02,
   |z| <= 4
   }

JSomethingelse (xyaxis) {
   z = pixel:
   z = p1 * (z*z + 1/z/z),
   |z| <= 1000000
   }

JulibrotSlice1 {; Randy Hutson - 2D slice of 4D Julibrot
  z = real(p1)+flip(imag(pixel)), c = real(pixel)+flip(imag(p1)):
  z = sqr(z)+c,
  LastSqr <= 4
  }

M-SetInNewton(XAXIS) {; use float=yes
   ; jon horner 100112,1700, 12 feb 93
   z = 0,  c = pixel,  cminusone = c-1:
   oldz = z,
   nm = 3*c-2*z*cminusone,
   dn = 3*(3*z*z+cminusone),
   z = nm/dn+2*z/3,
   |(z-oldz)|>=|0.01|
   }

MandelConj(XAXIS) {; Paul J. Horn , this was mentioned in Pickover's book
    ; Computers, Chaos, Patterns and Beauty.  He didn't give the forumula, so
    ; I came up with this
    z = c = Pixel:
    z = Sqr(conj(z)) + Pixel,
    |z| <= 4
    }

Newducks(XAXIS) {
   z=pixel,t=1+pixel:
   z=sqr(z)+t,
   |z|<=4
   }

No_name(xaxis) {
   z = pixel:
   z=z+z*z+(1/z*z)+pixel,
   |z| <= 4
   }

OldHalleySin (XYAXIS) {; Chris Green
   ; For images using old incorrect cos function
   ; Use floating point.
   z=pixel:
   s=sin(z),
   c=cosxx(z),
   z=z-p1*(s/(c-(s*s)/(c+c))),
   0.0001 <= |s|
   }

Ramanujan1(ORIGIN) {
   z = pixel:
   z = (cosh(p1 * sqr(z)) - sinh(p2 * sqr(z))/(p2 * sqr(z)))/z,
   |z|<= 4
   }

REB004N {; Ron Barnett [70153,1233]
   z = 0.5:
   x = pixel*(z - 1/z) + p1,
   z = pixel*(x - 1/sqr(x) + p2), |z| <= 100
   }

 Silverado2 { ; Rollo Silver [71174,1453]
  ; Use floating point.
  st=1-p1,zz=pixel*pixel,z=zz*pixel*real(p1)+zz*real(st):
   z=z+pixel,
   zz=sqr(z), ; and save mod in lastsqr
   z=zz*z*real(p1)+zz*real(st),
    4 > lastsqr
   }

 SinInvZ(XYAXIS) {
   z=pixel, inv=1/pixel+p1:
   z=sin(inv/z),
   |z|<=4
   }

SinhInvZ(XYAXIS) {
   z=pixel, inv=1/pixel+p1:
   z=sinh(inv/z),
   |z|<=4
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

 SymmIconFix {; Darell Shaffer [76040,2017]
   ; Fix by Jonathan Osuch [73277,1432]
   z = P1, x = P2,
   l = real(P1), a = imag(P2),
   b = .2, g = .1, w = 0, n = 5:
   zbar = conj(z);
   z = ((l +(a *z *zbar) +(b *real(z^n)) +(w *i)) *z) +g *(zbar^(n-1)) +pixel;
   }

TanInvZ(XYAXIS) {
   z=pixel, inv=1/pixel+p1:
   t=inv/z,
   z=sin(t)/cos(t),
   |z|<=4
   }

TanhInvZ(XYAXIS) {
   z=pixel, inv=1/pixel+p1:
   z=tanh(inv/z),
   |z|<=4
   }

test {; Michael Theroux [71673,2767]
   ;fix and generalization by Ron Barnett [70153,1233]
   ;=phi
   ; try p1 = 2.236067977 for the golden mean
   z = ((p1 + 1)/2)/pixel:
   z =  z*z + pixel*((p1 + 1)/2),
   |z| <= 4;
   }

test1 {; Michael Theroux [71673,2767]
   ;fix and generalization by Ron Barnett [70153,1233]
   ;=phi
   ; try p1 = 2.236067977 for the golden mean
   c = pixel,
   z = ((p1 + 1)/2):
   z =  z*z + pixel*((p1 + 1)/2) + c,
   |z| <= 4;
   }

test2 {; Michael Theroux [71673,2767]
   ;fix and generalization by Ron Barnett [70153,1233]
   ;=phi
   ; try p1 = 2.236067977 for the golden mean
   z = ((p1 + 1)/2)/pixel:
   z =  z*z*z + pixel*((p1 + 1)/2),
   |z| <= 4;
   }

test3 {; Michael Theroux [71673,2767]
   ;fix and generalization by Ron Barnett [70153,1233]
   ;=phi
   ; try p1 = 2.236067977 for the golden mean
   z = ((p1 + 1)/2)/pixel:
   z =  z*z + pixel*((p1 + 1)/2)/((p1 - 1)/2),
   |z| <= 4;
   }

testm {
  ; Try p1=0.25 and p2=0.15 with float=y or potential=255/800/255
  z = 0, c=pixel:
  z = sqr(z)+c,
  c=c+(p1 * (|z| <= p2)),
  |z| <= 4
  }

 TjerCGhalley (XYAXIS) {; Chris Green -- Halley's formula
  ; Modified by Tobey J. E. Reed [76437,375]
  ; P1 usually 1 to 1.5, P2 usually zero. Use floating point.
  z=(1,1):
   z5=z*z*z*z*z,
   z6=z*z5, z7=z*z6,
   z=z-p1*((z7-z+pixel)/ ((p1*z6-3)-(8.0*z5)*(z7+z-pixel)/(3.30*z6-12))),
    0.0001 <= |z7-z-pixel|
  }

TjerCubic (XYAXIS) {; Lee Skinner [75450,3631]
  ; Modified by Tobey J. E. Reed [76437,375]
  p = pixel, test = p1 + 3,
  t3 = 5*p, t2 = p*p,
  a = (t2 + 1)/t3+t2, b = 3.149*a*a*a + (t2 - 5)/t2,
  aa3 = a*a*p1, z = 0 - a :
   z = z*z - aa3*z + a,
    |z| < test
 }

TjerDeltaLog(XAXIS) {; Mark Peterson
  ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel, c = log(pixel):
   z = cosh(z) + c/2,
    |z| <= 4
  }

TjerDragon {; Mark Peterson
  ; Modified by Tobey J. E. Reed [76437,375]
  z = Pixel:
   z = tan(z) + (-0.74543, 0.2),
    |z| <= 4
  }

TjerEnt {; Scott Taylor
  ; Modified by Tobey J. E. Reed [76437,375]
  ; Try params=.5/.75 and the first function as exp.
  ; Zoom in on the swirls around the middle.  There's a
  ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z)+p1, base = log(p1):
   z = y * 3.1416 * log(z)/base,
    |z| <= 5
  }

TjerFzppfnpo  {; Lee Skinner [75450,3631]
  ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel, f = 2*(pixel)^(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

TjerFzppfnre  {; Lee Skinner [75450,3631]
  ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel, f = 1./(pixel):
   z = fn1(z) + f * p1,
    |z| <= 50
  }

TjerHyperMandel {; Chris Green.
  ; Modified and Generalized by Tobey J. E. Reed [76437,375]
  ; A four dimensional version of the mandelbrot set.
  ; Use P1 to select which two-dimensional plane of the
  ; four dimensional set you wish to examine.
  ; Use floating point.
  a=(0,0),b=(0,0):
   z=z+1, anew=fn1(a)-fn1(b)+pixel,
   b=3.17*a*b-p1, a=anew,
    |a|+|b| <= 4
  }

TjerInvMandel (XAXIS) {; Mark Peterson
  ; Modified by Tobey J. E. Reed [76437,375]
  c = z = 1 / pixel:
   z = cos(z) + 2*c;
    |z| <= 4
  }

TjerMandelTangent {; Fractal Creations example (revised for v.16)
  ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel:
   z = pixel * tan(z) * 3.14159 * p1,
    |real(z)| < 32
  }

TjerMTet (XAXIS) {;Mandelbrot form 1 of the Tetration formula -- Lee Skinner  ; Modified and Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
   z = (pixel ^ z + pixel) + fn1(pixel),
    |z| <= (P1 + 3)
  }

TjerNewton4(XYAXIS) {; Mark Peterson
  ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel, Root = 1:
   z3 = z*z*z,
   z4 = z3 * z,
   z = (3 / z4 - Root) / (6 * z3),
    .004 <= |z4 - Root|
  }

TjerNewtonSinExp (XAXIS) {; Chris Green
  ; Generalized by Tobey J. E. Reed [76437,375]
  ; Newton's formula applied to sin(x)+exp(x)-1=0.
  ; Use floating point.
  z=pixel:
   z1=exp(z),
   z2=sin(z)+z1-1,
   z=z-p1*z2/(fn1(z)-z1),
    .0001 < |z2|
  }

 Tobey3(XAXIS) {
   z = pixel:
   c = pixel - sqr(z),
   c = pixel + c/z,
   z = c - z * pixel,
   |z| < 4
   }

TobeyCGNewton3 {; Chris Green -- A variation on newton iteration.
  ; Modified and Generalized by Tobey J. E. Reed [76437,375]
  ; The initial guess is fixed at (1,1), but the equation solved
  ; is different at each pixel ( x^3-pixel=0 is solved).
  ; Use floating point.
  ; Try P1=1.8.
  z=(1,1):
   z2=z*z, z3=z*z2,
   z=z-p1*fn1((z2-pixel)/(2.13*z2)),
    0.0001 < |z3-pixel|
  }

TobeyHalley (XYAXIS) {; Chris Green. Halley's formula applied to x^7-x=0.
  ; Modified and Generalized by Tobey J. E. Reed [76437,375]
  ; P1 usually 1 to 1.5, P2 usually zero. Use floating point.
  ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
   z5=z*z*z*z*z, z6=fn1(z*z5),
   z7=fn2(z*z6),
   z=fn2(z-p1*((z7-z))/ (fn1((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))),
    0.0001 <= |z7-z|
  }

TobeyHalleySin (XYAXIS) {; Chris Green. Halley's formula applied to sin(x)=0.
  ; Generalized by Tobey J. E. Reed [76437,375]
  ; Use floating point.
  ; P1 = 0.1 will create the picture from page 281 of Pickover's book.
  z=pixel:
   s=fn1(z), c=fn2(z)
   z=z+p1*(s/(c-(s-s)/(c*c))),
    0.0001 <= |s|
  }

TobeyLeeMandel1(XYAXIS) {; Kevin Lee
  ; Generalized by Tobey J. E. Reed [76437,375]
  z=Pixel:
   c=fn1(pixel)/z,
   c=z+2*c,
   z=fn2(z+1),
    |z|<4
  }

TobeyLeeMandel2(XYAXIS) {; Kevin Lee
  ; Generalized by Tobey J. E. Reed [76437,375]
  z=Pixel:
   c=fn1(pixel)/z,
   c=z+c,
   z=fn2(c*pixel),
    |z|<4
   }

TobeyLeeMandel3(XAXIS) {; Kevin Lee
  ; Generalized by Tobey J. E. Reed [76437,375]
  z=Pixel, c=Pixel-fn1(z):
   c=Pixel+c/z,
   z=c-fn2(z*pixel),
    |z|<4
  }

TobeyMyFractal {; Fractal Creations example
  ; Generalized by Tobey J. E. Reed [76437,375]
  c = z = 1/pixel:
   z = fn1(z) + c/p1,
    |z| <= 4
  }

TobeyPsudoMandel(XAXIS) {; davisl - try center=0,0/magnification=28
  ; Generalized by Tobey J. E. Reed [76437,375]
  z = Pixel:
   z = ((z/2.7182818)^z)*fn1(6.2831853*z) + pixel,
    |z| <= 4
  }

TobeyRichard1 (XYAXIS) {; Jm Richard-Collard
  ; Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
   sq=z*z, z=(sq*fn1(sq)+sq)+pixel,
    |z|<=50
  }

TobeyRichard2 (XYAXIS) {; Jm Richard-Collard
  ; Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
   z=1/(fn1(z*z+pixel*pixel)),
    |z|<=50
  }

TobeyRichard3 (XAXIS) {; Jm Richard-Collard
  ; Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
   sh=fn1(z), z=(1/(sh*sh))+pixel,
    |z|<=50
  }

TobeySterling(XYAXIS) {; davisl
  ; Generalized by Tobey J. E. Reed [76437,375]
  z = Pixel:
   z = (fn1((z/2.7182818)^z))/fn2(6.2831853*z),
    |z| <= 4
  }

TobeySterling2(XAXIS) {; davisl
  ; Generalized by Tobey J. E. Reed [76437,375]
  z = Pixel:
   z = ((z/2.7182818)^z)/fn1(6.2831853*z) + pixel,
    |z| <= 4
  }

TobeyWineglass(XAXIS) {; Pieter Branderhorst
  ; Modified and Generalized by Tobey J. E. Reed [76437,375]
  c = z = pixel:
   z = z * z + c,
   c = (1+flip(imag(fn1(c)))) * real(fn1(c)) / 3 + z,
    |z| <= 4 
}

Whatever_the_name(XAXIS) {
z = pixel:
z=z*z+(1/z*z)+pixel,
}

01-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
}

02-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=10
}

03-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sin(z) + c-0.14
  z=sin(z) + c-0.14
  |z| <=10
}

04-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
}

05-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
}

07-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + flip(z) + 0.33/pixel:
  z=cosxx(z) + c-0.14
  z=tanh(z) + c-0.14
  |z| <=10
}

08-Carr{
c=z=1/pixel,c=cosxx(z)+1/pixel:
z=(sqr(z*z)*sin(z/pixel)-pixel)+c,
|z| <=10
 }

09-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=z*oldz+c
oldz=temp
|z| <=4
 }

10-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=flip(z*oldz+c)
oldz=temp
|z| <=4
 }

11-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=cosxx((z*oldz+c)/pixel)
oldz=temp;
z=sqr(z) + c,
|z| <=4
 }

12-Carr{
z=c=cosxx(1/pixel):
z=cosxx(z*z) + sin(z) + c,
|z| <=10
}

13-Carr{
c=z=1/pixel, c=flip(-1.1,0.24)/pixel:
z=sqr(z) + c,
|z| <=10
 }

14-Carr{
z=c=1/pixel:
z=cosxx(c^z)/pixel;
z=(sqr(z) + 0.1) + c-1,
|z| <=10
 }

Carr-01 {; 
    z = Pixel, z = cosxx(z):
   z = z + Pixel
   z = sqr(z)
    |z| <=4          
  }

Carr-02 {
c = z = 1 / pixel
 z = cosxx(z) + c;
  |z| <= 4
  }

Carr-02A {
c=z=1/pixel:
z=sqr(z) + .33;
|z| <=4
  }

Carr-02B {
c=z=1/pixel:
z=sqr(z^z) + .33;
|z| <=4
 }

Carr-02C {
c=z=1/pixel:
z=sqr(conj(z^z^z^z^z)) + .33;
|z| <=4
 }

Carr-02D {
c=z=(1/pixel)/pixel-0.25:
z=sqr(z) + 0.33;
|z| <=4
}

Carr-02E { ; Try using Distance Estimator function on this formula
c=z=1/pixel:
z=sqr(z) + c;
z1=sqr(z) + 0.33,
|z| <=4
 }

Carr-03 {
c = z = 1 / pixel:
 z = sin((z*z) - (aa3*z)) +b,
  |z| <= (p2 + 3)
  }

Carr-04 {
c = z = 1 / pixel 
 z = cosh(z) + c;
  |z| <= 4
  }

Carr-05 {
a=(0,0) , b=(0,0): 
z=z+1
anew=sqr(a)-sqr(b)+pixel
b=2.0*a*b+p1
a=anew,
 |a|+|b| <= 4
c = z = 1 / pixel
 z = sqr(z) + c;
  |z| <= 4
  }

Carr-06 { ; was OK-03 and was modified
z = c = pixel:
z = cosxx(z)/c;
z = sin(z),
|z| <= (5 + p1)
  }

Carr-07 {; was OK-02 and was modified
         ; Edited for Fractint v. 20 by George Martin, 10/98
  z = c = 1 / pixel, k = 1 + p1:
  z = (c^z) + c
  z = cotan(z) * k
  |z| <= (5 + p2)
}

Carr-08 { ; was OK-01 and was modified
z = 0, c = 1 / pixel:
z = (c^z) + c;
z = sqr(z),
|z| <= (5 + p1)
  }

Carr-09 { ; was OK-04 and was modified
z = 0, c = cosxx(pixel):
z = sqr(z) + c,
|z| <= (5 + p1)
  }

Carr-10 {
c=z= 1/pixel:
z=(tanh(z)*tanh(1/z)*z) + c,
|z| <=(5 + p1)
  }

Carr-11 {
c=z=1/pixel:
z=sqr(z*(z+1.918)) + c;
z=sin(z*z) + c,
|z| <= 4
  }

Carr-12 {
c=z=sqr(pixel):
z=sqr(z) + 2*c;
z=sqr(z) + c,
|z| <= 4
  }

Carr-13 {; Edited for Fractint v. 20 by George Martin, 10/98
  c = z = cosxx(pixel):
  z = cosxx(z) + 2
  c = z = 1 / sqr(pixel)
  z = 1 / cosxx(z) +c
  |z| <= 4
}

Carr-14 { ; modified fnzp fnpix
z = 1 / tan(1 / pixel) +p1,
c = ((1 * (|p2|<=0) +p2) * fn2(1 / pixel) ):
z = fn1(z) * fn2(z),
 |z| <=64 
 }

Carr-15(xaxis) {; Mark Peterson modified(Zoom all the way out & look)
  z = log(pixel) + 4*c, z = cosxx(z):
 z = z + cosxx(pixel);
 z = sqr(z)
     Lastsqr <=4
}

Carr-16 {
z = 0:
z2 = z^z^z,
z = (cosxx(sqr(z-1)) ) + (sin(pixel));
 |z| <= 6
  }

Carr-17(xaxis) { ; Mark Peterson modified by Bob Carr
c = z = 1 / pixel:
z = sqr(z) +c;
z2 = sqr(z) +c,
  |z| <= 10
   }

Carr-18 {
c = z= (sqr(pixel)):
z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z));
  |z| <= 10
   }

Carr-19 {
c = z = (sqr(1 / pixel)):
z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z));
  |z| <= 10
   }

Carr-20 {
z = pixel, z = cosxx(z):
z = z + (sqr(pixel))
z = sqr (log(1 / (z)) )
  |z| <= 4
   }

Carr-21 {
z = 1 / pixel, z = cosxx(z):
z = z + (sqr(pixel))
z = sqr (log(1 / (z)) )
  |z| <= 4
   }

Carr-22 {
z = 1 / pixel, z = cosxx(z):
z = z + (sqr(pixel))
z = sqr (cosxx(1 / (z)) )
  |z| <= 4
   }

Carr-23 {
z = 1 / pixel, z = cosxx(z):
z = z + (sqr(pixel))
z = sin(cosxx(1 / (z)) )
  |z| <= 4
   }

Carr-24 { ; InvRadius-Mandel formula manipulated
c=z=1/pixel:
z=sqr(z*z) - c;
|z| <=4
 }

Carr-25 { ; Carr-24 Modified
c=z=1/pixel:
z=sqr(z) + (c-1);
|z| <= 4
  }

Carr-27 {; Carr-24 Modified
  c=z=1/pixel:
  z=sqr(z) + (c-1)*(1/4)
  |z| <=10
}

Carr-28 { ; Carr-24 Modified
c=z=1/pixel:
z=(z*z*z) + c;
|z| <= 4
 }

Carr-29 { ; Carr-24 Modified
c=z=1/pixel:
z=1-(z*z*z) + c;
|z| <= 4
 }

Carr-30 { ; Carr-24 Modified
c=z=1/pixel:
z=(z*z*z*z*z) +c;
|Z| <= 4
 }

Carr-32 { ; Carr-24 Modified
c=z=pixel:
z=(z*z*z*z*z*z) + c;
|z| <= 4
  }

Carr-34 { ; Carr-24 Modified
c=z=pixel:
z=(z*z*z*z*z*z*z) + c;
 |z| <= 8
  }

Carr-71 {
c=z=1/pixel:
z=sin(z*z) + c;
z=sin(z*z)/0.99 + c;
z=sin(z*z*z) + c,
|z| <=4
 }

Carr-72 {
c=z=1/pixel:
z=sinh(z*z) + c;
z=sinh(z*z) + c,
|z| <=10
 }

Carr-73 {
c=z=1/pixel:
z=sqr(z*z) + c;
z=sqr(z*z^z) - c,
|z| <=10
 }

Carr-74 {
c=z=1/pixel:
z=(3.334/sin(z*z)) + (c/pixel);
|z| <=4
 }

Carr-75 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c-0.33))/pixel);
|z| <=4
 }

Carr-76 {
c=z=pixel:
z=(sin(z*z)) + ((sin(c-0.33))/pixel),
|z| <=4
 }

Carr-77 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c-5.9))/pixel);
z=sqr(z) + c,
|z| <=4
 }

Carr-78 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=sqr(z) + c,
|z| <=4
 }

Carr-79 {
c=z=pixel:
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=sqr(z) + c,
|z| <=4
 }

Carr-80 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=sqr(z) + (c-1),
|z| <=4
 }

Carr-81 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=(sin(z*z)) + c,
|Z| <=4
 }

Carr-82 {
z=c=1/pixel:
z=sin(z*z) + (conj(1/pixel)),
|z| <=4
 }

Carr-83 {
z=c=1/pixel:
z=sin(z*z) + (conj(1/pixel))/(0.33/c),
|z| <=4
 }

Carr-84 {
z=c=1/pixel:
z=sin(z*z) + ((tanh(1/pixel))/(0.33/c)),
|z| <=4
 }

Carr-85 {
z=c=1/pixel:
z=sqr(z) + c;
z=sqr(z) + conj(c),
|z| <=4
 }

Carr-86 {
z=c=pixel:
z=sqr(z) + c;
z=sqr(z) + conj(c),
|z| <=4
 }

Carr-87 {
z=c=1/pixel:
z=sqr(z) + c;
z=sin(z) + c;
z=sqr(z) + conj(c),
|z| <=4
 }

Carr-88 {
z=c=1/pixel:
z=sqr(z) + sqr(c);
z=sin(z*z) + sqr(c);
z=sqr(z) + sqr(c),
|z| <=4
 }

Carr-89 {
z=c=pixel:
z=sqr(z) + sqr(c);
z=sin(z*z) + sqr(c);
z=sqr(z) + sqr(c),
|z| <=4
 }

Carr-90 {
z=c=1/pixel:
z=sqr(z) + sqr(c-5);
z=sin(z*z) + sqr(c-2);
z=sqr(z) + sqr(c-0.67),
|z| <=4
 }

Carr-92 {
z=c=1/pixel:
z=sqr(z) + sqr(c);
z=sqr(z) + sin(c);
z=sqr(z) + sin(c),
|z| <=4
 }

Carr-95 {
z=c=pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z) + sin(c);
z=sqr(z*z) + sin(c*c),
|z| <=4
 }

Carr-96 {
z=c=pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z) + sin(c^pixel);
z=sqr(z*z) + sin(c*c),
|z| <=4
 }

Carr-98 {
z=c=pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c*c),
|z| <=4
 }

Carr-99 {
z=c=pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c^pixel),
|z| <=4
 }

Carr-100 {
z=c=pixel:
z=sqr(z*z) + sqr(c^c);
z=sqr(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c^pixel),
|z| <=4
 }

Carr-101 {
z=c=pixel:
z=sqr(z*z) + sqr(c^c);
z=sin(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c^pixel),
|z| <=4
 }

Carr-102 {
z=c=pixel:
z=sqr(z*z) + sqr(c*pixel);
z=sin(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c^pixel),
|z| <=4
 }

Carr-103 {
z=c=pixel:
z=sqr(z*z) + sqr(c^pixel);
z=sin(z*z) + flip(sin(c^pixel));
z=sqr(z*z) + sin(c^pixel),
|z| <=4
 }

Carr-104 {
z=c=pixel:
z=sqr(z*z) + sqr(c^pixel);
z=sin(z*z*z) + flip(sin(c^pixel));
z=sqr(z*z*z) + sin(c^pixel),
|z| <=4
 }

Carr-105 {
z=c=pixel:
z=sqr(z) + sqr(c*c);
z=sin(z) + sin(c);
z=sqr(z) + sin(c*c),
|z| <=4
 }

Carr-106 {
z=c=pixel:
z=sqr(z) + sqr(c*c);
z=sin(z) + flip(sin(c));
z=sqr(z) + flip(c*c),
|z| <=4
 }

Carr-107 {
z=c=pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z) + sin(c);
z=sin(z*z) + sin(c),
|z| <=4
 }

Carr-107w{
z=c=1/pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z)*(z+pixel) + sin(c);
z=sin(z*z)*(z+pixel) + sin(c),
|z| <=4
 }

Carr-108 {
z=c=pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z) + sin(c);
z=sin(z*(1/z)) + sin(c*c),
|z| <=4
 }

Carr-110 {
z=c=pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z) + sin(c*c);
z=sin(z*(1/z)) + cotanh(c*c),
|z| <=4
 }

Carr-111 {
z=c=1/pixel:
z=sqr(z*z) + c;
z=sin(z*z) + sin(c*c);
z=sin(z*(1/z)) + (sqr(c + pixel)),
|z| <=4
 }

Carr-145{
z=c=sinh(pixel)/(1/pixel):
z=c^z,
|z| <=10
 }

Carr-147{
z=c=1/pixel:
z=(flip(z*z)) + c;
z=(flip(z*z)) + c,
|z| <=10
 }

Carr-149{
z=c=1/pixel:
z=sqr(flip(z*z*z)) + c;
z=sqr(flip(z*z*z)) + c,
|z| <=10
 }

Carr-150{
z=c=1/pixel:
z=sqr(flip(z*z*z)) + c;
z=sin(flip(z*z*z)) + c,
|z| <=10
 }

Carr-151{ ; Dr. Chaosbrot 1 Modified
z=c=pixel:
z=sqr(z*z) + (((sqrt(5)+1)/2)+c),
|z| <=4
 }

Carr-152{
z=c=1/pixel:
z=cosxx(flip(z*z/pixel)) + (((sqrt(5)+1)/2) + c);
z=sqr(flip(z))+c,
|z| <=4
 }

Carr-153{
z=c=1/pixel:
z=tanh(z*z/pixel)+(((sqrt(5)+1)/2)+c);
z=sqr(flip(z))+c,
|z| <=4
 }

Carr-154{
z=c=1/pixel:
z=sqr(flip(z)) + c;
z=sqr(flip(z)) + c;
z=sqr(z) + c,
|z| <=4
 }

Carr-155{
z=c=1/pixel:
z=sqr(flip(z)) + c;
z=sqr(flip(z)) + c;
z=sqr(z*z) + c,
|z| <=4
 }

Carr-156{
z=c=pixel:
z=sqr(flip(z)) + c;
z=sqr(flip(z)) + c;
z=sqr(z*z) + c,
|z| <=4
 }

Carr-157{
z=c=pixel:
z=sqr(flip(z*z)) + c;
z=sqr(flip(z*z)) + c;
z=sqr(z*z) + c,
|z| <=4
 }

Carr-158{
z=c=1/pixel:
z=sqr(flip(z)) + c/pixel;
z=sqr(flip(z)) + c/pixel;
z=sqr(z*z*z) + c,
|z| <=4
 }

Carr-159{
z=c=1/sqr(pixel):
z=sqr(z) + c;
z=sin(z) + c,
|z| <=4
 }

Carr-160{
z=c=sqr(pixel):
z=sqr(z) + c;
z=sin(z) + c,
|z| <=4
 }

Carr-161{
z=c=sqr(pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=4
 }

Carr-162{
z=c=sqr(1/pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=4
 }

Carr-163{
z=c=sin(1/pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=4
 }

Carr-164{
z=c=sin(pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=4
 }

Carr-165{
z=c=sin(pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c;
z=sqr(1/z*1/z) + c,
|z| <=4
 }

Carr-571{
z=1/conj(pixel-p1),c=sin(z/pixel)^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10
}

Carr-572{
z=1/conj(pixel-p1),c=sin(z/pixel)^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10 
}

Carr-573{
z=1/conj(pixel-p1),
c=conj(sin(z/pixel))^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10
}

Carr-574{
z=1/conj(pixel-p1),
c=conj(cos(z/pixel))*conj(z/pixel):
z=z*z+conj(c-p2),
|z| <=10
}

Carr-575{
z=1/conj(pixel-p1),
c=conj(cos(z/pixel))/conj(z/pixel):
z=z*z+conj(c-p2),
|z| <=10
}

Carr-576 {
  z=1/conj(pixel-p1)
  c=conj(cos(z/(1/pixel)))*conj(z/(1/pixel)):
  z=z*z*z+conj(c-p2)
  |z| <=10
}

Carr-577{
z=1/conj(pixel),c=fn1(1/pixel):
z=z*z+c,
|z| <=10
}

Carr-578{
z=1/conj(pixel-0.524),c=fn1(1/pixel):
z=z*z+c,
|z| <=10
}

Carr-579{
z=1/conj(pixel-0.524),c=1/sin(1/(z*z)):
z=z*z+c,
|z| <=10
}

Carr-580{
z=1/conj(pixel-0.524),c=1/sin(1/(z*z))+0.124*pixel:
z=z*z*z+conj(c),
|z| <=10
}

Carr-581{
z=1/conj(pixel-0.524),c=cosxx(1/(z*z))+0.124*pixel:
z=z*z*z+conj(c),
|z| <=10
}

Carr-582{
z=1/pixel,c=(1/pixel)^(1/pixel):
z=z*z+c,
|z| <=10
}

Carr-583{
z=1/pixel,c=(1/pixel)*(1/pixel):
z=z*z+(c-0.124),
|z| <=10
}

Carr-584{z=1/pixel,c=conj((1/pixel)*(1/pixel)):
z=z*z+(c-0.124);
z=z*z+c;
z=z*z+c,
|z| <=10
}

Carr-585{
z=1/pixel,c=conj(z*z+pixel+1/pixel)/|z|:
z=z*z+conj(c/(1/|z|)),
|z| <=10
}

Carr-586{
z=1/pixel,c=fn1(z)+1/z:
z=z*z+conj(c/(1/pixel)),
|z| <=10
}

Carr-587{
z=1/pixel,c=1/conj(1/pixel*z*(z*z-3)):
z=z*z+c,
|z| <=10
}

Carr-588{
z=1/pixel,c=tanh(1/pixel*z*conj(z*z-5)):
z=z*z+c,
|z| <=10
}

Carr-589{
z=1/pixel,c=conj(1/z*(z/pixel)-1):
z=z*z+c,
|z| <=10
}

Carr-590{
z=1/pixel,c=1/conj(z^pixel-1)/3:
z=fn1(c^pixel-3),
|z| <=10
}

Carr-591{
z=1/pixel,c=2/conj(z*(1/pixel*(pixel-1)))/5:
z=z*z+c,
|z| <=10
}

Carr-592{
z=1/pixel,c=conj(1/(1+pixel)):
z=z*z+c,
|z| <=10
}

Carr-593{ ; Distance Estimator works here.
z=1/real(pixel*pixel),c=1/pixel:
z=z*z+c,
|z| <=10
}

Carr-594{
z=1/(pixel*sin(pixel)),c=1/pixel:
z+z*z+c,
|z| <=10
}

Carr-595{
z=1/(pixel*cos(5-pixel)),c=1/pixel:
z=z*z+c,
|z| <=10
}

Carr-596{
z=1/pixel,c=pixel:
z=z*z+(1/pixel)/(0.9,-0.6),
|z*pixel/z| <=10
}

Carr-597{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c-(1/pixel),
|z| <=10
}

Carr-598{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*z+(1/pixel),
|z| <=10
}

Carr-599{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c+flip(1/pixel);
z=z*z*c+conj(1/pixel),
|z| <=10
}

Carr-600{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c+conj(1/pixel);
z=z*z*c+flip(1/pixel);
z=z*z*c+conj(1/pixel),
|z| <=10
}

Carr-601{
z=1/cos(pixel),c=1/pixel-1/|z|:
z=z*c*c+flip(1/pixel);
z=z*c*c+conj(1/pixel),
|z| <=10
}

Carr-602{
z=1/conj(pixel),c=1/cosxx(z):
z=z*z+c,
|z| <=10
}

Carr-603{
z=1/conj(pixel),c=1/cosxx(z):
z=z*z+flip(c-0.524),
|z| <=10
}

Carr-604{
z=1/conj(pixel),c=1/cosxx(z*z):
z=z*z*z+flip(c*c-0.924),
|z| <=10
}

Carr-605{
z=1/conj(pixel),c=1/cos(z*z):
z=z*z*z+cosxx(c*c-0.124),
|z| <=10
}

Carr-606{
z=1/flip(pixel),c=1/cos(z*z):
z=z*z*z+conj(flip(c-0.124)),
|z| <=10
}

Carr-607{
z=1/flip(pixel),c=1/cos(z*z*z):
z=z*z*z+flip(conj(c-0.624)),
|z| <=10
}

Carr-608{
z=1/flip(pixel),c=1/cos(z*z*z):
z=z*z+c,
|z| <=10
}

Carr-609{
z=1/flip(pixel),c=1/cotanh(z*z*z):
z=z*z+c,
|z| <=10
}

Carr-610{
z=1/pixel,c=1/(sqr(pixel)/z*z+pixel):
z=z*z+c,
|z| <=10
}

Carr-611{ ; Distance Estimator works here.
z=1/pixel,c=1/(sqr(pixel)/z*z+pixel):
z=conj(z*z+c),
|z| <=10
}

Carr-612{
z=1/conj(pixel),c=1/(sqr(pixel)/z*z+pixel):
z=conj(z*z+c),
|z| <=10
}

Carr-613{
z=1/pixel,c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
}

Carr-614{
z=1/pixel,c=cos(-2.6,0.3):
z=z*z+(c-0.199),
|z| <=10
}

Carr-615{
z=1/pixel,c=cos(-2.6,-0.36):
z=z*z+(c-0.199),
|z| <=10
}

Carr-616{
z=1/pixel,c=cos(-2.115,-0.369):
z=z*z+(c-0.09),
|z| <=10
}

Carr-617{
z=1/pixel,c=cos(-2.095,-0.369):
z=z*z+(c-0.09),
|z| <=10
}

Carr-618{
z=1/pixel,c=cos(-2.9,-0.3):
z=z*z+(c-0.015),
|z| <=10
}

Carr-619{
z=tanh(1/pixel),c=cos(-2.9,-0.3):
z=z*z+(c-0.09815),
|z| <=10
}

Carr-620{
z=tanh(1/pixel-0.124),c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
}

Carr-621{
z=cotanh(1/pixel-0.124),c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
}

Carr-622{
z=cosh(1/pixel-0.224),c=cos(-2.6231,0.3124):
z=z*z+c,
|z| <=10
}

Carr-623{
z=cosh(1/pixel-0.224),c=sin(-2.6231,0.3124):
z=z*z+c,
|z| <=10
}

Carr-624{
z=flip(1/pixel-0.224),c=sin(cos(-2.5231,0.3124)):
z=z*z+c,
|z| <=10
}

Carr-625{
z=flip(1/pixel-0.324),c=sin(cos(-2.3231,0.3124)):
z=z+z+c,
|z| <=10
}

Carr-626{
z=flip(1/pixel-0.324),c=sin(cosxx(-2.3064,0.3124)):
z=z*z+c,
|z| <=10
}

Carr-627{
z=cosxx(1/pixel-0.324),c=sin(cosxx(-2.6064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
}

Carr-628{
z=cosxx(sin(1/pixel-0.324)),c=sin(cosxx(-2.6064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
}

Carr-629{
z=cosxx(sinh(1/pixel-0.394)),c=sin(cosxx(-2.9064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
}

Carr-630{
z=cosxx(sinh(1/pixel-0.394)),c=sin(1/cosxx(-2.5064,0.3124)):
z=(z-0.124)*(z+0.287)+(c-0.024),
|z| <=10
}

Carr-631{
z=cosxx(sinh(1/pixel-0.394)),c=sin(1/tanh(-2.9064,-0.1124)):
z=(z-0.124)*(z-0.287)+(c-0.124),
|z| <=10
}

Carr-739{
z=1/pixel,c=(1/pixel)/2/(z-2.5)^(1/pixel):
z=z*z+c,
|z| <=10
}

Carr-740{
z=1/pixel,c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
z=z*z+(c-0.4),
|z| <=10
}

Carr-741{
z=1/pixel-0.75,c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
z=z*z+(c-0.489),
|z| <=10
}

Carr-742{
z=1/pixel/1.75,c=(1/pixel)/2/(z-2.5)^(pixel-1)+2:
z=z*z+c,
|z| <=10
}

Carr-743{
z=c*((1.5,0.7)*((sqrt5+1)/2)),c=1/pixel:
z=z*z+flip(c+0.124),
|z| <=10
}

Carr-744{
z=c*((1.5,0.7)*((sqrt5+1)/2)),c=1/pixel-0.4:
z=z*z+flip(c+0.124),
|z| <=10
}

Carr-745{
z=1/flip(pixel),c=1/flip(pixel+(0.6,0.3)):
z=z*z+flip(c),
|z| <=10
}

Carr-746{
z=c=1/pixel:
z=z*z+c,
real(z)<2.124
}

Carr-747{
z=c=1/pixel:
z=z*z+c,
abs(z)<2.124
}

Carr-748{
z=sin(1/pixel),c=sin(|1/pixel|):
z=z*z+c,
|z| <=10
}

Carr-749{
z=sin(1/pixel),c=sin(|1/pixel|):
z=z*z+c,
real(z)<2.124
}

Carr-750{
z=sin(1/pixel),c=sin(|1/pixel|):
z=((z*z)+0.004)+c,
real(z)<2.124
}

Carr-751{
z=sin(1/pixel),c=cosxx(|1/pixel|):
z=((z*z)+0.009)+(c-0.124),
real(z)<2.124
}

Carr-752{
z=conj(1/pixel),c=conj(sqr(|1/pixel|)):
z=z*z+c,
real(z)<2.124
}

Carr-753{
z=c=1/pixel:
z=(z*z+(c+(c-1)))/2,
real(z)<2.124
}

Carr-754{
z=conj(1/pixel),c=1/pixel:
z=(z*z+(c+(c-1)))/2,
real(z)<2.124
}

Carr-755{
z=conj(1/pixel-0.124),c=1/pixel:
z=conj(1.124)*(z*z+c)+real(c*(1/pixel-0.5)),
abs(z)<2.124
}

Carr-756{
z=conj(1/pixel-0.124),c=cosxx(z*z)/sin(z/(1/pixel)):
z=(z*z+c)/2,
abs(z)<2.124
}

Carr-757{
z=conj(1/pixel-0.124),c=z*log(1/pixel)/(1/z*1/z)+0.124:
z=z*z+c,
abs(z)<2.124
}

Carr-758{
z=conj(1/pixel-0.124),c=z*log(1/pixel)/(1/z*1/z)+0.724:
z=z*z+c,
abs(z)<2.124
}

Carr-759{
z=1/(((sqrt5+1)/2)*pixel),c=sin(1/(z*z)):
z=z*z+c,
abs(z)<2.124
}

Carr-760{
z=((sqrt5+1)/2)*pixel,c=sin(1/(z*z)):
z=1/(z*z+c),
abs(z)<2.124
}

Carr-761{
z=((sqrt5+1)/2)*pixel,c=sqr(1/(z*z)):
z=1/(z*z+c-1.124),
abs(z)<2.124
}

Carr-762{
z=((sqrt5+1)/2)*pixel,c=sqr(1/(z*z)):
z=1/(z*z+c),
abs(z)<2.124
}

Carr-763{
z=((sqrt5+1)/2)*(1/pixel),c=(1/(z*z)):
z=(z*z+c)/c/z,
abs(z)<2.124
}

Carr-764{
z=((sqrt5+1)/2)*(1/pixel),c=(sqr(1/(z*z)))/pixel*z:
z=sqr(z*z+c),
real(z)<2.124
}

Carr-765{
z=1/pixel-0.05,c=1/pixel-0.1:
z=(z-0.3)*(z-0.25)+c,
abs(z/(1/pixel))<2.124
}

Carr-766{
z=1/pixel-0.05,c=1/pixel-0.1:
z=(z-0.3)*(z-0.35)+c+0.224,
abs(z*z/flip(pixel))<2.524
}

Carr-767{ ; This is a modification of a formula I saw somewhere. 
         ;If you know who's it is please let me know.
c=z=1/(pixel^1.245):
z=fn1(z^1.245)+fn2(c),
abs(z)<2.124
}

Carr-768{ ; Ditto above.
c=z=1/(pixel^1.245):
z=conj(z^2.245)+fn2(c),
abs(z)<2.124
}

Carr-769{
c=z=1/(pixel^2.45):
z=(z*z+c)+0.524,
abs(z)<2.124
}

Carr-770{
z=c=fn2(1/pixel):
z=(z*z+c-0.164)/0.3,
|z| <=10
}

Carr-771{
c=z=fn2(1/pixel):
z=(z*z+c-0.164)/0.75,
|z| <=10
}

Carr-772{
z=sqr(sinh(c)),c=sqr(sinh(1/pixel)):
z=z*z-flip(c),
|z| <=10
}

Carr-773{
z=c=sqr(conj(1/pixel)):
z=z*z+c-0.324,
|z| <=10
}

Carr-774{
z=c=sqr(cotan(1/pixel)):
z=z*z+c-0.724,
|z| <=10
}

Carr-775{ ; Nice images produced
z=c=sqr(sqr(1/pixel)):
z=z*z+c-0.724,
|z| <=10
}

Carr-776{
z=c=sqr(sqr(1/pixel+0.09)):
z=(z-0.09)*(z-0.09)+conj(c-0.724),
|z| <=10
}

Carr-777{
z=c=sqr(sqr(1/pixel+0.09)):
z=(z-0.09)*(z-0.09)+flip(c-0.9245),
|z| <=10
}

Carr-778{
z=c=sqr(sqr(1/pixel)):
z=(z*z+c-0.724)-0.01,
|z| <=10
}

Carr-779{
z=c=sqr(sqr(1/pixel)):
z=(z*z+c-0.524)-0.01,
|z| <=10
}

Carr-780{
z=c=sqr(sqr(sqr(1/pixel))):
z=((z*z+c-0.524)-0.01)/0.855,
|z| <=10
}

Carr-781{
z=c=sqr(sqr(cosxx(1/pixel))):
z=z*z+c,
|z| <=10
}

Carr-782{
z=sqr(sqr(cosxx(1/pixel))),c=sqr(sqr(1/pixel)):
z=z*z+c,
|z| <=10
}

Carr-783{
z=sqr(sqr(sqr(1/pixel))),c=sqr(sqr(1/pixel)):
z=z*z+(c-0.024);
z=z+z+c+1/pixel,
|z| <=10
}

Carr-784{
z=sqr(sqr(sqr(1/pixel+0.006))),c=sqr(sqr(1/pixel-0.009)):
z=z*z+(c-0.084);
z=z+z+c+1/pixel-0.03,
|z| <=10
}

Carr-785{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=z^z*z+flip(c*c),
|z| <=10
}

Carr-786{;Very interesting image poosibilities !!
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+flip(c*c),
|z| <=10
}

Carr-787{;Ditto above
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+conj((c+0.124)*(c+0.124)),
|z| <=10
}

Carr-788{
Z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+tanh((c+0.129)*(c-0.129)),
|z| <=10
}

Carr-789{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+cotanh((c+0.129)*(c+0.129)),
|z| <=10
}

Carr-790{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+tanh((c-0.129)*(c+0.129)),
|z| <=10
}

Carr-791{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+tanh((c-0.229)*(c+0.129)),
|z| <=10
}

Carr-792{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=(z*z+c-0.724)-0.01,
|z| <=10
}

Carr-793{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=(z*z+c-0.724)+0.01;
z=(z*z+c-0.724)-0.01,
|z| <=10
}

Carr-794{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=((z*z+c-0.724)+0.07)+0.03;
z=(z*z+c-0.724)/0.67,
|z| <=10
}

Carr-795{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=(z*z+c-0.724)+0.07;
z=(z*z+c-0.724)/0.87,
|z| <=10
}

Carr-796{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=(pixel-z*z)/(pixel-c*c),
|z| <=10
}

Carr-797{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=sin((pixel-z*z)/(pixel-c*c)),
|z| <=10
}

Carr-798{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=((pixel-z*z)/(pixel-c*c))-0.3,
|z| <=10
}

Carr-799{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=((pixel-z*z)/(pixel-(c-0.824)*(c-0.824)))-0.375,
|z| <=10
}

Carr-800{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))-0.375,
|z| <=10
}

Carr-801{
z=sqr(sqr(sqr(1/pixel-0.006)))-0.01,c=sqr(sqr(1/pixel-0.009)):
z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624))),
|z| <=10
}

Carr-802{;***
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=z*z+c;
z=z/pixel*z*z+c/flip(c/pixel*c+z)-1/pixel,
|z| <=10
}

Carr-803{
z=1/conj(pixel)+0.1/pixel,c=1/conj(conj(pixel))+1/pixel+z:
z=(1/z^z*z/7+z*z-c)/1.3,
|z| <=10
}

Carr-804{ ; Modified SJMAND01
z=1/(real(pixel)+flip(imag(pixel)*1.224)),
c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
z=z*z+c,
|z| <=10
}


