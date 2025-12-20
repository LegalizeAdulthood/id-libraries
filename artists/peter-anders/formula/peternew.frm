;------------------------------------ formula file peternew.frm ----------------------------------------------
!README!  {
       ;All these formulas are advanced Newton formulas,
       ;more or less, but some may be higly distorted .
       ;Most of them require floating point.
       ;1<name>=simple Newton formulas
       ;2<name>=double Newton formulas
       ;3<name>=manipulated Newton formulas
       ;All of them are by :
       ;Peter Anders
       ;anders@physik.hu-berlin.de
}
1NewPolyI {; just works with FRACTINT18.2 or less
           ; XAXIS for real exponents
           z=pixel,r=p1,root=p2+1,g=p3+1:
           c=z,
           z=z-g*((z^r-root)/(r*x^(r-1))),
           |z-c| >0.000001}
1NewPolyII {; just works with FRACTINT18.2 or less
            ; XAXIS for real exponents
              z=pixel,r=p1,root=p2+1,g=p3+1:
              c=z,
              z=z-g*((z^r-root)/(r*x^(r-1))),
    abs(real(z)-real(c)) >0.000001, abs(imag(z)-imag(c)) >0.000001}
1NewPolyR(XAXIS) {; real Newton formula for polynoms,
                  z=pixel,r=real(p1),root=p2+1,g=p3+1:
                  c=z,
                  z=z-g*((z^r-root)/(r*z^(r-1))),
                  |z-c| >0.000001}
1NewPolyRII{; real Newton formula for polynoms,
            z=pixel,r=p1,root=p2+1,g=p3+1:
            c=z,
            z=z-g*((z^r-root)/(r*z^(r-1))),
            |z-c| >0.000001}
