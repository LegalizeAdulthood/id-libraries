  {==========================================================================}
  {         File originally distributed with FRAC'Cetera Vol 2 Iss 6         }
  {==========================================================================
   =  From GRAPHDEV Fractal Sources forum messages - Dec-92.                =
   =  Chaotic Liars   Author: Chuck Ebbert        CIS: 76306,1226           =
   =  F'names,  where present,  are  FRAC'Cetera  created variations or     =
   =  derivatives based, sometimes quite loosely, on the author's originals =
   ==========================================================================}

  { Chaotic Liar formulas for FRACTINT.
    These formulas reproduce some of the pictures in the paper 'Pattern and
    Chaos: New Images in the Semantics of Paradox' by Gary Mar and Patrick
    Grim of the Department of Philosophy, SUNY at Stony Brook.

    "...what is being graphed within the unit square is simply information
    regarding the semantic behavior for different inputs of a pair of English
    sentences:" }

  { Fm: Dan Farmer 70703,1632
    I tried out the Chaotic Liar formulas.  Interesting.  Liar1 is rather dull,
    Liar2 gets better, and Liar3 is really interesting.  But, best of all, run
    Liar3 with Sound = z and floating point OFF.  Press "O" for orbits.  Great
    sound and a really different orbits display.
    I did discover that these types require floating point math.  I get either
    black screen or totally different results with integer math.    }


!_Press_F2_!     {; There is text in this formula file.  Shell to DOS with
                  ; the <d> key and use a text reader to browse the file.
                 }

Liar1 { ; by Chuck Ebbert.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )

  z = pixel:
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) ),
    |z| <= 1 }

F'Liar1 { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
    fn1(abs(z))<p1 }

F'Liar1A { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
    |z| <= p1 }

F'Liar1C { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
    fn2(abs(z))<p1 }

F'Liar1D { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
   z = p1 - abs(imag(z)-real(z) ) + flip(p2 - abs(1-real(z)-imag(z) ) );
    |z| <1 }

Liar2 { ; by Chuck Ebbert.
        ; Same as Liar1 but uses sequential reasoning, calculating
        ;  new y value using new x value.
        ; x(n+1) = 1 - abs(y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = pixel:
   x = 1 - abs(imag(z)-real(z)),
   z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x),
    |z| <= 1 }

F'Liar2 { ; Generalization by Jo. Horner of Chuck Ebert Formula
          ; x(n+1) = 1 - abs(y(n)-x(n! );
          ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = fn1(pixel):
   x = 1 - abs(imag(z)-real(z)),
   z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x),
    |z| <= p1 }

Liar3 { ; by Chuck Ebbert.
        ; X:¢ÂNÇpixel, f = cosh (pixel):
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

Liar4 { ; by Chuck Ebbert
        z = pixel, p = p1 + 1:
        z = 1-abs(imag(z)*p-real(z)+flip(1-abs(1-real(z)-imag(z))));
        |z| <= 1
      } 
