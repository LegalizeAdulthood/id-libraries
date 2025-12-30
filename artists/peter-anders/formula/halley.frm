;--------------------------------- formula file halley.frm --------------------------------------------------

Peter_1HalPoly { z=pixel,r=real(p1),g=p2+1:
                        c=z,
                        f1=z^r-1
                        f2=r*x^(r-1)
                        f3=r*(r-1)*x^(r-2)
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
Peter_1HalPolyX { z=pixel,r=real(p1),g=p2+1:
                        c=z,
                        f1=z^r-1
                        f2=r*z^(r-1)
                        f3=r*(r-1)*z^(r-2)
                        z=z-g*2*f2*f1/(2*f2*f2-f3*f1)
                        |z-c| >0.000001}
Peter_1HalPolyII { z=pixel,r=real(p1),g=p2+1:
                          c=z,
                          f1=z^r-1
                          f2=r*x^(r-1)
                          f3=r*(r-1)*x^(r-2)
                          z=z-g*f1/(f2-f3*f1/(2*f2))
       abs(real(z)-real(c)) >0.000001, abs(imag(z)-imag(c)) >0.000001}
Peter_1HalPolyR {; real Halley formula for polynoms,
                        ; use floating point (only for real exponents)
                            z=pixel,r=real(p1),g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-(f3*f1/(2*f2)))
                            |z-c| >0.000001}
