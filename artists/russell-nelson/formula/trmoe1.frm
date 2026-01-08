
trmoe-1 {; Revised for Fractint v20 by G. Martin
  z=pixel/2, c=cos(pixel/2):
  z=z*z+c
  |z|<=4
  ;SOURCE: trmoe1.frm
}
trmoe-2 {
     z=fn1(cos(pixel/2)), c=fn2(cos(pixel)):
     z=z*z+c/p1
     |z|<=25
     }
trmoe-3 {
     z=c=1/pixel:
     z=z*z+c+.025
     |z|<=16
     }
trmoe-4 {
     z=c=1/pixel,
     y=sin(c):
     z=z*y+atan(c)
     }
trmoe-5 {
     z=pixel, c=p1:
     z=(z*z)*c
     |z|<=4
	}
trmoe-6 {
	z=pixel, m=atan(pixel):
	z=m*(z*z)
	|z|<=150
	}
trmoe-7 {
	z=pixel, x=fn1(1/pixel), y=fn2(1/pixel):
	z=x*(y*y)/p1
	|z|<=150
	}
trmoe-8 {
	z=fn1(pixel), c=atan(cos(1/pixel)), x=cos(c+z)
	z=(z*z)+c/x
	|z|<=4
	}
trmoe-9 {
	z=pixel, m=1/atan(pixel):
	z=m*(z*z)
	|z|>=4
	}
trmoe-10 {
	Z=2/PIXEL, C=cos(2/pixel):
	z=(z*z)+c
	|z|<=4
	}
trmoe-11 {
	Z=2/PIXEL, C=fn1(2/pixel):
	z=fn2(z)+c
	|z|<=4
	}
trmoe-12 {
     z=c=1/pixel,
     y=fn1(c):
     z=z*y+fn2(c)
     }
trmoe-13 {
	z=fn1(pixel), c=fn2(cos(1/pixel)), x=fn3(c+z)
	z=(z*z)+c/x
	|z|<=4
	}
trmoe-14 {
	z=c=pixel:
	 z=(z*z)+fn1(c)
	|Z|<=16
	}
trmoe-15 {
	z=c=pixel
	z=(z*z*z)+c
	|z|<=4
	}
	
	

