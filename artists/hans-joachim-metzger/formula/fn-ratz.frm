3jRatz-fn {; try fn=ident, p1 < 1
  z = Pixel :
  z = (z * z * z * fn1(z) * p1 + p2 )/(z * z * fn2(z) * p1 + p2 )
  | z | <= 10
  ;SOURCE: fn-ratz.frm
}

3Ratz-fn {; try fn=ident, p1 < 1
  z = Pixel :
  z = (z * z * z * fn1(z) * p1 + Pixel )/(z * z * fn2(z) * p1 + Pixel )
  | z | <= 10
  ;SOURCE: fn-ratz.frm
}