Peter_1HalPolyRII{; real Halley formula for polynoms, use floating point
                            z=pixel,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_1HalSin  { z=pixel,g=p2+1:
                        c=z,
                        f1=sin(z)
                        f2=cos(z)
                        f3=-sin(z)
                        z=z-g*f1/(f2-(f3*f1/(2*f2)))
                        |z-c| >0.000001}
Peter_1HalSinF  { z=pixel,g=p2+1:
                         c=z,
                         f1=sin(z)
                         f2=cos(z)
                         f3=-sin(z)
                         z=z-g*f1/(f2-f3*f1/(2*f2))
       |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
Peter_1HalCos  { z=pixel,g=p2+1:
                            c=z,
                            f1=cos(z)
                            f2=-sin(z)
                            f3=-cos(z)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_1HalCosF  { z=pixel,g=p2+1:
                         c=z,
                         f1=cos(z)
                         f2=-sin(z)
                         f3=-cos(z)
                         z=z-g*f1/(f2-f3*f1/(2*f2))
                         z=z+cos(z)/sin(z),
         |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
Peter_1HalTan  { z=pixel,g=p2+1:
                            c=z,
                            f1=tan(z)
                            f2=1/(cos(z))^2
                            f3=2*sin(z)/(cos(z))^3
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}   
Peter_1HalTanF {z=pixel,g=p2+1:
                        c=z,
                        f1=tan(z)
                        f2=1/(cos(z))^2
                        f3=2*sin(z)/(cos(z))^3
                        z=z-g*f1/(f2-f3*f1/(2*f2))
          |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
Peter_1HalCot  { z=pixel,g=p2+1:
                        c=z,
                        f1=cotan(z)
                        f2=-1/(sin(z))^2
                        f3=2*cos(z)/(sin(z))^3
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}                          
Peter_1HalCotF {z=pixel,g=p2+1:
                       c=z,
                       f1=cotan(z)
                       f2=-1/(sin(z))^2
                       f3=2*cos(z)/(sin(z))^3
                       z=z-g*f1/(f2-f3*f1/(2*f2))
        |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
Peter_1HalLog{ z=pixel,g=p2+1:
               c=z,
               f1=log(z)
               f2=1/z
               f3=-1/(z*z)
               z=z-g*f1/(f2-f3*f1/(2*f2))
               |z-c| >0.000001}                          
Peter_1HalLogF{ z=pixel,g=p2+1:
                c=z,
                f1=log(z)
                f2=1/z
                f3=-1/(z*z)
                z=z-g*f1/(f2-f3*f1/(2*f2))
        |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
Peter_1HalPolyRIII  { z=pixel,g=p2+1:
                            c=z,
                            f1=(z^p1)-(z^p2)
                            f2=(p1*z^(p1-1))-(p2*z^(p2-1))
                            f3=(p1*(p1-1)*z^(p1-2))-(p2*(p2-1)*z^(p2-2))
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_1HalPolyRFu{; real Halley formula for polynoms, use floating point
                  z=fn1(pixel),r=p1,g=p2+1:
                  c=z,
                  f1=z^r-1
                  f2=r*z^(r-1)
                  f3=r*(r-1)*z^(r-2)
                  z=z-g*f1/(f2-f3*f1/(2*f2))
                  |z-c| >0.000001}
Peter_1HalPolyRFu2{; real Halley formula for polynoms, use floating point
                        z=pixel^real(p2)-imag(p2),r=p1,g=p2+1:
                        c=z,
                        f1=z^r-1
                        f2=r*z^(r-1)
                        f3=r*(r-1)*z^(r-2)
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
Peter_1HalPolyRFu3{; real Halley formula for polynoms, use floating point
                            z=pixel^4-1.25*pixel^2+0.25,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_1HalPolyRFu4{; real Halley formula for polynoms, use floating point
                    a=fn1(real(pixel)),b=fn1(imag(pixel)),z=a+b*(0,1),r=p1,g=p2+1:
                    c=z,
                    f1=z^r-1
                    f2=r*z^(r-1)
                    f3=r*(r-1)*z^(r-2)
                    z=z-g*f1/(f2-f3*f1/(2*f2))
                    |z-c| >0.000001}
Peter_1HalPolyRIV{; real Halley formula for polynoms, use floating point
                            z=pixel,r=real(p1),a=p2,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-a)
                            f3=r*(r-a)*z^(r-a-1)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >imag(p1)}
Peter_1HalPolyRV{; real Halley formula for polynoms, use floating point
                            z=pixel,r=real(p1),a=p2,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-a)
                            f3=r*(r-a)*z^(r-a-1)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            real(|z-c|) <imag(p1)}
Peter_1HalPolyRVI{; real Halley formula for polynoms, use floating point
                            z=pixel,r=real(p1),a=p2,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-a)
                            f3=r*(r-a)*z^(r-a-1)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            real(|fn1(z)|)<imag(p1)}
Peter_1HalPolyRVII{; real Halley formula for polynoms, use floating point
                            z=pixel,r=real(p1),a=p2,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-a)
                            f3=r*(r-a)*z^(r-a-1)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            real(|fn1(z)|)>imag(p1)}
PolyRI{; real Halley formula for polynoms, use floating point
                            z=pixel,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            z=z+p2;
                            |z-c| >0.000001}
PolyRII{; real Halley formula for polynoms, use floating point
                            z=pixel,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            z=z*p2;
                            |z-c| >0.000001}
PolyRIII{; real Halley formula for polynoms, use floating point
                            z=pixel,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            z=fn1(z);
                            |z-c| >0.000001}
Halley_test31{z=c=pixel,r=p2+1,g=p2+1:
              f1=z^r+c
              f2=r*z^(r-1)
              f3=r*(r-1)*z^(r-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))
              |z|>p1}

Halley_test32{z=c=pixel,r=p2+1,g=p2+1:
              f1=z^r+c
              f2=r*z^(r-1)
              f3=r*(r-1)*z^(r-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))
              |z|<p1 }

Halley_test41{z=c=pixel,r=p2+1,g=p2+1:
              d=z
              f1=z^r+c
              f2=r*z^(r-1)
              f3=r*(r-1)*z^(r-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))
              |z-d|>p1}

Halley_test42{z=c=pixel,r=p2+1,g=p2+1:
              d=z
              f1=z^r+c
              f2=r*z^(r-1)
              f3=r*(r-1)*z^(r-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))
              |z-d|<p1 }

Peter_1HalPolyRFu5{; real Halley formula for polynoms, use floating point
                            z=fn1(fn2(pixel)),r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_1HalPolyRFu6{; real Halley formula for polynoms, use floating point
                            z=fn1(pixel^real(p2)+imag(p2)),r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_2HalSinCos { z=pixel,g=p2+1:
                          c=z,
                          f1=sin(z)*cos(z)+p1
                          f2=2*cos(z)*cos(z)-1
                          f3=4*cos(z)*sin(z)
                          z=z-g*f1/(f2-f3*f1/(2*f2))
                          |z-c| >0.000001}
Peter_2HalCosTan { z=pixel,g=p2+1:
                          c=z,
                          f1=tan(z)*cos(z)+p1
                          f2=cos(z)*(tan(z)*tan(z)+1)-sin(z)*tan(z)
                          f31=2*cos(z)*tan(z)*(tan(z)*tan(z)+1)-sin(z)*(tan(z)*tan(z)+1)
                          f32=cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1)
                          f3=f31-f32
                          z=z-g*f1/(f2-f3*f1/(2*f2))
                          |z-c| >0.000001}
Peter_2HalSinTan { z=pixel,g=p2+1:
                          c=z,
                          f1=sin(z)*tan(z)+p1
                          f2=cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1)
                          f31=2*sin(z)*tan(z)*(tan(z)*tan(z)+1)+cos(z)*(tan(z)*tan(z)+1)
                          f32=-sin(z)*tan(z)+cos(z)*(tan(z)*tan(z)+1)
                          f3=f31+f32
                          z=z-g*f1/(f2-f3*f1/(2*f2))
                          |z-c| >0.000001}
Peter_2HalSinSinH { z=pixel,g=p2+1:
                           c=z,
                           f1=sinh(z)*sin(z)+p1
                           f2=cos(z)*sinh(z)+sin(z)*cosh(z)
                           f3=2*cos(z)*cosh(z)
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
Peter_2HalSinHCos { z=pixel,g=p2+1:
                           c=z,
                           f1=sinh(z)*cos(z)+p1
                           f2=cos(z)*cosh(z)-sin(z)*sinh(z)
                           f3=-2*sin(z)*cosh(z)
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
Peter_2HalSinCosH { z=pixel,g=p2+1:
                           c=z,
                           f1=sin(z)*cosh(z)+p1
                           f2=cos(z)*cosh(z)+sin(z)*sinh(z)
                           f3=2*cos(z)*sinh(z)
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
Peter_2HalCosCosH{ z=pixel,g=p2+1:
                   c=z,
                   f1=cos(z)*cosh(z)+p1
                   f2=cos(z)*sinh(z)-sin(z)*cosh(z)
                   f3=-sin(z)*(sinh(z)+cosh(z))
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2HalTanSinH { z=pixel,g=p2+1:
                           c=z,
                           f1=tan(z)*sinh(z)+p1
                           f2=sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z)
                           f31=cosh(z)*(tan(z)*tan(z)+1)+sinh(z)*2*tan(z)*(tan(z)*tan(z)+1)
                           f32=sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1)
                           f3=f31+f32
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
Peter_2HalTanCosH { z=pixel,g=p2+1:
                           c=z,
                           f1=cosh(z)*tan(z)+p1
                           f2=sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1)
                           f31=sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z)
                           f32=2*cosh(z)*tan(z)*(tan(z)*tan(z)+1)+sinh(z)*(tan(z)*tan(z)+1)
                           f3=f31+f32
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
Peter_2HalSinTanH { z=pixel,g=p2+1:
                           c=z,
                           f1=tanh(z)*sin(z)+p1
                           f2=cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z))
                           f31=cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z)
                           f32=-2*sin(z)*tanh(z)*(1-tanh(z)*tanh(z))+cos(z)*(1-tanh(z)*tanh(z))
                           f3=f31+f32
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
Peter_2HalCosTanH { z=pixel,g=p2+1:
                           c=z,
                           f1=tanh(z)*cos(z)+p1
                           f2=cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z)
                           f31=-2*cos(z)*tanh(z)*(1-tanh(z)*tanh(z))-sin(z)*(1-tanh(z)*tanh(z))
                           f32=cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z))
                           f3=f31-f32
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
Peter_2HalTanTanH{ z=pixel,g=p2+1:
                   c=z,
                   f1=tan(z)*tanh(z)+p1
                   f2=(tan(z)*tan(z)+1)*tanh(z)+tan(z)*(1-tanh(z)*tanh(z))
                   f31=(tan(z)*tan(z)+1)*(1-tanh(z)*tanh(z))+2*tan(z)*(tan(z)*tan(z)+1)*tanh(z)
                   f32=(tan(z)*tan(z)+1)*(1-tanh(z)*tanh(z))-tan(z)*2*tanh(z)*(1-tanh(z)*tanh(z))
                   f3=f31+f32
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2HalSinHCosH { z=pixel,g=p2+1:
                            c=z,
                            f1=sinh(z)*cosh(z)+p1
                            f2=cosh(z)*cosh(z)+sinh(z)*sinh(z)
                            f3=4*sinh(z)*cosh(z)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_2HalSinHTanH { z=pixel,g=p2+1:
                            c=z,
                            f1=tanh(z)*sinh(z)+p1
                            f2=sinh(z)*(1-tanh(z)*tanh(z))+cosh(z)*tanh(z)
                            f31=-2*sinh(z)*tanh(z)*(1-tanh(z)*tanh(z))+cosh(z)*(1-tanh(z)*tanh(z))
                            f32=sinh(z)*tanh(z)+cosh(z)*(1-tanh(z)*tanh(z))
                            f3=f31+f32
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_2HalCosHTanH { z=pixel,g=p2+1:
                            c=z,
                            f1=cosh(z)*tanh(z)+p1
                            f2=cosh(z)*(1-tanh(z)*tanh(z))+sinh(z)*tanh(z)
                            f31=-2*cosh(z)*tanh(z)*(1-tanh(z)*tanh(z))+sinh(z)*(1-tanh(z)*tanh(z))
                            f32=cosh(z)*tanh(z)+sinh(z)*(1-tanh(z)*tanh(z))
                            f3=f31+f32
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
Peter_2HalSin^2 { z=pixel,g=p2+1:
                        c=z,
                        f1=sin(z)*sin(z)+p1
                        f2=2*cos(z)*sin(z)
                        f3=2*(cos(z)*cos(z)-sin(z)*sin(z))
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
Peter_2HalCos^2 { z=pixel,g=p2+1:
                        c=z,
                        f1=cos(z)*cos(z)+p1
                        f2=-2*cos(z)*sin(z)
                        f3=-2*(2*cos(z)*cos(z)-1)
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
Peter_2HalTan^2 { z=pixel,g=p2+1:
                        c=z,
                        f1=tan(z)*tan(z)+p1
                        f2=2*tan(z)/(cos(z)*cos(z))
                        f3=2*((tan(z)*tan(z)+1)*cos(z)+tan(z)*2*sin(z))/(cos(z)*cos(z)*cos(z))
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
Peter_2HalCosH^2 { z=pixel,g=p2+1:
                         c=z,
                         f1=cosh(z)*cosh(z)+p1
                         f2=2*cosh(z)*sinh(z)
                         f3=2*(cosh(z)*cosh(z)+sinh(z)*sinh(z))
                         z=z-g*f1/(f2-f3*f1/(2*f2))
                         |z-c| >0.000001}
Peter_2HalSinH^2 { z=pixel,g=p2+1:
                         c=z,
                         f1=sinh(z)*sinh(z)+p1
                         f2=2*cosh(z)*sinh(z)
                         f3=2*(cosh(z)*cosh(z)+sinh(z)*sinh(z))
                         z=z-g*f1/(f2-f3*f1/(2*f2))
                         |z-c| >0.000001}
Peter_2HalTanH^2 { z=pixel,g=p2+1:
                         c=z,
                         f1=tanh(z)*tanh(z)+p1
                         f2=2*sinh(z)/(cosh(z)*cosh(z)*cosh(z))
                         z=z-g*f1/(f2-f3*f1/(2*f2))
                         |z-c| >0.000001}
HalSin[z^a+b] { z=pixel,a=p1,b=p2,g=p2+1:
                c=z,
                f1=sin(z^a+b)
                f2=a*z^(a-1)*cos(z^a+b)
                z=z-g*f1/(f2-f3*f1/(2*f2))
                |z-c| >0.000001}
HalSin[z^c+b]^a { z=pixel,a=real(p1),c=imag(p1),b=p2,g=p2+1:
                  c=z,
                  f1=sin((z^c+b)^a)
                  f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                  z=z-g*f1/(f2-f3*f1/(2*f2))
                  |z-c| >0.0001}
HalSin[tan[z]]  { z=pixel,g=p2+1:
                  c=z,
                  f1=sin(tan(z)+p2)+p1
                  f2=cos(tan(z)+p2)*(tan(z)*tan(z)+1)
                  z=z-g*f1/(f2-f3*f1/(2*f2))
                  |z-c| >0.0001}
Peter_2HalSinH/Tan {z=pixel,g=p2+1:
                   c=z,
                   f1=(sinh(z)/tan(z))+p1,
                   f21=cosh(z)*tan(z)-sinh(z)*(tan(z)*tan(z)+1)
                   f22=tan(z)*tan(z),
                   f2=f21/f22
                   z=z-g*f1/(f2-f3*f1/(2*f2)),
                   |z-c| >0.000001}
Peter_2HalCosH/Tan {z=pixel,g=p2+1:
                   c=z,
                   f1=(cosh(z)/tan(z))+p1
                   f21=sinh(z)*tan(z)-cosh(z)*(tan(z)*tan(z)+1)
                   f22=tan(z)*tan(z),
                   f2=f21/f22
                   z=z-g*f1/(f2-f3*f1/(2*f2)),
                   |z-c| >0.000001}
Peter_2HalTanH/Tan(Yaxis){z=pixel,g=p2+1:
                   c=z,
                   f1=(tanh(z)/tan(z))+p1
                   f21=(1-tanh(z)*tanh(z))*tan(z)-tanh(z)*(tan(z)*tan(z)+1)
                   f22=tan(z)*tan(z),
                   f2=f21/f22
                   z=z-g*f1/(f2-f3*f1/(2*f2)),
                   |z-c| >0.000001}
HalSin[z^a+b]Pix1{ z=pixel,a=pixel,b=p2,g=p2+1:
                       c=z,
                       f1=sin(z^a+b)
                       f2=a*z^(a-1)*cos(z^a+b)
                       z=z-g*f1/(f2-f3*f1/(2*f2)),
                       |z-c| >0.000001}
HalSin[z^a+b]Pix2{ z=pixel,a=p1,b=pixel,g=p2+1:
                       c=z,
                       f1=sin(z^a+b)
                       f2=a*z^(a-1)*cos(z^a+b)
                       z=z-g*f1/(f2-f3*f1/(2*f2)),
                       |z-c| >0.000001}
HalSin[z^a+b]Pix3 { z=pixel,a=pixel,b=pixel,g=p2+1:
                              c=z,
                              f1=sin(z^a+b)
                              f2=a*z^(a-1)*cos(z^a+b)
                              z=z-g*f1/(f2-f3*f1/(2*f2)),
                              |z-c| >0.000001}
HalSin[z^c+b]^aPx1{z=pixel,a=pixel,c=imag(p1),b=p2,g=p2+1:
                      c=z,
                      f1=sin((z^c+b)^a)
                      f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                      z=z-g*f1/(f2-f3*f1/(2*f2)),
                      |z-c| >0.0001}
HalSin[z^c+b]^aPx2 {z=pixel,a=real(p1),c=pixel,b=p2,g=p2+1:
                    c=z,
                    f1=sin((z^c+b)^a)
                    f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                    z=z-g*f1/(f2-f3*f1/(2*f2)),
                    |z-c| >0.0001}
HalSin[z^c+b]^aPx3 {z=pixel,a=real(p1),c=imag(p1),b=pixel,g=p2+1:
                    c=z,
                    f1=sin((z^c+b)^a)
                    f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                    z=z-g*f1/(f2-f3*f1/(2*f2)),
                    |z-c| >0.0001}
HalSin[z^c+b]^aPx4  {z=pixel,a=pixel,c=pixel,b=pixel,g=p2+1:
                           c=z,
                           f1=sin((z^c+b)^a)
                           f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                           z=z-g*f1/(f2-f3*f1/(2*f2)),
                           |z-c| >0.0001}
Peter_2Halz^aSin { z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*sin(z)+p2
                   f2=a*z^(a-1)*sin(z)+z^a*cos(z)
                   z=z-g*f1/(f2-f3*f1/(2*f2)),
                   |z-c| >0.000001}
Peter_2Halz^aTan { z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*tan(z)+p2
                   f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2Halz^aLog { z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*log(z)+p2
                   f2=a*z^(a-1)*log(z)+z^a/z
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2HalSinLog { z=pixel,g=p2+1:
                   c=z,
                   f1=sin(z)*log(z)+p1
                   f2=sin(z)/z+cos(z)*log(z)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2HalTanLog { z=pixel,g=p2+1:
                   c=z,
                   f1=log(z)*tan(z)+p1
                   f2=tan(z)/z+log(z)*(tan(z)*tan(z)+1)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2Halz^aSin2{ z=pixel,a=pixel,g=p2+1:
                   c=z,
                   f1=z^a*sin(z)+p2
                   f2=a*z^(a-1)*sin(z)+z^a*cos(z)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2Halz^aSin7{ z=pixel,a=pixel,g=p2+1:
                   c=z,
                   z=z-(z^a*sin(z)+p2)/(a*z^(a-1)*sin(z)+z^a*cos(z))
                   |z-c| >0.000001}
Peter_2Halz^aTan2{ z=pixel,a=pixel,g=p2+1:
                   c=z,
                   f1=z^a*tan(z)+p2
                   f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2Halz^aLog2{ z=pixel,a=pixel,g=p2+1:
                   c=z,
                   f1=z^a*log(z)+p2
                   f2=a*z^(a-1)*log(z)+z^a/z
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2Halz^aSin3{ z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*sin(z)+pixel
                   f2=a*z^(a-1)*sin(z)+z^a*cos(z)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2Halz^aTan3{ z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*tan(z)+pixel
                   f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
Peter_2Halz^aLog3{ z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*log(z)+pixel
                   f2=a*z^(a-1)*log(z)+z^a/z
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
PolyTestI{ z=pixel,r=p1:
           c=z,
           f1=z^r-1
           f2=r*z^(r-1)
           f3=r*(r-1)*z^(r-2)
           z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2))),
           |z-c| >0.000001}
PolyTestII{ z=pixel,r=p1:
            c=z,
            f1=sin(z)
            f2=cos(z)
            f3=-sin(z)
            z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2))),
            |z-c| >0.000001}
PolyTestIII{ z=pixel,r=p1:
           c=z,
           f1=z^(r+1)-z
           f2=(r+1)*z^r-1
           f3=r*(r+1)*z^(r-1)
           z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2))),
           |z-c| >0.000001}
