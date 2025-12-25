Div        { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Sun, 4 Apr 2004 05:46:01
             ; Rotation relates to atan(P2), while scale is proportional
             ; to |P2| or cabs(P2), and P3 will position.
             ;
  z=z-z, c=fn1(pixel):
  z=(z*z +c)/P2 +P3
  |z| <= real(P1)
}
 
