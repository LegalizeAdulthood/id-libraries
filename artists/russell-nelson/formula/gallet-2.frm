
; This file includes the new versions of Mandel-newton and Mandel-newton-2.
; ------------------------------------------------------------------------

mandel-newton   {; Sylvie Gallet [101324,3444], 1995-1996
 ; Formula designed for Fractint 19.2 and modified for Fractint 19.3
   z = pixel , c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center+rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4+(z==0))
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

mandel-newton-2 {; Sylvie Gallet [101324,3444], 1995-1996
 ; Formula designed for Fractint 19.2 and modified for Fractint 19.3
   limit = real(p1) , test0 = 1 , test3=0 , iter = 1 
   z = pixel , c = z , b1 = 16  
   rad = 6 , pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
   center = (1.0,0.1) , zn = center+rad/(pix-center) , b2 = 0.0001 :
   test0 = 1-test0 , test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4 + (z==0))
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   test3 = (test3 || (|z|>b1))
   z = z*(1-(test3 && test0 && test1))
   iter = iter+1
   ((|z|<=b1)*test1) || ((|z1|>=b2)*(1-test1))
}

96 (ORIGIN)     { ; Sylvie Gallet [101324,3444], 1995
z = pixel , c=(-0.63,-0.4) , r1 = 0.10 , dr = 0.05, c1 = (-0.15,0.15) 
r2 = 4*r1+dr , c2 = c1-3*r1-dr
test1=(cabs(sqrt(|z-c1|)-r1-dr/2)<dr/2)
test2=(r2<sqrt(|z-c2|))&&(sqrt(|z-c2|)<r2+dr)&&(z-c2>2*r1)&&imag(z-c2)<0
test3=(r2<sqrt(|z+c2|))&&(sqrt(|z+c2|)<r2+dr)&&(z+c2<-2*r1)&&imag(z+c2)>0
test = test1 || test2 || test3 :
z2=z*z+c
z=z*test + z2*(1-test)
|z|<=100
}
  
mandel-lambdafn-3 { ; Sylvie Gallet [101324,3444], 1995
                    ; requires "periodicity=0" 
   c = z = pixel , lambda = (1.0,0.4) , test0 = 1 , test3=0
   pix2 = pixel*4+0.8 , iter= 0 , limit = real(p1) :
   test1 = (iter<limit) , test0 = 1-test0 , test2 = (iter!=limit)
   z = (z-pix2)*test2 + pix2
   bailout = 4096 - 4032*test1
   z2 = lambda*sin(z)
   z = (z*z+c-z2)*test1+z2
   test3 = (test3 || (|z|>bailout))
   z = z*(1-(test3 && test0 && test1))
   iter = iter+1
   |z| <= bailout
}

gallet-2-01 {   ; Sylvie Gallet [101324,3444], 1995
   c = z = fn1(pixel) , fn2c = fn2(c) : 
   z = z*z+fn2c , z = fn1(z*z)*(z+pixel)+fn2c
   |z| <= 100
}

gallet-2-02 {   ; Sylvie Gallet [101324,3444], 1995 
   a = pixel , z=a 
   b = real(pixel) , a2 = 3*a*a :
   z = z^3 - a2*z + b
   |z| <= 100  
}  

gallet-2-03 {   ; Sylvie Gallet [101324,3444], 1995 
   a = pixel , z = -a 
   b = fn1(pixel) , a2 = 3*a*a :
   z = z^3 - a2*z + b
   |z| <= 100  
}

gallet-2-04 (XAXIS) { ; Sylvie Gallet [101324,3444], 1995 
   a=pixel , z=a , b=0 , a2=3*a*a :
   z = z^3 - a2*z + b
   b = b+.01
   |z| <= 100  
} 

gallet-2-05 {   ; Sylvie Gallet [101324,3444], 1995 
                ; z -> cos(z^2)+sin(z^3)-1 = 0
                ;      solution z = 0
   z = 1/pixel , test = (|z| < 100) :
   z2 = z*z , z3 = z2*z
   z = z-(cos(z2)+sin(z3)-1)/(-2*z*sin(z2)+3*z2*cos(z3))
   (|z| >= real(p1)) && test  
} 

gallet-2-06 (YAXIS) { ; Sylvie Gallet [101324,3444], 1995
   z = flip(pixel) :
   sinz = sin(z)
   z0 = sinz^(p1-1) , z1 = (sinz*z0+z)/(p1*z0+1)
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-07 {   ; Sylvie Gallet [101324,3444], 1995
                ; (sin z)^p1 + z = 0 solution = 0
   z = pixel:
   sinz = sin(z)
   z0 = sinz^(p1-1) , z1 = (sinz*z0+z)/(p1*z0*cos(z)+1)
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-08 {   ; Sylvie Gallet [101324,3444], 1995
   z = pixel , p = p1-1 :
   zp = z^p
   z1 = (z*zp-1)/(p1*zp*fn1(z))
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-09 {   ; Sylvie Gallet [101324,3444], 1995
   z = pixel , p = p1-1 :
   sinz = sin(z)
   z0 = sinz^p , z1 = (sinz*z0+z)/(p1*z0*fn1(z)+1)
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-10 {   ; Sylvie Gallet [101324,3444], 1995
                ; Halley's method applied to 
                ;      z -->  z^p1-z = 0
   z = pixel , a = p1-1 , b = p1-2 , ap1 = a*p1 :
   zb = z^b , za = z*zb , zp1 = z*za , n1 = zp1-z , n2 = p1*za-1
   z = z - n1/(n2 - ap1*zb*n1/(2*n2)) 
   |n1| >= 0.000001
}

gallet-2-11 {   ; Sylvie Gallet [101324,3444], 1995
   z = pixel , a = p1-1 , b = p1-2 , ap1 = a*p1 :
   zb = z^b , za = z*zb , zp1 = z*za , n1 = zp1-z , n2 = p1*za-1
   z1 = n1/(n2 - ap1*zb*fn1(z)*n1/(2*n2)) 
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-12 {   ; Sylvie Gallet [101324,3444], 1995
                ; Newton's method applied to
                ; x -> sin(y)^2+cos(x) = 0
                ; y -> cos(x)^2+sin(y) = 0
  z=pixel , x=real(z) , y=imag(z)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y) :
  d=-1+4*sy*cx
  x=x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y=y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)|>=0.000001
}