; kscope.par (c)Les St Clair <les_stclair@compuserve.com> 1997
; Note: Viewwindows settings important! do not change aspect ratio.

many_man{; Modified Stephen C. Ferguson formula
      ; adapted for Fractint by Les St Clair, 1997
      ; use real p1 to set bailout (try p1=4)
      ; use real p2 to set number of mandels
      ; set fn1=ident, fn2=log for "default" formula
z=0, c=pixel:
z=(z*z)+fn1(fn2(c^p2)/p2)
|z| <=p1
}
