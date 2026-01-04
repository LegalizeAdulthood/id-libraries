Moo1 { ;; Requires Periodicity=0
       ;  significant speedup of MOO, artists take note!!!
 halfe = e*.5, z = pixel:
 z = z + p1
 r = tan(1/z) + pixel
 z = fn1(z)/r^halfe   ; was z = fn1(z)/sqrt(r)^e
 |z| < 4
}
