; JoWe_PHC.frm, August 1996
; old formulas


JoWe_02_PHC(XYAXIS) { ; Jo Weber [100424,35], 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                      z = pixel
                      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1))
                      z=(fn1(a1)*evenodd+fn2(a2)*fn1(a3)*oddeven)*pixel,
   }



JoWe_03_PHC_n { ; Jo Weber [100424,35], 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                      z = c = pixel:
                      a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1))
                      t=fn1(z)
                      z = (c^(sqr(t))-c*fn2(t))*evenodd+(c^(fn1(a3)/fn2(a2)))*oddeven+c,
  |z|>=0.5
   }



JoWe_03_PHC_n1 {; Jo Weber [100424,35], 1996    Requires passes=1
  z = c = pixel:
  a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1))
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  b2=(fn1(a2)-fn2(a1)*fn2(a3))*whitesq-(c^(fn1(a3)/fn2(a2)))*(whitesq==0)
  z=b1
  b3=(1.0>=|z|)
  if (b3)
    z=b2
  endif
  1.0>=|z|
  ;SOURCE: phc.frm
}



JoWe_04_PHC {; Jo Weber [100424,35], 1996       Requires passes=1
  z = c =pixel:
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  a1=fn1(z), a2=p1/a1
  b2=(a1-a2+pixel)*(whitesq==0)+c*a1*(a2-0.34)*whitesq
  z=b1
  b3=(|z|<=4)
  if (b3)
    z=b2
  endif
  |z|<=4
  ;SOURCE: phc.frm
}


JoWe_11b_PHC(XYAXIS) { ; Jo Weber [100424,35], 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                         z = pixel
                         p=1*(|p1|<0)+p1 :
                         a1=fn1(z), a2=fn2(p/a1),
                         a1=a1*evenodd, a2=a2*oddeven,
                         z=(a1+a2)^pixel,
           |z|<=4
   }


JoWe_11b_PHC2(XYAXIS) { ; Jo Weber [100424,35], 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                         z = pixel
                         p=1*(|p1|<0)+p1 :
                         a1=fn1(z), a2=fn2(p/a1),
                         a1=a1*evenodd, a2=a2*oddeven,
                         z=(a1-a2)^pixel,
           |z|<=4
   }


JoWe_13_PHC { ; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  c = p1
  z = pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a-b)*evenodd+(a^b)*oddeven
  }



JoWe_14_PHC { ; Jo Weber, 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c =pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a/b)*evenodd+(a*b)*oddeven
  }


JoWe_14_PHC_2 { ; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  c=p1
  z=pixel:
  a=fn1(z)*c*evenodd
  b=c/fn2(z)*oddeven
  z=a+b*pixel
}


JoWe_19_PHC { ; Jo Weber, 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*evenodd
  |z|>=0.5
}

JoWe_19_PHC_2 { ; Jo Weber, 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*evenodd-c*fn2(t)*oddeven
  |z|>=0.5
}

JoWe_19_PHC_3 { ; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*evenodd-p1*fn3(t)*oddeven
  |z|>=0.5
}

JoWe_19_PHC_4 { ; Jo Weber, 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*evenodd+(c*fn2(t)*oddeven)
}



JoWe_CN_02_PHC(XAXIS){; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  pm1 = p1-1.51,  z = pixel :
  oldz = z,
  z = (pm1*(z^p1)*oddeven +1)/(p1 * z^pm1)+z*evenodd
  |(z-oldz)|>=|0.001|
}


JoWe_CN_02a_PHC(YAXIS){; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1)*evenodd +1)/(p1 * z^pm1)+oldz*oddeven,
		    |(z-oldz)|>=|0.001|
  }


JoWe_CN_12_PHC{; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1)*evenodd +0.5)/(p1 * z^pm1)+oldz*oddeven,
		    |(z-oldz)|>=|0.001|
  }


JoWe_CN_12_PHC_2{; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1)*evenodd +0.5)/(p1 * z^pm1)+z*oddeven,
		    |(z-oldz)|>=|0.001|
  }


;; ---------------------------------------------------------------------------
;;
;; September 1996
;; new formulas



JoWe_what_10_PHC { ; Jo Weber [100424,35], 9/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                  z = pixel:
                          a1=sqr(z), a2=p1/a1,
                          b1=(fn1(z)*fn2(z)+(p1/z*z)+pixel)*evenodd,
                          b2=(fn1(z)*fn2(z)+a2+pixel)*oddeven,
                          z=b1-b2,
		|z|>=0.05
   }

JoWe_CN_01_PHC    { ; Jo Weber, 9/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1)*evenodd +1)/(p1 * z^pm1)+z*oddeven
		    |(z-oldz)|>=|0.001|
  }

JoWe_what_02m_PHC { ; Jo Weber [100424,35], 9/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                  z = pixel:
                  a1=sqr(z), a2=(2/a1)*evenodd,
                  z=a1*oddeven+a2+pixel,
   }



JoWe_04a_PHC(XYAXIS) { ; Jo Weber [100424,35], 9/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
           pixel=abs(real(pixel)) + flip(imag(pixel))
           pixel=real(pixel) + flip(abs(imag(pixel)))
           z = pixel:
           a1=fn1(z), a2=p1/a1,
           z=a1*evenodd+a2*oddeven+pixel,
   }


JoWe_04b_PHC(XYAXIS) { ; Jo Weber [100424,35], 9/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
           pixel=pixel*(-1)^(pixel>0)
           z = pixel:
           a1=fn1(z), a2=fn2(p1/a1),
           z=a1*evenodd+a2*oddeven+pixel,
   }


JoWe_04c_PHC(XYAXIS) { ; Jo Weber [100424,35], 9/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                z = pixel:
                a1=fn1(z), a2=p1/a1,
                z=fn2(a1)*oddeven+fn3(a2)*evenodd+pixel,
   }




JoWe_14_PHC_3 { ; Jo Weber, 9/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  c=p1*oddeven
  z=pixel:
  a=fn1(z)*c*evenodd
  b=c/fn2(z)*oddeven
  z=(a+b)*pixel
}

JoWe_20_PHC { ; Jo Weber, 9/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  t1=c^t
  u=fn2(z)
  t2=c^u
  t3=t1*oddeven+t2*evenodd
  z = c^(sqr(t3))
  |z|>=0.5
}

