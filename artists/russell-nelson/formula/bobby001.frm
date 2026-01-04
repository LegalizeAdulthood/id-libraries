;Bobby001.frm recompiled from revised *.frm's.Lots of adjustable Functions
;From Bobby Elwood the sysop of Bob's Adult World BBS
:                               (cumming soon in 94')
;     4-05-94 00:02:59  
test = {
}

Booby3 = {
       z = pixel:
       c = fn1(pixel)/z,
       c = fn3(z + c^c),
       z = fn2(z),
       |z| < P1 
  }

Booby2 = {
       z = fn3(pixel):
       c = fn1(pixel)/(z^2),
       c = z + (c*.0001),
       z = fn2(c / pixel),
       |z| < p1
  }

Booby = {
       z =fn3(pixel):
       c = pixel - fn1(z^p2),
       c = pixel + fn2(c/z),
       z = fn4(c - z ^ pixel),
       |z| < p1
  }

2121 = {
      z = pixel:
      z = (fn1(p1 /fn2(z)) + fn3(p2 - fn2(z))*(p2 ^ fn2(z)))/z,
   |z| <=  21
}

B_Mapping = {
	c = pixel, RealZ = Real(c), ImagZ = Imag(c):
		RealZ = fn1(RealZ) + (RealZ * ImagZ) +fn3(Real(c));
		ImagZ = fn2(ImagZ) + (RealZ * ImagZ) +fn4(Imag(c));
		z = RealZ + (ImagZ * (0, 1)),
	|z| < 4
}

111 = {
	z = Pixel:  z = ((fn1(z)/2.111111)^z)/fn2(6.76855753*z),
	|z| <= 4
}

222 = {
	z = pixel:  z = fn1((z * 8.346348756 / (z/pixel)/fn2(6.2631853*Z) + pixel,
	|z| <= 4
}

333 = {
	z = Pixel:  z =((fn2(z)/1.3333)^z)/fn1((p1/.2831853) * (z^z)) / pixel,
	|z| <= 4
}

Wicked = {
	z = fn1(pixel):
	z = fn2(pixel + z^z + 1/p1/p2),
	|z| <= 4
}

Traid = {
	z = fn1(p1):
	z = pixel * fn2(z*z + 1/z/z),
	|z| <= 1000000
}

Boyed = {
	z = pixel:
	z =fn3(fn1(p1 * p2) / fn2(z*z + 1/z/z)),
	|z| <= 1000000
}

Huh!! = {
	z = fn1(pixel):
	z = fn4(fn2(z+z*z)+fn3((1/z*z)+pixel)),
	|z| <= 4
}

Bob's_Error = {
	z = p2^pixel, c = z ^ (z - 1):
	z = fn1(z);
	t2 =fn3(real(z)*real(c) + imag(z)*imag(c));
	t3 =fn4(real(t2)*imag(c) - imag(z)*real(c));
	z = fn2(t2 + t3 + pixel),
	|z| <= p1
}

What_its_name2 = {
	z = fn1(pixel):
	z=fn2(z^z)+fn3(1/z*z)+fn4(pixel),
}

Bob-5revised {
      z = Pixel,b= sin(p2),a= cos(z^2),c = fn1(pixel):
      z = fn2(1/(b+c))*fn3(a+c)+fn4(z)
      |z| <= p1
   }

Bob-6r {
        z = fn4(pixel), c = fn2(p2):
        z = fn1(p2)*fn3(p1)+c/z
   }  

Bob-7r {
        z = fn4(pixel):
       z1 = fn2(z*z*z*z*z*z*z*z)
        z = fn3(fn1(p1*(fn2(p2)))/z1)
	   }
Fn_pixel  {
           z =  Fn1(pixel):
           z = fn2( fn3(z) + fn4(pixel))
           |z| <= p1^2
   }
