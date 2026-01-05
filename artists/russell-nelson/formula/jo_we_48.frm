;; Jo_We_48.FRM


JoWe_04b_XY { ; Jo Weber [100424,35], 10/1996
                  bailout=p3
		  pixel=pixel*(-1)^(pixel>0)
		  z = pixel:
                  x1=real(z),  y1= imag(z)
                  x1=x1-fn1(x1-fn2(x1))
                  y1=y1-fn1(y1-fn2(y2))
                  z=p1*x1+p2*y1
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

JoWe_xy_17f { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=(2*pixel-conj(0.10/pixel)) :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
}

JoWe_xy_17g { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=(2*conj(pixel)-conj(0.30/pixel))+0.2 :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
               |z|<=bailout
}

JoWe_xy_17h { ; Jo Weber [100424,35], 10/1996
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


