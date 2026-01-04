comment {  Evidemment 0^0=1 ce qui est absolument vrai (du moins en
           theorie des ensembles).Par ailleurs ....                 }



SpNewton4(xyaxis) {; Jm Collard-Richard     (Cf M.I Hiver 93-94)
           ;float=yes .Methode de Newton appliquee au polynome
           ;f(z)=(z^2-1)*(z^2+0.16)
           ; f(z)=0 ssi z=1,-1,0.4i,-0.4i
           ; Nf(z)=z-f(z)/f'(z) les pts fixes de Nf sont les racines de f.
           ; z1=f(z) z2=f'(z) z=z-z1/z2 on cherche les pts fixes.
z=pixel:
z1=(z*z-1)*(z*z+0.16);
z2=4*z^3-1.68*z;
z=z-z1/z2 ,
0.001<=|z1|    }


Jm_01(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=(fn1(fn2(z^pixel)))*pixel,
    |z|<=t
  }

Jm_02(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=(z^pixel)*fn1(z^pixel),
    |z|<=t
  }

Jm_03(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))*pixel,
    |z|<=t
  }

Jm_04(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel)),
    |z|<=t
  }

Jm_05(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2((z^pixel))),
    |z|<=t
  }

Jm_06(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3((z^z)*pixel))),
    |z|<=t
  }

Jm_07(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3((z^z)*pixel)))*pixel,
    |z|<=t
  }

Jm_08(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3((z^z)*pixel)))+pixel,
    |z|<=t
  }

Jm_09(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z))))+pixel,
    |z|<=t
  }

Jm_10(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z)*pixel))),
    |z|<=t
  }

Jm_11(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z)*pixel)))*pixel,
    |z|<=t
  }

Jm_12(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel)),
    |z|<=t
  }

Jm_13(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))*pixel,
    |z|<=t
  }

Jm_14(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))+pixel,
    |z|<=t
  }

Jm_15(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   f2=fn2(z),z=fn1(f2)*fn3(fn4(f2))*pixel,
    |z|<=t
  }

Jm_16(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   f2=fn2(z),z=fn1(f2)*fn3(fn4(f2))+pixel,
    |z|<=t
  }

Jm_17(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)),
    |z|<=t
  }

Jm_18(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)*pixel),
    |z|<=t
  }

Jm_19(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)+pixel),
    |z|<=t
  }

Jm_20(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel),
    |z|<=t
  }

Jm_21(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel)*pixel,
    |z|<=t
  }

Jm_22(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   sq=fn1(z), z=(sq*fn2(sq)+sq)+pixel,
    |z|<=t
  }

Jm_23(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)+pixel*pixel)),
    |z|<=t
  }

Jm_24(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z2=fn1(z), z=(fn2(z2*fn3(z2)+z2))+pixel,
    |z|<=t
  }

Jm_25(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z*fn2(z)) + pixel,
    |z|<=t
  }

Jm_26(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(z)) + pixel,
    |z|<=t
  }

Jm_27(xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   sqrz=fn1(z), z=sqrz + 1/sqrz + pixel,
    |z|<=t
  }

Jm_ducks(XAXIS) {; Jm Collard-Richard
  ; Not so ugly at first glance and lot of corners to zoom in.
  ; try this: corners=-1.178372/-0.978384/-0.751678/-0.601683
  z=pixel,tst=p1+4,t=1+pixel:
   z=sqr(z)+t,
    |z|<=tst
  }

Gamma(XAXIS)={ ; first order gamma function from Prof. Jm
  ; "It's pretty long to generate even on a 486-33 comp but there's a lot
  ; of corners to zoom in and zoom and zoom...beautiful pictures :)"
  z=pixel,twopi=6.283185307179586,r=10:
   z=(twopi*z)^(0.5)*(z^z)*exp(-z)+pixel
    |z|<=r
  }
Gamma1(XAXIS) { ; Jm Collard-Richard
  z=pixel,twopi=6.283185307179586,r=10:
  z=(twopi*z)^(0.5)*(z^z)*exp(-z)*pixel,
    |z|<=10   }

FnGAMMA(Xaxis) { ; Jm Collard-Richard
  z=pixel,twopi=6.283185307,r=10:
  z=fn1((twopi*z)^(0.5)*(z^z)*exp(-z))+fn2(pixel),
    |z|<=r    }

ZZ(XAXIS) { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^z;
   z2=(log(z)+1)*z1;
   z=z-(z1-1)/z2 ,
    0.001 <= |solution-z1|
  }

ZZa(XAXIS) { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^(z-1);
   z2=(((z-1)/z)+log(z))*z1;
   z=z-((z1-1)/z2) ,
    .001 <= |solution-z1|
  }


