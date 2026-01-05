ComplexNewton_01    {; Jon Horner (ex-CAL) [ not sure about this one ]
                     ; modified by Jo Weber, 6/1996
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_02(XAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_02a(YAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_03(XAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
  }

ComplexNewton_03a(YAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
  }

ComplexNewton_04(XAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_04a(YAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_05(XAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_05a(YAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_06{; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_07{; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
  }

ComplexNewton_08{; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_09{; Jon Horner 
                 ; modified by Jo Weber, 6/1996
                 ; requires float=yes                      
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn1((pm2*(z^p1) +1)/(p1 * z^pm1)),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_10{; Jon Horner 
                 ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_11{; Jon Horner 
                 ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn3(fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1)),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_12{; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +0.5)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

JoWe_01(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                      z = pixel
                      a1=sqr(z), a2=1/a1, a3=1/(sqr(a1)) 
                      z=a1+a2+a3+pixel,
  }

JoWe_02(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel,
  }

JoWe_02_1(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                      z = pixel
                      a1=sqr(z), a2=p1/a1, a3=p2/(sqr(a1)) 
                      z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel,
  }

JoWe_02a(XAXIS) { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)+fn1(a2)*fn1(a3))*pixel,
  }

JoWe_03(XAXIS) { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)+fn2(a2)+fn1(a3))*z,
  }

JoWe_03a(XAXIS) { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)+fn1(a2)+fn1(a3))*z,
  }

JoWe_03m { ; Jo Weber [100424,35], 6/1996
               z = pixel:
               z=fn1(z)*z
               |z|>=0.05
  }

JoWe_04(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=fn1(z), a2=p1/a1, 
                          z=a1+a2+pixel,
  }

JoWe_04a(XYAXIS) { ; Jo Weber [100424,35], 6/1996
			  pixel=abs(real(pixel)) + flip(imag(pixel))
                          pixel=real(pixel) + flip(abs(imag(pixel)))
		          z = pixel:
		          a1=fn1(z), a2=p1/a1, 
                          z=a1+a2+pixel,
  }

JoWe_04b(XYAXIS) { ; Jo Weber [100424,35], 6/1996
			  pixel=pixel*(-1)^(pixel>0)
		          z = pixel:
		          a1=fn1(z), a2=p1/a1, 
                          z=a1+a2+pixel,
  }

JoWe_04b_XY   { ; Jo Weber [100424,35], 10/1996
                  bailout=p3
		  pixel=pixel*(-1)^(pixel>0)
		  z = pixel:
                  x1=real(z),  y1= imag(z)
                  x1=x1-fn1(x1-fn2(x1))
                  y1=y1-fn1(y1-fn2(y2))
                  z=p1*x1+p2*y1
                  |z|<=bailout
  }

JoWe_04c(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=fn1(z), a2=p1/a1, 
                          z=fn2(a1)+fn3(a2)+pixel,
  }

JoWe_05(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=a1+a2+pixel,
  }

JoWe_05m { ; Jo Weber [100424,35] 9/1996
               z = pixel:
               a1=sqr(z), a2=1/a1,
               z=fn1(a1)+a2+pixel,
               |z|>=0.05
  }

JoWe_05m2 { ; Jo Weber [100424,35] 9/1996
                  z = pixel:
                  z=fn1(z*z)+(1/z*z)+pixel,
                  |z|>=0.05
  }

JoWe_06(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=a1+a2,
  }

JoWe_06m_01 { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               a1=1/fn1(z)
               z=a1+pixel
  }

JoWe_06m_02 { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               z=fn1(z)*fn1(z)*p2-pixel
  }

JoWe_06m_03a { ; Jo Weber [100424,35], 10/1996
               ; bailout = p2
               z = pixel
               bailout=p2:
               a1=fn2(p1/fn1(z))
               z=a1+pixel
               |z|<=bailout
  }

JoWe_06m_03b { ; Jo Weber [100424,35], 10/1996
               ; bailout = p2
               z = pixel
               bailout=p2:
               a1=fn2(p1/fn1(z))
               z=a1+z
               |z|<=bailout
  }

JoWe_06m_04 { ; Jo Weber [100424,35], 10/1996
              ; bailout = p3
                z = pixel
                bailout = p3 :
                temp=p1/(fn2(z)*fn3(z))
                a1=1/temp
                a2=pixel^2
                z=a1+a2
                |z|<=bailout
  }

JoWe_06m_05 { ; Jo Weber [100424,35], 10/1996
              ; bailout = p3
                z = pixel*pixel-(1-pixel)
                bailout = p3 :
                temp=p1/(fn1(z)*fn2(z))
                a1=1/temp
                a2=pixel^2
                z=a1+a2
                |z|<=bailout
  }

JoWe_06m_05o { ; Jo Weber [100424,35], 10/1996
              ; bailout = p1
               z = pixel
               bailout=p1:
               z=fn1(z*z)*pixel+z
               |z|<=bailout
  }

JoWe_06m_PHC { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               a1=1/fn2(z)
               z=(fn1(z)*z)*(whitesq==0)+a1*whitesq+pixel
  }

JoWe_06m_PHC_1 { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               a1=p1/fn2(z)
               z=(fn1(z)*fn1(z)*p2-pixel)*(whitesq==0)+(a1-pixel)*whitesq
  }

JoWe_06m_PHC_1a { ; Jo Weber [100424,35], 10/1996
               ; baiout = p2
               z = pixel
               bailout=p2:
               a1=p1/fn2(z)
               z=(fn1(z*z)*pixel+z)*whitesq+(a1+pixel)*(whitesq==0)
               |z|<=bailout
  }

JoWe_06m_PHC_2 { ; Jo Weber [100424,35], 10/1996
                 ; bailout = p3
               z = pixel
               bailout=p3:
               a1=fn3(p1/fn2(z))
               z=(fn1(z)*fn1(z)*p2+pixel^2)*(whitesq==0)+(a1+pixel)*whitesq
               |z|<=bailout
  }

JoWe_07(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=a1+a2-pixel,
  }

JoWe_08(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)*pixel,
  }

JoWe_09(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)/pixel,
  }

JoWe_10(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)^pixel,
			  |z|>=0.1
  }

JoWe_10a(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=fn2(p)/a1, 
                          z=(a1+a2)^pixel,
			  |z|>=0.1
  }

JoWe_10b(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=fn2(p/a1), 
                          z=(a1+a2)^pixel,
			  |z|>=0.1
  }

JoWe_11(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)^pixel,
			  |z|<=4
  }

JoWe_11a(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=fn2(p)/a1, 
                          z=(a1+a2)^pixel,
			  |z|<=4
  }

JoWe_11b(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=fn2(p/a1), 
                          z=(a1+a2)^pixel,
			  |z|<=4
  }

JoWe_12 { ; Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
  |z|<5
  }

JoWe_13 { , Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
  }

JoWe_22_PHC  { ; Jo Weber [100424,35] 9/1996
               ; mandel+julia needs passes=1
  z = c = pixel:
  z=(z*z+c)*whitesq+(z*z*z+(p1-1)*z-p1)*(whitesq==0)
  |z|<=4
  }

JoWe_22_PHC_1  { ; Jo Weber [100424,35] 9/1996 
                 ; needs passes=1
  z = c = pixel:
  z=(z*z+c)*whitesq+(sqr(z)+p1)*(whitesq==0)
  |z|<=4
  }

JoWe_22_PHC_4  { ; Jo Weber [100424,35] 9/1996 
                 ; needs passes=1
  z = c = pixel
  temp = p2:
  z=(temp*temp+c)*whitesq+(z*z*z+(p1-1)*z-p1)*(whitesq==0)
  temp=z
  |z|<=4
  }

JoWe_24 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sin(sqr(cos(p1*z+p2)))
z=fn1(z)
|z|<=bailout
  }

