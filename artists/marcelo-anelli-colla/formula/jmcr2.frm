TgZz (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sin(z)/cos(z)-z
  z2=(sin(z)/cos(z))^2
  z=z-(z1/z2)
  0.001<=|z1|
  ;SOURCE: jmcr2.frm
}
TgZ (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sin(z)/cos(z)
  z2=1+z1*z1
  z=z-(z1/z2)
  0.001<=|z1|
  ;SOURCE: jmcr2.frm
}
