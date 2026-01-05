; August 24, 1997
; Parameter file for current U-draw fractals at
; http://www.dorsai.org/~arch
; and
; http://www.ingress.com/~arch

; These are the parameters and formulas used by the Fractint program to
; draw the current U-draw fractals posted to this site. For the casual
; viewer, they are of technical interest only, but if examined closely
; will show how the input values ("params") and functions submitted by
; viewers were applied. The other information is fairly arcane and is
; best ignored.

; For users of the Fractint program, this parameter file when copied
; to your Fractint directory, can be used to  re-construct these images
; on your own computer, even at very high resolutions.
; The formulas used to draw these images are included in this file.

; The freeware program Fractint (v19.6) is available at my Ingress site
; as is the current parameter file.

; All parameters, formulas and fractals on this site, and images re-drawn by
; this file, are copyright 1994-97 by Don Archer and all reproduction rights
; are reserved.
; ----------------------------------------------------------------------

u-draw18_01 { ; credits to Sylvie Gallet and Bob Carr
 z=fn1(fn2(pixel+p1)^e)-fn3(conj(pixel+p2)^7) 
 c=fn4(z)-conj(|0.1/z|) 
 c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
 l1=1000, l2=1500, l3=2000, l4=2500, l5=3000,  iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3) ,t4=(iter==l4),t5=(iter==l5)
 tt = 1 - (t1||t2||t3||t4||t5)
 z = z * tt
 c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 +c5*t5
 z = z * z + (-0.75,-0.15) + flip(conj(c/10))
 c = z * c/pixel
 iter = iter+1
 |z|<=16
}

u-draw18_04 { ; credits to Sylvie Gallet and Bob Carr
 z=fn1(fn2(sinh(pixel+p1))^e)-fn3(pixel+p2)^7 
 c=fn4(z)-conj(|0.1/z|) 
 c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
 l1=1000, l2=1500, l3=2000, l4=2500, l5=3000,  iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3) ,t4=(iter==l4),t5=(iter==l5)
 tt = 1 - (t1||t2||t3||t4||t5)
 z = z * tt
 c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 +c5*t5
 z = z * z + (-0.75,-0.15) + flip(conj(c/10))
 c = z * c/pixel
 iter = iter+1
 |z|<=16
}

u-draw19_00 { ; credits to Sylvie Gallet and Bob Carr
 z=fn1(fn2(sinh(fn3(pixel+p1))^e))-conj(sinh(pixel+p2)^7)-conj(0.01/pixel-flip(0.001/pixel))-0.3
 c=fn4(z)-(conj(|0.1/z|))
 c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
 l1=1000, l2=1500, l3=2000, l4=2500, l5=3000,  iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3) ,t4=(iter==l4),t5=(iter==l5)
 tt = 1 - (t1||t2||t3||t4||t5)
 z = z * tt
 c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 +c5*t5
 z = sqr(z) * z + flip(conj(c/10))
 c = log(z) * c/pixel
 iter = iter+1
 |z|<=16
}

u-draw20_00 { ; credits to Sylvie Gallet and Bob Carr
 z=fn1(fn2(tan(fn3(pixel+p1))^e))-conj(tan(pixel+p2)^7)-conj(0.01/pixel-flip(0.001/pixel))-0.3
 c=fn4(z)-(conj(|0.1/z|))
 c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
 l1=1000, l2=1500, l3=2000, l4=2500, l5=3000,  iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3) ,t4=(iter==l4),t5=(iter==l5)
 tt = 1 - (t1||t2||t3||t4||t5)
 z = z * tt
 c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 +c5*t5
 z = sqr(z) * z + flip(conj(c/10))
 c = log(z) * c/pixel
 iter = iter+1
 |z|<=16
}

u-draw20_01 { ; credits to Sylvie Gallet and Bob Carr
 z=fn1(fn2(sinh(pixel+p1))^pi)-fn3(pixel+p2)^5 
 c=fn4(z)-conj(|0.1/z|) 
 c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
 l1=1000, l2=1500, l3=2000, l4=2500, l5=3000,  iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3) ,t4=(iter==l4),t5=(iter==l5)
 tt = 1 - (t1||t2||t3||t4||t5)
 z = z * tt
 c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 +c5*t5
 z = z * z + (-0.75,-0.15) + flip(conj(c/10))
 c = z * c/pixel
 iter = iter+1
 |z|<=16
}