JoWe_25 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*tan(z)-p2*sin(z)
z=fn1(z)
|z|<=bailout
  }

JoWe_25_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
  z = c = pixel, temp=sqr(z):
  a=temp*z+c
  b=p1*temp
  z=a*whitesq+fn1(b)*(whitesq==0)
  }

JoWe_26 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sqr(cos(z))-sqr(sin(z))+tan(z)
z=fn1(z)
|z|<=bailout
  }

JoWe_26_28_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=fn1(sqr(cos(z))-sqr(sin(z))+tan(z))*whitesq+fn2(log(1-sqr(z)))*(whitesq==0)
|z|<=bailout
}

JoWe_26_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
  z = c = pixel, temp=sqr(z):
  a=temp*z
  b=p1*temp
  z=a*whitesq+fn1(b)*(whitesq==0)
  temp=flip(sqr(z))*z
  }

JoWe_27 { ; Jo Weber [100424,35] 9/1996 
   z = pixel,
   bailout=p3:
   z=fn1((p1+sqrt(z))/(p2*z-1))
   |z|<=bailout
  }

JoWe_27_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+b*(whitesq==0)
  }

JoWe_27_PHC_1 { ; Jo Weber [100424,35] 11/1996
z=pixel:
a=sqr((p1+sqrt(z))/(p2*z-1))
b=sqrt((p3+sqrt(z))/(p2*z-1))
z=a*whitesq+b*(whitesq==0)
|z|<=25
  }

