MarksBug   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Thu, 22 Apr 2004 05:17:38
             ; Attempt at speeding up Mark's Mandel with flexibility.
             ; Methinks that the similarity between manzpower and
             ; Mark's Mandel is the error, but the hard-coded formula
             ; does seem to allow for larger exponents before it
             ; decays. Maybe it's z(n+1)=c^(ex-1)*z(n) +c
  z=fn1(pixel), c=fn2(pixel), a=c^real(P1)-1:
  z=a*sqr(z) +c,
  LastSqr<= imag(P1)
}
 