ZExpZ(xaxis) { ; Jm Collard-Richard z=exp(z) z=(0.318..;+/- 1.337)
z=pixel:
z0=exp(z);
z1=z0-z;
z2=z0-1;
z=z-(z1/z2),
0.0001<=|z1| }

ICHZZ(XAXIS) { ; resolution  cosh(z)*z^z=1    Jm Collard-Richard
; use floating point
z=pixel:
zz=z^z;
sh=sinh(z);
ch=cosh(z);
z1=ch*zz-1;
z2=sh*zz+(log(z)+1)*ch;
z=z-(z1/z2) ,
0.001<=|z1|  }

ICHZ(XAXIS) { ; resolution  cosh(z)*exp(z)=1 sol=0  Jm Collard-Richard
; float=yes
z=pixel:
ex=exp(z);
sh=sinh(z);
ch=cosh(z);
z1=ch*ex-1;
z2=sh*ex+ch*ex;
z=z-(z1/z2) ,
0.001<=|z1| }

ICEZZ(XAXIS) { ;  cos(z)*z^z=1  Jm Collard-Richard
; float=yes
z=pixel:
zz=z^z;
s=sin(z);
c=cos(z);
z1=c*zz-1;
z2=c*(log(z)+1)-s*zz;
z=z-(z1/z2) ,
0.001<=|z1| }

ICEZ(XAXIS) {  ; Jm Collard-Richard
; float=yes
z=pixel:
ex=exp(z);
s=sin(z);
c=cos(z);
z1=c*ex-1;
z2=-s*ex+c*ex;
z=z-(z1/z2) ,
0.001<=|z1| }

SinZZ(XAXIS) {  ; Jm Collard-Richard
; float=yes
z=pixel:
zz=z^z;
szz=sin(z)^sin(z);
z1=szz-zz;
z2=(cos(z)*log(sin(z))+cos(z))*szz-(log(z)+1)*zz;
z=z-(z1/z2) ,
0.001<=|z1| }

SZZS(XAXIS) {  ; Jm Collard-Richard
; float=yes
z=pixel:
sz=sin(z)^z;
zs=z^sin(z);
z1=sz-zs;
z2=(log(sin(z))+z*(cos(z)/sin(z)))*sz-(cos(z)*log(z)+sin(z)/z)*zs;
z=z-(z1/z2) ,
0.001<=|z1| }


Exp2(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=exp(z*z)-exp(z);
z2=2*z*exp(z*z)-exp(z);
z=z-(z1/z2) ,
0.001<=|z1| }

Exp3(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=exp(z^3)-exp(z);
z2=3*z*z*exp(z^3)-exp(z);
z=z-(z1/z2) ,
0.001<=|z1| }

ExpZZ(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=exp(z*log(z))-exp(z);
z2=(log(z)+1)*exp(z*log(z))-exp(z);
z=z-(z1/z2) ,
0.001<=|z1| }

Sin2Z(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z*z)-sin(z);
z2=2*z*cos(z*z)-cos(z);
z=z-(z1/z2) ,
0.001<=|z1| }

SinZ4(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z^4)+sin(z^3)+sin(z^2)+sin(z);
z2=4*(z^3)*cos(z^4)+3*(z^2)*cos(z^3)+2*z*cos(z^2)+cos(z);
z=z-(z1/z2) ,
0.001<=|z1| }

SinE2(XAXIS) { ; Jm Collard-Richard
z=pixel:
expz2=exp(z*z);
s=sin(z);
c=cos(z);
z1=expz2-exp(z)-s;
z2=2*z*expz2-exp(z)-c;
z=z-(z1/z2) ,
0.001<=|z1| }

SinE2Z(XAXIS) { ; Jm Collard-Richard
z=pixel:
expz2=exp(z*z);
s=sin(z);
c=cos(z);
s2=sin(z*z);
c2=cos(z*z);
z1=expz2-exp(z)-s2+s;
z2=2*z*expz2-exp(z)-z*c2*2+c:
z=z-(z1/z2) ,
0.001<=|z1| }

SS2Z(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z)*sin(z)-sin(z*z);
z2=sin(2*z)-z*cos(z*z)*2;
z=z-(z1/z2) ,
0.001<=|z1| }

ShZ(XAXIS) {  ; Jm Collard-Richard
z=pixel:
z1=sinh(z);
z2=cosh(z);
z=z-(z1/z2) ,
0.001<=|z1| }

ChZZ(XAXIS) { ; Jm Collard-Richard
z=pixel:
zz=z^z;
z1=cosh(z)-zz;
z2=sinh(z)-(log(z)+1)*zz;
z=z-(z1/z2) ,
0.001<=|z1| }

