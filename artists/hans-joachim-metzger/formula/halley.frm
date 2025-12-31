PolyTestII {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=p1:
  c=z
  f1=sin(z)
  f2=cos(z)
  f3=-sin(z)
  z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2)))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}

