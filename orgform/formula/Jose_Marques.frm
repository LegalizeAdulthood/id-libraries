; jmarques@embratel.net.br (Jose Marques) 
; 
; BAIL_OUT.FRM and BAIL_OUT.PAR for Fractint 19.2
; 
; Fri, 30 Jun 1995 09:50:34 GMT Empresa Brasileira de Telecomunicacoes 
; 
; Newsgroups: 
;    sci.fractals 
; 
; 
; 
; BAIL_OUT.FRM and BAIL_OUT.PAR were distributed in Dan Goldwater
; FracXtra v. 6.0 collection, but unfortunately the files were corrupt.
; Also some of the images didn't work in the version 19.2 of Fractint.
; 
; I'm posting here the revised and corrected versions of these files.
; 
; I made them when the change of bail_out conditions wasn't yet a
; built-in feature of Fractint. Even so, I think the results are quite
; interesting. Please E-Mail your opinions, and other PAR files based in
; the BAIL_OUT.FRM to Jose Marques - jmarques@embratel.net.br
; 
; Jose Marques
; 
; jmarques@embratel.internet.br

{
BAIL_OUT.FRM: Formulas that explore various heterodox ways of testing
bail_out condition for the classical Mandelbrot set. You won't get the
"mathematically correct" Mandelbrot, but the results are visually in-
teresting!
File Bail_out.par has some examples of pictures based on these
formulas.
By Jose Marques; E-Mail: jmarques@embratel.net.br
}

bail_out01 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   |fn1(z)| < p1
}
bail_out02 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   |fn1(real(z))| < p1
}
bail_out03 (xAxis)  {;xAxis won't do for fn=exp. Use bail_out03exp
instead
z = c = pixel:
  z = z^2 + c
   |fn1(imag(z))| < p1
}
bail_out03exp  {
z = c = pixel:
  z = z^2 + c
   |exp(imag(z))| < p1
}
bail_out03i (xAxis)  {; use p1 slightly less than 1 in sin and cos
z = c = pixel, i = (0.0, 1.0):
  z = z^2 + c
   |fn1(imag(z)*i)| < p1
}
bail_out04 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   real(fn1(z)) < p1
}
bail_out05   {
z = c = pixel:
  z = z^2 + c
   imag(fn1(z)) < p1
}
bail_out06 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   |fn1(|z|)| < p1
}

;The next two formulas don't seem to work the way they should.
; May be there's some bug in the code for the logical "and" and "or"
bail_out07   {
z = c = pixel:
  z = z^2 + c
   |fn1(imag(z))| < p1 && |fn1(real(z))| < p1
}
bail_out08   {
z = c = pixel:
  z = z^2 + c;
   |fn1(real(z))| < p1  || |fn1(imag(z))| < p1
}

simple01(xAxis) {
z = c = pixel:
   z = z^2 + c;
     real(z) < abs(z) + p1
}
simple02 {
z = c = pixel:
   z = z^2 + c;
     imag(z) < abs(z) + p1
}
