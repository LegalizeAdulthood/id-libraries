{
Some years back while working on my Ph.D. in ThermoNuclear Physics
as related to Ice Cream making, I chanced on a visit with Albert 
Einstein. He gave me a list of formulas and said, "some day there
will be the speed to work out these formulas". Not knowing what
he meant (and too embarassed to ask), I tucked the formulas away.

A couple of months ago (come to think of it, it was yesterday)
I saw, on PBS, a Special on Einstein and something about E=MC
something or other. I thought, I wonder what I did with the 
formulas AL gave me? Up to the attic I went and sure enough
they were there. These are probably the last unpublished works
from AL to be found.

Bob Carr CIS: 73753,2420   America Online: Genealogy1

No commercial use of this file or it's contents is permitted
without my written and signed consent!!!!!!!

These formulas were used because, when used with 
Passes: B-Trace + Inside:Bof60 + Outside: Real or Imag or Summ
or Mult, they produce what I've called CARR'S CRYSTALS. These  
CARR'S CRYSTALS, according to a supposition by Tim Wegner, are
"entirely based on artifacts of integer math and accidents of
overflow". Tim says further, "I strongly feel such images are 
still legitimate fractal art.".(Personal communication
December 18, 1994)

Other combinations may produce the same CARR'S CRYSTALS. I
haven't tried all possible combinations as I was anxious to 
get this work online for all to use. Please contact me if you 
find other ways to produce these CARR'S CRYSTALS. THANKS !!! 


}

01-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}

02-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=10
  ;SOURCE: carr.frm
}

03-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sin(z) + c-0.14
  z=sin(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}

04-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}

05-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}

07-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + flip(z) + 0.33/pixel:
  z=cosxx(z) + c-0.14
  z=tanh(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
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
