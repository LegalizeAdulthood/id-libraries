SliceJB-new        { ; from John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=z^(p3)+c
  |z| <= 9
}

SliceJB-new {; from John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=z^(p3)+c
  |z|<=9
  }

SliceJB-new {
  ; by John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=z^(p3)+c
  |z| <= 9
}

SliceJB2003-PT {; from John R.H.Goering's formula
pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
s=v*sin(a), c=p+flip(q)+p3, z=r+flip(s)+(.000216,.074279):
z=z^2.003+c
|z|<=9
}

SliceJB2003-PT {;adapted from John Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+p3, z=r+flip(s)+(.000216,.074279):
  z=z^2.003+c
  |z|<=9
  }

