   FractalFenderC(XAXIS_NOPARM) {z=p1,x=|z|:
       (z=cosh(z)+pixel)*(1<x)+(z=z)*(x<=1),
       z=sqr(z)+pixel,x=|z|,
       x<=4 }

   SpecC(XAXIS_NOPARM) {z=p1,x=|z|:
       (z=fn1(z)+pixel)*(1<x)+(z=z)*(x<=1),
       z=fn2(z)+pixel,x=|z|,
       x<=4 }

   FractalFenderCarr(XAXIS_NOPARM) {z=(pixel)/(1.099,0),x=|z|:
       (z=cosxx(z)+pixel)*(1<x)+(z=z)*(x<=1),
       z=sqr(z)+pixel,x=|z|,
       x<=4 }