TgZ(XAXIS) {  ; Jm Collard-Richard
z=pixel:
z1=sin(z)/cos(z);
z2=1+z1*z1;
z=z-(z1/z2) ,
0.001<=|z1| }

TgZz(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z)/cos(z)-z;
z2=(sin(z)/cos(z))^2;
z=z-(z1/z2) ,
0.001<=|z1| }

TgSinZ(XAXIS) { ; Jm Collard-Richard
z=pixel:
z1=sin(z)/cos(z)-sin(z);
z2=1+(sin(z)/cos(z))^2-cos(z);
z=z-(z1/z2) ,
0.001<=|z1| }

CosZZ(XAXIS) { ; Jm Collard-Richard
z=pixel:
zz=z^z;
z1=cos(z)-zz;
z2=-sin(z)-(log(z)+1)*zz;
z=z-(z1/z2) ,
0.001<=|z1| }

CshZZ(XAXIS) {  ; Jm Collard-Richard
z=pixel:
zz=z^z;
z1=cos(z)-sinh(z)-zz;
z2=-sin(z)-cosh(z)-(log(z)+1)*zz;
z=z-(z1/z2) ,
0.001<=|z1| }


CosZ1(XYAXIS) { ; Resol. cos(z)^cos(z)=1 Jm Collard-Richard
	       ; float=yes
 z=pixel:
 s=sin(z);
 c=cos(z);
 cc=c^c;
 z1=cc-1;
 z2=(-s*log(c)-s)*cc;
 z=z-(z1/z2) ,
 0.001<=|z1| }

SinZ1(XAXIS) { ; Resol. sin(z)^sin(z)=1  Jm Collard-Richard
	       ; float=yes
 z=pixel:
 s=sin(z);
 c=cos(z);
 ss=s^s;
 z1=ss-1;
 z2=(c+c*log(s))*ss;
 z=z-(z1/z2) ,
 0.001<=|z1| }

CosSinZZ(XAXIS) { ; resol. sin(z)^sin(z)=cos(z)^cos(z) Jm Collard-Richard
		  ; use float=yes
 z=pixel:
 s=sin(z) , c=cos(z) , ss=s^s , cc=c^c ,
 z1=ss-cc ,
 z2=(c+c*log(s))*ss+(s*log(c)+s)*cc ,
 z=z-(z1/z2) ,
 0.001<=|z1| }

CSZZ(XAXIS)  { ;resol. cos(sin(z))=z^z     Jm Collard-Richard
	       ; Use Float=yes
 z=pixel:
 zz=z^z;
 s=sin(z);
 c=cos(z);
 z1=cos(s)-zz;
 z2=-c*sin(s)-(log(z)+1)*zz;
 z=z-(z1/z2) ,
 0.001<=|z1| }

S2Z(XAXIS) { ; resol. sin(sin(z)=z - Jm Collard-Richard -  Use float=yes
z=pixel:
z1=sin(sin(z))-z;
z2=cos(z)*cos(sin(z))-1;
z=z-(z1/z2) ,
0.001<=|z1| }

SPCZ(xaxis) { ; resol. sin(z)^cos(z)=0 -Jm Collard-Richard - Use Float=yes
z=pixel:
s=sin(z);
c=cos(z);
co=cotan(z);
sc=s^c;
z1=sc;
z2=((c*co)-(s*log(s)))*sc;
z=z-(z1/z2) ,
0.001<=|z1| }

Jm_28(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z)^fn2(z)+pixel,
|z|<=4        }

Jm_29(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z)^fn2(z)*pixel,
|z|<=4        }

Jm_30(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z+pixel)^fn2(z+pixel),
|z|<=4        }

Jm_31(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z*pixel)^fn2(z*pixel),
|z|<=4        }

Jm_32(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z+pixel)^fn2(z*pixel),
|z|<=4        }

Jm_33(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z*pixel)^fn2(z*pixel)*pixel,
|z|<=4        }

Jm_34(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z*pixel)^fn2(z*pixel)+pixel,
|z|<=4        }

Jm_35(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z+pixel)^fn2(z+pixel)+pixel,
|z|<=4        }

Jm_36(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z+pixel)^fn2(z+pixel)*pixel,
|z|<=4        }

Jm_37(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(pixel)^fn2(z),
|z|<=4       }

Jm_38(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z)^fn2(pixel),
|z|<=4       }

Jm_39(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z)^fn2(1/z)+pixel,
|z|<=4       }

Jm_40(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z)^pixel+pixel^fn2(z),
|z|<=4       }

