; formulas are from 21carr.frm, 27carr.frm, pixey.frm, shifter.frm and
; snazzy.frm
; needed for jo_we_03.par and jo_we_04.par


Carr-889{
z=((1/pixel)/0.71)/(0.85/pixel+1.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel-1.324)/(1/pixel):
z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.6,
|real(z)| <=100
}

Carr-913{
z=1/(pixel*pixel),
c=imag(1/pixel*0.91/pixel):
z=((1/(fn2(z*z+pixel*pixel)))/(pixel-c*c))/1.7,
|real(z)| <=100
}

Carr-917{
z=1/(pixel*pixel),
c=flip(pixel+fn3(4/z-z/5+125)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
}


Carr1150{
z=pixel^(sinh(1.099,0)/cosh(pixel)),
c=pixel/((2.099,0)*1/z):
z=cosxx(z)+c,
|real(z)| <=100
}

Carr1151{
z=pixel/((1.099,0)^(pixel)),
c=(pixel/((2.099,0)*1/z)):
z=(z*z+c)/(z*1/c),
|real(z)| <=100
}

Carr1152{
z=pixel/((1.099,0)^(pixel)),
c=(pixel/((2.099,0)*1/z)):
z=cosxx((z*z+c)/(z*1/c)),
|real(z)| <=100
}

Carr1164{
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=z-(cotanh(z+pixel))/(z*1/c),
|real(z)| <=100
}


pixey00 (XAXIS_NOPARM) {     
   z = pixel + p1:
   z = z*z + pixel
   z <= 4 
 }

pixey02 {     
   z = pixel + p1, c = pixel:
   temp = z
   z = z*z + pixel + c
   pixel = temp
   z <= 4 
 }

pixey03 {
   z = pixel
   x = real(z + p1), y = imag(z + p2):
   x = fn1(x*x - fn2(y*y))
   y = fn3(y*y - fn4(x*x))
   z = x*x + y*y 
   |z| <= 4
   }

pixey04  {
   z = pixel + p1 
   c = pixel:
   z = fn1(z*2.71828182845905) + fn2(c)  
   |z| <= 16
}

pixey05  {
   z = pixel + p1 
   c = pixel:
   z = fn1(z^2.71828182845905) + fn2(c)  
   |z| <= 16
}


shifter03 { ;After shift, switch from fn1(z) to fn2(z)
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = fn1(z) * (iter <= shift)
    hi = fn2(z) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < test
}


slider01 { ;Original version
           ;Bradley Beacham  [74223,2745]
  ;P1 & P2 are exponents (try 2 and 3, for example)
  ;P3 varies bailout value
  z = c = pixel, limit = 2 + p3, f = 0 :
    z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
    f = cabs(z) / limit
      f < 1.0
}

speed01 { ;Speed chooses between functions, escape-time
          ;Bradley Beacham  [74223,2745]
  ;P1 is maximum speed for "slow"
  ;P2 varies bailout value
  z = oldz = c = pixel, limit = 4 + p2:
    x = real(z) - real(oldz)
    y = imag(z) - imag(oldz)
    speed = x*x + y*y
    slow = fn1(z*z) * (speed < p1)
    fast = fn2(z*z) * (speed >= p1)
    oldz = z
    z = slow + fast + c
      |z| <= limit
}

PopCornJulCplx   { ; Jon Horner & Bradley Beacham - May 1995
  ; p1 = step size (default 0.05), p2 = parameter (default 3)
  ; p3 = bailout value (default 4)
  ; set co-ords = -3/3/-2.25/2.25, fn1=sin, fn2=tan, fn3=ident, fn4=flip
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  test = (4.0 * ((p3)<=0) + (p3) * (0<p3))
  x = real(pixel), y = imag(pixel):
    newx = x - h*fn1((y) + fn2(k*y))
    newy = y - h*fn1((x) + fn2(k*x))
    x = newx, y = newy
    z = fn3(x) + fn4(y)
      |z| < test
}

