; Comment - LES.FRM - Fractint formula file - current as of 24th June 1996
; (this version of LES.FRM incorporates and updates all earlier versions)  
; by Les St Clair - 101461.2032@compuserve.com - 1996


Lesfrm01 (xaxis)  {
c=z=pixel:
z=z+(fn1(c)/fn2(z))/c^3,|z| <=4
}

Lesfrm02 (xaxis)  { 
c=z=pixel:
z=z+(fn1(z)/fn2(c))/c^3,|z| <=4
}

Lesfrm03 (xaxis) { 
z=pixel:
z=z+(fn1(z)/fn2(z))/z^4,|z| <=4
}

Lesfrm04 (xaxis) { 
c=z=pixel:
z=z+(fn1(c^2)/fn2(z^2))/c^4,|z| <=6
}

Lesfrm05 (xaxis) { 
c=z=pixel:
z=z+p1/fn1(z^2)/c^3,|z| <=6
}

Lesfrm06 { 
c=z=pixel:
z=z+p1*fn1(z/0.213)/c,|z| <=3
}

Lesfrm07 { 
c=z=pixel:
z=z+p1*fn1(z/0.416)/c^2,|z| <=3
}

Lesfrm08 { 
c=z=pixel:
z=z+p1*fn1(z/3.142)/c^3.142,|z| <=3.142
}

Lesfrm09 { 
c=z=tan(pixel):
z=z+p1*fn1(z)-(fn1)*c,|z| <=10
}

Lesfrm10 { 
c=z=pixel:
z=z+(fn1(fn2(Z)))+C/P1,|z|<4
}

Lesfrm11 { 
c=z=pixel:
z=z+(((fn1(z)-P1)*fn2(z))/fn3(c)),|z|<4
}

Lesfrm12 { ; Les St Clair, 1996
 z = pixel :
 x = fn1(z) , y = fn2(z)
 z = x*y
 |z| <= 4
}

Lesfrm13 { ; Les St Clair, 1996
 z = pixel 
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi 
 z = x/y
 |z| <= 4
}

Lesfrm14 (xaxis) { ; Les St Clair, 1996
 z = c = pixel:
 x = p1*fn1(z)
 y = p2*fn2(z)
 z = c + (x^y)
 |z| <= 4
}

Lesfrm15  { ; Les St Clair, 1996
 z = c = pixel:
 c = p1*c 
 z = fn1(c)^pi+fn2(z)+p2*c
 |z| <= 4
}

Lesfrm16 { ; Les St Clair, 1996
 z = c = pixel:
 x = p1*fn1(z)
 y = p2*fn2(z)
 x1= x*x
 y1= y*y
 z = c + x1/y1
 |z| <= 4
}

Lesfrm17 { ; Les St Clair, 1996
 z = c = pixel:
 x=real(z), y=imag(z)
 x = fn1(z)*pi
 y = fn2(z)*pi
 x1 = x^2+c
 y1 = y^2-c
 z = x1/y1
 |z| <= 4
}

Lesfrm18 { ; Les St Clair, 1996
 z = c = pixel:
 x=real(z), y=imag(z)
 x = fn1(x) + c
 y = fn2(y) + c
 x1 = p1*z + x
 y1 = p2*z + y
 z = x1^y1
 |z| <= 4
 }

Lesfrm19 { ; Les St Clair, 1996
 z = c = pixel:
 x=real(z), y=imag(z)
 x= fn1(z*x)+(p1^c)+c
 y= fn2(z*y)+(p2^c)+c
 z = x+flip(y)
 |z| <4
 }

Lesfrm20 { ; Les St Clair, 1996
 z = c = pixel:
 x=real(z), y=imag(z)
 x= fn1(x) + p1*c
 y= fn2(y) + p2*c
 z = x+flip(y)
 |z| <4
 }

Lesfrm21 { ; Les St Clair, 1996
 z = c = pixel:
 x=real(z), y=imag(z)
 x= fn1(x) + p1*c*pi
 y= fn2(y) + p2*c*pi
 z = x+flip(y)
 |z| <4
 }

Lesfrm22 { ; Les St Clair, 1996
 z = c = pixel:
 x=real(z), y=imag(z)
 x= fn1(x) + fn2(y) +p1*c*pi
 y= fn2(y) - fn1(x) +p2*c*pi
 z = x+flip(y)
 |z| <4
 }

Lesfrm23 { ; Les St Clair, 1996
 z = c = pixel:
 x=real(z), y=imag(z)
 x= fn1(z) + p1*y
 y= fn2(z) + p2*x
 z = x+flip(y) + c*c
 |z| <4
 }

