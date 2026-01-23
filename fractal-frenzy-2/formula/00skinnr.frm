
 comment = { SKINNER.FRM }

 Zexpe (XAXIS) = {
      s = exp(1.,0.), z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

 Zexpe2 (XAXIS) = {
      s = exp(1.,0.), z = Pixel:
      z = z ^ s + z ^ (s * pixel), |z| <= 100
   }

 Ze2 (XAXIS) = {
      s1 = exp(1.,0.),
      s = s1 * s1,
      z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

 comment = {  s = log(-1.,0.) / (0.,1.)   is   (3.14159265358979, 0.0 }

 Exipi (XAXIS) = {
      s = log(-1.,0.) / (0.,1.), z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

 Fzpcopcs  {z = pixel, f = pixel ^ (1. / cosxx(pixel) ):
                        z = cosxx (z)  + f, |z| <= 50}

 Fzpcopct  {z = pixel, f = pixel ^ (cosxx(pixel) / sin(pixel) ):
                        z = cosxx (z)  + f, |z|<= 50}

 Fzpcophc  {z = pixel, f = pixel ^ (1. / cosh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopsh  {z = pixel, f = pixel ^ (sinh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopsq  {z = pixel, f = pixel ^ (sqr(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopth  {z = pixel, f = pixel ^ (sinh(pixel) / cosh(pixel) ):
                        z = cosxx (z)+f,|z|<= 50}

 Fzppcos   {z = pixel, f = cosxx (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcota  {z = pixel, f = sin(pixel) / cosxx(pixel):
                       z = cosxx (z)  + f, |z|<= 50}

 Fzppcoth  {z = pixel, f = sinh(pixel) / cosh(pixel):
                       z = cosxx (z)+f,|z|<= 50}

 Fzpcoseh  {z = pixel, f = 1. / sinh(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppchco  {z = pixel, f = cosxx (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Zppchco8  {z = pixel, f = cosxx (pixel):
                       z = cosh (z) + f, |z|<=8192}

 Fzppchex  {z = pixel, f = exp (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppchsi  {z = pixel, f = sin (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppchsq  {z = pixel, f = sqr (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppcoch  {z = pixel, f = cosh (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcocoh  {z = pixel, f = 1. / cosh(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcoct  {z = pixel, f = cosxx(pixel) / sin(pixel):
                       z = cosxx (z)  + f, |z|<= 50}

 Fzppcohs  {z = pixel, f = sinh (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcolo  {z = pixel, f = log (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppexch  {z = pixel, f = cosh (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppexsh  {z = pixel, f = sinh (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppsich  {z = pixel, f = cosh (pixel):
                       z = sin (z)  + f, |z| <= 50}

 Fzppsish  {z = pixel, f = sinh (pixel):
                       z = sin (z)  + f, |z| <= 50}

 Fzppsisq  {z = pixel, f = sqr (pixel):
                       z = sin (z)  + f, |z| <= 50}

 Fzpcopch  {z = pixel, f = pixel ^ (cosh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcope  {z = pixel, f = pixel ^ (exp(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcopr  {z = pixel, f = pixel ^ (1. / pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcophs  {z = pixel, f = pixel ^ (1. / sinh(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopta  {z = pixel, f = pixel ^ (sin(pixel) / cosxx(pixel) ):
                        z = cosxx (z)  + f, |z|<= 50}

 Fzppcoht  {z = pixel, f = cosh(pixel) / sinh(pixel):
                       z = cosxx (z)+f,|z|<= 50}

 Fzppcops  {z = pixel, f = pixel ^ (sin(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzpcopht  {z = pixel, f = pixel ^ (cosh(pixel) / sinh(pixel) ):
                       z = cosxx (z)+f,|z|<= 50}

 Fzpcopse  {z = pixel, f = pixel ^ (1. / sin(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppchsh  {z = pixel, f = sinh (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppcocs  {z = pixel, f = 1. / cosxx(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcoex  {z = pixel, f = exp (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcopl  {z = pixel, f = pixel ^ (log(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcopo  {z = pixel, f = (pixel) ^ (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcore  {z = pixel, f = 1. / (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcose  {z = pixel, f = 1. / sin(pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcosh  {z = pixel, f = cosh (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppcosi  {z = pixel, f = sin (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcosq  {z = pixel, f = sqr (pixel):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppcosr  {z = pixel, f = (pixel) ^ 0.5:
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppexp   {z = pixel, f = exp (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppexsq  {z = pixel, f = sqr (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppshex  {z = pixel, f = exp (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppsico  {z = pixel, f = cosxx (pixel):
                       z = sin (z)  + f, |z| <= 50}

 Fzppsiex  {z = pixel, f = exp (pixel):
                       z = sin (z)  + f, |z| <= 50}

 Fzppsinh  {z = pixel, f = sinh (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppcopc  {z = pixel, f = pixel ^ (cosxx(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}

 Fzppchlo  {z = pixel, f = log (pixel):
                       z = cosh (z) + f, |z| <= 50}

 Fzppexco  {z = pixel, f = cosxx (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppexlo  {z = pixel, f = log (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppexsi  {z = pixel, f = sin (pixel):
                       z = exp (z)  + f, |z| <= 50}

 Fzppshch  {z = pixel, f = cosh (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppshco  {z = pixel, f = cosxx (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppshlo  {z = pixel, f = log (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppshsi  {z = pixel, f = sin (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppshsq  {z = pixel, f = sqr (pixel):
                       z = sinh (z) + f, |z| <= 50}

 Fzppsqlo  {z = pixel, f = log (pixel):
                       z = sqr (z)  + f, |z| <= 50}

 Fzppsqsh  {z = pixel, f = sinh (pixel):
                       z = sqr (z)  + f, |z| <= 50}

 Fzppsqsi  {z = pixel, f = sin (pixel):
                       z = sqr (z)  + f, |z| <= 50}

 Leeze (XAXIS) = {     s = exp(1.,0.), z = Pixel, f = Pixel ^ s:
                       z = cosxx (z) + f, |z| <= 50 }

 comment { version 13.0:}
 LambdaLog(XAXIS) {
      z = pixel, c = log(pixel):  
         z = c * sqr(z) + pixel, 
      |z| <= 4 
   }

 comment { version 15.1:}
 CGNewtonSinExp (XAXIS) {
        z=pixel:
        z1=exp(z);
        z2=sin(z)+z1-z;
        z=z-p1*z2/(cos(z)+z1), .0001 < |z2|
   }

 OldManowar (XAXIS) {
           z0 = 0,
           z1 = 0,
         test = p1 + 3,
           c = pixel :
               z = z1*z1 + z0 + c;
               z0 = z1;
               z1 = z,  |z| < test }

 comment { version 15.1:}
 OldHalleySin (XYAXIS) {
        z=pixel:
        s=sin(z);
        c=cosxx(z);
        z=z-p1*(s/(c-(s*s)/(c+c))),
        0.0001 <= |s|
   }

 comment { version 15.1:}
 OldCGNewtonSinExp (XAXIS) {
        z=pixel:
        z1=exp(z);
        z2=sin(z)+z1-z;
        z=z-p1*z2/(cosxx(z)+z1), .0001 < |z2|
   }

 comment { version 15.1:}
 OldNewtonSinExp (XAXIS) {; Chris Green
  ; Newton's formula applied to sin(x)+exp(x)-1=0.
  ; Use floating point.
  z=pixel:
   z1=exp(z)
   z2=sin(z)+z1-1
   z=z-p1*z2/(cosxx(z)+z1),
    .0001 < |z2|
  }

 comment { some of the following are included here because
           BAILOUT=3 is still not supported}

 ScottLPC(XAXIS) { z = pixel, TEST = (p1+3): z = log(z)+cosxx(z), |z|<TEST }

 ScottLPS(XAXIS) { z = pixel, TEST = (p1+3): z = log(z)+sin(z), |z|<TEST }

 ScottLTC(XAXIS) { z = pixel, TEST = (p1+3): z = log(z)*cosxx(z), |z|<TEST }

 ScottLTS(XAXIS) { z = pixel, TEST = (p1+3): z = log(z)*sin(z), |z|<TEST }

 ScottSIC(XYAXIS) { z = pixel, TEST = (p1+3): z = sqr(1/cosxx(z)), |z|<TEST }

 ScSkCosH(XYAXIS) { z = pixel, TEST = (p1+3): z = cosh(z) - sqr(z), |z|<TEST }

 ScSkLMC(XAXIS) { z = pixel, TEST = (p1+3): z = log(z) - cosxx(z), |z|<TEST }

 ScSkLMS(XAXIS) { z = pixel, TEST = (p1+3): z = log(z) - sin(z), |z|<TEST }

 ScSkZCZZ(XYAXIS) { z = pixel, TEST = (p1+3): z = (z*cosxx(z)) - z, |z|<TEST }

comment {
This file includes the formulas required to support the file
RCLPAR.PAR.

In addition, I have included a number of additional formulas 
for your enjoyment <G>.

Ron Lewen
CIS: 76376,2567 

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

{ Spectacular! }
   FractalFenderC(XAXIS_NOPARM) {z=p1,x=|z|:
       (z=cosh(z)+pixel)*(1<x)+(z=z)*(x<=1),
       z=sqr(z)+pixel,x=|z|,
       x<=4 }

   SpecC(XAXIS_NOPARM) {z=p1,x=|z|:
       (z=fn1(z)+pixel)*(1<x)+(z=z)*(x<=1),
       z=fn2(z)+pixel,x=|z|,
       x<=4 }

 Silverado(XAXIS) {; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = Pixel, zz=z*z, zzz=zz*z, z = (1.-p1)*zz + (p1*zzz), test = (p2+4)*(p2+4): ;
   z = z + Pixel
   zsq = z*z
   zcu = zsq*z
   z = (1.-p1)*zsq + p1*zcu,
   |z| <= test
  }

 OldSilverado(XAXIS) {; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = Pixel, zz=z*z, zzz=zz*z, z = (1.-p1)*zz + (p1*zzz), test = p2+4: ;
   z = z + Pixel
   zsq = z*z
   zcu = zsq*z
   z = (1.-p1)*zsq + p1*zcu,
   |z| <= test
  }

 comment = { Moire Tetrated Log - Improper Bailout }

 TLog (XAXIS) = {
        z = c = log(pixel):
                z = c ^ z,
                    z <= (p1 + 3)
        }

 comment = { Tetrated Hyperbolic Sine - Improper Bailout }

 TSinh (XAXIS) = {
        z = c = sinh(pixel):
                z = c ^ z,
                    z <= (p1 + 3)
        }

 DrChaosbrot2(xyaxis)   { ;more phi

 z = c = pixel:
 z = sqr(z) + (((sqrt 5 + 1)/2)+c)
 |z| <= 4;
 }

phoenix_m { ; Mandelbrot stye map of the Phoenix curves
   z=x=y=nx=ny=x1=y1=x2=y2=0:
   x2 = sqr(x), y2 = sqr(y),
   x1 = x2 - y2 + real(pixel) + imag(pixel) * nx,
   y1 = 2 * x * y + imag(pixel) * ny,
   nx=x, ny=y, x=x1, y=y1, z=x + flip(y),
   |z| <= 4
   }

 ScottSIS(XYAXIS) { z = pixel, TEST = (p1+3): z = sqr(1/sin(z)), |z|<TEST }

M-SetInNewton(XAXIS) {; use float=yes
                      ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = pixel,  cminusone = c-1:
  oldz = z,  nm = 3*c-2*z*cminusone, dn = 3*(3*z*z+cminusone),
  z = nm/dn+2*z/3,   |(z-oldz)|>=|0.01|
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

   bizarre (xaxis) =   {
        (x<10)*(z=sqr(z)+pixel),
        (10<=x)*(x<20)*(z=exp(z)+pixel), (20<=x)*(z=log(z)+pixel),
        x=x+1, |z|<=4
        }

Newton_poly { ; Tim Wegner - use float=yes
   ; fractal generated by Newton formula z^3 - 3z
   z = pixel, z2 = z*z, z3 = z*z2:
   z = (2*z3) / (3*z2 - 3);
   z2 = z*z;
   z3 = z*z2,
  .004 <= |z3 - 3*z|
  }

MandelbrotInNewton(XAXIS) {; use float=yes: from CAL v4.0 by Tim Harris
  z = 0,  c = pixel,  cminusone = c-1:
  oldz = z,
  nm = 3 * c-2 * z * cminusone,
  dn = 3 * (3 * z * z + cminusone),
  z = nm/dn + 2 * z/3,
  |(z-oldz)|>=|0.01|
 }

SJMAND01 {;Mandelbrot
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=z*z+c, |z|<=64}

 ZTOZ (XAXIS) = {
      z = Pixel:
      z = z ^ z + pixel, |z| <= 100
   }

mongo-01 {
   z = c = pixel:
   z = p1 * fn1(z^z + c) + c/z,
   |z| <= p2
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

3RDIMFRAME-ROBERT {; Ron Barnett, 1994
              ; floating point required
	z=p1*real(pixel)+flip(imag(pixel)),
	c=p2+real(pixel)+flip(imag(pixel)*p1):
	z=z*z*z/5+z*z+c, |z|<=100}

Primal {; Rollo Silver
  ; Select p1 such that 0. <= p1 <= 1.
  z = c = Pixel, t = real(p1), test = (p2+10)*(p2+10):
   zsq = z*z
   zcu = zsq*z
   z = (1.-t)*zsq + t*zcu + c
   |z| <= test
  }
