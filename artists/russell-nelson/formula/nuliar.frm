comment {
;   From GRAPHDEV Fractal Sources forum messages - Dec-92.
;   Chaotic Liars   Author: Chuck Ebbert - CIS: 76306,1226
;
;   F'names are FRAC'Cetera created variations or derivatives
;   based, often quite loosely, on the author's originals.
;
; --------------------------------------------------
; ==  Distributed with FRAC'Cetera Vol 03 Iss 09  ==
; --------------------------------------------------
;
;   Authors:   
;
;   Chuck Ebbert - CIS: 76306,1226
;   and Jon Horner - 100112,1700 - FRAC'Cetera. }


Liar1  {; by Chuck Ebbert - 76306,1226
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
        z = pixel:
        z = 1 - abs(imag(z)-real(z)) + flip(1 - abs(1-real(z)-imag(z))),
        |z| <= 1 }

F'NuLiar1A { ; by Chuck Ebbert - 76302,1226
     ; generalized by Jon Horner 100112,1700 (FRAC'Cetera)
     ; LIAR1 with alternative init. conditions and fn2 replacing flip
     ; X: X is as true as Y
     ; Y: Y is as true as X is false
     ; Calculate new x and y values simultaneously.
     ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
     z = fn1(pixel):
     z = 1 - abs(imag(z)-real(z)) + fn2(1 - abs(1-real(z)-imag(z)));
     |z| <= p1
  }

F'NuLiar1E { ; by Chuck Ebbert - 76302,1226
        ; generalized by Jon Horner 100112,1700 (FRAC'Cetera)
        ; LIAR1 with alternative initial conditions/bailout
        ; X: X is as true as Y
	; Y: Y is as true as X is false
	; Calculate new x and y values simultaneously.
	; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
        z = fn1(pixel):
        z = p1 - abs(imag(z)-real(z) ) + fn2(p1 - abs(p1-real(z)-imag(z) ) );
        fn3(abs(z)) <= p2
  }

F'Liar1D { ; Generalization by Jon Horner of Chuck Ebbert formula.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
        z = fn1(pixel):
        z = p1 - abs(imag(z)-real(z) ) + flip(p2 - abs(1-real(z)-imag(z) ) );
        |z| <1 }

Liar1M {; by Jon Horner - based on LIAR1 by Chuck Ebbert - 76306,1226
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
        z = (0,0), c = pixel :
        z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z))) + c,
        |z| <= 1 }

Liar2 { ; by Chuck Ebbert - 76306,1226
        ; Same as Liar1 but uses sequential reasoning, calculating
        ;  new y value using new x value.
        ; x(n+1) = 1 - abs(y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
        z = pixel:
        x = 1 - abs(imag(z) - real(z)),
        z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x),
        |z| <= 1 }

Liar2M {; by Jon Horner - based on LIAR2 by Chuck Ebbert.
        ; Same as Liar1M but uses sequential reasoning, calculating
        ; new y value using new x value.
        ; x(n+1) = 1 - abs(y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
        z = (0,0), c = pixel :
        x = 1 - abs(imag(z) - real(z)) ,
        z = flip(1 - abs(1-real(x)-imag(z))) + real(x) + c ,
        |z| <= 1 }

F'Liar2 { ; by Chuck Ebbert - 76302,1226
        ; generalization by Jon Horner 100112,1700 (FRAC'Cetera)
        ; Same as Liar1 but uses sequential reasoning, calculating
        ;  new y value using new x value.
        ; x(n+1) = 1 - abs(y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
        z = fn1(pixel):
        x = 1 - abs(imag(z)-real(z)),
        z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x),
        |z| <= p1 }

F'Liar2A{ ; by Chuck Ebbert - 76302,1226
        ; generalization by Jon Horner 100112,1700 (FRAC'Cetera)
        ; Same as Liar1 but uses sequential reasoning, calculating
        ; new y value using new x value.
        ; x(n+1) = 1 - abs(y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
        z = fn1(pixel):
        x = p1 - abs(imag(z)-real(z)),
        z = fn2(p1 - abs(p1-real(x)-imag(z) ) ) + real(x),
        |z| <= p2 }

Liar3  {; by Chuck Ebbert - 76306,1226
        ; X: X is true to P1 times the extent that Y is true
        ; Y: Y is true to the extent that X is false.
        ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2 formula.
        ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
        z = pixel :
        x = 1 - abs(imag(z)*real(p1)-real(z) ),
        z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x) ,
        |z| <= 1 }

Liar3M {; by Jon Horner - based on LIAR3 by Chuck Ebbert.
        ; X: X is true to P1 times the extent that Y is true
        ; Y: Y is true to the extent that X is false.
        ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2M formula.
        ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
        z = (0,0), c = pixel :
        x = 1 - abs(imag(z) * real(p1) -real(z) ),
        z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x) + c,
        |z| <= 1 }

F'Liar3 { ; by Chuck Ebbert - 76302,1226
        ; generalization by Jon Horner 100112,1700 (FRAC'Cetera)
        ; X: X is true to P1 times the extent that Y is true
        ; Y: Y is true to the extent that X is false.
        ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2 formula.
        ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
        z = fn1(pixel):
        x = 1 - abs(imag(z) * p1 - real(z) ),
        z = fn2(1 - abs(1-real(x)-imag(z) ) ) + real(x),
        |z| <= p2 }

Liar4 { ; by Chuck Ebbert - 76306,1226
        ; X: X is as true as (p1+1) times Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; Real part of p1 changes probability.  Use floating point.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
        z = pixel , p = p1 + 1:
        z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z))) ,
        |z| <= 1 }

Liar4M {; by Jon Horner - based on LIAR4 by Chuck Ebbert.
        ; X: X is as true as (p1+1) times Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; Real part of p1 changes probability.  Use floating point.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
        z = (0,0), c = pixel , p = p1 + 1:
        z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z))) + c ,
        |z| <= p2 }

F'Liar4C { ; by Chuck Ebbert - 76302,1226
        ; generalization by Jon Horner 100112,1700 (FRAC'Cetera)
        ; X: X is as true as (p1+1) times Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; Real part of p1 changes probability.  Use floating point.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
        z = fn1(pixel), p = p1 + 1 :
        z = 1-abs(imag(z)*p-real(z))+fn2(1-abs(1-real(z)-imag(z))),
        fn3(abs(z)) <= p2 }

