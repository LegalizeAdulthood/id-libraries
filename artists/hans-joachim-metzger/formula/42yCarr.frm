Carr3029 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=abs(conj(pixel)*flip(pixel))+0.4
  b4=b5-conj(0.01/pixel-flip(0.0015/pixel-flip(0.01/b5)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z+(c-1)*(z-c) 
  iter=iter+1
  (imag(z)-cabs(2*real(z)))^3<=32-sqr(real(z)+sin(imag(z)))
  ;SOURCE: 42ycarr.frm
}
 
Carr3030 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=abs(conj(pixel^2))*flip(abs(pixel))
  b4=b5-conj(0.01/pixel-flip(0.0015/pixel-flip(0.01/b5)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z+(c-1)*(z-c/8) 
  iter=iter+1
  (imag(z)-cabs(2*real(z)))^3<=32-sqr(real(z)+sin(imag(z)))
  ;SOURCE: 42ycarr.frm
}
 
Carr3031 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=sin(pixel)/(tanh(0.3/pixel))
  b4=pixel-asin(0.33-pixel^3)
  c=whitesq*(|b4|)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7956,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3032 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=(flip(pixel)/(tanh(0.3/pixel)))-conj(0.1/pixel-flip(0.01/pixel))
  b4=conj(conj(pixel))-asin(0.33-pixel^5)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7956,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3033 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=(pixel/2-conj(asin(pixel)))
  b4=(flip(pixel)/(flip(0.3/pixel)))-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7956,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3034 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; optimized by Sylvie Gallet
	  ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
	  ; passes=1 needs to be used with this PHC formula.
  b5 = cabs(0.33-cos(pixel)) / (0.33-tan(3*pixel)) - 0.4
  b4 = (|pixel| - (0,0.001))*(pixel-conj(0.01/pixel))
  IF (whitesq)
    c = b4/6 + (-0.6756,-0.132), z0 = z = b5
  ELSE
    c = - conj(b4)/6 + (-0.6756,-0.132), z0 = z = - sqr(b5)
  ENDIF
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  IF (iter==l1)
    z = 0, c = 0.25*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l2)
    z = 0, c = 0.375*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l3)
    z = 0, c = 0.5625*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l4)
    z = 0, c = 0.84375*z0 + (-0.6756,-0.132)
  ENDIF
  z = z*z + c
  iter = iter+1
  z <= bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3035 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=cabs(0.33-cos(pixel))/(0.33-tan(3*pixel))-0.4
  b4=conj(pixel)*(pixel-flip(0.001/pixel))*(pixel-conj(0.01/pixel))\
      *(pixel-conj(0.1/b5))+0.5
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.6856,-0.132)
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3036 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(0.33-cos(newpixel))/(0.33-tan(3*newpixel))-0.4
  b4=conj(newpixel)*(newpixel-flip(0.001/newpixel))*(newpixel-conj(0.01/newpixel))\
      *(newpixel-conj(0.1/b5))+0.5
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.6856,-0.132)
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3037 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=cabs(0.33-cosxx(pixel))/(0.33-tan(3*pixel))-0.4
  b4=conj(pixel)*(pixel-flip(0.001/pixel))*(pixel-cabs(0.01/pixel))\
      *(pixel-cabs(0.1/b5))+0.5
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7056,-0.112)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3038 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=cabs(0.33-conj(pixel))/(0.5-cos(5*pixel))-0.4
  b4=conj(pixel)*(pixel-flip(0.001/pixel))*(pixel-cabs(0.01/pixel))\
      *(pixel-cabs(0.1/b5))
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7056,-0.112)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3039 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=sinh(tanh(0.63-cos(pixel)))/(conj(2*pixel+0.6))
  b5=(conj(0.33-cos(pixel))/(0.33-tan(2*pixel)))-0.3
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7056,-0.112)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3040 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=pixel*sqr(pixel)-conj(0.01/pixel)-flip(0.015/pixel)+0.5
  b4=(-0.6256,-0.090)/1.5
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7456,-0.132)+(c/8.5)+c/1.75
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3041 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel)*sqr(0.25-pixel)-conj(0.01/pixel)-flip(0.0015/pixel)+0.5
  b4=(-0.6256,-0.090)/1.5
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3042 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel)*sqr(0.25-pixel^3)-conj(0.01/pixel)\
      -flip(0.0015/pixel)+0.5
  b4=(-0.6256,-0.090)/1.5
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3043 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=pixel^2.8-conj(pixel/5)
  b4=b5-conj(0.1/b5-flip(0.01/b5))
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3044 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  m1=1/pixel, m=conj(m1), m2=0.125*pixel+cabs(pixel^4.9)
  b5=m2-tanh(pixel/3)^4-conj(sinh(pixel^2.3))+sqr(m/(1.5*m1))
  b4=pixel-0.5
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3045 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel^5)-conj(0.1/pixel-flip(0.01/pixel))-0.45
  m1=1/pixel, m=conj(m1), m2=sqr(sqr(0.125*pixel+cabs(pixel^4.9)))
  b4=m2-tanh(pixel)^2-conj(tan(pixel^4.3))\
      +sqr(cos(m/6)/sin(m1/4))-conj(0.1/b5-flip(0.01/b5))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3046 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  r=17*pixel/24
  b5=(2*pixel^4)-r-sin(0.8*pixel-flip(0.01/pixel))\
      +conj(0.1275/pixel)+0.15
  b4=(2*pixel^4)-r-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3047 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(abs(sin(pixel)))-pixel+conj(0.035/pixel)-flip(0.001/pixel)
  b5=abs(4.25*pixel-conj(0.01/pixel-flip(0.001/pixel)))-0.1
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3048 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(abs(sin(pixel)))-pixel+conj(0.035/pixel)-flip(0.001/pixel)
  b5=abs(conj(conj(4.25*pixel-conj(0.01/pixel-flip(0.001/pixel)))))-0.35
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3049 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(abs(sin(pixel)))-pixel+conj(0.035/pixel)-flip(0.001/pixel)
  b5=abs(conj(conj(6.25*pixel-conj(0.01/pixel-flip(0.001/pixel)))))-0.1
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3050 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(abs(sin(pixel)))-pixel+conj(0.035/pixel)-flip(0.001/pixel)
  b5=pixel/(tanh(0.3/pixel))+0.3
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3051 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=flip(imag(0.33-pixel))*pixel^3-conj(0.1/pixel-flip(0.01/pixel))-0.4
  b4=pixel/(tanh(0.3/pixel))+0.3
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3052 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(imag(0.33-pixel))*pixel^2-conj(0.01/pixel-flip(0.001/pixel))
  b5=pixel/(tanh(0.3/pixel))+0.3
  c=whitesq*abs(b4)-(whitesq==0)*conj(b4)
  z=whitesq*flip(b5)-(whitesq==0)*(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7056,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3053 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=pixel-flip(0.01/pixel)-conj(0.1/pixel)+0.285
  b4=conj(flip(sqr(sqr(pixel-conj(0.15/pixel)))))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3054 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)+0.285
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3055 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)
  b5=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(0.1/b4)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3056 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)
  b5=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(0.1/b4)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3057 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(0.1/b5)^3
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(|b5|)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3058 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(|0.1/b5|)^5
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(|b5|)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3059 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)-0.4
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(|0.1/b5|)^5
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(|b5|)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3060 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel)-flip(0.01/newpixel)-conj(|0.1/newpixel|)^3
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(0.1/b5)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3061 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(conj(abs((newpixel*newpixel)))) 
  b5=newpixel-conj(asin(newpixel+newpixel+0.32))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/10))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3062 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(conj(abs((newpixel^0.5)))) 
  b5=flip(imag(newpixel))-conj(asin(newpixel*3+0.32))\
      -flip(0.01/b4-conj(0.1/b4))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3063 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(conj(abs((newpixel^0.5)))) 
  b5=conj(newpixel*newpixel)/flip(1-newpixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3064 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(conj(abs((newpixel^0.5)))) 
  b5=flip(newpixel*newpixel)/conj(1-newpixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3065 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(1+1.5/newpixel)/(cosxx(2/newpixel-0.25))
  b5=(flip(newpixel*newpixel)/conj(1-newpixel))+0.4
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3066 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(sin(0.1/newpixel))-conj(sin(0.01/newpixel))
  b4=(0.33-cos(newpixel))/(0.33-tan(newpixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3067 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^2-flip(sin(0.1/newpixel))-conj(sin(0.01/newpixel))
  b4=(0.50-cos(newpixel))/(0.33-cosxx(newpixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3068 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-conj(0.1/newpixel)+0.1
  b4=newpixel-flip(0.1/newpixel)-conj(0.001/newpixel)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
   ;z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3069 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(conj(abs((newpixel^2))))+0.45
  b4=newpixel-conj(0.01/newpixel)-flip(0.1/newpixel-conj(0.1/b5))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3070 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=abs(conj(newpixel)*flip(newpixel))+0.15
  b4=b5^3-conj(0.1/newpixel-flip(0.015/newpixel-flip(0.1/b5)))+0.4
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3071 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^5+0.4)-cos(0.01/newpixel)
  b4=0.55*((2*newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3072 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Corrected typo (0.4.75 to 0.475), G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^5+0.475)-cos(0.01/newpixel)
  b4=b5-conj(0.1/b5-flip(0.01/b5))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
Carr3073 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5= tanh(newpixel) - 5*newpixel*((0.3,0.6)+newpixel)
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
 
