BOFMaps61-65 {; A variation on Newton's method
              ; Use 0/-0.5 for P1, and Floating Point to
              ; create the fractals used for
              ; maps 61 through 65, on pages 90 and 91,
              ; in "The Beauty of Fractals".
  z=Pixel:
  z2=z*z
  z3=z*z*z
  z4=z*z*z*z
  z=z-((z4-z3*0.5+z2*0.5-z*0.5-0.5)/((z3*4-z2*1.5+z-.5)+P1))
  |(z4-z3*0.5+z2*0.5-z*0.5-0.5)| >= 0.00004
  ;SOURCE: bofmaps.frm
}

BOFMaps75-76 {; A variation on Newton's method
              ; Use 0/0.25 for P1, and Floating Point to
              ; create the fractals used for
              ; maps 75 and 76, on pages 114 and 115,
              ; in "The Beauty of Fractals".
  z=Pixel:
  z2=z*z
  z3=z*z*z
  z=z-((z3-z*.25-1.25)/((z2*3-.25)+P1))
  |(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: bofmaps.frm
}

BOFMaps77-78 {; Another variation on Newton's method
              ; Use 0/0 for P1, and Floating Point to
              ; create the fractals used for
              ; maps 77 and 78, on pages 116 nad 117,
              ; in "The Beauty of Fractals"
  z=Pixel:
  z2=z*z
  z3=z*z*z
  z=z-((z3-z*.5-.5)/((z2*3-.5)+P1))
  |(z3-z*.5-.5)| >= 0.000000000001
  ;SOURCE: bofmaps.frm
}

