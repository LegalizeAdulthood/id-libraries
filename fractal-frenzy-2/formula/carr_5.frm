{
These formulas were discovered while I was on an expedition to the
Far East in search of rare spices. While in the remote Province of
Wonchuria, in Northern Taicong, I occasioned on a Budfushan 
Monastary said to be the birthplace of all modern mathmatics. A
Budfushan High Priest befriended me and took me to the archives
of the Highest Holy Temple. Once there he allowed me to copy the
basic calculations that his ancestors used (circa 4,503 BC)
to create what is known as "current day mathmatics".

Apparently Monkeys had something to do with the creation of these
formulas as the High Priest made mention of their participation
by "punching". The High Priest's ancestors nicknamed the files
"Monkey Punched".
 
I'm now sharing with you the spoils of this Far Eastern trek.

None of these formulas may be used for commercial purposes without
my written and signed consent. I can be contacted by E-Mail at:
CompuServe 73753,2420 or on America Online by the name Genealogy1.
I hope you enjoy using these fractal formulas. If per chance, they 
are duplicates of another formula, that duplication was strictly
by accident and I apologize.

Bob Carr


}


Carr-14 { ; modified fnzp fnpix
z = 1 / tan(1 / pixel) +p1,
c = ((1 * (|p2|<=0) +p2) * fn2(1 / pixel) ):
z = fn1(z) * fn2(z),
 |z| <=64 
 }

Carr-15 (xaxis) {; Mark Peterson modified(Zoom all the way out & look)
                 ; Edited for Fractint v20 by G. Martin
  z = log(pixel), z = cosxx(z):
  z = z + cosxx(pixel)
  z = sqr(z)
  Lastsqr <=4
  ;SOURCE: carr.frm
}

Carr-16 {
z = 0:
z2 = z^z^z,
z = (cosxx(sqr(z-1)) ) + (sin(pixel));
 |z| <= 6
  }

Carr-17(xaxis) {; Mark Peterson modified by Bob Carr
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
  ;SOURCE: carr.frm
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

