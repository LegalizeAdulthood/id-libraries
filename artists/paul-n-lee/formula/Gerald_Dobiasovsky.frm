Rot3d_T-set     { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                  ;   Thu, 3 Nov 2005 02:45:56
                  ; periodicity=no, outside=summ
                  ; maxit > p5real*(p5imag+1)
 ;--------------------------------------------
 ;p1real: Rotation about x-axis (1st rotation)
 ;p1imag: Rotation about y-axis (2nd rotation)
 ;p2real: Far clipping plane
 ;p2imag: Near clipping plane
 ;p3real: x1(0)
 ;p3imag: y1(0)
 ;p4real: z1(0)
 ;p4imag: Bailout
 ;p5real: Maxiter per slice
 ;p5imag: Number of slices - 1
 ;--------------------------------------------
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
 cx = cx0 = real(tmp), cy = cy0 = imag(tmp)
 cz = cz0 = NZ*imag(p2) + VPixZ*imag(pixel)       ;HPixZ -> 0
 tmp = NXY*delta, dcx = real(tmp), dcy = imag(tmp)
 dcz = NZ*delta
 x1 = real(p3)
 y1 = imag(p3)
 z1 = real(p4)
 j = m = i = 0:
   a = sqr(x1) + 2*y1*z1
   b = sqr(z1) + 2*x1*y1
   c = sqr(y1) + 2*x1*z1
   x1 = a + cx, y1 = b + cy, z1 = c + cz
   IF (bailout >= (sqr(x1)+sqr(y1)+sqr(z1)))
     i = i + 1
   ELSE
     i = 0
     m = m + 1
     cx = cx0 = cx0 + dcx
     cy = cy0 = cy0 + dcy
     cz = cz0 = cz0 + dcz
     x1 = real(p3), y1 = imag(p3), z1 = real(p4)
   ENDIF
   z = m - j
   j = j + 1
 tiefnum >= m && p5 >= i
 }
