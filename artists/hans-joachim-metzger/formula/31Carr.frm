Carr1351 {
  z=pixel
  c1=(z-1)/(1/pixel)
  c=(c1)/z:
  z=((z*1/c)/z-(pixel-z*z))
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1352 {
  z=1/pixel
  c1=z/pixel*pixel
  c=(c1)*z:
  z=z-(z*1/c)/(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1353 {
  z=1/pixel*0.91/pixel
  c1=(1.099,0)
  c=z*sqr(c1):
  z=cosxx(z)+c+sin(z/c1)+cosxx(1/pixel)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1354 {
  z=1/pixel*0.91/pixel
  c1=(1.099,0)
  c=sqr(c1)*pixel:
  z=z-(cosxx(z)+c+sin(z/c1)+cosxx(1/pixel))
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1355 {; Carr-brot
  z=log(3.1416)+1/pixel:
  z=z-(sqr(z)+pixel)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1356 {
  z=1/pixel, c=cosxx(pixel):
  z=(1/flip(sqr(z)+(1.099,0)))/(z*z*z*z+c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1357 {
  z=pixel, z1=4/sqr(sqr(sqr(1.099,0)))
  c=cosxx(pixel)+sqr(cotanh(z1)):
  z=z-(z*1/c)+cosxx(1/pixel)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1358 {
  z=pixel, z1=4/sqr(sqr(sqr(1.099,0)))
  c=cosxx(pixel)+sqr(cotanh(z1)):
  z=(z-(z*1/c)+cosxx(1/pixel))/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1359 {
  z=flip(imag(pixel*pixel)), z1=sqr(sqr(sqr(0.3,0.6)))
  c=pixel+sqr(cotanh(z^z1+1)):
  z=(z-(z*1/c)+sqr(1/pixel))/(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1360 {; Modified Peter Jack (Newton variation) frm.
  z=pixel:
  z2=cotanh(z*z)
  z3=cotanh(z*z*z)
  z=cotanh(z-((z3-z*.25-1.25)/((z2*3-.25)+P1)))
  |(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}

Carr1361 {; Modified Peter Jack (Newton variation) frm
  z=pixel:
  z2=z-(z*z)
  z3=z-(z*z*z)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: form2.frm
}

Carr1362 {; Modified Peter Jack (Newton variation) frm
  z=pixel, c=1/pixel:
  z2=z-(z*z)/(pixel-c*c)
  z3=z-(z*z*z)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}

Carr1363 {; Modified Peter Jack (Newton variation) frm
  z=pixel, c=1/pixel:
  z2=z-(z*z)/(pixel-c*c)
  z3=z-(z*z*z)/(pixel-c*c)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}

Carr1365 {; Modified Peter Jack (Newton variation) frm
  z=abs(pixel), c=sqr(1/pixel*0.91/pixel):
  z2=z-(z*z)/(pixel-c*c)
  z3=z-(z*z*z)/(pixel-c*c)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}

Carr1366 {; Modified Peter Jack (Newton variation) frm
  z=abs(pixel), c=sqr(1/pixel*0.91/pixel):
  z2=z-(z*z)/sinh(pixel-z*z+c)
  z3=z-(z*z*z)/sinh(pixel-z*z+c)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}

Carr1367 (XAXIS) {; Modified Scott LPS
  z=pixel, c=1/((1.099,0)+3):
  z=log(z)*sin(z)+c
  |z|<=100
  ;SOURCE: 31carr.frm
}

Carr1368 {
  c=1/pixel, z=((1/pixel)^2.12)+1.25:
  z=(z*z)+c
  |z|<=4
  ;SOURCE: 31carr.frm
}

Carr1369 {
  c=1/pixel, z=((1/pixel)^2.12)+1.25:
  z=z-(z*z+c+sinh(z))/(pixel-c*c)
  |z|<=4
  ;SOURCE: 31carr.frm
}

Carr1370 (XYAXIS) {; Jm Richard-Collard frm. modified.
  z=pixel^2.132, c=z-(1-pixel)/2.5:
  sq=z*z, z=(sq*sin(sq)+sq)+c
  |z|<=50
  ;SOURCE: 31carr.frm
}

Carr1371 {; Julia
  z=pixel, c=(-0.399,-1.1)^1.62+0.0224:
  z=z*z+c
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1372 {; Julia
  z=pixel, c=-0.724^1.59+0.0224:
  z=z*z+c
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1373 {; Julia
  z=pixel, c=-0.784^1.2786+0.0229:
  z=z*z+c
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1374 {; Julia
  z=pixel, c=(-0.784^1.2786+0.0229)+(1.099,0):
  z=z*z+flip(c-1.2)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1375 {; Julia
  z=pixel, c=(-0.784^1.2786+0.0229)+(1.099,0):
  z=z*z+log(c+0.8)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1376 {; Julia Serpent
  z=pixel, c=(-0.74543^1.2796+0.0799)+(-0.3,0.09586):
  z=conj(z*z)+conj(c+0.999978)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1377 {; Julia
  z=pixel, c=(-0.76943^1.27996+0.0799)+(-0.34,0.8):
  z=conj(z*z)+conj(c+0.9899978)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1378 {; Julia
  z=pixel, c=1/pixel+(1.099,0):
  z=(z*z)+(c-1.5)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1379 {; Julia
  z=pixel, c=(0.35/pixel)-0.2998:
  z=(z*z)+c
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1380 {
  z=pixel, c=(-0.5,0.042089):
  z=z^2+(c-0.25)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1381 {
  z=pixel, c=(-0.5,0.042089):
  z=(z^2)-(c+0.1745)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1382 {; SpNewton modified
  z=sqr(sqr(pixel)):
  z1=(z*z-1)*(z*z+0.16)
  z2=4*z^3-1.68*z
  z=z-z1/z2
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1383 {; SpNewton modified
  z=sqr(sqr(pixel)):
  z1=(z*z-0.1/z)*(z*z+0.16)
  z2=4*z^3-1.68*z
  z=z-z1/z2
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1384 {; Julia
  z=pixel:
  z=z^2*z+(-0.7456,0.2)+0.18890342
  |z| <=4
  ;SOURCE: 31carr.frm
}

Carr1385 {; Frm by Paul J. Horn, JuliCon07
  z=pixel:
  z=sqr(sqr(z))+conj(-1.2199085)
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1386 {
  z=pixel, c=z^(z-1):
  z=(z-z*1/(cotanh(c)/cosh(c)))/(pixel-z*z+c)
  z=z-z*1/(cotanh(c)/cosh(c))
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1387 (XAXIS_NOPARM) {; FractalFenderC Modified
     ; Edited for Fractint v. 20 By George Martin, 10/98
  z=0.224, x=|z|, c=z*1/pixel:
  IF (x>1)
    z=cosh(z)+c
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: 31carr.frm
}

Carr1388 (XAXIS_NOPARM) {; FractalFenderC Modified
     ; Edited for Fractint v. 20 By George Martin, 10/98
  z=cotanh(pixel*pixel), x=|real(z)|, c=z/pixel^z:
  IF (x>1)
    z=z-cotanh(sqr(z/c))
  ENDIF
  z=z-(z*1/c)/(pixel*pixel+z)
  x=|z|
  x<=4
  ;SOURCE: 31carr.frm
}

Carr1389 {; Julia
  z=pixel-0.009:
  z=sqr(z)+sqrt(3.1416)-1.505809882
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1390 {; Creates a Leopard Spotted Julia?
  z = pixel - 0.009:
  z = sqr(z) + sqrt(0.3,0.6) - 1.32
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1391 {; Julia?-Mandel?-Neither?
  z=pixel-0.009:
  z=sqr(z)+sqrt(z)-1
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1392 {
  z=pixel-0.009:
  z=z^2.099+sqrt(z)-1.1528063
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1393 {; Julia
  z=pixel-0.009:
  z=(z^2)+sqrt(0.6,0.3)-1.9904
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1394 {; Julia
  z=pixel-0.019:
  z=(z^2.09905)+sqrt(4.29908,-1.2)-3.288955
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1395 {
  z=pixel-0.009, c=sqrt(0.3,0.6)-1.32:
  z=(z*z+c)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1396 {
  z=pixel-0.009, c=sqrt(0.3,0.6)-1.32:
  z=(z*z+c)/(pixel*pixel+z)
  z=(z*1/c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1397 {
  z=sqrt(1/pixel)/pixel, c=sqrt(0.3,0.6)-1.32:
  z=z-(z^pixel+c)+1/c
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1398 {
  z=sqrt(1/pixel)/pixel, c=sqrt(0.3,0.6)-1.32:
  z=(z*z+c)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}

Carr1399 {; Mark Peterson; Mod. by T.J.E. Reed; Modified
  z=pixel:
  z=tan(z*z)+(-0.74543, 0.2)+0.02
  |z| <= 4
  ;SOURCE: 31carr.frm
}

Carr1361 {; Modified Peter Jack (Newton variation) frm
  z=pixel:
  z2=z-(z*z)
  z3=z-(z*z*z)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: form2.frm
}

