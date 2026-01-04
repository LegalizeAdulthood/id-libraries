JDTileMandel { ;Tiling Mandelbrot, Jim Deutch, 1996
  ;NOTE!:
  ;imag(p3)=tiling order
  ;
  to=imag(p3)
  to=(to==0)*2+to ;default to 2 if zero
  cols=real(scrnmax)
  rows=imag(scrnmax)
  col=real(scrnpix)
  row=imag(scrnpix)
  ;save 1st pixel
  pixel1=pixel1+pixel*(row==0)*(col==0)
  ;increment between columns
  xinc=xinc+(pixel-pixel1)*(row==0)*(col==1)
  ;increment between rows
  yinc=yinc+(pixel-pixel1)*(row==1)*(col==0)
  ;which repetition of the image (1st is 0,0)
  xreps=floor((col+1)*to/cols)
  yreps=floor(row*to/rows)
  ;normal,inverted,mirror, & inverted mirror images for tiling
  x=xreps/2
  mirror=(floor(x)!=x)
  x=yreps/2
  invert=(floor(x)==x)
  ;recompute col
  mycol=(mycol+to)*(mirror==0)+(mycol-to)*mirror
  mycol=mycol*(oldxreps==xreps)+cols*(oldxreps!=xreps)*mirror
  oldxreps=xreps
  ;recompute row
  myrow=row*to-yreps*rows
  myrow=myrow*invert+(rows-myrow)*(invert==0)
  ;recompute pixel
  mypixel=pixel1+xinc*mycol+yinc*myrow
  c=mypixel
  z=0:
  z=z*z+c
  |z|<4
}

JDTileJulia { ;Tiling Mandelbrot, Jim Deutch, 1996
  ;NOTE!:
  ;imag(p3)=tiling order
  ;p2=Julia parameters
  ;
  to=imag(p3)
  to=(to==0)*2+to ;default to 2 if zero
  cols=real(scrnmax)
  rows=imag(scrnmax)
  col=real(scrnpix)
  row=imag(scrnpix)
  ;save 1st pixel
  pixel1=pixel1+pixel*(row==0)*(col==0)
  ;increment between columns
  xinc=xinc+(pixel-pixel1)*(row==0)*(col==1)
  ;increment between rows
  yinc=yinc+(pixel-pixel1)*(row==1)*(col==0)
  ;which repetition of the image (1st is 0,0)
  xreps=floor((col+1)*to/cols)
  yreps=floor(row*to/rows)
  ;normal,inverted,mirror, & inverted mirror images for tiling
  x=xreps/2
  mirror=(floor(x)!=x)
  x=yreps/2
  invert=(floor(x)==x)
  ;recompute col
  mycol=(mycol+to)*(mirror==0)+(mycol-to)*mirror
  mycol=mycol*(oldxreps==xreps)+cols*(oldxreps!=xreps)*mirror
  oldxreps=xreps
  ;recompute row
  myrow=row*to-yreps*rows
  myrow=myrow*invert+(rows-myrow)*(invert==0)
  ;recompute pixel
  mypixel=pixel1+xinc*mycol+yinc*myrow
  z=mypixel:
  z=z*z+p2
  |z|<4
}

JDTileMandelB { ;Tiling Mandelbrot, Jim Deutch, 1996
  ;NOTE!:
  ;real(p3)=resolution: 320, 640, 800, 1024, 1200
  ;imag(p3)=tiling order (must be > 0!)
  ;
  to=imag(p3)
  cols=real(p3-1)
  ;special case handles 320x200 (640x400 not!)
  rows=.75*cols*(cols!=319)+200*(cols==319)
  ;compute current column
  col=(col+1)*(col!=cols)
  ;compute current row
  row=row+(col==0)
  ;save 1st pixel
  pixel1=pixel1+pixel*(row==0)*(col==1)
  ;increment between columns
  xinc=xinc+(pixel-pixel1)*(row==0)*(col==2)
  ;increment between rows
  yinc=yinc+(pixel-pixel1)*(row==1)*(col==1)
  ;which repetition of the image (1st is 0,0)
  xreps=floor(col*to/cols)
  yreps=floor(row*to/rows)
  ;normal,inverted,mirror, & inverted mirror images for tiling
  x=xreps/2
  mirror=(floor(x)!=x)
  x=yreps/2
  invert=(floor(x)==x)
  ;recompute col
  mycol=(mycol+to)*(mirror==0)+(mycol-to)*mirror
  mycol=mycol*(oldxreps==xreps)+cols*(oldxreps!=xreps)*mirror
  oldxreps=xreps
  ;recompute row
  myrow=row*to-yreps*rows
  myrow=myrow*invert+(rows-myrow)*(invert==0)
  ;recompute pixel
  mypixel=pixel1+xinc*mycol+yinc*myrow
  c=mypixel
  z=0:
  z=z*z+c
  |z|<4
}