JoWe_28 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=fn1(z)
|z|<=bailout
}

JoWe_28_2 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=2*fn1(z)
|z|<=bailout
}

JoWe_28_3 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=p1*fn1(z)+p2*fn2(z)
|z|<=bailout
}

JoWe_28_4 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=p1*fn1(z)+p2*fn2(z)
z=fn3(z)
|z|<=bailout
}

JoWe_28_5 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=p1*fn1(z)+p2*fn2(z)
z=fn3(z)-(z>=0)+(z<0)
|z|<=bailout
}

JoWe_28_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+(sqr(z)+z+b)*(whitesq==0)
}

JoWe_28_PHC_1 { ; Jo Weber [100424,35] 11/1996
pixel=log(1-sqr(pixel))
z=pixel
bailout=p3 :
z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
|z|<=bailout
}

JoWe_28_PHC_2 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
|z|<=bailout
}

JoWe_29 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(sqrt((1-z)/(1+z)))
z=fn1(z)
|z|<=bailout
}

JoWe_29_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+(sqr(z)+z+b)*(whitesq==0)
   |z|<=4
}

JoWe_29m { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=fn1(fn2((p1-z)/(p2+z)))
z=fn3(z)
|z|<=bailout
}

JoWe_30 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=exp(z)*z^2/(p1-z)
z=p2*fn1(z)
|z|<=bailout
}

JoWe_31 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qad=sqr(z)
z=exp(2*z)*(sqr(qad)-3*qad+6*z)
z=fn1(z)
|z|<=bailout
}

JoWe_32 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qwurz=sqrt(z)
su=p1^qwurz
z=log((1+su)/(1-su))
z=fn1(z)
|z|<=bailout
}

JoWe_33 { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel-(1-pixel)
z=c=pixel
bailout=p3 :
z=sqrt(p1*exp(z)+c)
z=fn1(z)
|z|<=bailout
}

JoWe_33_1 { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel-(1-pixel)
z=c=pixel
bailout=p3 :
z=sqr(p1*exp(z)+c)
z=fn1(z)
|z|<=bailout
}

JoWe_33_2 { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel-(1-pixel*pixel)
z=c=pixel
bailout=p3 :
z=fn1(p1*fn2(z))+c
z=fn3(z)
|z|<=bailout
}

JoWe_34 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(exp(z)+1)/(exp(z)-1)
z=fn1(z)
|z|<=bailout
}

JoWe_34_1 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(exp(z)+1)/(exp(z)-1)
z=fn1(z)-(z>=0)+(z<0)
|z|<=bailout
}

JoWe_35 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=3*sin(z)-5*sqr(sqr(sin(z)))
z=fn1(z)
|z|<=bailout
}

JoWe_35_1 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=3*fn1(z)-5*fn2(fn2(fn3(z)))
|z|<=bailout
}

JoWe_35_1_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=3*fn1(z)*whitesq-5*fn2(fn2(fn3(z)))*(whitesq==0)
|z|<=bailout
}

JoWe_35_2 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*fn1(z)-p2*fn2(fn2(fn3(z)))
|z|<=bailout
}

JoWe_35_2_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*fn1(z)*whitesq-p2*fn2(fn2(fn3(z)))*(whitesq==0)
|z|<=bailout
}

JoWe_36 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=z/4-p1*sin(p2*z)
z=fn1(z)
|z|<=bailout
}

JoWe_37 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qad=sqr(tan(z))
z=sqr(qad)-2*qad*tan(z)+4*qad+tan(2*z)
z=fn1(z)
|z|<=bailout
}

JoWe_37_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qad=sqr(tan(z))
z=sqr(qad)-2*qad*tan(z)+4*qad+tan(2*z)
z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
|z|<=bailout
}

JoWe_38 { ; Jo Weber [100424,35] 11/1996
z=c=pixel
bailout=p3 :
z=p2*(fn1(z)/fn2(z))
|z|<=bailout
}

JoWe_38_1 { ; Jo Weber [100424,35] 11/1996
z=c=pixel
bailout=p3 :
z=p2*fn1(z)+c-(z>=0)
|z|<=bailout
}

JoWe_38_PHC { ; Jo Weber [100424,35] 11/1996
z=c=pixel
bailout=p3 :
z=(p1*fn1(z)+c)*whitesq+(p2*(fn2(z)/fn3(z)))*(whitesq==0)
|z|<=bailout
}

JoWe_39 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=3/8*z+0.25*sin(p1*z)+1/32*sin(p2*z)
z=fn1(z)
|z|<=bailout
}

