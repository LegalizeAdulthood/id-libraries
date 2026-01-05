
Whatever_00m(XAXIS) { ; Original formula Whatever_the_name
                        ; corrected by Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=sqr(z), a2=1/a1, 
                          z=a1+a2+pixel,
   }

Whatever_01m(XYAXIS) { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=sqr(z), a2=1/a1, 
                          z=a1+a2+pixel,
   }

Whatever_02m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=2/a1,
                  z=a1+a2+pixel,
   }


Whatever_03m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(z)*z+a2+pixel,
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

Whatever_05m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(a1)+a2+pixel,
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

Whatever_07m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(z)*fn2(z)+a2+pixel,
   }

Whatever_08m(XYAXIS) { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=1/a1,
                          z=fn1(z)*fn2(z)+a2+pixel,
   }

Whatever_09m(XYAXIS) { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=p1/a1,
                          z=fn1(z)*fn2(z)+a2+pixel,
   }

Whatever_10m { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=p1/a1,
                  z=fn1(z)*fn2(z)+a2+pixel,
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

JoWe_06(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=a1+a2,
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

JoWe_11(XYAXIS) { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)^pixel,
			  |z|<=4
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
