comment  { ; WARNING: Calc Time for all 6fg35000 and all 519 zooms into
          it (520 files) on a P233 at 1600x1200 is 21 days, 8 hrs, 7 min,
          25.60 sec.
          This par file of 520 images is zooms into
          fungus035 function=exp/sqr/sinh/recip
          and copyright 1998 by Lee H. Skinner  LeeHSkinner@compuserve.com
         }

fungus035  { ; Brian E. Jones
z=c=pixel , x=imag(c), y=imag(z):
x = fn3(z / fn4(x)) / fn2(y)
y = z + fn1(y)
z = z * z + c
|z|<4
}
