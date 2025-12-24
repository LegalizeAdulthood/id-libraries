Carr-739 {
  z=1/pixel, c=(1/pixel)/2/(z-2.5)^(1/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-740 {
  z=1/pixel, c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
  z=z*z+(c-0.4)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-741 {
  z=1/pixel-0.75, c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
  z=z*z+(c-0.489)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-742 {
  z=1/pixel/1.75, c=(1/pixel)/2/(z-2.5)^(pixel-1)+2:
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-743 {
  z=c*((1.5,0.7)*((sqrt5+1)/2)), c=1/pixel:
  z=z*z+flip(c+0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-744 {
  z=c*((1.5,0.7)*((sqrt5+1)/2)), c=1/pixel-0.4:
  z=z*z+flip(c+0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-745 {
  z=1/flip(pixel), c=1/flip(pixel+(0.6,0.3)):
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-746 {
  z=c=1/pixel:
  z=z*z+c
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-747 {
  z=c=1/pixel:
  z=z*z+c
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-748 {
  z=sin(1/pixel), c=sin(|1/pixel|):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-749 {
  z=sin(1/pixel), c=sin(|1/pixel|):
  z=z*z+c
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-750 {
  z=sin(1/pixel), c=sin(|1/pixel|):
  z=((z*z)+0.004)+c
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-751 {
  z=sin(1/pixel), c=cosxx(|1/pixel|):
  z=((z*z)+0.009)+(c-0.124)
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-752 {
  z=conj(1/pixel), c=conj(sqr(|1/pixel|)):
  z=z*z+c
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-753 {
  z=c=1/pixel:
  z=(z*z+(c+(c-1)))/2
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-754 {
  z=conj(1/pixel), c=1/pixel:
  z=(z*z+(c+(c-1)))/2
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-755 {
  z=conj(1/pixel-0.124), c=1/pixel:
  z=conj(1.124)*(z*z+c)+real(c*(1/pixel-0.5))
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-756 {
  z=conj(1/pixel-0.124), c=cosxx(z*z)/sin(z/(1/pixel)):
  z=(z*z+c)/2
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-757 {
  z=conj(1/pixel-0.124), c=z*log(1/pixel)/(1/z*1/z)+0.124:
  z=z*z+c
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-758 {
  z=conj(1/pixel-0.124), c=z*log(1/pixel)/(1/z*1/z)+0.724:
  z=z*z+c
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-759 {
  z=1/(((sqrt5+1)/2)*pixel), c=sin(1/(z*z)):
  z=z*z+c
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-760 {
  z=((sqrt5+1)/2)*pixel, c=sin(1/(z*z)):
  z=1/(z*z+c)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-761 {
  z=((sqrt5+1)/2)*pixel, c=sqr(1/(z*z)):
  z=1/(z*z+c-1.124)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-762 {
  z=((sqrt5+1)/2)*pixel, c=sqr(1/(z*z)):
  z=1/(z*z+c)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-763 {
  z=((sqrt5+1)/2)*(1/pixel), c=(1/(z*z)):
  z=(z*z+c)/c/z
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-764 {
  z=((sqrt5+1)/2)*(1/pixel), c=(sqr(1/(z*z)))/pixel*z:
  z=sqr(z*z+c)
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-765 {
  z=1/pixel-0.05, c=1/pixel-0.1:
  z=(z-0.3)*(z-0.25)+c
  abs(z/(1/pixel))<2.124
  ;SOURCE: carr.frm
}


Carr-766 {
  z=1/pixel-0.05, c=1/pixel-0.1:
  z=(z-0.3)*(z-0.35)+c+0.224
  abs(z*z/flip(pixel))<2.524
  ;SOURCE: carr.frm
}


Carr-767 {; This is a modification of a formula I saw somewhere. 
          ; If you know who's it is please let me know.
  c=z=1/(pixel^1.245):
  z=fn1(z^1.245)+fn2(c)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-768 {; Ditto above.
  c=z=1/(pixel^1.245):
  z=conj(z^2.245)+fn2(c)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-769 {
  c=z=1/(pixel^2.45):
  z=(z*z+c)+0.524
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-770 {
  z=c=fn2(1/pixel):
  z=(z*z+c-0.164)/0.3
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-771 {
  c=z=fn2(1/pixel):
  z=(z*z+c-0.164)/0.75
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-772 {
  z=sqr(sinh(c)), c=sqr(sinh(1/pixel)):
  z=z*z-flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-773 {
  z=c=sqr(conj(1/pixel)):
  z=z*z+c-0.324
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-774 {
  z=c=sqr(cotan(1/pixel)):
  z=z*z+c-0.724
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-775 {; Nice images produced
  z=c=sqr(sqr(1/pixel)):
  z=z*z+c-0.724
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-776 {
  z=c=sqr(sqr(1/pixel+0.09)):
  z=(z-0.09)*(z-0.09)+conj(c-0.724)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-777 {
  z=c=sqr(sqr(1/pixel+0.09)):
  z=(z-0.09)*(z-0.09)+flip(c-0.9245)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-778 {
  z=c=sqr(sqr(1/pixel)):
  z=(z*z+c-0.724)-0.01
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-779 {
  z=c=sqr(sqr(1/pixel)):
  z=(z*z+c-0.524)-0.01
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-780 {
  z=c=sqr(sqr(sqr(1/pixel))):
  z=((z*z+c-0.524)-0.01)/0.855
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-781 {
  z=c=sqr(sqr(cosxx(1/pixel))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-782 {
  z=sqr(sqr(cosxx(1/pixel))), c=sqr(sqr(1/pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-783 {
  z=sqr(sqr(sqr(1/pixel))), c=sqr(sqr(1/pixel)):
  z=z*z+(c-0.024)
  z=z+z+c+1/pixel
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-784 {
  z=sqr(sqr(sqr(1/pixel+0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=z*z+(c-0.084)
  z=z+z+c+1/pixel-0.03
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-785 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=z^z*z+flip(c*c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-786 {; Very interesting image poosibilities !!
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+flip(c*c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-787 {; Ditto above
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+conj((c+0.124)*(c+0.124))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-788 {
  Z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+tanh((c+0.129)*(c-0.129))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-789 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+cotanh((c+0.129)*(c+0.129))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-790 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+tanh((c-0.129)*(c+0.129))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-791 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+tanh((c-0.229)*(c+0.129))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-792 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=(z*z+c-0.724)-0.01
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-793 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=(z*z+c-0.724)+0.01
  z=(z*z+c-0.724)-0.01
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-794 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((z*z+c-0.724)+0.07)+0.03
  z=(z*z+c-0.724)/0.67
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-795 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=(z*z+c-0.724)+0.07
  z=(z*z+c-0.724)/0.87
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-796 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=(pixel-z*z)/(pixel-c*c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-797 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=sin((pixel-z*z)/(pixel-c*c))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-798 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-c*c))-0.3
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-799 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c-0.824)*(c-0.824)))-0.375
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-800 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))-0.375
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-801 {
  z=sqr(sqr(sqr(1/pixel-0.006)))-0.01, c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-802 {;***
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=z*z+c
  z=z/pixel*z*z+c/flip(c/pixel*c+z)-1/pixel
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-803 {
  z=1/conj(pixel)+0.1/pixel, c=1/conj(conj(pixel))+1/pixel+z:
  z=(1/z^z*z/7+z*z-c)/1.3
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-804 {; Modified SJMAND01
  z=1/(real(pixel)+flip(imag(pixel)*1.224))
  c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}
