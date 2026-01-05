comment { This par file of 47 images is zooms into
          fungus002 function=cosxx/sqr
          and copyright 1998 by Lee H. Skinner  LeeHSkinner@compuserve.com
        }

fungus002  { ; Brian E. Jones
z=c=pixel , x=imag(c), y=imag(z):
x = z + x / fn2(y)
y = z + fn1(y)
z = z * z + c
|z|<4
}
