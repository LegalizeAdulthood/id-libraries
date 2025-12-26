manjul_lace {; Requires passes=1   George Martin, 1996
             ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
             ; If Real(p1) is:
             ;    0 : formula draws PHC manjul_lace
             ;    1 : formula draws mandel component only
             ;    2 : formula draws julia component  only
  IF (p1==1 || p1 == whitesq)
    z = c = 1.5*pixel
  ELSE
    z = pixel, c = (-.75, .1234567)
  ENDIF :
  z = z*z + c
  |z| <= 4
  ;SOURCE: ifs196.frm
}
 
mandel_nest {; George Martin [76440,1143] with help from Sylvie Gallet
   ; periodicity=0 float=yes, fractint v19.3 or higher
   ; real(p1) is reduction factor, e.g 1 (default) is same size,
   ;     2 is half the size (linear; 1/4 the area size)
   ; imag(p1) is clockwise rotation of the image in degrees
   ; p2 - real portion moves image along the x axis, imag
   ;     portion along the y axis. + = right,up. 
   ; real(p3) - iteration spacing. 256 and multiples causes
   ;     nested images to have same coloring. Default 256 
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180:
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = c*(1 - test) + test*newpixel
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: nest.frm
}
 
