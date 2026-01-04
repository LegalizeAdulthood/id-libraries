ADH107h2 { ; Anthony Hanmer 2000
  Angle 8 ; Who says L-systems are boring?!
  Axiom f ; I like this one so much, I'll name it after myself:
  f=+f+x--x+f+x++x+f+ ; the Hanmer Curve, version 1
  }

ADH107h2a1 { ; Anthony Hanmer 2000
  Angle 8 ; Even orders have 90-degree rotational symmetry
  Axiom f++f++f++f ; Odd orders have glide symmetry
  f=+f+x--x+f+x++x+f+
  }

ADH107h2a1col { ; Anthony Hanmer 2000
  Angle 8 ; Even orders have 90-degree rotational symmetry
  Axiom c09f++c12f++c10f++c13f ; Odd orders have glide symmetry
  f=+f+x--x+f+x++x+f+
  }

ADH107h2a2 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom fff++f++fff++f
  f=+f+x--x+f+x++x+f+
  }

ADH107h2b { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f-f-f-f-f-f-f-f
  f=+f+x--x+f+x++x+f+
  }

ADH107h2bcol { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom c09f-c12f-c09f-c12f-c09f-c12f-c09f-c12f
  f=+f+x--x+f+x++x+f+
  }

ADH107h2c { ; Anthony Hanmer 2000
  Angle 8 ; Even orders are x-shaped, odd orders are square
  Axiom ff----ff++ff----ff++ff----ff++ff----ff
  f=+f+x--x+f+x++x+f+
  }

ADH152 { ; Anthony Hanmer 2000
  Angle 4 ; A relative of ADH107h2
  Axiom ++f ; so we'll call it the Hanmer Curve, version 2
  f=f--x+f++x-f+x
  }

ADH152a { ; Anthony Hanmer 2000
  Angle 4 ; Even orders have 90-degree rotational symmetry
  Axiom f+f+f+f ; Odd orders have glide symmetry
  f=f--x+f++x-f+x
  }

ADH152b { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f-f-f-f
  f=f--x+f++x-f+x
  }

ADH152c { ; Anthony Hanmer 2000
  Angle 4 ; Even orders have 180-degree rotational symmetry
  Axiom f++f ; Odd orders are asymmetrical
  f=f--x+f++x-f+x
  }

ADH152d { ; Anthony Hanmer 2000
  Angle 4 ; Even orders have 180-degree rotational symmetry
  Axiom ff--ff ; Odd orders are asymmetrical
  f=f--x+f++x-f+x
  }

ADH152e { ; Anthony Hanmer 2000
  Angle 4 ; Even orders are long, odd orders are square
  Axiom fff+f+fff+f
  f=f--x+f++x-f+x
  }

ADH152f { ; Anthony Hanmer 2000
  Angle 4 ; Even orders are x-shaped
  Axiom ff--ff+ff--ff+ff--ff+ff--ff ; Odd orders are square
  f=f--x+f++x-f+x
  }

