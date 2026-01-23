
{ ****  pour les Mand ca revient a faire des rotations ! **** }


FlipConjMand_N { ; Jm Collard-Richard
c=z=pixel:
z=flip(conj(z^p1))+c,
|z|<=4         }

ConjFlipMand_N {; Jm Collard-Richard
c=z=pixel:
z=conj(flip(z^p1))+c,
|z|<=4         }

FlipConjJul_N  { ; Jm Collard-Richard
z=pixel:
z=flip(conj(z^p2))+p1,
|z|<=4         }

ConjFlipJul_N  { ;Jm Collard-Richard
z=pixel:
z=conj(flip(z^p2))+p1,
|z|<=4         }

GenMand_N      { ;Jm Collard-Richard
                 ; fn1=flip fn2=conj ... fn3=conj fn4=ident ...
                 ;                       fn3=flip fn4=ident   etc ...
c=z=pixel:
z=fn1(fn2(z^p2))+fn3(fn4(c)),
|z|<=4         }

GenJul_N       {; Jm Collard-Richard  (voir Rem de GenMand_N)
z=pixel:
z=fn1(fn2(z^p2))+fn3(fn4(p1)),
|z|<=4         }

GenInvMand_N   { ; Jm Collard-Richard (voir Rem de GenMand_N)
c=z=1/pixel:
z=fn1(fn2(z^p2))+fn3(fn4(c)),
|z|<=4         }

GenInvJul_N    { ; Jm Collard-Richard (voir Rem de GenMand_N)
z=1/pixel:
z=fn1(fn2(z^p2))+fn3(fn4(p1)),
|z|<=4         }

GenInvJmN-M    { ; Jm Collard-Richard
                 ; voir Rem de GenMand_N et InvJmN-M
c=z=1/(pixel^p2):
z=fn1(fn2(z^p2))+fn3(fn4(c)),
|z|<=4         }

GenInvJmN-J    { ;Jm Collard-Richard
                 ; Voir Rem de GenMand_N et InvJmN-J
z=1/(pixel^p2):
z=fn1(fn2(z^p2))+fn3(fn4(p1)),
|z|<=4         }

GenMand1_N     { ; Jm Collard-Richard
c=z=pixel:
z=fn1(z)*fn2(z)+fn3(fn4(c)),
|z|<=4         }

GenJul1_N      { ; Jm Collard-Richard
z=pixel:
z=fn1(z)*fn2(z)+fn3(fn4(p1)),
|z|<=4         }

GenInvMand1_N  { ; Jm Collard-Richard
c=z=1/pixel:
z=fn1(z)*fn2(z)+fn3(fn4(c)),
|z|<=4         }

GenInvJul1_N   { ; Jm Collard-Richard
z=1/pixel:
z=fn1(z)*fn2(z)+fn3(fn4(p1)),
|z|<=4         }

GenInvJm1N1-M  { ; Jm Collard-Richard
c=z=1/(pixel^p2):
z=fn1(z^p2)*fn2(z^p2)+fn3(fn4(c)),
|z|<=4         }

GenInvJm1N2-M  {; Jm Collard-Richard
c=z=1/(pixel^p2):
z=fn1(z)*fn2(z)+fn3(fn4(c)),
|z|<=4         }

GenInvJm1N1-J  { ; Jm Collard-Richard
z=1/(pixel^p2):
z=fn1(z^p2)*fn2(z^p2)+fn3(fn4(p1)),
|z|<=4         }

GenInvJm1N2-J  { ; Jm Collard-Richard
z=1/(pixel^p2):
z=fn1(z)*fn2(z)+fn3(fn4(p1)),
|z|<=4         }

{ dans les 8  precedents on peut remplacer fn3(fn4(c/p1))  par fn3(c/p1)*fn4(c/p1)}




    { TOUTE FONCTION ANALYTIQUE COMPLEXE POSSEDE UN ENSEMBLE
			     DE   JULIA                                 }




InvJm1-M(xaxis) { ; Ceci n'est *pas* InvMand2  Jm Collard-Richard
c=z=1/(pixel*pixel):
z=z*z+c       }           { 'type' Mandelbrot }

