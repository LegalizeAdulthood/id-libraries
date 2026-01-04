************* Mandelbrot to Julia Titration FRM. *************
========================  RSQ-TIT-MJ.FRM  ==============================
(The following formula may be placed in the Fractint.frm and used within 
Fractint by using Fractint's  command [T] followed by [formula] and then 
selecting RSQ-TIT-MJ)
=========================Start copy on next line =======================

RSQ-TIT-MJ {; P1 is the Mandelbrot/Julia coordinates (real & imaginary)
  ; P2(real [decimal]) is the % remaining in Mandelbrot Space (0.13 = 13%)
  J=P1 ;
   M=P2 ; (Only the REAL NEED BE USED... quite different if IMAGINARY GIVEN
    K=1-M ; % Julia given from Mandelbrot
      z = Pixel:
  z = (M*(sqr(z)+pixel))+(K*(sqr(z)+J)), |z| <= 4     
  ;Equation entries of 1st image: p1 real=-0.05; p1 imaginary=0.65
                                  p2 real= 0.1 ; p2 imaginary=0 (always)
           }

==== End copy at the above line, then insert copy into Fractint.frm ====
===          Permission for Distribution of this material is         ===
===           granted for personal, non-reimbursed use ONLY.         ===
========================================================================
An example of the type of fractal generated with RSQ-TIT-MJ.FRM may be seen
by DLing the 20 animated fractal images contained in the self-extracting
MMGIF <RSQTITMJ.EXE>.  The program requires a SBPro, or equal soundboard.

ABOUT  <RSQ-TIT-MJ.FRM>

Back in 1991 I wrote a fractint formula which generates Fractals which are
part Mandelbrot, and part Julia in origin. I generated a number of animations
using this formula. 

Unfortunately, back then the 16 mhz 386's were painfully slow generating this

form of fractal, and thus, put the formula aside. Recently, I had my memory
refreshed when I found a copy of an old (Jan. 9, 1996) Fractint.frm. I tried
in on a pentium, and find it generates quite fast enough for me....

The formula requires one set of coordinates, which serves for both the Julia
and Mandelbrot, and a percentage (0.00 through 1.00) of Mandelbrot to be
used.

Example:
1/ If the formula were used with percentage set at 1.00, the image is
a classic Mandelbrot. If set at 0.00, a pure classic Julia.

If you picked coordinates of the "Sea Horse" area, say -0.75, 0.15,
and run the formula using a series of 10% (0.10) steps from 1.00 through 0.00
to generate a series of fractals, what you will see is the coordinate
location
progressively enlarge, and flow into the final formation of a full Julia.

Given the structure of Fractint's commands, relative to formula fractals,
another
approach (used to generate the MMGIF <RSQTITMJ.EXE> cited above) is easier.
The next example is exactly that used to generate the fractals used.

2/ Fractals used in <RSQTITMJ.EXE>:

   a/ Using an ASCII editor to insert RSQ-TIT-MJ.FRM into Fractint.frm 
(save a copy of the original Fractint.frm before doing so).

   b/ Start Fractint; pick screen resolution; hit [T], then select <formula>.
The RSQ-TIT-MJ.FRM will be one of the options found there.

   c/ Set p1 (real)      = -0.05
      Set p1 (imaginary) =  0.65
      Set p2 (real)      =  0.05    N.B. This is 95% Julia, 5% Mandelbrot
      Set p2 (imaginary) =  0.0     (this is not used, and should always be
0.0)

   d/ The distorted Mandelbrot-like fractal results. Notice that most
interesting
action is located near the coordinates used (-0.5, 0.65 = Center Top)

   e/ Use you mouse to select an area inclosing the interesting area at the
top
RSQTITMJ.EXE's data was = Crt. -0.3755426   0.7703497   Mag.   1.7181998e+000

   f/ Once your new fractal of the detailed area you pick has finished
rendering:
      Hit [Z] and change the p1(real) from -0.05, to -0.06, then hit enter.

   g/ After each fractal generates (and is saved) continue the actions in
"f/"
obtaining 1% step: -0.07, -0.08, -0.09, -0.10, -0.11, etc. until -0.25 is
reached.

   h/ The 20 images, thus generated, all have the "same" frame coordinates 
(all you did was move the "central influence area"). So, the 20 frames are 
20 consecutive animation frames.

This is just an example. Most of the FLICs I made have maintained the p1
coordinates,
and varied the percentage variable p2(real) from 1.00 through 0.00, but
generally,
the most interest area is from 25% to 1% (0.25 to 0.01).

Enjoy exploring........ Ron Ray [R²]
Compuserve 70673,1105        
http://ourworld.compuserve.com/homepages/RonRay/
