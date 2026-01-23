These formulas were discovered while I was working as a spy for the 
C.I.A. in K.G.B Headquarters in Moscow some years back. By a stroke
of luck I gained access to the K.G.B.'s Very Top SECRET file room
where their top Atom Bomb stuff was archived. I found a file with
the code name "MONKEY PUNCHING". Here is my attempt to re-create
that file for peaceful uses. I borrowed heavily from the format of
many FRACTINT formula files. If there is any duplication of 
someone else's formula it is strictly by accident.

No commercial use of this file (or it's parts) is permitted
without my written and signed permission!!!!!!

If you wish to contact me about this frm file I can be reached by
E-Mail on CompuServeat the # : 73753,2420 or on America Online with
the name Genealogy1.

Robert W. Carr, M.D.
9900 NW 115 Ave.
Ocala, FL 34482                   Phone: 1-904-629-3081

Enough chatter, it's time to freebase some fractal formulas!!!!


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


Carr-111 {
z=c=1/pixel:
z=sqr(z*z) + c;
z=sin(z*z) + sin(c*c);
z=sin(z*(1/z)) + (sqr(c + pixel)),
|z| <=4
 }

