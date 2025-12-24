01A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c*c
  z=sqr(z) + c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


02A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z*z) + c*c
  z=sin(z*z) + c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


03A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sin(z) + c*c-0.14
  z=sin(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


04A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c*c-0.14
  z=sqr(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


05A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=sqr(z) + c*c-0.14
  z=sqr(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


06A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=cosxx(z) + c*c-0.14
  z=cosxx(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


07A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + flip(z) + 0.33/pixel:
  z=cosxx(z) + c*c-0.14
  z=tanh(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


08A-Carr {
  c=z=1/pixel, c=cosxx(z)+1/pixel:
  z=(sqr(z*z)*sin(z/pixel)-pixel)+c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


09A-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=z*oldz+c*c
  oldz=temp
  |z| <=4
  ;SOURCE: 01carr.frm
}


10A-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=flip(z*oldz+c*c)
  oldz=temp
  |z| <=4
  ;SOURCE: 01carr.frm
}


11A-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=cosxx((z*oldz+c*c)/pixel)
  oldz=temp
  z=sqr(z) + c*c
  |z| <=4
  ;SOURCE: 01carr.frm
}


12A-Carr {
  z=c=cosxx(1/pixel):
  z=cosxx(z*z) + sin(z) + c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


13A-Carr {
  c=z=1/pixel, c=flip(-1.1,0.24)/pixel:
  z=sqr(z) + c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


14A-Carr {
  z=c=1/pixel:
  z=cosxx(c^z)/pixel
  z=(sqr(z) + 0.1) + c*c-1
  |z| <=10
  ;SOURCE: 01carr.frm
}


01-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


02-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


03-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sin(z) + c-0.14
  z=sin(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


04-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


05-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


06-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=cosxx(z) + c-0.14
  z=cosxx(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


07-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + flip(z) + 0.33/pixel:
  z=cosxx(z) + c-0.14
  z=tanh(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


08-Carr {
  c=z=1/pixel, c=cosxx(z)+1/pixel:
  z=(sqr(z*z)*sin(z/pixel)-pixel)+c
  |z| <=10
  ;SOURCE: carr.frm
}


09-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=z*oldz+c
  oldz=temp
  |z| <=4
  ;SOURCE: carr.frm
}


10-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=flip(z*oldz+c)
  oldz=temp
  |z| <=4
  ;SOURCE: carr.frm
}


11-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=cosxx((z*oldz+c)/pixel)
  oldz=temp
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


12-Carr {
  z=c=cosxx(1/pixel):
  z=cosxx(z*z) + sin(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


13-Carr {
  c=z=1/pixel, c=flip(-1.1,0.24)/pixel:
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


14-Carr {
  z=c=1/pixel:
  z=cosxx(c^z)/pixel
  z=(sqr(z) + 0.1) + c-1
  |z| <=10
  ;SOURCE: carr.frm
}
