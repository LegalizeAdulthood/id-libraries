; ******************************************************
; *                  FILE:kapet007.frm                 *
; *                KAPETANOV 7 [14,05,1992]            *
; *              copyright by Kapetanov Milan          *
; *                   CIS:[101540,3362]                *
; *                   AOL:Essit                        *
; *          Int:http://www.blue.essit@aol.com         *
; *                 HOPE YOU ENJOY IT !!!              *
; ******************************************************

Kapetanov7 {
c=z=pixel:
z=sqr(z)+pixel/c,z=c^2/z
|z|<14
}

Kapetanov12 {
 c=1/pixel,z=c-sin(pixel):
 c=tan(z),z=c^2+cosxx(c)
 |z|<8
}

Kapetanov11{
c=pixel,z=pixel-cos(c):
c=sqr(pixel)+z,z=c*sin(z)
|z|<8
}
