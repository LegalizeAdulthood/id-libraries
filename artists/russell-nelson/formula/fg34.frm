comment { This par file of 24 images is zooms into
          fungus034 function=cosh/sqr/recip
          and copyright 1998 by Lee H. Skinner  LeeHSkinner@compuserve.com
        }

fungus034  { ; Brian E. Jones
z=c=pixel , x=imag(c), y=imag(z):
x = fn3(z / x) / fn2(y)
y = z + fn1(y)
z = z * z + c
|z|<4
}
