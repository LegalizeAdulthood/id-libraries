Carr-873 {
  z=1/(pixel*conj(5/pixel+0.724))
  c=1/(fn4((pixel-1.524)*sqr(1/pixel)+fn2(conj(1/pixel-0.524)))):
  z=(pixel+z*z)/(pixel-c*c-0.324)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-874 {
  z=1/(pixel*conj(conj(5/pixel+0.724)))
  c=1/(fn4((conj(pixel-1.524))*sqr(1/pixel)+fn2(conj(1/pixel-0.524)))):
  z=flip((pixel+z*z)/(pixel-c*c-0.324))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-875 {
  z=1/(pixel*conj(conj(5/pixel+0.724)))
  c=1/(fn4((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
  z=flip((pixel+z*z)/(pixel-c*c-0.324))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-876 {
  z=1/(pixel*conj(conj(2/pixel+0.724)))
  c=1/(fn2((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
  z=flip(pixel+z*z)/(pixel-c*c-0.324)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-876 {
  z=1/(pixel*conj(conj(2/pixel+0.724)))
  c=1/(fn2((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
  z=flip(pixel+z*z)/(pixel-c*c-0.324)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-877 {
  z=1/(pixel*conj(conj(2/pixel+0.794)))
  c=1/(fn2((conj(pixel-1.784))*sqr(1/pixel-0.024)/fn2(conj(1/pixel-0.824)))):
  z=conj(flip(pixel+z*z-0.025)/(pixel-c*c-0.494))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-878 {
  z=(1/pixel)/1.91, c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=(conj(pixel+z*z)/(pixel-c*c))/1.55
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-879 {
  z=1/(pixel*pixel)
  c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-880 {
  z=real((1/pixel)/1.91)/(5.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(pixel+z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-880 {
  z=real((1/pixel)/1.91)/(5.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(pixel+z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-881 {
  z=((1/pixel)/0.91)/(2.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-881 {
  z=((1/pixel)/0.91)/(2.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-882 {
  z=((1/pixel)/0.71)/(2.7,-1.3)
  c=(1/pixel*0.51/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-883 {
  z=((1/pixel)/0.71)/(2.7,-1.3)
  c=(1/pixel*0.51/pixel):
  z=(z^1/z+2*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-883 {
  z=((1/pixel)/0.71)/(2.7,-1.3)
  c=(1/pixel*0.51/pixel):
  z=(z^1/z+2*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-884 {
  z=((1/pixel)/0.71)/(4.7,-0.3)
  c=(1/pixel*0.51/pixel):
  z=(z^(1/z*1/z)+3*z)/(pixel-conj(c*c))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-884 {
  z=((1/pixel)/0.71)/(4.7,-0.3)
  c=(1/pixel*0.51/pixel):
  z=(z^(1/z*1/z)+3*z)/(pixel-conj(c*c))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-885 {
  z=((1/pixel)/0.71)/(4.7,-0.1)
  c=(1/pixel*0.51/pixel):
  z=(1/z*1/pixel*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-886 {
  z=((1/pixel)/0.71)/(4.7,-0.1)
  c=(1/pixel*0.51/pixel):
  z=(1/z*1/pixel*z*z+z)/((pixel-1)-(c*c))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-887 {
  z=((1/pixel)/0.71)/(1/pixel)
  c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=((1/z^1/pixel*z*z+z)/((pixel-1)-(c*c)))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-888 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.124)
  c=((1/pixel)/2)/z-2.8^cotanh(pixel-1.124)/(1/pixel):
  z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-889 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel-1.324)/(1/pixel):
  z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.6
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-890 {; May not be mathmatically correct but...
  z=(1/1/pixel^pixel*pixel)
  c=1/conj(1/pixel^pixel+pixel):
  z=(1/z*z*z)/(c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-890 {; May not be mathmatically correct but...
  z=(1/1/pixel^pixel*pixel)
  c=1/conj(1/pixel^pixel+pixel):
  z=(1/z*z*z)/(c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-891 {
  z=1/(1/pixel*pixel)/(3.7,-1.2)
  c=cotanh(1/pixel^pixel+pixel):
  z=(1/z*z*z+abs(1/pixel))/(1/pixel-(c*c+1/pixel))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-892 {
  z=(1/pixel*pixel)/cosh(1/pixel)
  c=(1/pixel*pixel+pixel)/tanh(pixel+2):
  z=flip((1/z*z*z+(1/pixel))/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-893 {
  z=sqr(sqr(sqr(1/pixel-0.006)))
  c=((1/pixel)/2)/z^2.5^cotanh(pixel-1.124):
  z=(1/z*z*z+(1/pixel))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-894 {
  z=sqr(sqr(sqr(1/pixel-0.006)))/conj(1/pixel)
  c=(imag(1/pixel)/2)/real(z)-2.5^cotanh(pixel-1.124):
  z=1/(pixel-z*z/(pixel*real(1/pixel)))/(pixel-c*c*pixel)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-895 {
  z=cotanh(1/pixel), c=2+cotanh(1/pixel):
  z=conj(2.124)*(z*z+c)+real(c*(1/pixel-0.5))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-896 {
  z=cotanh(1/pixel), c=2+cotanh(1/pixel*0.87/pixel):
  z=(2.124)*(z*z+c)/real(c*(1/pixel-0.5))
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-897 {
  z=1/(conj(pixel)), c=3.58+sqr(cotanh(1/pixel)):
  z=((1/z*z*z+z)/(pixel-c*c))/1.68
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-898 {
  z=1/(pixel*pixel), c=1/(sqr(sqr(sqr(pixel)))):
  z=conj(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-899 {
  z=cotanh(pixel+1)/real(1/pixel)
  c=sqr(sqr(sqr(pixel))):
  z=(z+pixel)/(c-pixel)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-900 {
  z=cotanh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=(z^real(2.124)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-901 {
  z=cotanh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=tanh(z^real(2.524)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-902 {
  z=sinh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=cotanh(z^exp(2.424)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-902 {
  z=sinh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=cotanh(z^exp(2.424)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-903 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=(sqr(conj(z))*conj(z)+conj(2.124))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-904 {
  z=((1-pixel)/3)^0.5, c=(1-1/pixel)^0.5:
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-905 {; Modified Richard frm
  z=1/pixel, c=pixel-sqr(z):
  c=pixel +c/z
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-906 {
  z=1/pixel, c=conj(pixel-sqr(z)):
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-907 {
  z=exp(1/pixel), c=conj(pixel-sqr(z)):
  z=(c-z*pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-908 {
  z=cotanh(exp(1/pixel))
  c=conj(pixel-sqr(z)):
  z=c+z*pixel-1
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-909 {
  z=conj(exp(1/pixel))
  c=conj(pixel-sqr(z)):
  z=z*z+c
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-910 {
  z=(1/pixel)/1.91, c=((1/pixel)/2)/z-2.5^tanh(pixel-1.124):
  z=c-z*pixel
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-911 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=c-z*pixel
  z=c^2+pixel+z
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-912 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=((1/(sin(z*z+pixel*pixel)))/(pixel-c*c))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-913 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=((1/(fn2(z*z+pixel*pixel)))/(pixel-c*c))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-914 {
  z=1/pixel+2.524
  c=((1*(|1.324|<=0)+1.324)*cotanh(pixel)):
  z=c-z*pixel
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-915 {
  z=1/pixel+0.91/pixel
  c=((2.124*(|3.324|<=0)+1.324)*cotanh(pixel)):
  z=c-z*pixel+1
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-916 {
  z=1/pixel, c=((2.124*(|3.124|<=0)+pixel)*cotanh(pixel)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-917 {
  z=1/(pixel*pixel)
  c=flip(pixel+fn3(4/z-z/5+125)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}

Carr-918 {
  z=1/(pixel*pixel)
  c=conj(pixel+(4/z^z*z+250)):
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}

