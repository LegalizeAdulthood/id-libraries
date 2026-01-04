These formulas were discovered while I was working as a spy for the 
C.I.A. in K.G.B Headquarters in Moscow some years back. By a stroke
of luck I gained access to the K.G.B.'s Very Top SECRET file room
where their top Atom Bomb stuff was archived. I found a file with
the code name "MONKEY PUNCHING". Here is my attempt to re-create
that file for peaceful purposes. I borrowed heavily from the format of
many FRACTINT formula files. If there is any duplication of 
someone else's formula it is strictly by accident.

No commercial use of this file (or it's parts) is permitted
without my written and signed permission!!!!!

Most of these formulas seem to do best for me using INSIDE: Bof60
OUTSIDE: REAL.

Creating Fractint formula files, I was told, is like free-basing FRACTALS.

I can be contacted by E-Mail on Compuserve. Address: 73753,2420 or on
America Online. Address: Genealogy1

Snail Mail address:

Robert W. Carr, M.D.
9900 NW 115 Ave.
Ocala, FL 34482


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
c=z=(1/pixel)/pixel-o.25:
z=sqr(z) + 0.33;
|z| <=4
 }

Carr-02E {Try using Distance Estimator function on this formula
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

Carr-06 {was OK-03 and was modified
z = c = pixel:
z = cosxx(z)/c;
z = sin(z),
|z| <= (5 + p1)
  }

Carr-07 {was OK-02 and was modified
z = c = 1 / pixel, k = 1 + p1:
z = (c^z) + c:
z = cotan(z) * k,
|z| <= (5 + p2)
  }

Carr-08 {was OK-01 and was modified
z = 0, c = 1 / pixel:
z = (c^z) + c;
z = sqr(z),
|z| <= (5 + p1)
  }

Carr-09 {was OK-04 and was modified
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

Carr-13 {
c = z = cosxx(pixel):
z = cosxx(z) + 2;
zx = real(p2) +1, zy = imag(z);
c = z = 1 / sqr(pixel):
z = 1 / cosxx(z) +c;
|z| <= 4
  }

