J_TchebychevS3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-2),
   |z|<100
}
J_TchebychevT5 {    ;
   c = pixel, z = P1:
   z = c*(z*(z*z*(16*z*z-20)+5)),
   |z|<100
}
J_TchebychevT6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
   |z|<100
}
J_TchebychevT7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
   |z|<100
}
J_TchebychevS3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-2),
   |z|<100
}
M_TchebychevS3 {   ;
   c = P1, z = Pixel:
   z = c*z*(z*z-2),
   |z|<100
}
