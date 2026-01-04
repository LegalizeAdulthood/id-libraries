; ----------- Jo_We_55-formulas  May 1997 -------------------------------
;                 for Jo_We_55.par


JoWe55c01 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=fn1(z) + c;
z=fn2(z) + c,
|z| <=10
 }

JoWe55c02 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c;
z=fn2(z) + c,
|z| <=p2
 }

JoWe55c03 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c-0.14;
z=fn2(z) + c-0.14,
|z| <=p2
 }

JoWe55c04 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c-0.28;
z=fn2(z) + c-0.14,
|z| <=p2
 }


JoWe55c05 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c*c
z=fn2(z) + (c<0)
|z| <=p2
 }

JoWe55c06 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c*c
z=fn2(z) + (z<0)
|z| <=p2
 }

JoWe55c07 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel,c=fn1(z)+p1/pixel:
z=(fn2(z*z)*fn3(z/pixel)-pixel)+c,
|z| <=p2
 }

JoWe55c08 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=oldz=c=p1/pixel, c=fn1(z):
temp=z
z=fn2((z*oldz+c)/pixel)
oldz=temp;
z=fn3(z) + c,
|z| <=p2
 }

JoWe55c09 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=fn1(1/pixel):
z=fn1(z*z) + fn2(z) + c,
|z| <=p1
}

JoWe55c10 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z1=c1=fn1(1/pixel),
z2=c2=fn2(1/pixel):
z=(fn1(z1*z1) + tan(z1) + c1)*whitesq+(fn2(z2*z2) + tan(z2) + c2)*(whitesq==0)
z1=z
z2=z
|z| <=p1
}

JoWe55c11 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c=fn1(-1.1,0.24)/pixel:
z=fn2(z) + c,
|z| <=p2
 }

JoWe55c12 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=flip(-1.1,0.24)/pixel, c2=conj(1.1,0.24)/pixel :
z=(tan(z) + c1)*whitesq+(tan(z) + c2)*(whitesq==0)
|z| <=p2
 }

JoWe55c13 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=flip(-1.1,0.24)/pixel, c2=conj(-1.1,0.24)/pixel :
z=(tan(z) + c1)*whitesq+(tan(z) + c2)*(whitesq==0)
|z| <=p2
 }

JoWe55c14 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(-1.1,0.24)/pixel :
z=(tan(z) + c1)*whitesq+(sin(z) + c2)*(whitesq==0)
|z| <=p2
 }

JoWe55c15 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(-1.1,0.24)/pixel :
z=(fn3(z) + c1)*whitesq+(fn3(z) + c2)*(whitesq==0)
|z| <=p2
 }

JoWe55c16 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=fn1(c^z)/pixel;
z=(fn2(z) + 0.1) + c-1,
|z| <=p2
 }

Jowe55c17 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(fn1(z)+c)/(z+0.5)+c,
|z| <=p2
}

JoWe55c18 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(1.1,0.24)/pixel,
c3=fn3(-1.1,-0.24)/pixel :
z=(fn4(z) + c1)*(whitesq==1)+(fn4(z) + c2)*(whitesq==0)+(fn4(z) + c3)*whitesq
|z| <=p2
 }

JoWe55c19 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(fn2(fn1(z)) + c)/(z+0.75)+c,
|z| <=p2
}

JoWe55c20 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=pixel:
z=(fn2(fn1(z)) + c)/(z+0.75)+c,
|z| <=p1
}

JoWe55c21 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(fn2(fn1(z))+c)/(z-(fn3(-3,0.123)))+c,
|z| <=p2
}

JoWe55c22 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
a=z*z
z=a+c+(a+(c-0.124))
z=fn1(z)+c+(z*z+(c-0.124))
|z| <=p2
}

JoWe55c22a { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
a=z*z
z=a+c+(a+(c-0.124))
b=z*z
z=b+c+(b+(c-0.124))
|z| <=p2
}

JoWe55c23 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
a=z*z
z=fn1(a+c)+(a+(c-0.124))/(z-0.75)+c
|z| <=p2
}

JoWe55c24 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
a=z*z
z=fn1(a+c)+(a+(c-0.124))/((z+1.25)+c)
|z| <=p2
}

JoWe55c25 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z^2)*(z^2)+fn1(z-1.5)/fn2(pixel)
|z| <=p2
}

JoWe55c26 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z^2)*(z^2)+fn1(z-0.3)/fn2(pixel)
|z| <=p2
}

JoWe55c27 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z^2)*(z^2)+fn1(z-0.1)/fn2(pixel)
|z| <=p2
}

JoWe55c28 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z^2)*(z^2)+fn1(z-0.3)/fn2(p2/pixel),
|z| <=p3
}

JoWe_68_3 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)-(z<0)+(z>0)
|z|<=bailout
}

JoWe_68_2 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)+(z>0)
|z|<=bailout
}

JoWe_68_4 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)-(z<0)-(z>0)
|z|<=bailout
}

JoWe_68_5 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)+(z<0)+(z>0)
|z|<=bailout
}

JoWe_68_6 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)+fn2(z<0)+fn3(z>0)
|z|<=bailout
}

JoWe_69 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(exp(z)^2)
z=fn1(z)-p1*fn2(z<0)+p2*fn3(z>=0)
|z|<=bailout
}

JoWe_70 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*sin(z)+p2*cos(z))/(exp(z)^2)
z=fn1(z)-fn2(z<0)+fn3(z>=0)
|z|<=bailout
}

JoWe_71 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*real(sin(z))+p2*imag(cos(z)))/(log(z)^2)
z=fn1(z)-(z<0)
|z|<=bailout
}

JoWe_72 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
z=fn1(z)+(z>0)
|z|<=bailout
}


JoWe_71_phc { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
z=(fn1(z)+(z>0))*whitesq+(fn1(z)-(z<=0))*(whitesq==0)
|z|<=bailout
}

JoWe_71a_phc { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
z=(fn1(z)+(z>0))*whitesq+(fn2(z)-(z<=0))*(whitesq==0)
|z|<=bailout
}


JoWe_73 { ; JoWeber [100424,35], 4/1997
z=c=pixel
bailout=p3:
z=real(sin(z))+fn1(z)+c
|z|<=bailout
}

