; Greetings Fractal Friends,

; This text file is to accompany the Ron1 formula and parameter files. I
; intend to explain the logic of the two formulae that I have submitted
; here. This note is included for two reasons. Firstly, I hope to receive
; some feedback from you on how I might improve my approach to writing
; fractal formulae.  Secondly, for  those of you who are new to writing
; formulae, perhaps an explanation of what the different lines for the
; formula are doing might be helpful.  (If you are new to the fractal
; formula, check out FrmTut.zip, an excellent tutorial on writing fractal
; formulae.)

; I would like to thank Brad Beacham for his many months of tutoring on how
; to work with formulae for fractals.  His assistance has been outstanding.
; Any progress I have made I owe to him, any mistakes are mine alone.

; I have tried to create a formula that controls the movement of the orbit
; of the point as it is being moved during the course of the calculation.
; My first serious attempt at this control was the following, Incdbail,
; so named because I am trying to control the increment of z as it moves
; around the orbit, and the bailout is controled by d, not z:


Incdbail{;
   z = c = pixel, m = fn3(z), n = fn4(z):
   t = fn1(z) + fn2(z)
   d = z-t
   z = ((d<=p1) * (z+(m/z))) + ((d>p1) * (d<=(2*p1)) * (t)) + ((d>(2*p1)) * (z-(n/z)))
   d <= p2
   }

; Here is how I think Incdbail works.

;   z = c = pixel, m = fn3(z), n = fn4(z):

; On this line, we set up the values for z and c as the value of
; the pixel, and also set up a couple of constants, m and n,
; which remain the same for each pixel.

;   t = fn1(z) + fn2(z)

; t is the test formula.  I want to test the distance that the
; point has moved before actually assigning the new value to z.

;   d = z-t

; d is the distance the point has moved (along the x axis only as pointed
; out by BBeacham.)

;   z = ((d<=p1) * (z+(m/z))) + ((d>p1) * (d<=(2*p1)) * (t)) + ((d>(2*p1)) * (z-(n/z)))

; In this long formula line, we decide what value to assign to z based upon
; the distance moved.  If the distance is less than p1, the assigned value
; is z+(m/z). If the distance is between p1 and two times p1, the assigned
; value is t, the test value.  If the distance is more than twice p1, we pull
; z back by assigning the value z-(n/z).

;   d <= p2

; We continue to iterate as long as the distance moved is less than p2.

; An example of the type of fractal image created by this formula is found
; in the parameter file Ron1.par, under the name Shield1.

; My more recent attempt to control the movement of z within the bailout
; circle is found in the next formula, Multdbail, so called because I am
; trying to control the movement with a multiplier.

MultdBail{;p1 is dist switch, p2 is count switch
   z = c = pixel, x=0,m=1:
   x=x+1, t = z*z+c, d=|z|/4
   g = (d<=p1)* (x<=p2)* (1.25),    h=(d>p1)* (x<=p2)* (.9)
   i = (d<=p1)* (x>p2)* (1.1), j=(d>p1)* (x>p2)* (1)
   m =  (g+h+i+j)*m
   z = m*t
   d <= 4
   }

; An explanation of this formula follows.

;   z = c = pixel, x=0,m=1:

; On this first line, we set z and c to the value of the pixel.  Also the
; counter (x) is set to zero, and the multiplier (m) is set to one.

;   x=x+1

; Increment the counter.

;   t = z*z+c

; Find the test value (note the use of the Mandlebrot set).

;  d=|z|/4

; Determine the proportion of the distance to the bailout.
; |z| is the distance z lies from the orgin, |z|/4 is the proportion of
; the distance z lies in relation to the bailout.

;   g = (d<=p1)* (x<=p2)* (1.25)

; Lets use an example of p1=.2 and p2=20.  If z is less than .2 of the
; bailout and we have iterated less than 20 times, select the value of
; 1.25 (I'll explain the use of the 1.25 in a moment.)

;   h=(d>p1)* (x<=p2)* (.9)

; If z is more than .2 of the way to the bailout, but we haven't iterated
; 20 times yet, choose .9

;   i = (d<=p1)* (x>p2)* (1.1)

; If z is less that .2 of the bailout, but we have already iterated more
; than 20 times, choose 1.1, and

;  j=(d>p1)* (x>p2)* (1)

; if z is more than .2 of the distance to the bailout and we have iterated
; more than 20 times, choose 1.

;   m =  (g+h+i+j)*m

; Now here is where we set the multiplier.  Remember m started as a value of 1.
; When we add g, h, i, and j only one of the values is selected, the others
; are 0 because the conditions of their placement or iterations were not met.
; So, by selecting .9 or 1.1 or whatever, we will be slightly modifying the
; value of m each time we iterate through the formula.  It is possible we would
; slighly de-rate m by .9 each time through the formula for a while, then
; multiply m by 1.1 the next few times through the formula.  In this way the
; multiplier will be adjusted depending on the location of z in relation to
; the bailout and the number of iterations thus far for this pixel.

;   z = m*t

; Here we use the multiplier to increase or reduce the actual movement of
; the point based upon the value in the test formula.  If we are inside .2
; and have only iterated a few times, we increase the value of m a bit, thus
; increasing the movement a bit.  On the other hand, if we are outside .2 of
; the bailout and have only interated a few times, we are moving toward the
; bailout too quickly, so we derate the multiplier a bit, reducing the value
; of t.

;   d <= 4

; Then we bailout when the ratio of z to 4 is four, or when |z|=16.

; An example of the type of image generated by this formula can be found
; in Ron1.frm, under the image Mirror1.

; I welcome your comments, suggestions, clarifications or corrections.
; Please write me and tell me what you think.  Also, I would love to
; see any GIFs you generate with the use of these formulae.  I look
; forward to hearing from you.

; Ron Black
; 76322, 2337

; P.S.  My very best regards to the members of the Stone Soup Group ("got money
; want admiration").  You have my admiration.  You have written one on the
; truly wonderful computer programs in FractInt.  Any computer which is just
; idling, should be calculating fractals!