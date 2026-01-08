BEJ_New1  {;
z=pixel,root=1:
z=z*z/p1,
z2 = z*z;
z3 = (z*z) - pixel;
z4 = z3 * z
z = (3 * z4 + Root) / (4 * z3)
z=fn1(z)+c,
z=fn2(z)+c,
|z|<4
}


BEJ_N4  {;
z=c=pixel:
zsqr=z*z
zsin=(c+p1^1.5)*(c+p1/1.2)
z=(z*1)/(c+p2)
z=fn1(z)
z=fn2(z)
|z|<4
}


BEJ_N13 {; Revised for Fractint v. 20 by George Martin
         ; Second line was
         ; z*z*z=z^sqr(5+1/p1)*(-1+3/p2)
  z=pixel, c=atan(pixel):
  z=z^sqr(5+1/p1)*(-1+3/p2)
  zsqr=z*z
  x = (1.5+z^p1)^(1/p1)
  z = z*(1+y)/(1-x) + p2
  z=fn1(z)+c
  z=fn2(z)-c
  |z| <4
}

BEJ_N24  {;
z=pixel,c=pixel:
z1=z*z
z2=(z*p1)^(z+p2)
z=fn1(z2)+pixel
|z|<4
}


BEJ_N28C_B {; Revised for Fractint v. 20 by George Martin
            ; Fourth line began
            ; z3=z^(zsqr=z*z)
            ; Also, sqrz was defined and never used
            ; fn1 used as a variable
  z=pixel:
  z1=z*fn1(z*fn2(z))
  z2=sqr(z)/fn1(z)
  z3=z^(z*z), zsin=(c+p1^1.5)*(c+p1/1.2)
  z=(z*1)/(c+p2), z=fn1(z), z=fn2(z)
  |z|<4
}


BEJ_22  {;
z=pixel:
z=z*z*z
z1=z*z*z*z
z=fn1(z1)+pixel
|z|<4
}


BEJ_23  {;
z=pixel:
z1=(z*z)^(z-z)*z
z2=(z*z)^(z1+p1)+pixel
z3=z*z*z*z
z=fn1(z3)+pixel
|z|<4
}  


BJ-BC1974  {;Modified Bob Carr frm from a modified Sylvie Gallet frm.
c=z=pixel, d=log(1/pixel-conj(1/pixel)),
compt=0 , limit=(abs(p1/5)) , bailout=4
p=(0.9/-2.48)-1.00763 :
test=(compt<limit)+fn1(c)
c=c*test+p*(1-test)
z=z*z+c-real(d/5*pixel),
compt=compt+0.39
|z|<=bailout
}


BJ-BC1924pt3{;Modified Bob Carr frm from a modified Sylvie Gallet frm.
;For FN1 check out 
z= pixel, c =(-0.7456,3.245),
   z=c=z,
   iter = 1 , rad = 6 , center = (1.0,0.1)
   pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
   zn = center+rad/(pix-center) , limit = real(p1)
   test0 = 1 , b1 = 16 , b2 = 0.0001 , test3=0 :
   test1 = (iter<limit) , test0 = 1-test0 , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z6=z4*z2, z1 = (z6*z-1)/(4*z6)+fn1(pixel), 
   z = (z2+c)*test1 + ((z-z1)*(1-test1))
   z7=z*z*z
   z8=(z+c)^pixel/(z*z+(zn*z2)/z7)
   c=z+c/2.125,
   test3 = (test3 || (|z|>b1))
   z = (z*(1-(test3 && test0 && test1)))
   iter = iter+3.75
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}


BEJ   {;
  z = c = pixel:
   x = (1.5+z^p1)^(1/p1)
   z = z*(1+y)/(1-x) + p2
   z=fn1(z)+c
   z=fn2(z)-c 
   |z| <4
  }


BEJ_25  {;
z=pixel:
z1=z*z*z
z2=z+pixel
z3=z*z+(z*z)
z=fn1(z3)+pixel
|z|<=4
} 


BEJ6  {;
   z=(0), c=pixel:
   zsqr^2*z+const
   x=(1-z*p1)/(1*p2)
   z=fn1(z)+c
   z=fn2(z)+c
   |z|<4
}


BEJ3   {;
  z=c=pixel:
  zsqr=z*z*z*z
  x = (1.5+z^p1)^(1/p1)
  z = z*(1+y)/(1-x) + p2
  z=fn1(z)-c
  z=fn2(z)+c
  |z|<=3
}

















