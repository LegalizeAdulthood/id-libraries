


              { Formulae created by:  Jon Osuch  [73277,1432] }


{=========================================================================}

BirdOfPrey(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=cosxx
    z   = p1,
    x   = 1:
    if (x  <  10)
        z=fn1(z)+pixel
    else
        z=fn2(z)+pixel
    endif
    x   = x+1,
   |z| <=p2
   }

{=========================================================================}

DeepSpaceProbe(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=sin, fn3=cosxx
    z   = p1,
    x   = 1:
    if (x < 10)
        z = fn1(z) + pixel
    elseif (x < 20)
        z = fn2(z) + pixel
    else
        z = fn3(z) + pixel
    endif
    x   = x+1,
   |z| <= p2
   }

DeepSpaceProbeC(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=10, p2=20, fn1=sqr, fn2=sin, fn3=cosxx
    ; Note:  use floating point
    z  = p1,
    x  = 1:
    if (x<10)
        z=fn1(z)+pixel
    elseif (x<20)
        z=fn2(z)+pixel
    else
        z=fn3(z)+pixel
    endif
    x  = x+1,
   |z| <= 4
   }

DpSpaceProbeTwoC(XAXIS_NOPARM) {; Jon Osuch
   ; Try p1=0, p2=4, fn1=sqr, fn2=exp, fn3=cosxx
    ; Note:  use floating point
   z    = p1,
   x    = 1:
    if (x<10)
        z=fn1(z)+pixel
    elseif (x<20)
        z=fn2(z)+pixel
    else
        z=fn3(z)+pixel
    endif
    x   = x+1,
   |z| <= p2
   }

{=========================================================================}

EvilEyeC(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=1, p2=4, fn1=sin, fn2=cosxx
    ; Note:  use floating point
    z  =  p1,
    x  = |z|:
    if (1<x)  
       z = fn1(z)+pixel
    else
       z=fn2(z) + pixel
    endif
    x  = |z|,
    x <= p2
  }

{=========================================================================}

Eyeball(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=sinh
    z    = p1,
    x    = 1:
    if (x < 10)
        z=fn1(z) + pixel
    else
        z=fn2(z) + pixel
    endif
    x    = x+1,
   |z|  <= p2
   }

{=========================================================================}

FlyingSquirrel(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sin, fn2=cosxx, fn3=sqr
    z  = p1,
    x  = |z|:
    if (1<x)
        z=fn1(z) / fn2(z) + pixel
    endif
    z  = fn3(z)+pixel,
    x  = |z|,
    x <= p2
   }

{=========================================================================}

FractalFender(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=cosh, fn2=sqr
    z  = p1,
    x  = |z|:
    if (1<x)
        z=fn1(z)+pixel
    endif
    z  = fn2(z)+pixel,
    x  = |z|,
    x <= p2
   }

FractalFenderC(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=cosh, fn2=sqr
    ; Note:  use floating point
    ; Spectacular!
    z  = p1, 
    x  = |z|:
    if (1<x)
       z = fn1(z)+pixel
    endif
    z  = fn2(z)+pixel,
    x  = |z|,
    x <= p2
   }

FractalFender2(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=cosxx, fn2=sqr
    z  = p1,
    x  = |z|:
    if (1<x)
        z=fn1(z)+pixel
    endif
    z  = fn2(z)+pixel,
    x  = |z|,
    x <= p2
   }

FractalFender2C(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=cosxx, fn2=sqr
    ; Note:  use floating point
    z  = p1,
    x  = |z|:
    if (1<x)
       z = fn1(z)+pixel
    endif
    z  = fn2(z)+pixel,
    x  = |z|,
    x <= p2
   }

{=========================================================================}

Frog(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=tanh, fn2=sqr
    z  = p1,
    x  = |z|:
    if (1<x)
        z=fn1(z) + pixel
    endif
    z  = fn2(z)+pixel,
    x  = |z|,
    x <= p2
   }

FrogC(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=tanh, fn2=sqr
    ; Note:  use floating point
    z  = p1,
    x  = |z|:
    if (1<x)
       z = fn1(z)+pixel
    endif
    z  = fn2(z)+pixel,
    x  = |z|,
    x <= p2
   }

{=========================================================================}

Fly(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=sqr
    z   = p1:
    x   = real(z),
    if (x < 0)
        z=fn1(z) + pixel
    else
        z=fn2(z) - pixel
    endif
   |z| <= p2
   }

{=========================================================================}

IfThenfn1fn2(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sin, fn2=cos
    z  = p1,
    x  = |z|:
    if (1<x)
       z = fn1(z)
    endif
    z  = fn2(z)  + pixel
    x  = |z|,
    x <= p2
   }

IfThenElsefn1fn2(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=sin
    z  = p1,
    x  = |z|:
    if (1<x)
       z = fn1(z)+pixel
    else
       z = fn2(z)+pixel
    endif
    x  = |z|,
    x <= p2
   }

IfElsefn1fn2fn3(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1,2,3=whatever
    z   = p1,
    x   = 1:
    if (x<10)
        z=fn1(z)+pixel
    elseif (x<20)
        z=fn2(z)+pixel
    else
        z=fn3(z)+pixel
    endif
    x   = x+1,
   |z| <= p2
    }

{=========================================================================}

IslandOfChaos(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=sin, fn3=cosxx
    z   =  p1,
    x   =  1:
    if (x < 10)
        z=fn1(z) + pixel
    else
        z=fn2(z) / fn3(z) + pixel
    endif
    x   = x+1,
   |z| <= p2
   }


{=========================================================================}

ManInTheOzone(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=cosxx, fn3=sin
    z    = p1,
    x    = 1:
    if (x < 10)
        z=fn1(z) + pixel
    elseif (x<20)
        z=fn2(z)+pixel
    else
        z=fn3(z) + pixel
    endif
    x    =  x+1,
   |z|  <= p2
   }

{=========================================================================}

Moth(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=exp, fn3=log
    z    = p1,
    x    = 1:
    if (x < 10)
        z=fn1(z)  +  pixel
    elseif (x<20)
        z=fn2(z)+pixel
    else
        z=fn3(z)  +  pixel
    endif
    x    = x+1,
   |z|  <= p2
   }

{=========================================================================}

SinhEgg(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sinh, fn2=sqr
    z  = p1,
    x  = |z|:
    if (1 < x)
        z=fn1(z) + pixel
    endif
    z  = fn2(z)+pixel,
    x  = |z|,
    x <= p2
   }

{=========================================================================}

TestSinMandC(XAXIS_NOPARM) {;Jon Osuch
     ; Try: p1=4, fn1=sin, fn2=sqr    
     z  = p1,
     x  = |z|:
     if (1<x)
        z = fn1(z)
     endif
     z  = fn2(z)+pixel
     x  = |z|,
     x <= p1
  }

{=========================================================================}

TurtleC(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=sqr, fn2=sqr
    ; Note:  use floating point
    z   = p1:
    x   = real(z),
    if (x<0)
       z = fn1(z)+pixel
    else
        z=fn2(z)-pixel
    endif
   |z| <= p2
   }


{=========================================================================}

WaldoTwinsC(XAXIS_NOPARM) {; Jon Osuch
    ; Try p1=0, p2=4, fn1=cosxx, fn2=sin
    ; Note:  use floating point
    z   = p1:
    z   = fn1(fn2(z+pixel)) + pixel,
   |z| <= p2
   }
