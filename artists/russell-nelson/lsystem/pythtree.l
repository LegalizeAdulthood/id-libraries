;
; PYTHTREE.L -
; These L-System-Formulas produce pictures known
; as "Pythagoras-Trees"
; This file is for use with FRACTINT version 15.11
; and later and was contributed in the Compuserve's
; GRAPHDEV-library on 06-11-1993 by Andreas Peetz
; ([100101,1670])
;
Pythagoras_Tree1 { ;symmetrical tree based on
; a 45-90-45 degrees-triangle
  angle 8
  axiom x
  x=F++F+[@IQ2F|x]+F+[|@IQ2F|G|x]+F
  }

Pythagoras_Tree2 { ;based on a 30-90-60 degrees triangle
  angle 12
  axiom x
  x=F+++F+[@I2F|x]++F+[|@Q.75F|G|x]++F
  }

Pythagoras_Tree3 { ;based on a triangle with the
; length-proportion 3:4:5, using secondary angles
  angle 4
  axiom x
  x=D\90D[@.6\36.87D\180x]\90D[@.8/143.13D\180M\180x]\90D
  }
