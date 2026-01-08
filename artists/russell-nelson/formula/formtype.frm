comment { #: 11891 S15/Fractals
    06-Mar-91  22:59:29
Sb: #New Fractal Formulas
Fm: Tim Wegner 71320,675
To: all

Below is a whole collection of Fractint formula types from the very prolific
French mathematics professor JM Richard-Collard. I have done no checking or
editing. I invite anyone to sift through these, fix any
syntax mistakes (looks like he uses both "^" and "**" for the expontial),
find some promising fractals, propose a name for them (N2_1 won't do!),
optimize them (replace repeated expressions by variables that can be
precalulated), and send them back to us. Remind us that they came from JM
so we can credit him and you both! Here they are:
}

comment {try N1 with maxiter=25, then 200 }

N1(xyaxis) {z=pixel:z=1/sin(1/(z*pixel)) , |z|<=4 } 

comment { n integer}

N_n(xyaxis) {z=pixel:z=(1/sin(1/((z^n)*pixel))) , |z|<=4 } 

N_n1(xyaxis) {z=pixel:z=(1/sin(1/((z^n)*pixel)))*pixel , |z|<=4 }

N2(xaxis) {z=pixel:z=(1/sin(sinh(z*pixel)))*pixel , |z|<=4 }
N2_1(xaxis) {z=pixel:z=sin(sinh(z*pixel))*pixel , |z|<=4 }
N2_2(xaxis) {z=pixel:z=sin(sinh(z*pixel))+pixel , |z|<=4 }

N3(xyaxis)  {z=pixel:z=1/sin(1/((z^z)*pixel)) , |z|<=4 }
N3_1(xyaxis)  {z=pixel: z=1/sin(1/((z^z)*pixel)) + pixel , |z|<=4 }
N3_2(xyaxis) {z=pixel: z=1/sin(1/((z^z)*pixel)) * pixel , |z|<=4 } 

N3_sinh(xyaxis) {z=pixel: z=1/sinh(1/((z^z)*pixel)) , |z|<=4 }
N3_1sinh(xyaxis) {z=pixel: z=1/sinh(1/((z^z)*pixel))+pixel , |z|<=4 }
N3_2sinh(xyaxis) {z=pixel: z=1/sinh(1/((z^z)*pixel))*pixel , |z|<=4 }

N3_cosh(xyaxis) {z=pixel: z=1/sinh(1/((z^z)*pixel)) , |z|<=4 }
N3_1cosh(xyaxis) {z=pixel: z=1/cosh(1/((z^z)*pixel))+pixel , |z|<=4 }
N3_2cosh(xyaxis) {z=pixel: z=1/cosh(1/((z^z)*pixel))*pixel , |z|<=4 } 

comment {
N3_1(xyaxis) just add '+pixel' after N3. N3_2 just add '*pixel' after N3

N3_sinh replace sin par sinh in N3 , N3_1 and N3_2 

N3_cosh replace sin par cosh in N3 , N3_1 and N3_2 
}

N4(xaxis) {z=pixel:z=(1/sin(1/(z*pixel)))*pixel , |z|<=4 }
N5(xaxis) {z=pixel:z=(1/sin(1/(z*pixel)))+pixel , |z|<=4 }

comment {N5 replace '*pixel' by '+pixel' in the above formula.}

N6(xyaxis) {z=pixel:z=(1/cos(1/(z*z)))+pixel , |z|<=4 }

N7(xyaxis) {z=pixel:z=(1/cos(1/(z*pixel)))+pixel , |z|<=4 }

N8(xaxis) {z=pixel:z=1/sinh(1/(z*pixel)) , |z|<=4 }

N9(xyaxis) {z=pixel: z=1/sinh(1/(z*pixel))+pixel , |z|<=4 }
N10(xyaxis){z=pixel: z=1/sinh(1/(z*pixel))*pixel , |z|<=4 }
N11(xyaxis){z=pixel: z=1/cosh(1/(z*pixel))+pixel , |z|<=4 }
N12(xyaxis){z=pixel: z=1/cosh(1/(z*pixel))*pixel , |z|<=4 }

comment {N13 replace replace sinh by cosh in N9 and N10 }

N15(xaxis) {z=pixel:z=(sin(z*z*sin(1/(z*z))))+pixel , |z|<=4 }
N16(xaxis) {z=pixel:z=(sin(z*z*sin(1/(z*z))))*pixel , |z|<=4 }

comment {N16 replace '+pixel' by '*pixel' above.
===================================================================
}

 
Whatever_the_name(XAXIS) {z=pixel:z=z*z+(1/z*z)+pixel , |z|<=4 }

No_name(xaxis) {z=pixel: z+z*z+(1/z*z)+pixel , |z|<=4 }

comment {
It seems not so ugly at first glance and lot of corners to zoom in.
try this:
 Corners              X                  Y
top-left         -1.178372          -0.601683
bottom-right     -0.978384          -0.751678
center           -1.07838           -0.67668
====================================================================
 
>>As i'm lazy,i will just type the f(z) formulas.All (XYAXIS)
}

lz1_sin(xyaxis) {z=sin(z^pixel) , |z|<=4 }
lz1_cos(xyaxis) {z=cos(z^pixel) , |z|<=4 }
lz1_sinh(xyaxis) {z=sinh(z^pixel) , |z|<=4 }
lz1_cosh(xyaxis) {z=cosh(z^pixel) , |z|<=4 }

lz2_sin(xyaxis) {z=sin(z^pixel)*pixel , |z|<=4 }
lz2_cos(xyaxis) {z=cos(z^pixel)*pixel , |z|<=4 }
lz2_sinh(xyaxis) {z=sinh(z^pixel)*pixel , |z|<=4 }
lz2_cosh(xyaxis) {z=cosh(z^pixel)*pixel , |z|<-4 }

comment {then replace sin by cos,sinh,cosh above.}

lz3_sin(xyaxis)  {z=1/sin(z^pixel) , |z|<=4 }
lz3_cos(xyaxis)	 {z=1/cos(z^pixel) , |z|<=4 }
lz3_sinh(xyaxis) {z=1/sinh(z^pixel) , |z|<=4 }
lz3_cosh(xyaxis) {z=1/cosh(z^pixel) , |z|<=4 }

lz4_sin(xyaxis) {z=1/sin(z*pixel) ,  |z|<=4 }
lz4_cos(xyaxis) {z=1/cos(z*pixel) ,  |z|<=4 }
lz4_sinh(xyaxis) {z=1/sinh(z*pixel) ,  |z|<=4 }
lz4_cosh(xyaxis) {z=1/cosh(z*pixel) ,  |z|<=4 }

lz5_sin(xyaxis) {z=(1/sin(z^pixel))*pixel ,  |z|<=4 }
lz5_cos(xyaxis) {z=(1/sin(z^pixel))*pixel ,  |z|<=4 }
lz5_sinh(xyaxis) {z=(1/sin(z^pixel))*pixel ,  |z|<=4 }
lz5_cosh(xyaxis) {z=(1/sin(z^pixel))*pixel ,  |z|<=4 }

lz6_sin(xyaxis) {z=(1/sin(z*pixel))*pixel , |4|<=4 }
lz6_cos(xyaxis) {z=(1/cos(z*pixel))*pixel , |4|<=4 }
lz6_sinh(xyaxis) {z=(1/sinh(z*pixel))*pixel , |4|<=4 }
lz6_cosh(xyaxis) {z=(1/cosh(z*pixel))*pixel , |4|<=4 }


comment {then replace sin by cos,sinh,cosh above.}

lz7_sin(xyaxis) {z=z*pixel*sin(z*pixel) , |z|<=4 }
lz7_sinh(xyaxis) {z=z*pixel*sinh(z*pixel) , |z|<=4 }
lz7_cosh(xyaxis) {z=z*pixel*cosh(z*pixel) , |z|<=4 }

lz8_sin(xyaxis) {z=z*pixel*sin(z*pixel)+pixel , |z|<=4 }
lz8_sinh(xyaxis) {z=z*pixel*sinh(z*pixel)+pixel , |z|<=4 }
lz8_cosh(xyaxis) {z=z*pixel*cosh(z*pixel)+pixel , |z|<=4 }

comment {then replace sin by sinh above and sinh by cosh.}

lz9_sin(xyaxis) {z=(1/((z*pixel)*sin(z*pixel))) , |z|<=4 }
lz9_sinh(xyaxis) {z=(1/((z*pixel)*sinh(z*pixel))) , |z|<=4 }

lz10_sin(xyaxis) { z=(1/((z*pixel)*sin(z*pixel)))*pixel , |z|<=4 }
lz10_sinh(xyaxis) { z=(1/((z*pixel)*sinh(z*pixel)))*pixel , |z|<=4 }

comment {then replace sin by sinh above.}

lz11_sin(xyaxis) {z=(z^pixel)*sin(z^pixel) , |z|<=4 }

lz1l_sinh(xyaxis) {z=(z^pixel)*sinh(z^pixel) , |z|<=4 }

