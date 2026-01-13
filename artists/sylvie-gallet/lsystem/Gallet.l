
; <------------- Sylvie Gallet ------------------------------------------->

Lars       { ; By Sylvie Gallet [101324,3444], Feb 1997
             ; Based on a suggestion by Lars Vangsgaard
  Angle 8    ; angle increment/decrement is 45
  axiom [Fx[+y][-y]]++[Fx[+y][-y]]++[Fx[+y][-y]]++[Fx[+y][-y]]
  x=[+F-y][-F+y]
  y=[Fx]
  }

LarsColor  { ; By Sylvie Gallet [101324,3444], Feb 1997
             ; Based on a suggestion by Lars Vangsgaard
  Angle 8    ; angle increment/decrement is 45
  axiom C1[F<1x[+y][-y]]++[F<1x[+y][-y]]++[F<1x[+y][-y]]++[F<1x[+y][-y]]
  x=[+F<1-y][-F<1+y]
  y=[F<1x]
  }

Lars4      { ; By Sylvie Gallet [101324,3444], Feb 1997
             ; Based on a suggestion by Lars Vangsgaard
  Angle 8    ; angle increment/decrement is 45
  axiom z
  A=AF+F++F+F|
  P=AF+
  R=AF+F++F+F|---F|
  z=zPRPRPRPRG-G+
  }

Lars4Color { ; By Sylvie Gallet [101324,3444], Feb 1997
             ; Based on a suggestion by Lars Vangsgaard
  Angle 8    ; angle increment/decrement is 45
  axiom C0z
  A=AF+F++F+F|
  P=AF+
  R=AF+F++F+F|---F|
  z=<1zPRPRPRPRG-G+>1
  }

Lars3      { ; By Sylvie Gallet [101324,3444], Feb 1997
             ; Based on a suggestion by Lars Vangsgaard
  Angle 8    ; angle increment/decrement is 45
  axiom x++x++x++x+[y]++[y]++[y]++y
  x=[+F-Fx][-F+Fx]
  y=[F+F-y][F-F+y]
  }

Lars3Color { ; By Sylvie Gallet [101324,3444], Feb 1997
             ; Based on a suggestion by Lars Vangsgaard
  Angle 8    ; angle increment/decrement is 45
  axiom C1x++x++x++x+[y]++[y]++[y]++y
  x=[+F<1-Fx][-F<1+Fx]
  y=[F<1+F-y][F<1-F+y]
  }

untitled   { ; By Sylvie Gallet [101324,3444], Feb 1997
  angle 4
  axiom C0s
  s=<1h+h+h+h+j[[@i3.66666667s]k[@i3.66666667s]k[@i3.66666667s]]+k-
  s=[[@i3.66666667s]k[>1@i3.66666667s]k[@i3.66666667s]]+k-
  s=[[@i3.66666667s]k[@i3.66666667s]k[@i3.66666667s]]
  h=@22f@i22
  k=@7g@i7
  j=g+g-
  }

arbre      { ; Sylvie Gallet [101324,3444], 1996
  angle 48
  axiom ++++++++++++ff-x
  x=+f[+++++++@0.65<1x][--------@0.65!<2x]-f[---@0.6!<3x]
  x=++@.8f@1.25[++++@0.45<4x]--f[---@0.2!<4x]+[++@0.75!<4x]
  }

carres     { ; Sylvie Gallet [101324,3444], 1996
  angle 4
  axiom c1xxxx
  x=f[y]-f
  y=<1+ff[y]-ff[y]-ff[y]-ff
  f=ff
  }

pentagones { ; Sylvie Gallet [101324,3444], 1996
  angle 10
  axiom c1xxxxx
  x=f[y]--f
  y=<1@0.76+++ff[y]--ff[y]--ff[y]--ff[y]--ff
  f=ff
  }

; <------------- Jonathan Osuch ------------------------------------------>

Lars1{ ; By Jonathan Osuch [73277,1432]
       ; Based on a suggestion by Lars Vangsgaard
  Angle 8  ; angle increment/decrement is 45
  axiom [F]++[F]++[F]++F
  F=F[+F][-F]
  }

Lars2{ ; By Jonathan Osuch [73277,1432]
       ; Based on a suggestion by Lars Vangsgaard
  Angle 8  ; angle increment/decrement is 45
  axiom +[F]++[F]++[F]++F
  F=F[+F][-F]
  }

Lars1Color{ ; By Jonathan Osuch [73277,1432]
       ; Based on a suggestion by Lars Vangsgaard
  Angle 8  ; angle increment/decrement is 45
  axiom C1[F]++[F]++[F]++F
  F=F<1[+F][-F]>1
  }

Lars2Color{ ; By Jonathan Osuch [73277,1432]
       ; Based on a suggestion by Lars Vangsgaard
  Angle 8  ; angle increment/decrement is 45
  axiom C1+[F]++[F]++[F]++F
  F=F<1[+F][-F]>1
  }

; <------------- Anonymes ------------------------------------------------>

Flower {
  Angle 16
  Axiom ++++F[+F+F][-F-F][++F][--F]F
  F=F<1F[++F]>1[+F][F]>1[-F][--F]
  }