SZZCHZ(xaxis) { ; Jm Collard-Richard - Use FLOAT=YES
		; Resol : sin(z)+z^z=cosh(z)
z=pixel:
s=sin(z);
c=cos(z);
zz=z^z;
sz=sinh(z);
cz=cosh(z);
z1=s+zz-cz;
z2=c+(log(z)+1)*zz-sz;
z=z-(z1/z2),
0.001<=|z1| }

INVZZCZ(xaxis) { ; Jm Collard-Richard   -   use FLOAT=YES
		 ; resol : 1/z^z=cos(z)
z=pixel:
zz=z^z;
z1=(1/zz)-cos(z);
z2=((log(z)+1)*zz)*(-1)*(1/(zz*zz))+sin(z);
z=z-(z1/z2),
0.001<=|z1|   }

INVZZCHZ(Xaxis) { ; Jm Collard-Richard  - Use FLOAT=YES
		  ; resol : 1/z^z=cosh(z)
z=pixel:
zz=z^z;
z1=(1/zz)-cosh(z);
z2=((log(z)+1)*zz)*(-1)*(1/(zz*zz))-sinh(z);
z=z-(z1/z2),
0.001<=|z1|     }

LZZSZ(Xaxis)  { ; Jm Collard-Richard  - Use Float=Yes
		; resol :  log(z^z)=sin(z)
z=pixel:
s=sin(z);
c=cos(z);
zz=z^z;
z1=log(zz)-s;
z2=(((log(z)+1)*zz)/(zz))-c;
z=z-(z1/z2),
0.001<=|z1| }

LZZSHZ(Xaxis) { ; Jm Collard-Richard
		; Resol : log(z^z)=sinh(z)
z=pixel:
sh=sinh(z);
ch=cosh(z);
zz=z^z;
z1=log(zz)-sh;
z2=(((log(z)+1)*zz)/(zz))-ch;
z=z-(z1/z2),
0.001<=|z1|  }

ZZINVCZ(Xaxis) { ; Jm Collard-Richard    -  Use  Float=Yes
		 ; Resol :   z^z=1/cos(z)
z=pixel:
c=cos(z);
s=sin(z);
zz=z^z;
z1=zz-(1/c);
z2=(log(z)+1)*zz-(s/(c*c));
z=z-(z1/z2),
0.001<=|z1|  }

ZZINVCHZ(Xaxis) { ; Jm Collard-Richard   - Use Float=Yes
		  ; Resol : z^z=1/cosh(z)
z=pixel:
ch=cosh(z);
sh=sinh(z);
zz=z^z;
z1=zz-(1/ch);
z2=(log(z)+1)*zz+(sh/(ch*ch));
z=z-(z1/z2),
0.001<=|z1|  }

ZZZZ1(xaxis)  {; Jm Collard-Richard      -- Use Float=Yes
	       ; Resol : z^z=z^(z+1)+1
z=pixel:
l=log(z);
zz=z^z;
zz1=z^(z+1);
z1=zz-zz1-1;
z2=(l+1)*zz-(l+(z+1/z))*zz1;
z=z-(z1/z2) ,
0.001<=|z1|   }

Exp2Z(Xaxis) {; Jm Collard-Richard   ---- Use Float=Yes
	      ; Resol : exp(-1/(z*z))=z
z=pixel:
exp2z=exp(1/(z*(-z)));
z1=exp2z-z;
z2=(2/(z^3))*exp2z-1;
z=z-(z1/z2),
0.001<=|z1|  }

ExpZ2(xaxis)  {;Jm Collard-Richard
        ; exp(z*z)=1  float=yes
z=pixel:
z1=exp(z*z)-1;
z2=2*z*exp(z*z);
z=z-(z1/z2),
0.0001<=|z1| }

ExpZ_N(xaxis) {; Jm Collard-Richard     exp(z^n)=1 p1=n  float=yes
z=pixel:
z0=exp(z^p1);
z1=z0-1;
z2=p1*z^(p1-1)*z0;
z=z-(z1/z2),
0.0001<=|z1| }

InvExpZ_N(xaxis) {; Jm Collard-Richard
                  ; voir ExpZ_N
z=1/pixel:
z0=exp(z^p1);
z1=z0-1;
z2=p1*z^(p1-1)*z0;
z=z-(z1/z2),
0.0001<=|z1|     }


Exp2Z2(xaxis) { ; Jm Collard-Richard   --- Use Float=yes
		; Resol : exp(-1/(z*z))=z*z
z=pixel:
exp2z=exp(1/(z*(-z)));
z1=exp2z-z*z;
z2=(2/(z^3))*exp2z+z*(-2);
z=z-(z1/z2),
0.001<=|z1|    }

