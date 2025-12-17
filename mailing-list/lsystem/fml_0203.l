;========================================================================;
;From: fractint@mailman.xmission.com (Morgan L. Owens)
;Date: Sun, 17 Mar 2002 19:25:45 +1200
;Subject: [Fractint] A few interpolated L-systems

KochCurve{
Angle 6
Axiom f
f=f-f++f-f
}

HeighwayDragon{
Angle 4
Axiom xf
f=
x=xf+yf
y=xf-yf
}

SquareTiling {
Angle 4
Axiom s
s=sfsf+fsf+fsf+ff+
f=gg
g=gg
}

Pentigree {;William McWorter's Pentigree
Angle 10
Axiom f
f=-f--f|-f++f--f--f+
}

Sierpinskicarpet{
Angle 4
Axiom f
f=f[-f+f+f]+f-f-f+f
}

Hilbert { ; Ken Philip, from The Science of Fractal Images
axiom x
x=-YF+XFX+FY-
y=+XF-YFY-FX+
angle 4
}

Peano1 {
Angle 4
Axiom f-f-f-f
f=f-f+f+f+f-f-f-f+f
}

Peano3 {
axiom x
x=XFYFX+F+YFXFY-F-XFYFX
y=YFXFY-F-XFYFX+F+YFXFY
angle 4
}

Sierpinski1 { ; Adrian Mariano
; from The Fractal Geometry of Nature by Mandelbrot
angle 3
axiom F
F=FXF
X=+FXF-FXF-FXF+
}

Curve4 { ; Adrian Mariano
axiom yf
x=YF+XF+Y
y=XF-YF-X
angle 6
}


KochCurve10{
Angle 6
Axiom d
l=/50
r=\50
d=d/10ld\10\10rrd/10ld
}

KochCurve15{
Angle 6
Axiom d
l=/45
r=\45
d=d/15ld\15\15rrd/15ld
}

KochCurve20{
Angle 6
Axiom d
l=/40
r=\40
d=d/20ld\20\20rrd/20ld
}

KochCurve30{
Angle 6
Axiom d
l=/30
r=\30
d=d/30ld\30\30rrd/30ld
}

KochCurve45{
Angle 6
Axiom d
l=/15
r=\15
d=d/45ld\45\45rrd/45ld
}

KochCurve60{
Angle 6
Axiom d
l=
r=
d=d/60ld\60\60rrd/60ld
}

HeighwayDragon10{
Angle 4
Axiom xd
d=
l=/80
r=\80
x=xd\10ryd
y=xd/10lyd
}

HeighwayDragon30{
Angle 4
Axiom xd
d=
l=/60
r=\60
x=xd\30ryd
y=xd/30lyd
}

HeighwayDragon45{
Angle 4
Axiom xd
d=
l=/45
r=\45
x=xd\45ryd
y=xd/45lyd
}

HeighwayDragon60{
Angle 4
Axiom xd
d=
l=/30
r=\30
x=xd\60ryd
y=xd/60lyd
}

HeighwayDragon80{
Angle 4
Axiom xd
d=
l=/10
r=\10
x=xd\80ryd
y=xd/80lyd
}

HeighwayDragon90{
Angle 4
Axiom xd
d=
l=
r=
x=xd\90ryd
y=xd/90lyd
}

SquareTiling10 {
Angle 4
Axiom s
r=\80
s=sdsd\10rdsd\10rdsd\10rdd\10r
d=mm
m=mm
}

SquareTiling30 {
Angle 4
Axiom s
r=\60
s=sdsd\30rdsd\30rdsd\30rdd\30r
d=mm
m=mm
}

SquareTiling45 {
Angle 4
Axiom s
r=\45
s=sdsd\45rdsd\45rdsd\45rdd\45r
d=mm
m=mm
}

SquareTiling60 {
Angle 4
Axiom s
r=\30
s=sdsd\60rdsd\60rdsd\60rdd\60r
d=mm
m=mm
}

SquareTiling80 {
Angle 4
Axiom s
r=\10
s=sdsd\80rdsd\80rdsd\80rdd\80r
d=mm
m=mm
}

SquareTiling81 {
Angle 4
Axiom s
r=/81\90
s=sdsd\81rdsd\81rdsd\81rdd\81r
d=mm
m=mm
}

SquareTiling82 {
Angle 4
Axiom s
r=/82\90
s=sdsd\82rdsd\82rdsd\82rdd\82r
d=mm
m=mm
}

SquareTiling83 {
Angle 4
Axiom s
r=/83\90
s=sdsd\83rdsd\83rdsd\83rdd\83r
d=mm
m=mm
}

SquareTiling84 {
Angle 4
Axiom s
r=/84\90
s=sdsd\84rdsd\84rdsd\84rdd\84r
d=mm
m=mm
}

SquareTiling85 {
Angle 4
Axiom s
r=/85\90
s=sdsd\85rdsd\85rdsd\85rdd\85r
d=mm
m=mm
}

SquareTiling86 {
Angle 4
Axiom s
r=/86\90
s=sdsd\86rdsd\86rdsd\86rdd\86r
d=mm
m=mm
}

SquareTiling87 {
Angle 4
Axiom s
r=/87\90
s=sdsd\87rdsd\87rdsd\87rdd\87r
d=mm
m=mm
}

SquareTiling88 {
Angle 4
Axiom s
r=/88\90
s=sdsd\88rdsd\88rdsd\88rdd\88r
d=mm
m=mm
}

