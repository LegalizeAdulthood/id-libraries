Carr-919 {
  z=1/(pixel*pixel)
  c=abs(pixel*pixel+(4/z^z*z+250)):
  z=(1/z^z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-920 {
  z=1/(pixel*pixel)
  c=imag(pixel*pixel+(4/z^z*z+250)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-921 {
  z=1/(pixel*pixel)
  c=imag(pixel*pixel+(4/z^z*z+250)):
  z=z*z+c
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-922 {
  z=1/(pixel*pixel)
  c=imag(pixel*pixel+(4/z^z*z+250)):
  z=pixel
  z=conj(z*z*z+c)
  z=z*z*1/c
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-923 {
  z=imag(1/(pixel*pixel))
  c=imag(pixel*1/pixel+(4/z^z*z+1/pixel)):
  z=((z*1/c)/(pixel-c*c))/0.8
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-924 {
  z=1/pixel, c=pixel:
  z=z*z+c
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-925 {
  z=1/pixel, c=pixel:
  z=((imag(z)/c)+(z*1/c))/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-926 {
  z=4/pixel, c=pixel+4:
  z=((imag(z)/c)+(z*1/c))/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-927 {
  z=conj(4/pixel), c=pixel+4:
  z=((imag(z)/c)+(z*1/c))/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-928 {
  z=conj(6/pixel), c=cosh(pixel+8):
  z=(((imag(z)/c)+(z*1/c))/(pixel-c*c))/0.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-929 {
  z=conj(6/pixel), c=cotanh(pixel+8):
  z=(((imag(z+2)/c)+((2.4*z)*1/c))/(pixel-c*c))/0.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-930 {
  z=conj(4/pixel), c=cotanh(pixel-4):
  z=(((imag(z+2)/c)+((2.4*z)*4/c))/(pixel-c*c+1/pixel))/1.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-931 {
  z=conj(4/pixel*0.91/pixel)
  c=pixel-4:
  z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/(pixel-c*c+1/pixel))/2.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-932 {
  z=conj(4/pixel*0.91/pixel)
  c=pixel-4:
  z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/flip(1.5*conj(pixel-c*c+4/pixel)))/2.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-933 {
  z=conj(4/pixel*1.91/pixel)
  c=4/(pixel*pixel-4):
  z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/flip(1.5*conj(pixel-c*c+4/pixel)))/2.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-934 {
  z=1/pixel, c=pixel:
  z=(z^(cotanh(z^.5))+pixel)/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-935 {
  z=imag(1/pixel)
  c=1/(real(pixel)+flip(imag(pixel)*(-3.224))):
  z=(pixel-1/z^z*z)/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-936 {
  z=imag(1/pixel*0.91/pixel)
  c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
  z=(z*1/c)/(pixel-c*c)
  |z-pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-937 {
  z=imag(1/pixel)
  c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
  z=(1/fn1(z)+z)/(pixel-c*c)
  |z-fn1(pixel)| <=100
  ;SOURCE: 22carr.frm
}
Carr-938 {
  z=imag(1/pixel)
  c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
  z=(4/fn1(z)+pixel)/(pixel-c*c)
  |z-fn1(pixel)| <=100
  ;SOURCE: 22carr.frm
}
Carr-939 {
  z=1/pixel, c=pixel:
  z=imag(z+fn1(z*1/pixel))/c/pixel
  |z-pixel| <=100
  ;SOURCE: 22carr.frm
}
Carr-940 {
  z=1/pixel, c=fn2(pixel)/fn3(pixel):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-941 {
  z=abs(1/pixel), c=fn2(pixel)/fn3(pixel):
  z=(z*1/(c+2))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-942 {
  z=abs(1/pixel), c=fn2(pixel)/fn3(pixel):
  z=(z*1/(c-1.753))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-943 {
  z=abs(1/pixel), c=fn2(pixel)/fn3(pixel):
  z=(z*3/fn4(c*c-1.8))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-944 {
  z=abs(1/pixel), c=fn2(pixel)/fn4(pixel):
  z=((z*3/fn4(c*c-0.8))/(pixel-c*c))/3.4
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-945 {
  z=abs(1/pixel*0.91/pixel)
  c=fn2(pixel)/fn4(pixel):
  z=(z*3/log(c*c-0.8))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-946 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z*3/log(c*c-1.8))/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-947 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z*3/cotanh(c*c-1.8))/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-948 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z*pixel-(c*c))/(pixel-c*c))/2.8
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-949 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((imag(z*pixel)-(c*c))/(pixel-c*c))/2.8
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-950 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z*pixel)/(4/fn4(c*pixel)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-951 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(cotanh(z*pixel)/tanh(4/fn4(c*pixel)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-952 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(z*c+pixel)/(pixel)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-953 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(z*(1/c^c)+pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-954 {
  z=sqr(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(cotanh(z)*tanh(z)+fn3(fn4(c)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-955 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((pixel-z*z*4/z)/(pixel-c*c))/2.8
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-956 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(conj(pixel-z*z*4/z)/(pixel-c*c))/1.7
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-957 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z/1/c/2.224)/(pixel-c*c))/1.4
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-958 {; Modified Julia
  z=1/(pixel*pixel)
  c=((0.3224,0.69)*(|-2.224|<0)+(-2.224))
  t=(4*(real(0.624)<=0)+real(0.624)*(0<0.624)):
  z=(z*z*1/c)/(pixel-c*c)
  |z| <=t
  ;SOURCE: 22carr.frm
}
Carr-959 {
  z=1/(pixel*pixel)
  c=(0.3224,-0.69)/pixel:
  z=((z*1/c)/(pixel-c*c))/1.4
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-960 {
  z=1/(pixel*pixel)
  c=imag(0.3224,-0.69)/pixel:
  z=((z*1/c)/(pixel-c*c))/1.39
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-961 {
  z=1/(pixel*pixel)
  c=imag(0.6,0.55)/pixel:
  z=((z*1/c)/(pixel-c*c))/1.85
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
Carr-962 {
  z=1/(pixel*pixel)
  c=cosxx(0.6,0.55)/pixel:
  z=((z*1/c)/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}
