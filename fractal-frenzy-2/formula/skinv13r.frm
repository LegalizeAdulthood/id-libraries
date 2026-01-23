
 comment = { SKINV13R.FRM }

 ScSkSin(XAXIS) { z = pixel, TEST = (p1+3): z = sin(z) - sqr(z), |z|<TEST }

 ScSkSinH(XAXIS) { z = pixel, TEST = (p1+3): z = sinh(z) - sqr(z), |z|<TEST }

 ScSkCos(XYAXIS) { z = pixel, TEST = (p1+3): z = cosxx(z) - sqr(z), |z|<TEST }
 
 ScSkCosH(XYAXIS) { z = pixel, TEST = (p1+3): z = cosh(z) - sqr(z), |z|<TEST }

 ScSkLMC(XAXIS) { z = pixel, TEST = (p1+3): z = log(z) - cosxx(z), |z|<TEST }
 
 ScSkLMS(XAXIS) { z = pixel, TEST = (p1+3): z = log(z) - sin(z), |z|<TEST }
 
 ScSkZSZZ(XAXIS) { z = pixel, TEST = (p1+3): z = (z*sin(z)) - z, |z|<TEST }

 ScSkZCZZ(XYAXIS) { z = pixel, TEST = (p1+3): z = (z*cosxx(z)) - z, |z|<TEST }

 comment = [ --------------------------------------------------------------- }

 comment = { Mandelbrot form 1 of the Tetration formula }

 MTet (XAXIS) {
   z = pixel:
       z = (pixel ^ z) + pixel,
           |z| <= (P1 + 3)
 }

 comment = { Mandelbrot form 2 of the Tetration formula }

 AltMTet (XAXIS) {
   z = 0:
       z = (pixel ^ z) + pixel,
           |z| <= (P1 + 3)
 }

 comment = { Julia form 1 of the Tetration formula }

 JTet (XAXIS) {
   z = pixel:
       z = (pixel ^ z) + P1,
           |z| <= (P2 + 3)
 }

 comment = { Julia form 2 of the Tetration formula }

 AltJTet (XAXIS) {
   z = P1:
       z = (pixel ^ z) + P1,
           |z| <= (P2 + 3)
 }

 comment = [ --------------------------------------------------------------- }

 comment = { Tetrated Sine - appears to be identical with a horizontally
                             shifted Tetrated Cosine }

 TSin (XAXIS) = {
        z = c = sin(pixel):
                z = c ^ z,
                   |z| <= (p1 + 3)
        }

 comment = { Tetrated Hyperbolic Sine }

 TSinh (XAXIS) = {
        z = c = sinh(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated Hyperbolic Cosine }

 TCosH (XAXIS) = {
        z = c = cosh(pixel):
                z = c ^ z,
                   |z| <= (p1 + 3)
        }

 comment = { Tetrated Square Root }

 TSqr (XYAXIS) = {
        z = c = sqr(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated Exponential }

 TExp (XAXIS) = {
        z = c = exp(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated Log }

 TLog (XAXIS) = {
        z = c = log(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated (Log * Square Root) }

 TLSQ (XAXIS) = {
        z = c = log(pixel) * sqr(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated (Sinh * Cosh) }

 TSHCH (XAXIS) = {
        z = c = sinh(pixel) * cosh(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated (Sin * Sinh) }

 TSSH (XYAXIS) = {
        z = c = sin(pixel) * sinh(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated (Exp * Log) }

 TEL (XAXIS) = {
        z = c = exp(pixel) * log(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated Square - Looks almost identical to square root! }

 Tsq (XYAXIS) = {
        z = c = pixel * pixel:
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 comment = { Tetrated (square root of the log time the sine squared) }

 TSLPS2 (XAXIS) = {
        z = c = sqr( log(pixel) ) * sin(pixel) * sin(pixel):
                z = c ^ z,
                    |z| <= (p1 + 3)
        }

 SkMandelSine (XYAXIS) { z = Pixel:  z = sin(z) * pixel, |z| <= (p1 + 3) }
 SkMandelCosine(XYAXIS) { z = pixel:  z = cosxx(z) * pixel, |z| <= (p1 + 3) }
 SkMandelHypSine(XYAXIS) { z = pixel:  z = sinh(z) * pixel, |z| <= (p1 + 3) }
 SkMandelHypCosine(XYAXIS) { z = pixel: z = cosh(z) * pixel, |z| <= (p1 + 3) }

 comment = [ --------------------------------------------------------------- }

 Cubic {
          p = pixel,
       test = p1 + 3,
        px3 = 3 * p,
         pp = p * p,
        pp1 = pp + 1,
       ppm2 = pp - 2,
          a = pp1 / px3,
         aa = a * a,
        aa3 = aa * 3,
        aaa = aa * a,
       aaa2 = 2 * aaa,
        pdp = ppm2 / px3,
          b = aaa2 + pdp,
          z = 0 - a :
               zz = z * z;
              zzz = zz * z;
             aa3z = aa3 * z;
              zma = zzz - aa3z;
                z = zma + b,  |z| < test }

 Manowar (XAXIS) {
           z0 = 0,
           z1 = 0,
         test = p1 + 3,
           c = pixel :
               z = z1*z1 + z0 + c;
               z0 = z1;
               z1 = z,  |z| < test }

 comment = [ --------------------------------------------------------------- }

 InvCosSq (XAXIS) {
           z = pixel,
        test = (p1+3):
               z1 = cosxx(z) * cosxx(z);
              zde = 1 +  (imag(z1)*imag(z1) );
                z = (real(z1) / zde) - (imag(z1) / zde),   |z| < test }

 comment = [ --------------------------------------------------------------- }

 BugInvCosSq (XAXIS) {
           z = pixel,
        test = (p1+3):
               z1 = cosxx(z) * cosxx(z);

 comment = [ --------------------------------------------------------------- }



