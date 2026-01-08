
comment {
This formula file davwierd.frm for FRACTINT was created by David Walter
[100013,2775] 1 Jan 96.  If you manage to use them commercially please share
some of the income with me!!  The parameter file davweird.par calls some of
them.
The formulae with names beginning Ex#.. are derived from equations from the
examples  # from Numerical Analysis 3rd Ed.by Richard L Burden, section 2.3
Newton Raphson.
The notes in comments are the notes I made whilst experimenting - I tend to
take notes like I do in my  (Lab  Books!!
}
davidsmask {
c = pixel,
c2 = c*c,c75 = c2 + 0.75, c25 = c2 - 0.25,
c75p1 = c75 + p1,
z = pixel:
z2 =z*z,
n = z*z2 - c75*z + c25,
d = 3*z2 - c75p1,
z = z- n/d,
0.000001 <= |n|
}
comment {22 July 92 try bracketted format of davidsmask ( which yielded Piccasso, Earing, whale, jonah & masks) & new style to compare patterns & speeds. Note P1 is subrtracted.
Not much difference in speeds - justs looks a lot easier to understand
}
newdavidsmask(XAXIS) {
c = pixel,
z = pixel:
fz = (z-1)*(z - c + 0.5)*(z + c + 0.5);
fdashz = 3*z*z - c*c - 0.75;
z = z - fz/(fdashz - P1);
0.000001 <= |fz|
}
comment={newdavidsmasksec is computed using the Newton's secant version of newdavidsmask; the derivative is computed from the fundamental definition {f(z+h)-f(z)}/h.
}
newdavidsmasksec(XAXIS) {
h =  0.00001,
c = pixel,
z = pixel:
zplh = z + h;
fz = (z-1)*(z - c + 0.5)*(z + c + 0.5);
fzplh = (zplh-1)*(zplh - c + 0.5)*(zplh + c + 0.5);
fdashz = (fzplh - fz)/h;
z = z - fz/(fdashz - P1);
0.000001 <= |fz|
}
comment {
now make the equation Ex20Newc a function of c
20 Feb 92 with p1 = 1 and p2 = 0.4 get interesting picture, but doesn't converge easily. Reduce tolerance from 0.0001 to 0.001.  Get interesting picture - like insect's pincer, but pieces missing. Batched `pincer'.Try 0.01 tol; still pieces missing.Try 0.1 tol. OK - try adding XAXIS for speed
}
Ex20Newc(XAXIS) {
z = pixel, c = pixel:
z2 = z*z + p1;
ex = exp(p2*z);
cs = cos(z);
sn = sin(z);
n = log(z2) - ex*cs;
d1 = 2*z/z2;
d2 = cs*p2*ex - sn*ex;
z = z - n/(d1 + c*d2);
0.1 <= |n|
}
comment {
15 Dec try ex1ccorrected using secant formula - first time! The method in Burden's book demands two initial guesses, which are (?) used to estimate f'.  It seems more sensible to estimate f' by (f(z) - f(z - del))/del. This has been done, and the method called secdav.
18 Dec 91 When del = 0.0001 the pattern appearrs to be exactly the same as Newton's Method - so added P1 to see the effect of a large difference between the two `guesses', which is what the secant method proposes.  Substantially different patterns result - the solutions are much less easily found - and it takes 40% longer in some cases.23 Mar 92 add P2 to denominator:z - n/(d+P2)  - usually use P1 for this! Change tolerance from 0.000001 to 0.0001, because spots came in fiddler crab,(ANGRY CRAB) p2 = 1.0. 2 APRIL 92 copy and restyle as zmincoszsec.
}
ex1csecdav {
del = P1 + 0.0001
z = pixel:
n = z - cos(z);
d = (n - (z -del - cos(z - del)))/del;
z = z - n/(d+P2);
0.0001 <= |n|
}

comment {this ex4c produces amazing `Chief's Headress" + feathers type pictures - increased resolution from 0.0001 to 0.00001 on 21st Dec for P1=0.5 because some of the `feathers' missing. Slightly better - tried 1 pass instead of guessing - even worse = `feathers' missing. So increase resolution to 0.000001.
22 Dec this may be wrong - try 0.001!
That's the answer - lower tolerance gets complete picture called FRENETIC FLIGHT or WINGED TEMPLE for CHAOS & GRAPHICS.
23 Dec start secant version & notice that semicolon was missing from 2z= ... statement.  Add & test to see if same picture. Also notice that have used - cos(z) instead of + cos!  Of such errors are pictures made!
The semi colon made no difference. The sign of cos was changed in ex4cos - and has not yet (10 Jan 92) yielded a nice picture! .
}

ex4cwithP1 {; Amended for Fractint v20 by G. Martin
  z = pixel:
  ex = exp(z)
  z2 = 2^(-z)
  n = ex + z2 - 2*cos(z) - 6
  d = ex + z2*0.69314718 + 2*sin(z) + P1
  z = z - n/d
  0.001 <= |n|
  ;SOURCE: davweird.frm
}
comment{31 Jan 95 having trouble recreating Winged Temple - copy formula and
and winged for experimention.
}

ex4cwithP1temple {; Amended for Fractint v20 by G. Martin
  z = pixel:
  ex = exp(z)
  z2 = 2^(-z)
  n = ex + z2 - 2*cos(z) - 6
  d = ex + z2*0.69314718 + 2*sin(z) + P1
  z = z - n/d
  0.01 <= |n|
  ;SOURCE: davweird.frm
}

comment {23 Dec 91 Now try ex4c using secant method, sticking to minus cos. Seem to need large values of P2 like 0.1 (=flyfish) 0.5 (=dudu) to get a picture. P2 = 0.5 yields ragged edges - try reducing tolerance from 0.001 to 0.01. Ragged edges on dudu go. Makes flyfish image bigger.
}
ex4csecdav {
del = P2 + 0.0001
z = pixel
zd = z + del:
n = exp(z) + 2^(-z) - 2*cos(z) - 6;
nd = exp(zd) + 2^(-zd) - 2*cos(zd) - 6;
d = (n - nd)/del;
z = z - n/(d + P1);
0.01 <= |n|
}




