BEJ-0001{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh(z+z)*pi
z=z*z+c
|z|<4
}

BEJ-0008{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.275:
z=sinh((z+z)*(z+z)*(z+z))*pi
z=z*z+c
|z|<4
}

BEJ-0010{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.75:
z=sin(sqr(z+z))*(sin(z+z)*.5)*pi
z=z*z+c
|z|<4
}

BEJ-0013{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel/sqr(pixel)*0.020:
z=sinh(z+z)*pi
z=z*z+c
|z|<4
}

BEJ-0015{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*sqrt(tan(pixel*3))*0.020:
z=sinh(z+z)*pi
z=z*z+c
|z|<4
}

BEJ-0018 {; Brian E. Jones 102702,2213@Compuserve.com
          ; Typo corrected by George Martin, 5/4/98
          ; First line was
          ; z=c=pixel*sqrt(tanh((pixel*1)^pixel/.1.176930596))*0.05:
          ; C scan function reads .1.17 as .1)
  z=c=pixel*sqrt(tanh((pixel*1)^pixel/.1))*0.05:
  z=sinh(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}

BEJ-0021{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*sqrt(tanh(cosh((pixel*(pi^pixel))^pixel/4.996003610813)))*0.05:
z=sinh(z+z)*pi
z=z*z+c
|z|<4
}

BEJ-0022{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel/(1*tan(1.176930596/pixel))^sqr(pixel*sin(0.135/pixel)):
z=sinh(z+z)*pi
z=z*z+c
|z|<4
}

BEJ-0024{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.009:
z=sinh(z+z)*pi
z=z*z+c
|z|<4
}

BEJ-0036{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh(z^p1+z^p2)*pi
z=z*z+c
|sinh(z^p1+z^p2)*pi|<4
}

BEJ-0041{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh((z*z)+(c*c))*pi
z=z*z+c
|z|<4
}

BEJ-0041-a{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh((z*z)+(c*c*((c*z)*pixel)))*pi
z=z*z+c
|z|<4
}

BEJ-0043-b{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh(z+z)*pi*(c*c+z)
z=z*z+c
|z|<4
}

BEJ-0043-e{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh(z*z)*fn1(c*c)+(z*pi)
z=z*z+c
|z|<4
}

BEJ-0043-f{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh(z*z)*fn1((c*c)*(z*c))+(z*pi)
z=z*z+c
|z|<4
}

BEJ-0043-i{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.5:
z=sinh(z*z)*log((c*c)*(z*c^sqrt(3*z)))+(z*pi)
z=z*z+c
|z|<4
}

BEJ-0045{; Brian E. Jones 102702,2213@Compuserve.com
z=c=pixel*.05:
z=sinh((z*z)*(z*z)+(c*c))*pi
z=z*z+c
|z|<4
}
