;Music for the eyes
;the premise is "layering" themes, then varying them
;start with all the same function (i.e. cotanh,etc) then change one at a time
;I welcome any and all coments
;look for "vp001.par"
;Verne Pence [75271,3111]

FUGUE_01{;11/29/94
 z=pixel,x=1,y=1,a=p1,b=p2:
 z=fn1(z)+a*b
 |z|<=4
 a=fn1(x*z)
 |a|<=8
 b=fn1(y*z)
 |b|<=16
 }

FUGUE_02{;11/29/94
 z=pixel,a=p1,b=p2:
 z=fn1(z)+a*b
 |z|<=4
 a=fn2(z)
 |a|<=8
 b=fn3(z)
 |b|<=16
 }

FUGUE_03{;11/29/94
 z=pixel,a=p1,b=p2:
 z=fn1(z)*(a+b)
 |z|<=4
 a=fn2(z)
 |a|<=8
 b=fn3(z)
 |b|<=16
 }

FUGUE_04{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)*(a+b+c)
 |z|<=4
 a=fn2(z)
 |a|<=8
 b=fn3(z)
 |b|<=16
 c=fn4(z)
 |c|<=32
 }

FUGUE_05{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)
 |a|<=8
 b=fn3(z)
 |b|<=16
 c=fn4(z)
 |c|<=32
 }  

FUGUE_06{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |a|<=8
 b=fn3(z)+b
 |b|<=16
 c=fn4(z)+c
 |c|<=32
 }

FUGUE_07{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |a|<=8
 b=fn3(z)+b
 |b|<=16
 c=fn4(z)+c
 |c|<=32
 z=fn1(z)*(a*b*c)
 |z|<=64
 a=fn2(z)*a
 |a|<=128
 b=fn3(z)*b
 |b|<=256
 c=fn4(z)*c
 |c|<=512
 }

FUGUE_08{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)*(a*b*c)
 |z|<=4
 a=fn2(z)*a
 |z|<=8
 b=fn3(z)*b
 |z|<=16
 c=fn4(z)*c
 |z|<=32
 z=fn1(z)*(a*b*c)
 |z|<=64
 a=fn2(z)*a
 |z|<=128
 b=fn3(z)*b
 |z|<=256
 c=fn4(z)*c
 |z|<=512
 }

FUGUE_09{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |z|<=8
 b=fn3(z)+b
 |z|<=16
 c=fn4(z)+c
 |z|<=32
 z=fn1(z)+(a*b*c)
 |z|<=64
 a=fn2(z)+a
 |z|<=128
 b=fn3(z)+b
 |z|<=256
 c=fn4(z)+c
 |z|<=512
 }
FUGUE_10{;11/29/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |z|<=8
 b=fn3(z)+b
 |z|<=16
 c=fn4(z)+c
 |z|<=32
 z=fn1(z)*(a*b*c)
 |z|<=64
 a=fn2(z)*a
 |z|<=128
 b=fn3(z)*b
 |z|<=256
 c=fn4(z)*c
 |z|<=512
 }
FUGUE_11{;12/01/94
 z=pixel,c=1,a=p1,b=p2:
 z=fn1(z)+(a*b*c)
 |z|<=4
 a=fn2(z)+a
 |z|<=8
 b=fn3(z)+b
 |z|<=16
 c=fn4(z)+c
 |z|<=32
 z=fn1(z)+(a*b*c)/2
 |z|<=64
 a=fn2(z)+a/2
 |z|<=128
 b=fn3(z)+b/2
 |z|<=256
 c=fn4(z)+c/2
 |z|<=512
 }
 

