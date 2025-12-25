center_jul {
        ; 
        ; For Kerry Mitchell's explanation of the "circle & line"
        ;    coloring method, see the end of formula
        ;    general_man-c&l
        ; 
        ; "circle & line thru center" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-line slope angle, degrees
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad2x=radx*radx
  theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
  ay=-st, by=ct, cy=-ct*imag(cenx)+st*real(cenx):
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=ay*real(zc)+by*imag(zc)+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
general_jul { ; Kerry Mitchell 26aug98
	;
	; "2 general circles" coloring method for Julia sets
	; c = Julia parameter, hardcoded
	; p1 = x circle center
	; p2 = y circle center
	; real(p3) = x circle radius
	; imag(p3) = y circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(0.39,0.44), bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p3), rad2x=radx*radx
        ceny=p2, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }
 
general_jul { ; Kerry Mitchell 26aug98
	;
        ; "2 general lines" coloring method for Julia
        ; Julia parameter hardcoded to (0.26,0.0014)
        ; real(p1) = x line A coefficient
        ; imag(p1) = x line B coefficient
        ; real(p2) = x line C
        ; imag(p2) = y line A coefficient
        ; real(p3) = y line B coefficient
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(.26,.0014), bailout=1e12, iter=1, rmin=1e12
        ax=real(p1), bx=imag(p1), cx=real(p2)
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }
 
general_jul { ; Kerry Mitchell 27aug98
	;
        ; "general circle and line" coloring method for Julia
        ; Julia parameter hardcoded to (0,1)
        ; p1 = circle center
        ; real(p2) = circle radius
        ; imag(p2) = y line A coefficient
        ; real(p3) = y line B coefficient
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(0,1), bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p2), rad2x=|radx|
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }
 
general_man { ; Kerry Mitchell 26aug98 
	;
	; "2 general circles" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
	; p1 = x circle center
	; p2 = y circle center
	; real(p3) = x circle radius
	; imag(p3) = y circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p3), rad2x=radx*radx
        ceny=p2, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }
 
general_man { ; Kerry Mitchell 26aug98
	;
        ; "2 general lines" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
        ; real(p1) = x line A coefficient
        ; imag(p1) = x line B coefficient
        ; real(p2) = x line C
        ; imag(p2) = y line A coefficient
        ; real(p3) = y line B coefficient
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        ax=real(p1), bx=imag(p1), cx=real(p2)
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }
 
general_man { ; Kerry Mitchell 27aug98
	;
        ; "general circle and line" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
        ; p1 = circle center
        ; real(p2) = circle radius
        ; imag(p2) = y line A coefficient
        ; real(p3) = y line B coefficient
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p2), rad2x=|radx|
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }
 
offset_jul {
        ; 
        ; For Kerry Mitchell's explanation of the "circle & line"
        ;    coloring method, see the end of formula
        ;    general_man-c&l
        ;
        ; "circle & offset line" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = angle of line from circle center to tangent
        ;    point, degrees.  y-line is parallel to tangent line
        ;    and offset by amount of radius.
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad=2*radx, rad2x=|radx|
  theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
  xt=real(cenx)+rad*ct, yt=imag(cenx)+rad*st
  phi=theta+pi/2, cp=cos(phi), sp=sin(phi)
  ay=sp, by=-cp, cy=cp*yt-sp*xt:
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=ay*real(zc)+by*imag(zc)+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
tangent_jul {
        ; 
        ; For Kerry Mitchell's explanation of the "circle & line"
        ;    coloring method, see the end of formula
        ;    general_man-c&l
        ;
        ; "circle & tangent line" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = angle of line from circle center to tangent
        ;    point of y-line, degrees
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad=radx, rad2x=|radx|
  theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
  xt=real(cenx)+rad*ct, yt=imag(cenx)+rad*st
  phi=theta+pi/2, cp=cos(phi), sp=sin(phi)
  ay=sp, by=-cp, cy=cp*yt-sp*xt:
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=ay*real(zc)+by*imag(zc)+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
