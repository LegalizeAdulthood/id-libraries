Carr2458 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel))
  pm1=p1-1
  m3=cabs(newpixel+0.5)*conj(conj(newpixel^7))
  z=(m3-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel)))-0.25:
  oldz=z
  z=(pm1*(z^p1)+1)/((p1*z^pm1))
  |real(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}
Carr2433 {; Sylvie Gallet [101324,3444], Mod. BEJ
          ; Revised for Fractint v20 by G. Martin
  z=conj(conj(pixel/3-conj(0.10/pixel)))
  c=conj(pixel^3)-conj(0.10/pixel)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1)
  pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)
  iter=iter+1
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}
