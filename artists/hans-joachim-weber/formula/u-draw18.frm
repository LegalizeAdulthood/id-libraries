u-draw18_01 {; Sylvie Gallet, Bob Carr
  z=fn1(fn2(pixel+p1)^e)-fn3(conj(pixel+p2)^7)
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + (-0.75,-0.15) + flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw18.frm
}

u-draw18_04 {; Sylvie Gallet, Bob Carr
  z=fn1(fn2(sinh(pixel+p1))^e)-fn3(pixel+p2)^7
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + (-0.75,-0.15) + flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw18.frm
}

u-draw19_00 {; via formulas by Sylvie Gallet as modified by Bob Carr
  z=fn1(fn2(sinh(fn3(pixel+p1))^e))\
      -conj(sinh(pixel+p2)^7)-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqr(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw19.frm
}

