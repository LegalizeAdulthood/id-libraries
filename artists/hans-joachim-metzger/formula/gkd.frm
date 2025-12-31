oHiram           { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                   ;   Thu, 11 Mar 2004 04:44:00
                   ;
            ;-------------------
            ; p1real = a (0<a<1)
            ;-------------------
 a = real(p1)
 x = y = n = 0:
   n = n + 1
   x = x + sin(fn1(n))/n^a
   y = y + cos(fn1(n))/n^a
   z = x + flip(y)
 n == n
 }

oLauwerier       { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                   ;   Thu, 11 Mar 2004 04:44:00
                   ; from "Algorithmen fuer Chaos und Fraktale", p.131
            ;---------------
            ; p1real = a
            ; p1imag = b
            ; p2real = x(0)
            ; p2imag = y(0)
            ;---------------
 a = real(p1), b = imag(p1)
 x = real(p2), y = imag(p2):
   tmp = y
   y = x + y*(a*x-1-b*y)
   x = tmp
   z = x + flip(y)
 tmp == tmp
 }

Rot3d_D3_Jul     { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                   ;   Thu, 23 Jan 2003 02:56:29 (ver. 2)
                   ;   Tue, 21 Jan 2003 00:22:26 (ver. 1)
                   ; periodicity=no, outside=summ
                   ; maxit > p5real*(p5imag+1)
                   ;
 ;p1real: Rotation about x-axis (1st rotation)
 ;p1imag: Rotation about y-axis (2nd rotation)
 ;p2real: Far clipping plane
 ;p2imag: Near clipping plane
 ;p3real: cx
 ;p3imag: cy
 ;p4real: cz
 ;p4imag: Bailout
 ;p5real: Maxiter per slice
 ;p5imag: Number of slices - 1
 ;
 bailout = imag(p4), tiefnum = imag(p5)
 delta = (real(p2)-imag(p2))/tiefnum
 tmp = pi/180
 rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
 ;
 HPixXY = rotYax
 VPixZ = real(rotXax)
 VPixXY = flip(conj(rotYax))
 NXY = VPixZ*VPixXY
 NZ = imag(conj(rotXax))
 VPixXY = -NZ*VPixXY
 ;
 tmp = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
 x1 = x0 = real(tmp), y1 = y0 = imag(tmp)
 z1 = z0 = NZ*imag(p2) + HPixZ*real(pixel) + VPixZ*imag(pixel)
 tmp = NXY*delta
 dx = real(tmp), dy = imag(tmp)
 dz = NZ*delta
 cx = real(p3), cy = imag(p3), cz = real(p4)
 sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
 j = m = i = 0:
   w1 = x1, w2 = y1, w3 = z1
   x1 = sqx + 2*w2*w3 + cx
   y1 = sqz + 2*w1*w2 + cy
   z1 = sqy + 2*w1*w3 + cz
   sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
   IF (bailout >= sqx+sqy+sqz)
     i = i + 1
   ELSE
     i = 0
     m = m + 1
     x1 = x0 = x0 + dx
     y1 = y0 = y0 + dy
     z1 = z0 = z0 + dz
     sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
   ENDIF
   z = m - j
   j = j + 1
 tiefnum >= m && p5 >= i
 }

Rot3d_D3_Man     { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                   ;   Thu, 23 Jan 2003 02:56:29 (ver. 2)
                   ;   Tue, 21 Jan 2003 00:22:26 (ver. 1)
                   ; periodicity=no, outside=summ
                   ; maxit > p5real*(p5imag+1)
                   ;
 ;p1real: Rotation about x-axis (1st rotation)
 ;p1imag: Rotation about y-axis (2nd rotation)
 ;p2real: Far clipping plane
 ;p2imag: Near clipping plane
 ;p3real: x(0)
 ;p3imag: y(0)
 ;p4real: z(0)
 ;p4imag: Bailout
 ;p5real: Maxiter per slice
 ;p5imag: Number of slices - 1
 ;
 bailout = imag(p4), tiefnum = imag(p5)
 delta = (real(p2)-imag(p2))/tiefnum
 tmp = pi/180
 rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
 ;
 HPixXY = rotYax
 VPixZ = real(rotXax)
 VPixXY = flip(conj(rotYax))
 NXY = VPixZ*VPixXY
 NZ = imag(conj(rotXax))
 VPixXY = -NZ*VPixXY
 ;
 tmp = cxy0 = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
 cx = cx0 = real(tmp), cy = cy0 = imag(tmp)
 cz = cz0 = NZ*imag(p2) + HPixZ*real(pixel) + VPixZ*imag(pixel)
 tmp = NXY*delta, dcx = real(tmp), dcy = imag(tmp)
 dcz = NZ*delta
 x1 = real(p3), y1 = imag(p3), z1 = real(p4)
 sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
 j = m = i = 0:
   w1 = x1, w2 = y1, w3 = z1
   x1 = sqx + 2*w2*w3 + cx
   y1 = sqz + 2*w1*w2 + cy
   z1 = sqy + 2*w1*w3 + cz
   sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
   IF (bailout >= sqx+sqy+sqz)
     i = i + 1
   ELSE
     i = 0
     m = m + 1
     cx = cx0 = cx0 + dcx
     cy = cy0 = cy0 + dcy
     cz = cz0 = cz0 + dcz
     x1 = real(p3), y1 = imag(p3), z1 = real(p4)
     sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
   ENDIF
   z = m - j
   j = j + 1
 tiefnum >= m && p5 >= i
 }

