;; Jo_We_54.frm April 1997

JoWe_34 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(exp(z)+1)/(exp(z)-1)
z=fn1(z)
|z|<=bailout
}

JoWe_XY_51m_1 { ; Jo Weber [100424,35] 11/1996
k=(6,4), l = (0,4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_XY_51m_3 { ; Jo Weber [100424,35] 11/1996
k=(0.6,0.44), l = (0,0.4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

JoWe_xy_35 { ; Jo Weber [100424,35] 11/1996
pixel=3*sin(pixel)-5*sqr(sqr(sin(pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

jowe_58_3 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z=z/q-p1*sin(p2*z+r)
z=fn1(z)
|z|<=bailout
}

jowe_62_1 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z1=z*q, z2=z/q
z3=z*r, z4=z/r
z1=z1-z4, z2=z2+z3
h1=r-q, h2=r+q
z=z1^h1-z2^h2
z=fn1(p1*fn2(p2*z))+h1*h2
z=z+(z<0)
|z|<=bailout
}

jowe_63 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
z=fn1(z)
|z|<=bailout
}

jowe_64 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
q=real(z), r=imag(z)
z1=z*q, z2=z/q
z3=z*r, z4=z/r
z1=z1-z4, z2=z2+z3
z=fn1(z1-z2)-fn2(z2-z1)
|z|<=bailout
}

jowe_65 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=tan(sin(z)^2-cos(z^2))
z=fn1(z)
|z|<=bailout
}

jowe_65_1 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=tan(sin(z)^2-cos(z)^2)
z=fn1(z)
|z|<=bailout
}

jowe_65_1_phc { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=tan(sin(z)^2-cos(z)^2)
z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
|z|<=bailout
}

jowe_66 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
z=fn1(z)
|z|<=bailout
}

jowe_66_PHC { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
|z|<=bailout
}

jowe_67 { ; by Jo Weber [100424,35], 12/1996
z=pixel
bailout=p3 :
z=(sin(z)-tan(z))/(cos(z)-cotan(z))
z=fn1(z)
|z|<=bailout
}

jowe_67_1 { ; by Jo Weber [100424,35], 12/1996
z=pixel
bailout=p3 :
z=(sin(z)-tan(z))/(sin(z)-cotan(z))
z=fn1(z)
|z|<=bailout
}

jowe_67_2 { ; by Jo Weber [100424,35], 12/1996
z=c=pixel
bailout=p3 :
z1=sin(z)-tan(z)
z2=cos(z)-cotan(z)
z1=z1+c
z2=z2+(z1>=0)
z=z1*z2
z=fn1(z)
|z|<=bailout
}

jowe_67_3 { ; by Jo Weber [100424,35], 12/1996
z=pixel
bailout=p3 :
z=fn1(sin(z)-tan(z))/fn2(cos(z)+cotan(z))
z=fn3(z)
|z|<=bailout
}

jowe_68 { ; by Jo Weber [100424,35], 12/1996
z=pixel
bailout=p3 :
z=(sin(z)-tan(z))/(sin(z)+tan(z))
z=fn1(z)
|z|<=bailout
}

jowe_68_1 { ; by Jo Weber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)-(z<0)
|z|<=bailout
}
