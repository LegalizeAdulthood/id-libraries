Carr1989{;Modified Sylvie Gallet frm.
   z=c=(pixel-conj(pixel/5)),
   iter = 1 , rad = 6 , center = (1.0,0.1)
   pix = exp(10*pixel+(8.0,-5))*(-0.1,-0.95)
   zn = (center+rad/(pix-center)) , (limit) = real(p1/(1/cos(pixel/5)))
   test0 = 1 , b1 = 16 , b2 = 0.0001 , test3=0:
   test1 = (iter<limit) , test0 = 1-test0 , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 ,  z1 = (z4*z-10*pixel)/(4*z4),
   z = (z2+c-0.099/pixel)*test1 + ((z-z1)*(1-test1))
   test3 = (test3 || (|z|>b1))
   z = (z*(1-tanh(cabs(test3 && test0 && test1))))
   iter = iter+tan(z1)+(1.099,0.0)
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
   }
