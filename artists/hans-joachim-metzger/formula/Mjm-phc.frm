MJM-PHC03 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = fn1(newpixel)*(1-test)\ 
       + test*reduction*(fn2(newpixel)-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * (whitesq == 0)\ 
            + (c*test1+p*(1-test1)) * whitesq
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}
 
MJM-PHC01 {
  z = c = pixel 
  compt = 0, limit = real(p1), bailout = 4
  c1 = (0.34396372130558980 , 0.05608272738673762)
  c2 = (-0.72141758920523890 , 0.25918045895127010)
  delta = c2-c1, b = c+delta:
  p = (-0.743380900000982,-0.131850030300002)
  test1 = (compt<limit), test2 = (compt!=limit)
  z = z * fn1(test1)
  c = (b - delta * test1) * (whitesq == 0)\ 
         + (c*test1+p*(1-test1)) * whitesq
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: mjm-phc.frm
}
 
MJM-PHC02 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test) \
        + test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * whitesq\ 
        + (c*test1+p*(1-test1)) * (whitesq == 0)
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}
 
MJM-PHC04 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*sqrt(iterspace)
  newpixel = newpixel*(1-test)\ 
       + test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * (whitesq == 0)\ 
       + (c*test1+p*(1-test1)) * whitesq
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}
 
MJM-PHC05 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test)\ 
       + test*flip(reduction)*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * (whitesq == 0)\ 
        + (c*test1+p*(1-test1)) * whitesq
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}
 
MJM-PHC06 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + fn1((real(p1)==0))
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = fn3(iter == nextzoom)
  test1 = fn4(compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test)\ 
       + test*flip(reduction)*fn2(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * (whitesq == 0)\ 
       + (c*test1+p*(1-test1)) * whitesq
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}
 
MJM-PHC07 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = fn1(-0.743380900000982,-0.131850030300002)\
        ^fn2(-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test)\ 
      + test*flip(reduction)*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * whitesq\ 
      + (c*test1+p*(1-test1)) * (whitesq == 0)
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}
 
MJM-PHC08 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = fn1(p2):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test)\ 
      + test*flip(reduction)*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * whitesq\ 
      + (c*test1+p*(1-test1)) * (whitesq == 0)
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}
 