Exp2ZZ(Xaxis) {; Jm Collard-Richard    --- Use Float=Yes
	       ; Resol : exp(-1/(z*z))=z^z-1
z=pixel:
exp2z=exp(1/(z*(-z)));
zz=z^z;
z1=exp2z-zz-1;
z2=(2/(z^3))*exp2z-(log(z)+1)*zz;
z=z-(z1/z2),
0.001<=|z1|    }

ExpSinZ(Xaxis) { ; Jm Collard-Richard --- Use Float=Yes
		 ; Resol : exp(sin(z))=1
z=pixel:
es=exp(sin(z));
c=cos(z);
z1=es-1;
z2=c*es;
z=z-(z1/z2),
0.001<=|z1|   }

ExSiCoZ(Xaxis) { ;Jm Collard-Richard  --- Use Float=Yes
		 ; Resol : exp(sin(z))=cos(z)
z=pixel:
s=sin(z);
es=exp(s);
c=cos(z);
z1=es-c;
z2=c*es+s;
z=z-(z1/z2),
0.001<=|z1|   }



Jm_46(xaxis) {; Jm Collard-Richard
z=pixel:
z=exp(-p1*z*z*cos(p2))*cos(p1*z*z*sin(p2))+pixel,
|z|<=4  }

Jm_47(xaxis) {; Jm Collard-Richard
z=pixel:
z=fn1(p1*z)/fn2(p2*z)+pixel,
|z|<=4 }



Jm_50(xaxis) { ; Jm Collard-Richard
z=pixel:
z=fn1(z)/fn2(z)+fn3(pixel),
|z|<=P1      }

Jm_51(xaxis) {; Jm Collard-Richard
z=pixel,c=z^fn2(pixel):
z=fn1(z)+c,
|z|<=25      }

Jm_52(xaxis) {; Jm Collard-Richard    -Use FLOAT
z=pixel,c=z^fn2(pixel):
z=fn1(z)+c;
c=fn3(c)+fn4(z),
|z|<=25     }

Jm_53(xaxis) {; Jm Collard-Richard  -  Use Float
c=z=pixel:
z=fn1(z)+c;
c=fn2(c)+fn3(z),
|z|<=25     }


Jm_54(xaxis) { ;Jm Collard-Richard
               ; pouah !
z=pixel:
z=fn1(flip(z))+flip(fn2(z))+pixel
	     }


Jm_55(xaxis) {; JM Collard-Richard
z=pixel,stop=25:
f1=z^p1;
f2=z^p2;
z=fn1(f1)*fn2(f2)+pixel,
|z|<=25      }

Jm_56(xaxis) { ; Jm Collard-Richard
z=pixel,stop=25:
f1=z^p1;
f2=z^p2;
z=fn1(f1)/fn2(f2)+pixel,
|z|<=stop    }

Jm_57(xaxis) { ; Jm Collard-Richard
z=pixel,stop=25:
f1=1/(z^p1);
f2=1/(z^p2);
z=fn1(f1)*fn2(f2)+pixel,
|z|<=stop    }

Jm_58(xaxis) {; Jm Collard-Richard
z=pixel,stop=25:
f1=1/(z^p1);
f2=1/(z^p2);
z=fn1(f1)/fn2(f2)+pixel,
|z|<=stop    }

Jm_59(xaxis) {; Jm Collard-Richard
z=pixel,stop=25:
f1=1/(z^p1);
f2=1/(z^p2);
z=(fn1(f1)/fn2(f2))*pixel,
|z|<=stop    }

Jm_60(xaxis) {; Jm Collard-Richard
z=pixel,stop=25:
f1=(z^p1);
f2=(z^p2);
z=(fn1(f1)/fn2(f2))*pixel,
|z|<=stop    }

Jm_61(xaxis) {; Jm Collard-Richard
z=pixel,stop=25:
f1=1/(z^p1);
f2=1/(z^p2);
z=fn1(f1)*fn2(f2)*pixel,
|z|<=stop    }

Jm_62(xaxis) {; Jm Collard-Richard
z=pixel,stop=25:
f1=(z^p1);
f2=(z^p2);
z=fn1(f1)*fn2(f2)*pixel,
|z|<=stop    }

LogExp(xaxis) {; Jm Collard-Richard  float=yes
        ; log(z)+exp(z)=0  une solution n'est *pas* z=0  ! UNE solution: z=0.2...
z=pixel:
z1=log(z)+exp(z);
z2=1/z+exp(z);
z=z-(z1/z2),
0.001<=|z1| }


                              jmc@math.ethz.ch

