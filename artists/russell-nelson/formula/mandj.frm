mandel-julia { ; Sylvie Gallet 1995
   z=pixel , c=z
   compt=0 , limit=real(p1) , bailout=4
   p=(-0.743380900000982,-0.131850030300002) :
   test=(compt<limit)
   c=c*test+p*(1-test)
   z=z*z+c
   compt=compt+1
   |z|<=bailout
}