InvJm1-J        {; Jm Collard-Richard  Ceci n'est *pas* InvJulia2
z=1/(pixel*pixel):
z=z*z+p1      }           { 'type' Julia      }

InvJmN-M      {  ; Jm Collard-Richard    Ceci n'est pas InvMandelN
c=z=1/(pixel^p1):
z=z^p1+c,
|z|<=4        }

InvJmN-J      {  ; Jm Collard-Richard   Ceci n'est pas InvJuliaN
z=1/(pixel^p2):
z=z^p2+p1,
|z|<=4        }

InvJmBarN-M   { ; Jm Collard-Richard     Ceci n'est pas InvMandBar_N
c=z=1/(pixel^p1):
z=conj(z)^p1+c,
|z|<=4        }

InvJmBarN-J   {; Jm Collard-Richard   Ceci n'st pas InvJulBar_N
z=1/(pixel^p2):
z=conj(z)^p2+p1,
|z|<=4        }


InvFNJmN-M(xaxis) { ; Jm Collard-Richard
c=z=1/(pixel^p1) :
z=fn1(z^p1)+fn2(c)  }

InvFNJmN-J        {; Jm Collard-Richard
z=1/(pixel^p2):
z=fn1(z^p2)+fn2(p1) }



MandelBar_3_c(xaxis) { ; Jm Collard-Richard
z=c=pixel:
z=conj(z)^3+c,
|z|<=4               }

MandelBar_4_c(xaxis) { ; Jm Collard-Richard
z=c=pixel:
z=conj(z)^4+c,
|z|<=4               }

MandelBar_N          { ; Jm Collard-Richard
z=c=pixel:
z=conj(z)^p1+c,
|z|<=4               }

MandelBarFN(xaxis)     { ; Jm Collard-Richard
z=c=pixel:
z=c*fn1(conj(z)),
|z|<=64              }

FnMandelBar(xaxis)     {; Jm Collard-Richard
z=c=pixel :
z=c*conj(fn1(z)),
|z|<=64              }



InvMandelBar_2_c(xaxis) { ; Jm Collard-Richard
c=z=1/pixel :
z=conj(z)*conj(z)+c }

InvMandelBar_N(xaxis) { ; Jm Collard-Richard
c=z=1/pixel :
z=conj(z)^p1+c           }

InvFNMandelBar_N(xaxis) { ; Jm Collard-Richard
c=z=1/pixel :
z=fn1(conj(z)^p1)+fn2(c) }

FNInvMandelBar_N(xaxis) { ;Jm Collard-Richard
c=z=1/pixel :
z=conj(fn1(z))^p1+fn2(c)    }

     { Voir les Julia_X_c et JuliaBar_X_c   }


Julia_N                  { ; Jm Collard-Richard
                           ; rentrer p1=c et p2 la puissance
z=pixel:
z=z^p2+p1,
|z|<=4                   }

JuliaBar_2(xaxis)        { ; Jm Collard-Richard
z=pixel:
z=conj(z)^2+p1,
|z|<=4                   }

JuliaBar_N               { ; Jm Collard-Richard
z=pixel:
z=conj(z)^p2+p1,
|z|<=4                   }

InvJuliaBar_2            { ; Jm Collard-Richard
z=1/pixel:
z=conj(z)^2+p1           }

InvJuliaBar_N            { ; Jm Collard-Richard
z=1/pixel:
z=conj(z)^p2+p1          }

FnInvJuliaBar_N1          { ; Jm Collard-Richard
z=1/pixel:
z=fn1(conj(z)^p2)+fn2(p1) }

FnInvJuliaBar_N2          {; Jm Collard-Richard
z=1/pixel:
z=fn1(conj(z))^p2+fn2(p1) }

FnInvJuliaBar_N3          { ;Jm Collard-Richard
z=1/pixel:
z=(fn1(conj(z))^p2)+fn2(p1) }

FnJuliaBar_N              {; Jm Collard-Richard
z=pixel:
z=fn1(conj(z))^p2+fn2(p1) }


InvJulia_N                { ; Jm Collard-Richard
z=1/pixel:
z=z^p2+p1 ,
|z|<=4                    }


InvMand_N                 { ;  Jm Collard-Richard
z=c=1/pixel:
z=z^p1+c,
|z|<=4                    }

                     jmc@math.ethz.ch
