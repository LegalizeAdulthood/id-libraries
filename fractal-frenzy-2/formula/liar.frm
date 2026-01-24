
comment {  ;    #: 7363 S4/Fractal Sources
        ;    08-Dec-92 18:46:48
        ;    Sb: #Chaotic Liars
        ;    Fm: Chuck Ebbert 76306,1226
        ;    To: All
        ; Chaotic Liar formulas for FRACTINT.
        ; These formulas reproduce some of the pictures in the paper
        ;  'Pattern and Chaos: New Images in the Semantics of Paradox'
        ;  by Gary Mar and Patrick Grim of the Department of Philosophy,
        ;  SUNY at Stony Brook.
        ; Formulas by Chuck Ebbert  CIS [76306,1226]
        ; "...what is being graphed within the unit square is simply
        ;  information regarding the semantic behavior for different
        ;  inputs of a pair of English sentences:"
        ;
}

Liar1 { ; by Chuck Ebbert.
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
   z = pixel:
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  |z| <= 1 ;
 }

Liar2 { ; by Chuck Ebbert.
        ; Same as Liar1 but use sequential reasoning, calculating
        ;  new y value using new x value.
        ; x(n+1) = 1 - abs(y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
   z = pixel:
   x = 1 - abs(imag(z)-real(z))
   z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1;
 }

Liar3 { ; by Chuck Ebbert.
        ; X: X is true to P1 times the extent that Y is true
        ; Y: Y is true to the extent that X is false.
        ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2 formula.
        ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
   z = pixel:
   x = 1 - abs(imag(z)*real(p1)-real(z) )
   z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1;
}

Liar4 { ; by Chuck Ebbert.
        ; X: X is as true as (p1+1) times Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; Real part of p1 changes probability.  Use floating point.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel, p = p1 + 1:
   z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)));
    |z| <= 1
    }

F'Liar1C {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn2(abs(z))<p1
  ;SOURCE: liar.frm
}
