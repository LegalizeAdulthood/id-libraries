Carr1150 {
  z=pixel^(sinh(1.099,0)/cosh(pixel))
  c=pixel/((2.099,0)*1/z):
  z=cosxx(z)+c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1151 {
  z=pixel/((1.099,0)^(pixel))
  c=(pixel/((2.099,0)*1/z)):
  z=(z*z+c)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1152 {
  z=pixel/((1.099,0)^(pixel))
  c=(pixel/((2.099,0)*1/z)):
  z=cosxx((z*z+c)/(z*1/c))
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1153 {
  z=1/pixel
  c=(1.099,0)/(pixel-z):
  z=(cotanh(z*z+(1/z*z)+pixel)/(pixel-c*c))/1.46
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1154 {
  z=1/pixel
  c=(0.3,0.6)/(pixel-z*z):
  z=(z*z-(pixel*pixel*pixel))/(z*z+c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1155 (XAXIS_NOPARM) {; FractalFenderC modified
                         ; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=(pixel)/(1.099,0), x=|z|:
  IF (x>1)
    z=cosxx(z)+sqr(pixel)
  ENDIF
  z=sqr(z)+(pixel)
  x=|z|
  x<=4
  ;SOURCE: 27carr.frm
}
Carr1156 (XAXIS_NOPARM) {; FractalFenderC modified
                         ; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=(pixel)/(1.099,0), x=|z|:
  IF (x>1)
    z=cosxx(z)+sqr(pixel)
  ENDIF
  z=sqr(z)+(pixel/(1.099,0))
  x=|z|
  x<=4
  ;SOURCE: 27carr.frm
}
Carr1157 {; Modified Wareman formula
  z=1/pixel, root=(1.099,0):
  z3=z*z*z
  z4=z3*z
  z=(3*z4+root)/(4*z3)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1158 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1159 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1160 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-cosxx(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1161 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=cabs(z)-cosxx(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1162 {; Forms Faberge' Eggs
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cosh(z+pixel))/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1163 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cosxx(z+pixel))/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1164 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cotanh(z+pixel))/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1165 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cosxx(z*z+c)+pixel)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1166 {
  z=1/pixel*0.91/pixel, c=(1.099,0)/pixel:
  z=z-(cosxx(z*1/c+pixel))/sqr(z/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1167 {
  z=sqr(1/pixel*0.91/pixel), c=(1.099,0)/pixel:
  z=z-1/(cosxx(z/c+pixel))/sqr(z/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1168 {
  z=sqr(1/pixel*0.91/pixel), c=(1.099,0)/pixel:
  z=z-1/(sinh(z/c-pixel))/sqr(z/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1169 {
  z=pixel/(1.099,0)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(1.099,0):
  z=pixel-(cosxx(z)-z*z+1/c+1/pixel)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1170 {
  z=pixel/(1.099,0)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(1.099,0):
  z=(pixel-z*z+c)/(pixel-(cosxx(z)-z*z+1/c+1/pixel))
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1171 {
  z=(4/pixel)/(1.099,0)
  c=z-2.5^(pixel-2.324)/(1.099,0):
  z=z-(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1172 {; Modified Noel Giffin formula
  z=1/pixel, zp=(0,0):
  temp=z
  z=z*z-zp
  zp=sin(-temp)
  |zp| <= 4
  ;SOURCE: 27carr.frm
}
Carr1173 {; Ditto above
  z=1/pixel, zp=exp(1.099,0):
  temp=real(z)
  z=exp(z*z+zp)
  zp=z-(cosxx(1/temp))
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1174 {; Modified Noel Giffin formula
  z=pixel, zp1=zp2=zp3=(0,0):
  temp=z
  z=z*z-zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1175 {; Modified Noel Giffin formula
  z=pixel, zp1=zp2=zp3=(0,0):
  temp=z
  z=imag(z*z)-zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1176 {; Ditto above
  z=1/pixel, zp=(0,0):
  temp=z
  z=z*z-cos(zp)
  zp=conj(temp)
  |zp| <=100
  ;SOURCE: 27carr.frm
}
Carr1177 {; Ditto above
  z=cosxx(1/pixel*1/pixel*1/pixel), zp=(0,0):
  temp=z
  z=z*z-cos(zp)
  zp=conj(temp)
  |zp| <=100
  ;SOURCE: 27carr.frm
}
Carr1178 {; Modified Noel Giffin formula
  z=cosxx(pixel), zp1=zp2=zp3=(0,0):
  temp=z
  z=z*z-zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1179 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=(1/pixel):
  temp=z
  z=z*1/zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1180 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=cotanh(1/-pixel):
  temp=z
  z=z*1/zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1181 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=log(1/-pixel):
  temp=z
  z=z-(z*1/zp3)
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1182 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=log(1/-pixel):
  temp=z
  z=z-(z*1/zp3+1/pixel)
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1183 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=log(1/-pixel):
  temp=cabs(z)
  z=z-(z*1/zp3+conj(1/pixel))
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1184 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=sqr(1/-pixel):
  temp=cabs(z-0.5)
  z=z-(z*1/zp3+conj(1/pixel))
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1185 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=sqr(2*(1/-pixel)):
  temp=cabs(z-0.25)
  z=z-(z*1/zp3+conj(1/pixel))
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1186 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=sqr(cosxx(1/-pixel)):
  temp=cabs(z-1.25)
  z=z-(z*1/zp3+cabs(1/pixel))
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1187 {; Modified Noel Giffin formula
  z=zp1=pixel, zp2=(1.099,0):
  temp=z
  z=z-(z*zp2-zp1)
  zp2=zp1^.5
  zp1=temp
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1188 {; Modified Noel Giffin formula
  z=zp1=pixel, zp2=(1.099,0), zp3=sqr(1/pixel*0.91/pixel):
  temp=z
  z=z-(z*zp2-zp1)
  zp2=zp1^z
  zp3=1/pixel
  zp1=(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1189 {; Modified Noel Giffin formula
  z=pixel^2.34, zp1=zp2=zp3=(1/pixel)*(1.099,0)
  c=z-(1/pixel):
  temp=cabs(z)
  z=z-(z*z+c)/(pixel-c*c)
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}
Carr1190 {
  z=1/pixel, c=cosxx(1/pixel):
  z=sqr(sqr(z*c))+c+(1.099,0)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1191 {
  z=1/pixel, c=cosxx(1/pixel):
  z=cosxx(sqr(sqr(z*1/c)))+c+(1.099,0)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1192 {; Modified (Modified Newton; Tim Wegner)
          ; from MISCBLB.FRM
  z=1/pixel, z2=z*z+c, z3=z*(cosxx(z2))
  c=cosxx(1/pixel*0.91/pixel):
  z=z-(z3+p1*z2+1)/(6*z2+4*p1*z)
  z2=z*z/c*c
  z3=z*z2
  p2<=|z3+p1*z2+1|
  ;SOURCE: 27carr.frm
}
Carr1193 {
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=1/cosxx(sqr(pixel)):
  z=z*1/c
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1194 {; Creates VERY nice images
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=1/cosxx(sqr(pixel)):
  z=z-(z*z+c)
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1195 {
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=1/cosxx(sqr(pixel)):
  z=(z*1/c)/(pixel-c*c)
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1196 {
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z*1/c)/(pixel-c*c)
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1197 {
  z=conj(1/pixel*0.91/pixel), z2=z+exp(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z*1/c)
  z2=z3-(z2+z/c)
  z3=z2-(z3+z2)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1198 {
  z=conj(1/pixel*0.91/pixel), z2=z+exp(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z/c)/(pixel-c*c)
  z2=z3-(z2+z/c)
  z3=z2-(z3+z2)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
Carr1199 {
  z=exp(1/pixel*0.91/pixel), z2=z+exp(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z-(z/c)/(pixel-c*c))/1.4
  z2=z3-(z2+z/c)
  z3=z2-(z3+z2)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