JoWe_40 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*log(sin(p2*z))
z=fn1(z)
|z|<=bailout
}

JoWe_40_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*log(sin(p2*z))
z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
|z|<=bailout
}

JoWe_41 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(z+sqrt(z+1))/(z-sqrt(z-1))
z=fn1(z)
|z|<=bailout
}

JoWe_42 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qad=sqr(z)
z=sqr(qad-sqrt(qad-1))
z=fn1(z)
|z|<=bailout
}

JoWe_43 { ; Jo Weber [100424,35] 11/1996
z=c=pixel
bailout=p3 :
qad=sqr(z)
z=sqrt(qad/(qad-p1*c))
z=p2*fn1(z)
|z|<=bailout
}

JoWe_44 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(p1*z+sqrt(p2*z))/sqrt(z)
z=fn1(z)
|z|<=bailout
}

JoWe_45 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1/sqrt(p2*z)
z=fn1(z)
|z|<=bailout
}

JoWe_46 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1/(p2*sqr(z)*z)
z=fn1(z)
|z|<=bailout
}

JoWe_47 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sqr(z)*z*sqrt(z)
z=fn1(z)
|z|<=bailout
}

JoWe_48 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sqr(z)-p1*z+p2
z=fn1(z)
|z|<=bailout
}

JoWe_49 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*sqrt(p2*exp(z))
z=fn1(z)
|z|<=bailout
}

JoWe_50 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sqrt((exp(p1*z)+1)/(exp(p2*z)-1))
z=fn1(z)
|z|<=bailout
}

JoWe_51m { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=fn1(fn2((p1-z)/(p2+z)))
z=fn3(z)
|z|<=bailout
}

JoWe_52 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
h=fn1(z)+p1
z=z*(h+z)/h
z=p2*fn2(z)
|z|<=bailout
}

JoWe_53 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
h=fn1(z)+p1
z=z*(h+z)/h
z=z-(z>=0)+(z<0)
z=p2*fn2(z)
|z|<=bailout
}

JoWe_54 { ; Jo Weber [100424,35] 11/1996
bailout=p3
pixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
z=c=pixel:
z=c+(z<0)+pixel
|real(z)|<=bailout
}

JoWe_54_1 { ; Jo Weber [100424,35] 11/1996
bailout=p3
pixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
z=c=pixel:
z=z*z+c
|real(z)|<=bailout
}

JoWe_54_PHC { ; Jo Weber [100424,35] 11/1996
bailout=p3
pixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
z=c=pixel:
z=z*z*whitesq+c+((z<0)+pixel)*(whitesq==0)
|real(z)|<=bailout
}

JoWe_55 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=1+tan(z)+tan(z)^2
z=fn1(z)
|z|<=bailout
}

JoWe_55_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
a=fn1(1+tan(z))
b=fn2(tan(z)^2)
z=a*(whitesq==0)+b*whitesq
|z|<=bailout
}

JoWe_56 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sin(z)^3+3*sin(z)^2*cos(z)
z=fn1(z)
|z|<=bailout
}

JoWe_57 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(1+tan(z)^2)/(-1-cotan(z)^2)
z=fn1(z)
|z|<=bailout
}

JoWe_58 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(z)/z
z=fn1(z)+real(z)
|z|<=bailout
}

JoWe_59 { ; Jo Weber [100424,35] 11/1996
z=pixel
a=p1-1, b=p2-2
bailout=p3 :
z=log(z)/z
z1=fn1(z)+real(z)
z2=fn2(z)-real(z)
z=a*flip(z1)/z1+b*conj(z2)/z2
|z|<=bailout
}

JoWe_60 { ; Jo Weber [100424,35] 11/1996
z=pixel
a=p1-1, b=p2-2
bailout=p3 :
z=(1-log(z))/z^2
z1=fn1(z)+real(z)
r1=real(z1)
i1=imag(z1)
z2=fn2(z)-real(z)
r2=real(z2)
i2=imag(z2)
z=a*|z1+r1-r2|+b*(cabs(z2)-i1+i2)
|z|<=bailout
}

JoWe_61 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z1=sqr(sin(z))
z=fn1(sin(z)*(3*cos(z)*(sin(z)+2*cos(z))-z1))
|z|<=bailout
}

