LyapunovJulia         { ; Morgan L. Owens <packrat@nznet.gen.nz>
                        ; Thu, 25 Jul 2002 20:49:19
  narg=real(p2)
  nmag=imag(p2)
  perturb=nmag*(cos(narg)+(0,1)*sin(narg))
  bailout=4*(real(p3)==0)+real(p3)*(real(p3)!=0)
  z0=pixel
  c0=p1
  z1=z0+perturb
  c1=c0+perturb
:
  z0=z0*z0+c0
  z1=z1*z1+c1
  cabs(z0-z1)<bailout
}
 
LyapunovMandel        { ; Morgan L. Owens <packrat@nznet.gen.nz>
                        ; Thu, 25 Jul 2002 20:49:19
  narg=real(p2)
  nmag=imag(p2)
  bailout=4*(real(p3)==0)+real(p3)*(real(p3)!=0)
  z0=c0=pixel
  z1=c1=pixel+nmag*(cos(narg)+(0,1)*sin(narg))
:
  z0=z0*z0+c0
  z1=z1*z1+c1
  cabs(z0-z1)<bailout
}
 
