julfnzsqrd  { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
              ; Tue, 18 May 2004 13:35:30
              ; Simplifies to hard-coded julfn+zsqrd.
  z=fn1(pixel), c=P2:
  z= fn2(z) +z*z +c
  |z| <= real(P3)
}

DuckOWar    { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
              ; Tue, 18 May 2004 12:56:00
              ; Slightly different from "frenzy" (deleted).
		  ; More flexible. That's all.
  z = fn1(pixel), s=-fn3(fn2(pixel)):
  z = z * s + z
  s = s/z + pixel
  |z| <= real(P1)
}

