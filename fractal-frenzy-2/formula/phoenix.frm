comment = {
The formula given below generates a variation of the Phoenix curve, which    
Shigehiro Ushiki at Kyoto University first discovered.  Use it with the 
Fractint Formula Compiler.
}
   Phoenix = {
      x = pixel; y = 0.0:
      z = (x * x) + p1 + (p2 * y);
      y = x;
      x = z;
}

comment = {
The original Phoenix curve uses 0.56667 for the real part of p1, 
and -0.5 for the real part of p2.

FRACTALS IN C, by Dr. Roger Stevens, has a chapter covering the
Phoenix curve.  The author suggests trying the following for p1 and p2.

  p1                  p2

0.288732          0.5510029
0.356338          -1.209169
-0.550704         -1.255014

Kriston Scott
}
