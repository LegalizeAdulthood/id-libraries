BJ-MandJulia   {; Modification of Ron Barnett's MandJulia frm   
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)
	z = pixel+oddeven*p3,
	c = evenodd*p1*pixel + oddeven*p2:
        z=fn1(z*z)*pi,
	z=z*z+c, |z|<4}

BJ-Newton*2  {; Modification of Ron Barnett's MandJulia frm   
        root = 1,
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)/root,
       	z = pixel+oddeven*p3,
	c = evenodd*p1*pixel + oddeven*p2:
        z3 = z * (z * z + c),
        z4 = z3 * z,
        z = (3 * z4 + root) / (4 * z3),
	 .004 <= |z4 - Root|}

BJ-Newton*2-b  {; Modification of Ron Barnett's MandJulia frm   
        root = 1,
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)/root,
       	z = pixel+oddeven*p3,
	c = evenodd*p1*pixel + oddeven*p2:
        z3 = (z * z) * (z * z) * (z + c),
        z4 = z3 * z,
        z = (3 * z4 + root) / (4 * z3),
	 .004 <= |z4 - Root|}

BJ-Newton*2-c  {; Modification of Ron Barnett's MandJulia frm   
        root = 1,
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)/root,
       	z = pixel+oddeven*p3,
	c = evenodd*p1*pixel + oddeven*p2:
        z3 = (z * z) * (z * z * z) * (z + c) ,
        z4 = z3 * z,
        z = (3 * z4 + root) / (4 * z3),
	 .004 <= |z4 - Root|}

BJ-PHC-G3-03-a   {; Modification of Sylvie Gallet's 3-03 
                  ; & Ron Barnett's MandJulia frm   
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)
	z = pixel+oddeven*p3,
        x = real(z)+oddeven*p3 , y = imag(z):
  	x1 = x - p1*fn1(y*y+p2*fn2(y)),
 	y1 = y - p1*fn1(x*x+p2*fn2(x)),
	z = (z*z+c) / x1+flip(y1), 
	|z|<=4}

BJ-Newton*2+Man-b   {; Modification of Ron Barnett's TwoMands frm
        root=1,  
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0),
	z = c = pixel+oddeven*p3:
	z = evenodd*(z^p1+c)+oddeven*(z^p2+c): 
        z3 = fn1(z * z) * fn2(z * z * z) * fn3(z + c),
        z4 = z3 * z
        z = (3 * z4 + root) / (4 * z3),
	 .004 <= |z4 - Root|}

BJ-JDfrm010m2 { ; Modified Lee Skinner/Jim Deutch frm
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = ((oddeven*fn1(pixel*(3/sqrt(pixel))))-evenodd) * pixel + evenodd * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

BJ-JDfrm010m3 { ; Modified Lee Skinner/Jim Deutch frm
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = ((oddeven*fn1(pixel*fn2(3/sqrt(pixel))))-evenodd) * pixel + evenodd * -pixel
  z = 0
  c = pixel:
  z = z*z + c
  |z| < 4
}

BJ-MandsJulia   {; Modification of Ron Barnett's MandJulia frm   
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)
	z = pixel+oddeven*p3,
	c = evenodd*p1*pixel + oddeven*p2:
        z=fn1(z+z)*pi,
	z=z*z+c, |z|<4}

BJ-Spider-c   {; Modification of Ron Barnett's MandJulia frm  
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)
	z = pixel+oddeven*p3,
	c = pixel * p1 * oddeven/p2:
	z = sqr(z) + c,
	c = z + fn1(c/2)/p1,
	 |z|<4}
    
 BJ-Lamda*2-a   {; Modification of Ron Barnett's MandJulia frm  
	count = (count + 1) * (count != 1024)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)
       	z = pixel+ evenodd*p1 :
	m = p2,  
	z = (sin(z) * p2)/p3,     
	abs(imag(z)) <= 64 && abs(real(z)) <= 64
}

BJ-MandsJulia-b-4   {; Modification of Ron Barnett's MandJulia frm  
	count = (count + 1) * (count != 1023)
	evenodd = (evenodd == (count == 1))
	oddeven = (evenodd == 0)
	z = (pixel * flip(fn1(pixel*3)))+oddeven*p3,
	c = evenodd*p1*pixel + oddeven*p2:
        z=sin(z+z)*pi,
	z=z*z+c, |z|<4}
 


