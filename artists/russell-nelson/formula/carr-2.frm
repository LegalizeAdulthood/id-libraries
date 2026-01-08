{
These formulas were discovered while I was working as a spy for the
C.I.A. in K.G.B Headquarters in Moscow some years back. By a stroke
of luck I gained access to the K.G.B.'s Very Top SECRET file room
where their top Atom Bomb stuff was archived. I found a file with
the code name "MONKEY PUNCHING". Here is my attempt to re-create
that file for peaceful uses. I borrowed heavily from the format of
many FRACTINT formula files. If there is any duplication of
someone else's formula it is strictly by accident.

No commercial use of this file is permitted without my written
and signed permission!!!

If you wish to contact me about this frm file I can be reached by
E-Mail on CompuServeat the # : 73753,2420 or on America Online with
the name Genealogy1.

Enough chatter, it's time to freebase some fractal formulas!!!!



}

Carr-76 {
c=z=pixel:
z=(sin(z*z)) + ((sin(c-0.33))/pixel),
|z| <=4
 }


Carr-79 {
c=z=pixel:
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=sqr(z) + c,
|z| <=4
 }


Carr-86 {
z=c=pixel:
z=sqr(z) + c;
z=sqr(z) + conj(c),
|z| <=4
 }

Carr-89 {
z=c=pixel:
z=sqr(z) + sqr(c);
z=sin(z*z) + sqr(c);
z=sqr(z) + sqr(c),
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

