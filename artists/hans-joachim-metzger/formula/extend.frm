Extend {    ; z=z^2 +z +c: params=-4/0 function=ident/ident/ident
            ; As first posted, this turned out be curiously close
            ; to club_lambda (as a formula), so the parameters
            ; hav changed and the formula has the same result.
z=fn1(pixel), c=fn2(pixel), t=|real(P1)|:

if(real(P1)<0)
    temp =fn3(z)
else
    temp =-fn3(z)
endif,
z=sqr(z) +temp +c

LastSqr <= t
}
