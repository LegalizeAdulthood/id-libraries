
ComplexNewton_01    {; Jon Horner (ex-CAL) [ not sure about this one ]
                     ; modified by Jo Weber, 6/1996
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_02(XAXIS){; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_02a(YAXIS){; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }


ComplexNewton_03(XAXIS){; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
  }

ComplexNewton_03a(YAXIS){; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
  }



ComplexNewton_04(XAXIS){; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_04a(YAXIS){; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_05(XAXIS){; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_05a(YAXIS){; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }


ComplexNewton_06{; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

ComplexNewton_07{; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
  }

ComplexNewton_08{; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_09{; Jon Horner
                 ; modified by Jo Weber, 6/1996
                 ; requires float=yes
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn1((pm2*(z^p1) +1)/(p1 * z^pm1)),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_10{; Jon Horner
                 ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_11{; Jon Horner
                 ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn3(fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1)),
		    |(z-oldz)|>=|0.005|
  }

ComplexNewton_12{; Jon Horner
		       ; modified by Jo Weber, 6/1996
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +0.5)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
  }

