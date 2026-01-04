

JoWe_58_1 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=z/4-p1*sin(p2*z)
z=fn1(z)
|z|<=bailout
}

JoWe_58_2 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=fn1(z/4)-fn2(p1*sin(p2*z))
z=fn3(z)
|z|<=bailout
}

JoWe_58_3 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z=z/q-p1*sin(p2*z+r)
z=fn1(z)
|z|<=bailout
}

JoWe_58_4 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z=z/q-p1*sin(p2*z)/r
z=fn1(z)
|z|<=bailout
}

JoWe_58_5 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z=z*q-p1*sin(p2*z)*r
z=fn1(z)
|z|<=bailout
}

JoWe_58_5_1 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z=z*q-p1*sin(p2*z)^r
z=fn1(z)
|z|<=bailout
}



JoWe_58_6 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z=z/q-fn1(p1*sin(p2*z+r))
z=fn2(z)
|z|<=bailout
}

JoWe_58_7 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z=fn1(z/q)-fn2(p1*sin(p2*z+r))
z=fn3(z)
|z|<=bailout
}


jowe_62 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z1=z*q, z2=z/q
z3=z*r, z4=z/r
z1=z1-z4, z2=z2+z3
z=z1^q+z2^r
z=fn1(z/q)-fn2(p1*sin(p2*z+r))
z=fn3(z)
|z|<=bailout
}