JoWe_C_01 { ;Modified Sylvie Gallet frm. [101324,3444]
            ; Jo Weber [100424,35] 11/1996
pixel=exp(2*pixel)*(sqr(sqr(pixel))-3*sqr(pixel)+6*pixel)
z=(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^20.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

JoWe_C_02 { ;Modified Sylvie Gallet frm. [101324,3444]
            ; Jo Weber [100424,35] 11/1996
pixel=1+1/(1+1/(1+1/pixel))
z=(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^20.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

JoWe_C_03 { ;Modified Sylvie Gallet frm. [101324,3444]
            ; Jo Weber [100424,35] 11/1996
pixel=1+1/(1+1/(1+1/pixel))
z=(exp(conj(conj(pixel^150))-cosh(conj(conj(pixel^10.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=0.75*z,c2=1.25*z,c3=2.375*z,c4=3.0625*z,c5=4.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.3
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

JoWe_C_04 { ;Modified Sylvie Gallet frm. [101324,3444]
            ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=(fn1(conj(conj(pixel^400))-fn2(conj(conj(pixel^10.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=0.75*z,c2=1.25*z,c3=2.375*z,c4=3.0625*z,c5=4.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.3
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
}

JoWe_C_28_5 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z+c+0.2*pixel
(|real(z)|) <= bailout
}

JoWe_C_28_5_1 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z+c+pixel
(|imag(z)|) <= bailout
}

JoWe_C_28_5_2 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z+c+pixel
(|real(z)|+|imag(z)|) <= bailout
}

JoWe_C_28_PHC { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z*whitesq+(c+pixel)*(whitesq==0)
(|real(z)|+|imag(z)|) <= bailout
}

JoWe_C_28_PHC2 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z*whitesq+c+pixel*(whitesq==0)
(|real(z)|+|imag(z)|) <= bailout
 }

JoWe_C_28_PHC3 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=log(z*z)*whitesq+c+pixel*(whitesq==0)
(|real(z)|+|imag(z)|) <= bailout
}

JoWe_C_28_PHC4 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=exp(z)*z*whitesq+c+pixel*(whitesq==0)
(|real(z)|+|imag(z)|) <= bailout
}

JoWe_What_03m1_PHC { ; Jo Weber [100424,35] 9/1996
                     ; needs passes=1
               z = c = pixel:
               a1=sqr(z)+c
               a2=(1/a1+c)*(whitesq==0)
               z=fn1(z)*z*whitesq+a2

}

JoWe_What_03m2_PHC { ; Jo Weber [100424,35], 10/1996
               z = c = pixel:
               a1=sqr(z)+c
               a2=(1/a1+c)*(whitesq==0)
               z=fn1(z)*z*whitesq+a2
}

JoWe_What_03m3_PHC { ; Jo Weber [100424,35] 9/1996 
                     ; needs passes=1
               z = c = pixel:
               a1=sqr(z)+c
               a2=(1/a1+c)*z*(whitesq==0)
               z=fn1(z)*whitesq+a2
}

JoWe_What_03m_PHC { ; Jo Weber [100424,35], 9/1996
                    ; needs passes=1
               z = c = pixel:
               a1=(sqr(z)+c)*whitesq
               a2=(1/a1+c)*(whitesq==0)
               z=fn1(z)*z+a2
               |z|>=0.05
}

JoWe_What_04_PHC { ; Jo Weber [100424,35] 9/1996 
                   ; needs passes=1
              z = pixel:
              z=(fn1(z)*z)*whitesq+(1/z*z)*(whitesq==0)+pixel
             |z|>=0.05
}

JoWe_What_04m { ; Jo Weber [100424,35] 9/1996 
               z = pixel:
               a1=1/fn1(z)
               z=a1+pixel
}


JoWe_What_04m_PHC { ; Jo Weber [100424,35] 9/1996 
                    ; needs passes=1
               z = pixel:
               a1=sqr(z), a2=1/fn2(z)
               z=(fn1(z)*z)*(whitesq==0)+a2*whitesq+pixel
}

JoWe_What_05m_PHC { ; Jo Weber [100424,35] 9/1996 
                    ; needs passes=1
               z = pixel:
               a1=sqr(z), a2=1/a1,
               z=fn1(a1)*(whitesq==0)+(a2+pixel)*whitesq
               |z|>=0.05
 }

JoWe_What_07m_PHC { ; Jo Weber [100424,35] 9/1996 
                      ; needs passes=1
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(z)*fn2(z)*whitesq+a2*(whitesq==0)+pixel,
}

JoWe_XY_09 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=(x1*pa1-x1*pa2)+c
  y=(y1*pb1-y1*pb2)+c
  z=fn1(x+y)/2
  |z|<=bailout
}

JoWe_XY_10 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn1(z+pb2)
  z=fn2(x+y)
  |z|<=bailout
}

JoWe_XY_11 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=x+y
  |z|<=bailout
}

JoWe_XY_12 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=fn3(x)+fn3(y)
  |z|<=bailout
}

JoWe_XY_13 { ; Jo Weber [100424,35], 10/1996
	     ; something by Sylvie Gallet or Brian E. Jones
               bailout=p3
               z = pixel*pixel-fn3(1-pixel) :
               x1=real(z),  y1= imag(z)
               x1=p1*x1-fn1(x1-fn2(x1))
               y1=p2*y1-fn1(y1-fn2(y1))
               z=x1+y1
               |z|<=bailout
}

JoWe_XY_13a { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z = sin(pixel)-fn3(1-pixel) :
                x1=real(z),  y1= imag(z)
                x1=p1*x1+fn1(x1+fn2(x1))
                y1=p2*y1-fn1(y1-fn2(y1))
                z=x1+y1
                |z|<=bailout
}

JoWe_XY_14 { ; Jo Weber [100424,35], 10/1996
	     ; something by Sylvie Gallet or Brian E. Jones
	       bailout=p3
               z = pixel*pixel-fn3(1-pixel) :
               x1=real(z),  y1= imag(z)
               x1=x1-fn1(x1-fn2(x1))
               y1=y1-fn1(y1-fn2(y2))
               z=p1*x1+p2*y1
               |z|<=bailout
}

JoWe_XY_14a { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z = pixel*pixel-fn3((1-pixel)*(1-pixel)) :
                x1=real(z),  y1= imag(z)
                x1=p1*x1-fn1(x1-fn2(x1))
                y1=p2*y1-fn1(y1-fn2(y1))
                z=x1+y1
                |z|<=bailout
}

JoWe_XY_14b { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z = pixel*pixel-fn3((1-pixel)*(1+pixel)) :
                x1=real(z),  y1= imag(z)
                x1=p1*x1-fn1(x1-fn2(x1))
                y1=p2*y1-fn1(y1-fn2(y1))
                z=x1+y1
                |z|<=bailout
}

JoWe_XY_14c { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z = fn3((1+pixel)*(1+pixel))-conj(pixel)-fn3(flip(1-pixel)) :
                x1=real(z),  y1= imag(z)
                x1=p1*x1-fn1(x1-fn2(x1))
                y1=p2*y1-fn1(y1-fn2(y1))
                z=x1+y1
                |z|<=bailout
}

JoWe_XY_16 { ; Jo Weber [100424,35], 10/1996
	     ; something by Sylvie Gallet or Brian E. Jones
               bailout=p3
               z = pixel*pixel-fn3(1-pixel) :
               x1=real(z),  y1= imag(z)
               x1=x1-p1*fn1(x1-fn2(x1))
               y1=y1-p2*fn1(y1-fn2(y1))
               z=x1+y1
               |z|<=bailout
}

JoWe_XY_17 { ; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
               bailout=p3
               z = pixel*pixel-fn3(1-pixel) :
               x1=real(z),  y1= imag(z)
               x1=x1-p1*fn1(x1-fn2(y1))
               y1=y1-p2*fn1(y1-fn2(x1))
               z=x1*y1
               |z|<=bailout
}

JoWe_XY_17a { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                pixel=abs(real(pixel))+flip(imag(pixel))
                z = pixel :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
}

JoWe_XY_17a0 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 z = pixel*pixel-fn3(1-pixel) :
                 x1=real(z),  y1= imag(z)
                 x1=x1-p1*fn1(x1-fn2(y1))
                 y1=y1-p2*fn1(y1-fn2(x1))
                 z=x1/y1
                 |z|<=bailout
}

JoWe_XY_17a2 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 pixel=abs(real(pixel))+flip(imag(pixel))
                 z = pixel :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(x1-fn2(y1))
                 y1=y1-fn1(y1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
}

JoWe_XY_17a3 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 pixel=abs(real(pixel))+flip(imag(pixel))
                 z = pixel :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(y1-fn2(y1))
                 y1=y1-fn1(x1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
}

JoWe_XY_17b { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=conj(conj(pixel/3-conj(0.10/pixel))) :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
}

JoWe_XY_17b2 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 z=conj(conj(pixel/3-conj(0.10/pixel))) :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(x1-fn2(y1))
                 y1=y1-fn1(y1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
}

JoWe_XY_17b3 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 z=conj(conj(pixel/3-conj(0.10/pixel))) :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(y1-fn2(y1))
                 y1=y1-fn1(x1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
}

JoWe_XY_17c { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                pixel=-abs(real(pixel))+flip(imag(pixel))
                z=pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6 :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
}

JoWe_XY_17d { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                pixel=-abs(real(pixel))+flip(imag(pixel)),
                z=cabs(2*pixel)-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6 :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
}

JoWe_XY_17d2 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 pixel=-abs(real(pixel))+flip(imag(pixel)),
                 z=cabs(2*pixel)-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6 :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(x1-fn2(y1))
                 y1=y1-fn1(y1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
}

JoWe_XY_17e { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=(pixel-conj(0.10/pixel))-0.4,c=2*pixel-1/log(cos(1/pixel)):
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
}

JoWe_XY_17f { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=(2*pixel-conj(0.10/pixel)) :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
}

JoWe_XY_17g { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=(2*conj(pixel)-conj(0.30/pixel))+0.2 :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
               |z|<=bailout
}

JoWe_XY_17h { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                pixel=-abs(real(pixel))+flip(imag(pixel))
                z=(2*tanh(pixel)-conj(0.10/pixel))+0.2:
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
}

JoWe_XY_18 { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=1/fn3(z)
|z|<=bailout
}

JoWe_XY_18a { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_18b { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)+pixel
|z|<=bailout
}

JoWe_XY_18c { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)+pixel*pixel
|z|<=bailout
}

JoWe_XY_18d { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)
z=fn3(z)+pixel
|z|<=bailout
}

JoWe_XY_19 { ; Jo Weber [100424,35] 11/1996
pixel=1+1/(1+1/(1+1/pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=1/fn3(z)
|z|<=bailout
}

JoWe_XY_20 { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=1/fn3(z)
|z|<=bailout
}

JoWe_XY_20a { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_20b { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)
z=fn3(z)
|z|<=bailout
}

JoWe_XY_20c { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)*z+pixel
z=fn3(z)
|z|<=bailout
}

JoWe_XY_20d { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)*z
z=fn3(z)+pixel
|z|<=bailout
}

JoWe_XY_21 { ; Jo Weber [100424,35] 11/1996
pixel=sin(pixel)+cos(pixel)/(sin(pixel)-cos(pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)
z=fn3(z)+pixel
|z|<=bailout
}

JoWe_XY_22 { ; Jo Weber [100424,35] 11/1996
pixel=1+sqr(tan(pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_23 { ; Jo Weber [100424,35] 11/1996
pixel=-1-sqr(cotan(pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_24 { ; Jo Weber [100424,35] 11/1996
pixel=sin(sqr(cos(2*pixel+3)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_25 { ; Jo Weber [100424,35] 11/1996
pixel=0.5*tan(pixel)-2*sin(pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_25_PHC { ; Jo Weber [100424,35] 11/1996
pixel=0.5*tan(pixel)-2*sin(pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=atanh(z)*whitesq+log(z)*(whitesq==0)
|z|<=bailout
}

JoWe_XY_26 { ; Jo Weber [100424,35] 11/1996
pixel=sqr(cos(pixel))-sqr(sin(pixel))+tan(pixe)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_27 { ; Jo Weber [100424,35] 11/1996
pixel=(1+sqrt(pixel))/(2*pixel-1)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_28 { ; Jo Weber [100424,35] 11/1996
pixel=log(1-sqr(pixel))
z=pixel
bailout=p3 :
z=fn1(z)
|z|<=bailout
}

JoWe_XY_28_PHC { ; Jo Weber [100424,35] 11/1996
pixel=log(1-sqr(pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
z=fn3(z)
|z|<=bailout
}

JoWe_XY_29 { ; Jo Weber [100424,35] 11/1996
pixel=log(sqrt((1-pixel)/(1+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_31 { ; Jo Weber [100424,35] 11/1996
qad=sqr(pixel)
pixel=exp(2*pixel)*(sqr(qad)-3*qad+6*pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_31_PHC { ; Jo Weber [100424,35] 11/1996
qad=sqr(pixel)
pixel=exp(2*pixel)*(sqr(qad)-3*qad+6*pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=z*whitesq+fn3(z)*(whitesq==0)
|z|<=bailout
}

JoWe_XY_39 { ; Jo Weber [100424,35] 11/1996
pixel=3/8*pixel+0.25*sin(pixel)+1/32*sin(pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_40 { ; Jo Weber [100424,35] 11/1996
pixel=p1*log(sin(p2*pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
|z|<=bailout
}

JoWe_XY_41 { ; Jo Weber [100424,35] 11/1996
pixel=(pixel+sqrt(pixel+1))/(pixel-sqrt(pixel-1))
z=pixel
bailout=p3 :
x=real(z), y=imag(z)
x=x+fn1(x+fn2(x))
y=y+fn1(y+fn2(y))
z=p1*x+p2*y
z=x+y
z=fn3(z)
|z|<=bailout
}

JoWe_XY_42 { ; Jo Weber [100424,35] 11/1996
pixel=sqr(sqr(pixel)-sqrt(sqr(pixel)-1))
z=pixel
bailout=p3 :
x=real(z), y=imag(z)
x=x+fn1(x-fn2(x))
y=y+fn1(y-fn2(y))
z=(p1*x+p2*y)/2
z=fn3(z)
|z|<=bailout
}

JoWe_XY_43 { ; Jo Weber [100424,35] 11/1996
qad=sqr(pixel)
pixel=sqrt(qad/(qad-pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_45 { ; Jo Weber [100424,35] 11/1996
pixel=5/sqrt(0.5*pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_46 { ; Jo Weber [100424,35] 11/1996
pixel=0.1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=1/fn3(z)
|z|<=bailout
}

JoWe_XY_51m { ; Jo Weber [100424,35] 11/1996
k=(6 4), l = (0 4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_54 { ; Jo Weber [100424,35] 11/1996
bailout=p3
pixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
z=c=pixel:
x=real(z), y=imag(z)
r1=x*y, r2=p2*x/y, r3=x+y
x=r1-r2, y=r2-r3
z=(x+y)/2+(z>0)+pixel
|z|<=bailout
}

JoWe_XY_PHC_14 { ; Jo Weber [100424,35], 10/1996
                 ; something by Sylvie Gallet or Brian E. Jones
                   bailout=p3
                   z = pixel*pixel-fn3(1-pixel) :
                   x1=real(z),  y1= imag(z)
                   x1=x1-fn1(x1-fn2(x1))
                   y1=y1-fn1(y1-fn2(y2))
                   z=p1*x1*whitesq+p2*y1
                   |z|<=bailout
}

JoWe_XY_PHC_14c { ; Jo Weber [100424,35], 10/1996
                  ; something by Sylvie Gallet or Brian E. Jones
                    bailout=p3
                    z = fn3((1+pixel)*(1+pixel))-conj(pixel)-fn3(flip(1-pixel)) :
                    x1=real(z),  y1= imag(z)
                    x1=p1*x1-fn1(x1-fn2(x1))
                    y1=p2*y1-fn1(y1-fn2(y1))
                    z=x1*whitesq+y1*(whitesq==0)
                    |z|<=bailout
}

Whatever_00m(XAXIS) { ; Original formula Whatever_the_name
                        ; corrected by Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=sqr(z), a2=1/a1, 
                          z=a1+a2+pixel,
}

Whatever_01(XYAXIS) { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=z*z+(1/z*z)+pixel,
}

Whatever_01m(XYAXIS) { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=sqr(z), a2=1/a1, 
                          z=a1+a2+pixel,
}

Whatever_02 { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=z*z+(2/z*z)+pixel,
}

Whatever_02m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=2/a1,
                  z=a1+a2+pixel,
}

Whatever_03 { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*z+(1/z*z)+pixel,
                  |z|>=0.05
}

Whatever_03m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(z)*z+a2+pixel,
                  |z|>=0.05
}

Whatever_04(XYAXIS) { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*z+(1/z*z)+pixel,
                          |z|>=0.05
}

Whatever_04m(XYAXIS) { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=1/a1,
                          z=fn1(z)*z+a2+pixel,
                          |z|>=0.05
}

Whatever_05 { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z*z)+(1/z*z)+pixel,
                  |z|>=0.05
}

Whatever_05m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(a1)+a2+pixel,
                  |z|>=0.05
}

Whatever_06(XYAXIS) { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z*z)+(1/z*z)+pixel,
                          |z|>=0.05
}

Whatever_06m(XYAXIS) { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=1/a1,
                          z=fn1(a1)+a2+pixel,
                          |z|>=0.05
}

Whatever_07 { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*fn2(z)+(1/z*z)+pixel,
}

Whatever_07m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(z)*fn2(z)+a2+pixel,
}

Whatever_08(XYAXIS) { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*fn2(z)+(1/z*z)+pixel,
}

Whatever_08m(XYAXIS) { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=1/a1,
                          z=fn1(z)*fn2(z)+a2+pixel,
}

Whatever_09(XYAXIS) { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*fn2(z)+(p1/z*z)+pixel,
}

Whatever_09m(XYAXIS) { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=p1/a1,
                          z=fn1(z)*fn2(z)+a2+pixel,
}

Whatever_10 { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*fn2(z)+(p1/z*z)+pixel,
}

Whatever_10m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=p1/a1,
                  z=fn1(z)*fn2(z)+a2+pixel,
}

