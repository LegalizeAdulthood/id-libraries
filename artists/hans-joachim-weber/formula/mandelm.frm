mandel-mandel {; Sylvie Gallet 1995
  c1=(0.34396372130558980 , 0.05608272738673762)
  c2=(-0.72141758920523890 , 0.25918045895127010)
  c=z=pixel, delta=c2-c1, b=c+delta
  compt=0, limit=real(p1), bailout=16 :
  test1=(compt<limit), test2=(compt!=limit)
  z = z * test2
  c = b - delta * test1
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: mandelm.frm
}

