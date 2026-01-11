Quadrat         { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                  ; Wed, 26 May 2004 21:23:00
                  ; Conjugates tend to make fine lines and textures.
  z=fn1(pixel), c=fn2(pixel):
  z=z*z -conj(z*c) +c,
  |z| <= real(P1)
}

