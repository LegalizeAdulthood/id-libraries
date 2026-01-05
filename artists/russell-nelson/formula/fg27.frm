comment { This par file of 4 images is zooms into
          fungus027 function=log/sqr/recip/tanh
          and copyright 1998 by Lee H. Skinner  LeeHSkinner@compuserve.com
        }

fungus027  { ; Brian E. Jones
z=c=pixel , x=imag(c), y=imag(z):
x = z / fn3(x) * fn2(y)
y = z * fn4(fn1(y))
z = z * z + c
|z|<4
}
