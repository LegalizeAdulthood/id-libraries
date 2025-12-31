Carr-205 {
  z=c=1/pixel:
  z=(sqr(z)+c)/(z+0.5)+c
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-206 {
  z=c=1/pixel:
  z=(sqr(z*z) + c)/(z+0.75)+c
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-207 {
  z=c=pixel:
  z=(sqr(z*z) + c)/(z+0.75)+c
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-208 {
  z=c=1/pixel:
  z=(sqr(z*z)+c)/(z-(flip(-3,0.123)))+c
  |z| <=4
  ;SOURCE: carr.frm
}

Carr-209 {
  z=c=1/pixel:
  z=z*z+c+(z*z+(c-0.124))
  z=sin(z)+c+(z*z+(c-0.124))
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-210 {
  z=c=1/pixel:
  z=z*z+c+(z*z+(c-0.124))/(z-0.75)+c
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-211 {
  z=c=1/pixel:
  z=z*z+c+(z*z+(c-0.124))/((z+1.25)+c)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-212 {
  z=c=1/pixel:
  z=sin(z^2)+sin(z)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-213 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-1)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-214 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-1.5)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-215 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-216 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.1)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-217 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cosxx(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-218 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-219 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(1/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-220 {; 100's of diff. Inv. Mandels
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(sqr(pixel))
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-221 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel-0.1)
  |z| <=10
  ;SOURCE: carr.frm
}

Carr-222 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel+1.25)
  |z| <=10
  ;SOURCE: carr.frm
}

