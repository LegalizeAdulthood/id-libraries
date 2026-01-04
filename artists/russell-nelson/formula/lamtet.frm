comment {
These formulas - variations on a tetrate theme - work best
using a fast cpu with fp maths. Some interesting effects
can be achieved with inside=bof60. (Also applies to the standard
Fractint coded Tetrate type).

Set fn2=ident for conventional initiation.

Holes may appear in images, especially in the z^c types.
Increased setting for periodicity should cure this problem.

Any feedback on these or related fractals would be much
appreciated. I have been exploring these for some 2 years
now (on & off!).

gordon lamb - 100272,3541
}
lambtet1 { ;fn1=sin & inside=bof60 gives a striking tropical fish!
           ;see file FISHY.GIF - New Images Nov. 
           ;set fn1=fn2=ident for simple tetrate fractal.            
            z=c=fn2(pixel): z=fn1(c^z), |z|<=4}
lambtet2 {
            z=c=fn2(pixel): z=fn1(z^c), |z|<=4}
lambtet3 { ;fn1=recip will produce infinitely nested crustaceans!
            z=c=fn2(pixel): z=c^fn1(z), |z|<=4}
lambtet4 {
            z=c=fn2(pixel): z=z^fn1(c), |z|<=4}
lambtet5 { 
            z=c=fn2(pixel): z=1/fn1(c^z), |z|<=4}
lambtet6 {
            z=c=fn2(pixel): z=1/fn1(z^c), |z|<=4}
lambtet7 {
            z=c=fn2(pixel): z=c^(1/fn1(z)), |z|<=4}
lambtet8 { 
            z=c=fn2(pixel): z=z^(1/fn1(c)), |z|<=4}
lambtet9 {
            z=c=fn2(pixel): z=fn1(c^fn3(z)), |z|<=4}
                                   
