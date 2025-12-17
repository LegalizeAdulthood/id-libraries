; frac_ml.l, a collection of l-systems posted to the Fractint mailing list
; compiled by Les St Clair 1998


double_snowflake {
        angle 12
        axiom +xf++xf++xf++xf++xf++xf++@q3+yf++++yf++++yf++++
        f=
        x=xf++xf----xf++xf
        y=yf--yf++++yf--yf
}


Fltree(with color) { ;author Nuke - My first real attempt
Angle 32
Axiom +++++++++X
X=<01F[@.64+++X]-F[@.29---X]@.5X
}


inside_out_snowflake {
        angle 6
        axiom f+f+f+f+f+f+
        f=f+f--f+f
}

reptile_1 {
        angle 4
        axiom ++x++f-f-ff-ff-f-f
        x=x[g+g-x][-g+g-x][+g+g-x][++f-f-f[+f]f-f[+f]f-f-f]
        g=gg
        f=ff
}

Reptile1{
Angle 4
Axiom R
R=FF+FF[+G|R]FF+FF[+G|R]FF+FF+FF-F[+R]RF+
F=GG
G=GG
}

Reptile2{
Angle 4
Axiom Q
Q=FFF|P|QFFF-FFFF-FFF|P|F-QFF+FF-FF-
P=FFF|Q|PFFF+FFFF+FFF|Q|F+PFF-FF+FF+
F=FF
}

Reptile3{
Angle 4
Axiom R
R=F+R-F-FFF+L-F+FF+FFF+L-FFF+F+R-FFF+FF+
L=F-L+F+FFF-R+F-FF-FFF-R+FFF-F-L+FFF-FF-
F=FF
}

Reptile4{
Angle 6
Axiom R
R=++FFR+FFR+FFR++FFFRF
F=FF
}
