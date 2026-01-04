
Whatever_01(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=z*z+(1/z*z)+pixel,
   }

Whatever_02 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=z*z+(2/z*z)+pixel,
   }

Whatever_03 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*z+(1/z*z)+pixel,
                  |z|>=0.05
   }

Whatever_04(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*z+(1/z*z)+pixel,
                          |z|>=0.05
   }

Whatever_05 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z*z)+(1/z*z)+pixel,
                  |z|>=0.05
   }

Whatever_06(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z*z)+(1/z*z)+pixel,
                          |z|>=0.05
   }

Whatever_07 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*fn2(z)+(1/z*z)+pixel,
   }

Whatever_08(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*fn2(z)+(1/z*z)+pixel,
   }

Whatever_09(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*fn2(z)+(p1/z*z)+pixel,
   }

Whatever_10 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*fn2(z)+(p1/z*z)+pixel,
   }
