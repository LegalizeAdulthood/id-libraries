Butterfly(YAXIS)  { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                    ; Wed, 10 Mar 2004 19:30:38
                    ; 
  z=(0,0), c=flip(-pixel):
  temp = sqr(z)
  z = temp*z -conj(temp) +c
  LastSqr <= 4
}
 