SquareTiling89 {
Angle 4
Axiom s
r=\1
s=sdsd\89rdsd\89rdsd\89rdd\89r
d=mm
m=mm
}

SquareTiling90 {
Angle 4
Axiom s
r=/90\90
s=sdsd\90rdsd\90rdsd\90rdd\90r
d=mm
m=mm
}

Pentigree10 {
Angle 10
Axiom d
l=/26
r=\26
d=/10ld/10l/10ld\10r\10r\10r\10rd\10r\10rd/10l/10ld/10l/10ld\10r
}

Pentigree15 {
Angle 10
Axiom d
l=/21
r=\21
d=/15ld/15l/15ld\15r\15r\15r\15rd\15r\15rd/15l/15ld/15l/15ld\15r
}

Pentigree20 {
Angle 10
Axiom d
l=/16
r=\16
d=/20ld/20l/20ld\20r\20r\20r\20rd\20r\20rd/20l/20ld/20l/20ld\20r
}

Pentigree30 {
Angle 10
Axiom d
l=/6
r=\6
d=/30ld/30l/30ld\30r\30r\30r\30rd\30r\30rd/30l/30ld/30l/30ld\30r
}

Pentigree36 {
Angle 10
Axiom d
l=
r=
d=/36ld/36l/36ld\36r\36r\36r\36rd\36r\36rd/36l/36ld/36l/36ld\36r
}

Sierpinskicarpet10{
Angle 4
Axiom d
l=/80
r=\80
d=d[/10ld\10rd\10rd]\10rd/10ld/10ld\10rd
}

Sierpinskicarpet15{
Angle 4
Axiom d
l=/75
r=\75
d=d[/15ld\15rd\15rd]\15rd/15ld/15ld\15rd
}

Sierpinskicarpet30{
Angle 4
Axiom d
l=/60
r=\60
d=d[/30ld\30rd\30rd]\30rd/30ld/30ld\30rd
}

Sierpinskicarpet45{
Angle 4
Axiom d
l=/45
r=\45
d=d[/45ld\45rd\45rd]\45rd/45ld/45ld\45rd
}

Sierpinskicarpet60{
Angle 4
Axiom d
l=/30
r=\30
d=d[/60ld\60rd\60rd]\60rd/60ld/60ld\60rd
}

Sierpinskicarpet80{
Angle 4
Axiom d
l=/10
r=\10
d=d[/80ld\80rd\80rd]\80rd/80ld/80ld\80rd
}

Sierpinskicarpet90{
Angle 4
Axiom d
l=
r=
d=d[/90ld\90rd\90rd]\90rd/90ld/90ld\90rd
}

Hilbert1 {
axiom x
l=\89
r=/89
x=/1lYd\1rXdX\1rdY/1l
y=\1rXd/1lYdY/1ldX\1r
angle 4
}

Hilbert10 {
axiom x
l=\80
r=/80
x=/10lYd\10rXdX\10rdY/10l
y=\10rXd/10lYdY/10ldX\10r
angle 4
}

Hilbert15 {
axiom x
l=\75
r=/75
x=/15lYd\15rXdX\15rdY/15l
y=\15rXd/15lYdY/15ldX\15r
angle 4
}

Hilbert30 {
axiom x
l=\60
r=/60
x=/30lYd\30rXdX\30rdY/30l
y=\30rXd/30lYdY/30ldX\30r
angle 4
}

Hilbert45 {
axiom x
l=\45
r=/45
x=/45lYd\45rXdX\45rdY/45l
y=\45rXd/45lYdY/45ldX\45r
angle 4
}

Hilbert60 {
axiom x
l=\30
r=/30
x=/60lYd\60rXdX\60rdY/60l
y=\60rXd/60lYdY/60ldX\60r
angle 4
}

Hilbert80 {
axiom x
l=\10
r=/10
x=/80lYd\80rXdX\80rdY/80l
y=\80rXd/80lYdY/80ldX\80r
angle 4
}

Hilbert89 {
axiom x
l=\1
r=/1
x=/89lYd\89rXdX\89rdY/89l
y=\89rXd/89lYdY/89ldX\89r
angle 4
}

Hilbert90 {
axiom x
l=
r=
x=/90lYd\90rXdX\90rdY/90l
y=\90rXd/90lYdY/90ldX\90r
angle 4
}

Peano1-1 {
Angle 4
Axiom d/90d/90d/90d
l=/89
r=\89
d=d/1ld\1rd\1rd\1rd/1ld/1ld/1ld\1rd
}

Peano1-10 {
Angle 4
Axiom d/90d/90d/90d
l=/80
r=\80
d=d/10ld\10rd\10rd\10rd/10ld/10ld/10ld\10rd
}

Peano1-45 {
Angle 4
Axiom d/90d/90d/90d
l=/45
r=\45
d=d/45ld\45rd\45rd\45rd/45ld/45ld/45ld\45rd
}

Peano1-60 {
Angle 4
Axiom d/90d/90d/90d
l=/30
r=\30
d=d/60ld\60rd\60rd\60rd/60ld/60ld/60ld\60rd
}

Peano1-80 {
Angle 4
Axiom d/90d/90d/90d
l=/10
r=\10
d=d/80ld\80rd\80rd\80rd/80ld/80ld/80ld\80rd
}

Peano1-89 {
Angle 4
l=/1
r=\1
Axiom d/90d/90d/90d
d=d/89ld\89rd\89rd\89rd/89ld/89ld/89ld\89rd
}