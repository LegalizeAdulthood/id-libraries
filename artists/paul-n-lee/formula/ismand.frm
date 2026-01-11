ismand_cplxspirals(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=(0.005,0) if ismand=0
;p2 is the bailout (default=127)
if(ismand==0)
p=p1,p=p+(|p|==0)*0.005
endif
b=p2,b=b+(b==0)*127
z=y=c=pixel:
if(ismand)
z=z*z+y+c+p
else
z=z*z+y+p
endif
y=z*z/y
|z|<b
}
