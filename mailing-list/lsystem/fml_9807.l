;========================================================================;
;Date: Sat, 4 Jul 1998 23:56:27 -0400 (EDT)
;From: kragen@pobox.com (Kragen)
;Subject: (fractint) new snowflake?

inside_out_snowflake {
        angle 6
        axiom f+f+f+f+f+f+
        f=f+f--f+f
}

; Standard way has points at top and bottom;
; inside-out way has them at left and right.
; Here I try to overlap them.
; xf is a segment of the inside-out way;
; yf is a segment of the normal way.

double_snowflake {
        angle 12
        axiom +xf++xf++xf++xf++xf++xf++@q3+yf++++yf++++yf++++
        f=
        x=xf++xf----xf++xf
        y=yf--yf++++yf--yf
}

;========================================================================;
