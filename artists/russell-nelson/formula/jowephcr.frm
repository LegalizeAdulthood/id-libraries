; JoWe_PHC.frm, September 1996
; new formulas, corrected for fractint v19.5
; Not useable with the images in jo_we_42, which are using float=no!



JoWe_what_10_PHC = { ; Jo Weber [100424,35], 9/1996
                     ; needs float=yes & passes=1
   z = pixel:
   a1=sqr(z), a2=p1/a1,
   b1=(fn1(z)*fn2(z)+(p1/z*z)+pixel)*whitesq,
   b2=(fn1(z)*fn2(z)+a2+pixel)*(whitesq==0),
   z=b1-b2,
   |z|>=0.05
}

JoWe_CN_01_PHC =  { ; Jo Weber, 9/1996
                    ; needs float=yes & passes=1
   pm1 = p1-1,  z = pixel :
   oldz = z,
   z = (pm1*(z^p1)*whitesq +1)/(p1 * z^pm1)+z*(whitesq==0)
   |(z-oldz)|>=|0.001|
}

JoWe_what_02m_PHC = { ; Jo Weber [100424,35], 9/1996
                      ; needs float=yes & passes=1
   z = pixel:
   a1=sqr(z), a2=(2/a1)*whitesq,
   z=a1*(whitesq==0)+a2+pixel,
}



JoWe_04a_PHC(XYAXIS) = { ; Jo Weber [100424,35], 9/1996
                         ; needs float=yes & passes=1
   pixel=abs(real(pixel)) + flip(imag(pixel))
   pixel=real(pixel) + flip(abs(imag(pixel)))
   z = pixel:
   a1=fn1(z), a2=p1/a1, 
   z=a1*whitesq+a2*(whitesq==0)+pixel,
}


JoWe_04b_PHC(XYAXIS) = { ; Jo Weber [100424,35], 9/1996
                         ; needs float=yes & passes=1
   pixel=pixel*(-1)^(pixel>0)
   z = pixel:
   a1=fn1(z), a2=fn2(p1/a1), 
   z=a1*whitesq+a2*(whitesq==0)+pixel,
}


JoWe_04c_PHC(XYAXIS) = { ; Jo Weber [100424,35], 9/1996
                         ; needs float=yes & passes=1
   z = pixel:
   a1=fn1(z), a2=p1/a1, 
   z=fn2(a1)*(whitesq==0)+fn3(a2)*whitesq+pixel,
}




JoWe_14_PHC_3 = { ; Jo Weber, 9/1996
                  ; needs float=yes & passes=1
  c=p1*(whitesq==0)
  z=pixel:
  a=fn1(z)*c*whitesq
  b=c/fn2(z)*(whitesq==0)
  z=(a+b)*pixel
}

JoWe_20_PHC = { ; Jo Weber, 9/1996
                ; needs float=yes & passes=1
  z = c = pixel:
  t=fn1(z) 
  t1=c^t 
  u=fn2(z) 
  t2=c^u 
  t3=t1*(whitesq==0)+t2*whitesq
  z = c^(sqr(t3))
  |z|>=0.5
}