1NewSin(XYAXIS) { ; sin(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z-g*(sin(z)-root)/cos(z),
                  |z-c| >0.000001}
1NewSinF(XYAXIS) {  ; sin(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z,
                    z=z-g*(sin(z)-root)/cos(z),
     |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
1NewCos(XYAXIS) {; cos(z)-p2=0
                 z=pixel,root=p2,g=p3+1:
                 c=z,
                 z=z+g*(cos(z)-root)/sin(z),
                 |z-c| >0.000001}
1NewCosF(XYAXIS) {; cos(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z+g*(cos(z)-root)/sin(z),
      |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
1NewTan(XYAXIS) {  ; tan(z)-p2=0
                   z=pixel,root=p2,g=p3+1:
                   c=z,
                   z=z-g*(cos(z))^2*(tan(z)-root),
                   |z-c| >0.000001}   
1NewTanF(XYAXIS){ ; tan(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z-g*(cos(z))^2*(tan(z)-root),
       |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
1NewCot(XYAXIS) { ; cotan(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z+g*(sin(z))^2*(cotan(z)-root),
                  |z-c| >0.000001}                          
1NewCotF(XYAXIS){ ; cotan(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z+g*(sin(z))^2*(cotan(z)-root),
      |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
1NewLog{; log(z)-p2=0
          z=pixel,root=p2,g=p3+1:
          c=z,
          z=z-g*z*(log(z)-root),
          |z-c| >0.000001}                          
1NewLogF{ ; log(z)-p2=0
            z=pixel:
            c=z,
            z=z-g*z*(log(z)-root),
    |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
1NewPolyRIII(XAXIS) { z=pixel,a=p1,b=p2,g=p3+1:
                      c=z,
    z=z-g*(((z^a)-(z^b))/((a*z^(a-1))-(b*z^(b-1)))),
                      |z-c| >0.000001}
NewWrong(xaxis){a=real(pixel),b=imag(pixel),r=p1:
      c=z,
      a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      z=a+b*(0,1),
      |z-c| >0.0000001}
NewWrongFu{a=real(fn1(pixel)),b=imag(fn1(pixel)),r=p1:
      c=z,
      a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      z=a+b*(0,1),
      |z-c| >0.0000001}
NewWrongFu2{q=pixel^real(p2)-imag(p2),a=real(q),b=imag(q),r=p1:
      c=z,
      a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      z=a+b*(0,1),
      |z-c| >0.0000001}
3NewPolyR1{z=fn1(pixel),r=p1,root=p2+1,g=p3+1:
           c=z,
           z=z-g*((z^r-root)/(r*z^(r-1))),
           |z-c| >0.000001}
3NewPolyR2{z=pixel^real(p2)-imag(p2),r=p1,g=p3+1:
           c=z,
           z=z-g*((z^r-1)/(r*z^(r-1))),
           |z-c| >0.000001}
3NewPolyR3{z=pixel^4-1.25*pixel^2+0.25,r=p1,root=p2+1,g=p3+1:
           c=z,
           z=z-g*((z^r-root)/(r*z^(r-1))),
           |z-c| >0.000001}
3NewPolyR4{a=fn1(real(pixel)),b=fn1(imag(pixel)),z=a+b*(0,1)
           r=p1,root=p2+1,g=p3+1:
           c=z,
           z=z-g*((z^r-root)/(r*z^(r-1))),
           |z-c| >0.000001}
1NewPolyRIV{z=pixel,r=real(p1),a=p2,g=p3+1:
            c=z,
            z=z-g*((z^r-1)/(r*z^(r-a))),
            |z-c| >imag(p1)}
1NewPolyRV{z=pixel,r=real(p1),a=p2,g=p3+1:
           c=z,
           z=z-g*((z^r-1)/(r*z^(r-a))),
           real(|z-c|) <imag(p1)}
1NewPolyRVI{z=pixel,r=real(p1),a=p2,g=p3+1:
            c=z,
            z=z-g*((z^r-1)/(r*z^(r-a))),
            real(|fn1(z)|)<imag(p1)}
1NewPolyRVII{z=pixel,r=real(p1),a=p2,g=p3+1:
             c=z,
             z=z-g*((z^r-1)/(r*z^(r-a))),
             real(|fn1(z)|)>imag(p1)}
3PolyRI{z=pixel,r=p1,g=p3+1:
        c=z,
        z=z-g*((z^r-1)/(r*z^(r-1))),
        z=z+p2;
        |z-c| >0.000001}
3PolyRII{z=pixel,r=p1,g=p3+1:
         c=z,
         z=z-g*((z^r-1)/(r*z^(r-1))),
         z=z*p2;
         |z-c| >0.000001}
3PolyRIII{z=pixel,r=p1,root=p2+1,g=p3+1:
          c=z,
          z=z-g*((z^r-root)/(r*z^(r-1))),
          z=fn1(z);
          |z-c| >0.000001}
1PixelPolyI{z=c=pixel,r=p2+1,g=p3+1:
            z=z-g*(z^r+c)/(r*z^(r-1))
            |z|>p1}
1PixelPolyII{ z=c=pixel,r=p2+1,g=p3+1:
              z=z-g*(z^r+c)/(r*z^(r-1))
              |z|<p1 }
1PixelPolyIII{z=c=pixel,r=p2+1,g=p3+1:
              d=z
              z=z-g*(z^r+c)/(r*z^(r-1))
              |z-d|>p1}
1PixelPolyIV{z=c=pixel,r=p2+1,g=p3+1:
             d=z 
             z=z-g*(z^r+c)/(r*z^(r-1))
             |z-d|<p1 }
3NewPolyR5{z=fn1(fn2(pixel)),r=p1,root=p2+1,g=p3+1:
           c=z, 
           z=z-g*((z^r-root)/(r*z^(r-1))),
           |z-c| >0.000001}
3NewPolyR6{z=fn1(pixel^real(p2)+imag(p2)),r=p1,g=p3+1:
           c=z, 
           z=z-g*((z^r-1)/(r*z^(r-1))),
           |z-c| >0.000001}
2NewSinCos(XYAxis){ ; sin(z)*cos(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(sin(z)*cos(z)-root)/(cos(z)*cos(z)-sin(z)*sin(z))
                    |z-c| >0.000001}
2NewCosTan(XYAxis){ ; tan(z)*cos(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(tan(z)*cos(z)-root)/(cos(z)*(tan(z)*tan(z)+1)-sin(z)*tan(z))
                    |z-c| >0.000001}
2NewSinTan(XYAxis){ ; sin(z)*tan(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
     z=z-g*(sin(z)*tan(z)-root)/(cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1))
                    |z-c| >0.000001}
2NewSinSinH(XYaxis){; sinh(z)*sin(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(sinh(z)*sin(z)-root)/(cos(z)*sinh(z)+sin(z)*cosh(z))
                    |z-c| >0.000001}
2NewSinHCos(XYaxis){ ;sinh(z)*cos(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(sinh(z)*cos(z)-root)/(cos(z)*cosh(z)-sin(z)*sinh(z))
                     |z-c| >0.000001}
2newSinCosH(XYaxis){ ; sin(z)*cosh(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(sin(z)*cosh(z)-root)/(cos(z)*cosh(z)+sin(z)*sinh(z))
                     |z-c| >0.000001}
2newCosCosH{; cos(z)*cosh(z)-p2=0
            z=pixel,root=p2,g=p3+1:
            c=z, 
    z=z-g*(cos(z)*cosh(z)-root)/(cos(z)*sinh(z)-sin(z)*cosh(z))
            |z-c| >0.000001}
2newTanSinH(XYaxis){ ; tan(z)*sinh(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(tan(z)*sinh(z)-root)/(sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z))
                     |z-c| >0.000001}
2newTanCosH(XYaxis){; cosh(z)*tan(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(cosh(z)*tan(z)-root)/(sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1))
                    |z-c| >0.000001}
2newSinTanH(XYaxis){ ; tanh(z)*sin(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(tanh(z)*sin(z)-root)/(cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z)))
                     |z-c| >0.000001}
2newCosTanH(XYaxis){; tanh(z)*cos(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(tanh(z)*cos(z)-root)/(cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z))
                    |z-c| >0.000001}
2newTanTanH{; tan(z)*tanh(z)-p2=0
            z=pixel,root=p2,g=p3+1:
            c=z, 
    z=z-g*(tan(z)*tanh(z)-root)/((tan(z)*tan(z)+1)*tanh(z)+tan(z)*(1-tanh(z)*tanh(z)))
            |z-c| >0.000001}
2newSinHCosH(XYaxis){ ; sinh(z)*cosh(z)-p2=0
                      z=pixel,root=p2,g=p3+1:
                      c=z, 
    z=z-g*(sinh(z)*cosh(z)-root)/(cosh(z)*cosh(z)+sinh(z)*sinh(z))
                      |z-c| >0.000001}
2newSinHTanH(XYaxis){; tanh(z)*sinh(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(tanh(z)*sinh(z)-root)/(sinh(z)*(1-tanh(z)*tanh(z))+cosh(z)*tanh(z))
                     |z-c| >0.000001}
2newCosHTanH(XYaxis){; cosh(z)*tanh(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(cosh(z)*tanh(z)-root)/(cosh(z)*(1-tanh(z)*tanh(z))+sinh(z)*tanh(z))
                     |z-c| >0.000001}
2newSin^2(XYAxis){ ; sin(z)*sin(z)-p2=0
                   z=pixel,root=p2,g=p3+1:
                   c=z, 
    z=z-g*(sin(z)*sin(z)-root)/(2*cos(z)*sin(z))
                   |z-c| >0.000001}
2newCos^2(XYAxis){ ; cos(z)*cos(z)-p2=0
                   z=pixel,root=p2,g=p3+1:
                   c=z, 
    z=z+g*(cos(z)*cos(z)-root)/(2*cos(z)*sin(z))
                   |z-c| >0.000001}
2newTan^2(XYAxis){; tan(z)*tan(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z, 
    z=z-g*(tan(z)*tan(z)-root)*(cos(z)*cos(z)*cos(z))/(2*sin(z))
                  |z-c| >0.000001}
2newCosH^2(XYaxis){ ; cosh(z)*cosh(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(cosh(z)*cosh(z)-root)/(2*cosh(z)*sinh(z))
                    |z-c| >0.000001}
2newSinH^2(XYaxis){ ; sinh(z)*sinh(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(sinh(z)*sinh(z)-root)/(2*cosh(z)*sinh(z))
                    |z-c| >0.000001}
2newTanH^2(XYaxis){ ; tanh(z)*tanh(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(tanh(z)*tanh(z)-root)*(cosh(z)*cosh(z)*cosh(z))/(2*sinh(z))
                    |z-c| >0.000001}
2newSin[z^a+b]{ ; sin(z^p1-p2)=0
                z=pixel,a=p1,b=p2g=p3+1:
                c=z, 
                z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
                |z-c| >0.000001}
2newSin[z^c+b]^a{ ; sin((z^p1-p2)^p3)=0
                  z=pixel,a=p3,c=p1,b=p2:
                  c=z, 
    z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a))
                  |z-c| >0.0001}
2newSin[tan[z]]{; sin(tan(z)-p2)-p1=0
                z=pixel,g=p3+1:
                c=z, 
    z=z-g*(sin(tan(z)-p2)-p1)/(cos(tan(z)-p2)*(tan(z)*tan(z)+1))
                |z-c| >0.000001}
2newSinH/Tan(XYaxis){; (sinh(z)/tan(z))-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z,
                     f1=(sinh(z)/tan(z))-root,
                     f21=cosh(z)*tan(z)-sinh(z)*(tan(z)*tan(z)+1)
                     f22=tan(z)*tan(z),
                     f2=f21/f22
                     z=z-g*f1/f2,
                     |z-c| >0.000001}
2newCosH/Tan(XYaxis){z=pixel,root=p2,g=p3+1:
                     c=z,
                     f1=(cosh(z)/tan(z))-root
                     f21=sinh(z)*tan(z)-cosh(z)*(tan(z)*tan(z)+1)
                     f22=tan(z)*tan(z),
                     f2=f21/f22
                     z=z-g*f1/f2,
                     |z-c| >0.000001}
2newTanH/Tan(Yaxis){z=pixel,root=p2,g=p3+1:
                    c=z,
                    f1=(tanh(z)/tan(z))-root
                    f21=(1-tanh(z)*tanh(z))*tan(z)-tanh(z)*(tan(z)*tan(z)+1)
                    f22=tan(z)*tan(z),
                    f2=f21/f22
                    z=z-g*f1/f2,
                    |z-c| >0.000001}
2newSin[z^Pixel+b]{; sin(z^pixel+b)=0
                   z=pixel,a=pixel,b=p2,g=p3+1:
                   c=z, 
                   z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
                   |z-c| >0.000001}
2newSin[z^a+Pixel]{; sin(z^a+pixel)=0
                   z=pixel,a=p1,b=pixel,g=p2+1:
                   c=z, 
                   z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
                   |z-c| >0.000001}
2newSin[z^Pixel+Pixel](Xaxis){; sin(z^pixel+pixel)=0
                              z=pixel,a=pixel,b=pixel,g=p3+1:
                              c=z, 
                              z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b)),
                              |z-c| >0.000001}
2newSin[z^c+b]^Pixel{ ; sin((z^p1-p2)^pixel)=0
                      z=pixel,a=pixel,c=p1,b=p2:
                      c=z, 
    z=z-(sin((z^c+b)^a))/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)),
                      |z-c| >0.0001}
2newSin[z^pixel+b]^a{; sin((z^pixel-p2)^p1)=0
                     z=pixel,a=p1,c=pixel,b=p2:
                     c=z, 
    z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)),
                     |z-c| >0.0001}
2newSin[z^c+pixel]^a{; sin((z^p1+pixel)^p2)=0
                     z=pixel,a=p2,c=p1,b=pixel:
                     c=z, 
    z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)),
                     |z-c| >0.0001}
2newSin[z^c+b]^aPixel(Xaxis){ ; sin((z^pixel+pixel)^pixel)=0
                             z=pixel,a=pixel,c=pixel,b=pixel:
                             c=z, 
    z=z-sin((z^c+b)^a)/( c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)),
                             |z-c| >0.0001}
2newz^aSin {; z^p1*sin(z)-p2=0
            z=pixel,a=p1,root=p2,g=p3+1:
            c=z, 
            z=z-g*(z^a*sin(z)-root)/(a*z^(a-1)*sin(z)+z^a*cos(z)),
            |z-c| >0.000001}
2newz^aTan {; z^a*tan(z)-p2=0
              z=pixel,a=p1,root=p2,g=p3+1:
              c=z, 
    z=z-g*(z^a*tan(z)-root)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
              |z-c|>0.000001}
2newz^aLog { ; z^a*log(z)-p2=0
             z=pixel,a=p1,root=p2,g=p3+1:
             c=z, 
             z=z-g*(z^a*log(z)-root)/(a*z^(a-1)*log(z)+z^a/z)
             |z-c|>0.000001}
2newSinLog { ; sin(z)*log(z)-p2=0
             z=pixel,root=p2,g=p3+1:
             c=z, 
             z=z-g*(sin(z)*log(z)-root)/(sin(z)/z+cos(z)*log(z))
             |z-c| >0.000001}
2newTanLog {; log(z)*tan(z)-p2=0
            z=pixel,root=p2,g=p3+1:
            c=z, 
            z=z-g*(log(z)*tan(z)-root)/(tan(z)/z+log(z)*(tan(z)*tan(z)+1))
            |z-c| >0.000001}
2newz^pixelSin{ ; z^pixel*sin(z)-p2=0
                z=pixel,a=pixel,root=p2,g=p3+1:
                c=z, 
                z=z-g*(z^a*sin(z)-root)/(a*z^(a-1)*sin(z)+z^a*cos(z))
                |z-c| >0.000001}
2newz^pixelTan{ ; z^pixel*tan(z)-p2=0
                z=pixel,a=pixel,root=p2,g=p3+1:
                c=z, 
                z=z-g*(z^a*tan(z)-root)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
                |z-c| >0.000001}
2newz^pixelLog{; z^pixel*log(z)-p2=0
                z=pixel,a=pixel,root=p2,g=p3+1:
                c=z, 
                z=z-g*(z^a*log(z)-root)/(a*z^(a-1)*log(z)+z^a/z)
                |z-c| >0.000001}
2newz^aSin2{; z^p1*sin(z)-pixel=0
            z=pixel,a=p1,g=p2+1:
            c=z, 
            z=z-g*(z^a*sin(z)-pixel)/(a*z^(a-1)*sin(z)+z^a*cos(z))
            |z-c| >0.000001}
2newz^aTan2{;z^p1*tan(z)-pixel
             z=pixel,a=p1,g=p3+1:
             c=z, 
    z=z-g*(z^a*tan(z)-pixel)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
             |z-c| >0.000001}
2newz^aLog2{; z^p1*log(z)-pixel=0
            z=pixel,a=p1,g=p2+1:
            c=z, 
            z=z-g*(z^a*log(z)-pixel)/(a*z^(a-1)*log(z)+z^a/z)
            |z-c| >0.000001}
2newtonDoublePoly{z=pixel , a=p1 , b=p2 , root=p3+1:
                  zz=z
                  z=z-(z^a-root)/(a*z^(a-1))
                  z=z-(z^b-1)/(b*z^(b-1))
                  |z-zz|>0.00000001}
2newtonDoubleSinAsin{z=pixel , root1=p1 , root2=p2:
                     zz=z
                     z=z-(sin(z)-root1)/cos(z)
                     z=z-(asin(z)-root2)*sqrt(1-z*z)
                     |z-zz|>0.00000001}    
1NewPolyRVIII{z=pixel , c=fn1(pixel) , a=p1 , b=p2 , d=p3:
              zz=z
              z=z-(z^a-c^b*z^d)/(a*z^(a-1)+c^b*d*z^(d-1))
              |z-zz|>0.00000001} 
2ChangePoly1{z=fn1(pixel),a=real(p1),wechsel=imag(p1)
             root1=p2+1,root2=p3+1:
             zz=z
             x=(z^a-root1)/(a*z^(a-1))
             y=(z^a-root2)/(a*z^(a-1))
             z=z-((x)*(wechsel<real(z))+(y)*(real(z)<= wechsel)) 
             |z-zz|>0.000000001}
2ChangePoly2{z=fn1(pixel),a=real(p1),wechsel=imag(p1),root1=p2+1,root2=p3+1:
             zz=z
             x=(z^a-root1)/(a*z^(a-1))
             y=(z^a-root2)/(a*z^(a-1))
             z=z-((x)*(wechsel<|z|)+(y)*(|z|<= wechsel)) 
             |z-zz|>0.000000001}
2newtonMandel{z=fn1(pixel),c=fn2(pixel),a=p1:
              zz=z
              z=z-((z^a-(z*z+c))/(a*z^(a-1)-2*z))
              |z-zz|>0.00000001}
2newtonLambda{z=fn1(pixel),c=fn2(pixel),a=p1:
              zz=z
              z=z-((z^a-(c*z*(1-z)))/(a*z^(a-1)-(c-2*c*z)))
              |z-zz|>0.00000001}
3NewtonLike1{z=fn1(pixel),a=p1,b=p2+1:
             zz=z
             z=z-((z^a-1)/(a*z^(a-1)))
             z=fn2(b*(z/|z|))
             |z-zz|>0.00000001}
3NewtonLike2{z=fn1(pixel),a=p1,b=p2+1:
             zz=z
             z=z-((z^a-1)/(a*z^(a-1)))
             z=fn2(b*(z/|z|)+pixel)
             |z-zz|>0.00000001}
3NewtonLike3{z=fn1(pixel),a=p1,b=p2+1:
             zz=z
             z=z-((z^a-1)/(a*z^(a-1)))
             z=fn2(b*(z/|z|))+pixel
             |z-zz|>0.00000001}
3NewtonLike4{z=fn1(pixel),a=p1,b=p2+1:
             zz=z
             z=z-((z^a-1)/(a*z^(a-1)))
             z=fn2(z/|z|)*|z| 
             |z-zz|>0.00000001}
2newtonPower1{z=fn1(pixel),c=fn2(pixel),a=p1:
              zz=z
              z=z-((z^a-(z^c))/(a*z^(a-1)-c*z^(c-1)))
              |z-zz|>0.00000001}
2newtonPower2{z=fn1(pixel),c=fn2(pixel),a=p1:
              zz=z
              z=z-((z^a-(z^c+c))/(a*z^(a-1)-c*z^(c-1)))
              |z-zz|>0.00000001}
2newtonTetrate1{z=fn1(pixel),c=fn2(pixel),a=p1:
                zz=z
                z=z-((z^a-(c^z))/(a*z^(a-1)-log(c)*c^z))
                |z-zz|>0.00000001}
2newtonTetrate2{z=fn1(pixel),c=fn2(pixel),a=p1:
                zz=z
                z=z-((z^a-(c^z+c))/(a*z^(a-1)-log(c)*c^z))
                |z-zz|>0.00000001}
2HalNewPoly1{z=pixel,r1=real(p1),r2=imag(p1),g=p2+1,g2=p3+1:
             c=z
             f1=z^r1-1
             f2=r1*z^(r1-1)
             f3=r1*(r1-1)*z^(r1-2)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
             |z-c| >0.000001}
2HalNewPoly2{z=pixel,r1=r2=p1,g=p2+1,g2=p3+1:
             c=z
             f1=z^r1-1
             f2=r1*z^(r1-1)
             f3=r1*(r1-1)*z^(r1-2)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
             |z-c| >0.000001}
2newHalPoly1{z=pixel,r1=real(p1),r2=imag(p1),g=p2+1,g2=p3+1:
             c=z
             z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
             f1=z^r1-1
             f2=r1*z^(r1-1)
             f3=r1*(r1-1)*z^(r1-2)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             |z-c| >0.000001}
2newHalPoly2{z=pixel,r1=r2=p1,g=p2+1,g2=p3+1:
             c=z
             z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
             f1=z^r1-1
             f2=r1*z^(r1-1)
             f3=r1*(r1-1)*z^(r1-2)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             |z-c| >0.000001}
2newHalPolyF1{;Seems to work just with FRACTINT 18.2 or earlier
              z=pixel,r1=real(p1),r2=imag(p1),g=p2+1,g2=p3+1:
              c=z
              x=fn1(z)
              z=z-g2*(z^r2-1)/(r2*x^(r2-1))  ; Newton
              x=fn1(z)
              f1=z^r1-1
              f2=r1*x^(r1-1)
              f3=r1*(r1-1)*x^(r1-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))     ; Halley
              |z-c| >0.000001}
2HalNewSin{z=pixel,root=p1+1,g=p2+1,g2=p3+1:
             c=z
             f1=sin(z)-root
             f2=cos(z)
             f3=-sin(z)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             z=z-g2*(sin(z)-root)/(cos(z)) ; Newton
             |z-c| >0.000001}
