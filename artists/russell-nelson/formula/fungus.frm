fungus01{;
z=c=pixel , x=imag(c), y=imag(z):
x = z + x / fn2(y)
y = z + fn1(y)
z = z * z + c 
|z|<4
}

fungus02{;
z=c=pixel , x=imag(c), y=imag(z):
x = z + x / fn2(y)
y = z + fn3(fn1(y))
z = z * z + c 
|z|<4
}

fungus03{;
z = pixel , c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq , x=imag(c), y=imag(z):
x = z + x / fn2(y)
y = z + fn1(y)
z = z * z + c
|z|<4
}

fungus04{;
z = pixel , c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq , x=imag(c), y=imag(z):
x = z + x / y
y = fn3(z) + fn2(fn1(y))
z = z * z + c 
|z|<4
}

fungus05{;
z=c=pixel , x=imag(c), y=imag(z):
x = z / x * fn2(y)
y = z * fn1(y)
z = z * z + c 
|z|<4
}

fungus06{;
z=c=pixel , x=imag(c), y=imag(z):
x = z / fn3(x) * fn2(y)
y = z * fn4(fn1(y))
z = z * z + c 
|z|<4
}

fungus07{;
z=pixel,c=pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq , x=imag(c), y=imag(z):
x = z / fn3(x) * fn2(y)
y = z * fn4(fn1(y))
z = z * z + c 
|z|<4
}

fungus08{;
z=c=pixel , x=imag(c), y=imag(z):
x = fn3(z / x) / fn2(y)
y = z + fn1(y)
z = z * z + c 
|z|<4
}

fungus09{;
z=c=pixel , x=imag(c), y=imag(z):
x = fn3(z / fn4(x)) / fn2(y)
y = z + fn1(y)
z = z * z + c 
|z|<4
}

fungus10{;
z=c=pixel , x=imag(c), y=imag(z):
x = fn3(z / fn4(x)) / fn2(y)
y = z / fn1(y)
z = z * z + c 
|z|<4
}

