Some years back, while I was a Russian Astronaut in the Sputnik KGB
program, myself and a companion (Yury) were secretly landed on
the planet Mars. During our trek we chanced upon a living Martian
creature. After a short time Yury and I developed a great 
relationship with Zork (the name Yury and I decided upon for the
Martian creature). 

One day while on a 500 mile stroll in an asteroid crater, Zork became
rather "loose tongued". Perhaps it had something to do with the
Martian fermented juice we developed. In any case, Zork gave us
a series of numbers that he claimed would solve all of the problems
of the Universe. At first glance the numbers were very confusing.
We asked Zork for clarity. Just as he started to explain the numbers
he was vaporized by a Martian Cop. Yury and I were lucky to escape
with our lives.

On our trip back to Siberia we decided to keep the numbers for
ourselves instead of turning them over to a corrupt political
official. Alas before Yury and I could decipher the code, Yury up
and croaked. Now that I'm a retired Russian Astronaut that hasn't
been able to use the numbers, I'll give them to you in computer
land to see if you can come up with anything from them. 

}

Carr-300{
c=log(pixel),z=1/pixel:
z=(c-3.124)*(4*z*z-1)/2/(sqr(z)+pixel),
|z| <=10
}

Carr-301{
c=log(pixel),z=1/pixel:
z=c*(4*z*z-1)/2/(sqr(z)+pixel),
|z| <=10
}

Carr-302{; CARRBROT? Why not?
z=1/(log(pixel)+cosxx(pixel)),c=1/pixel:
z=z*z+c,
|z| <=4
}

Carr-303{
z=1/(log(pixel)+cosxx(1/pixel)),c=sqr(pixel)/z:
z=z*z+c,
|z| <=4
}

Carr-304{
z=1/pixel,c=1/sin(z-2):
z=z*z+c;
z=z*1/c,
|z| <=4
}

Carr-305{
z=1/pixel,c=sqr(pixel)/z:
z=z*z+c;
z=z*1/c,
|z| <=4
}

Carr-306{
z=z*pixel+(pixel-1),c+pixel:
z=z*z+c,
|z| <=10
}

Carr-307{
z=z*pixel+(pixel-1),c=1/pixel:
z=sqr(z*z)+(c-0.124),
|z| <=10
}

Carr-308{
z=z*pixel+(pixel-1),c=pixel:
z=sqr(z*z)+(c-0.124),
|z| <=10
}

Carr-309{;Great Crystals
z=1/(z*pixel+(pixel-1)),c=1/pixel:
z=z*z+(c-0.124);
z=z*z+(c-0.124),
|z| <=10
}

Carr-310{
z=sqr(1/(pixel*pixel)),c=1/pixel:
z=z*z+(flip(c)-0.124),
|z| <=10
}

Carr-311{
z=sqr(1/(pixel*pixel)),c=1/pixel/pixel:
z=z*z*z+(flip(c)-00.124),
|z| <=10
}

Carr-312{
z=1/conj(pixel),c=1/pixel:
z=c*(z*z-2)+flip(c),
|z| <=10
}

Carr-313{
z=1/conj(pixel),c=1/pixel:
z=imag(z)*(c*(z*z*(z*z-4)+2))+flip(c),
|z| <=10
}

Carr-314{
z=cotan(1/pixel*1/pixel),c=1/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-315{
z=1/cotan(1/pixel*1/pixel),c=1/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-316{
z=1/sqr(pixel*pixel),c=1/pixel:
z=z*z*z+flip(c),
|z| <=10
}

Carr-317{
z=1/pixel*(0.3,0.6),c=1/pixel:
z=z*z+c,
|z| <=10
}

Carr-318{
z=1/pixel*(0.6,0.6),c=1/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-319{
z=1/pixel(1.6,1.6),c=1/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-320{;***
z=1/pixel*(3.6,2.6),c=1/pixel*(0.6,0.6):
z=z^z*z+flip(c*c),
|z| <=10
}

Carr-321{;***
z=1/pixel*(3.6,2.6),c=1/pixel*(0.6,0.6):
z=pixel-c*c,
|z| <=10
}

Carr-322{
z=1/pixel*(3.6,2.6),c=1/pixel*(1.25,1.25):
z=pixel-(c*c*c*c),
|z| <=10
}

Carr-323{;Distance Estimator works with this FRM
z=c=1/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-324{;Distance Estimator works with this FRM
z=c=1/pixel:
z=z*z+flip(c*c),
|z| <=10
}

Carr-325{;Distance Estimator works with this FRM
z=c=1/pixel:
z=z*z*z+flip(c*c),
|z| <=10
}

Carr-326{;Distance Estimator works with this FRM
z=c=1/pixel:
z=z*z*z+flip(c*c*c),
|z| <=10
}

Carr-327{
z=c=1/pixel:
z=z*z*z/flip(c*c*c),
|z| <=10
}

Carr-328{
z=c=flip(1/pixel):
z=z*z+c;
z=sin(z*z)+c,
|z| <=10
}

Carr-329{;Distance Estimator works with this FRM
z=c=flip(1/pixel):
z=z*z+conj(c*c),
|z| <=10
}

Carr-330{;Distance Estimator works with this FRM
z=c=flip(1/pixel):
z=z*z*z+conj(c*c*c),
|z| <=10
}

Carr-331{
z=c=flip(1/pixel*1/pixel):
z=z*z+conj(c),
|z| <=10
}

Carr-332{
z=1/fn1(pixel),c=1/fn2(pixel):
z=z*z+c,
|z| <=10
}

Carr-333{
z=1/fn1(1/pixel*1/pixel),c=1/fn2(1/pixel*1/pixel):
z=z*z/c-0.124,
|z| <=10
}

Carr-334{
z=sqr(1/fn1(1/pixel*1/pixel)),c=sqr(1/fn2(1/pixel*1/pixel)):
z=z*z/c-0.124,
|z| <=10
}

Carr-335{
z=sqr(1/fn1(1/pixel*1/pixel)),c=sqr(1/fn2(1/pixel*1/pixel)):
z=z*z*z/(c-0.124)*(c-0.124),
|z| <=10
}

Carr-336{
z=tan(1/fn1(1/pixel*1/pixel)),c=tan(1/fn2(1/pixel*1/pixel)):
z=flip((z*z+pixel)/(pixel*pixel+(c-0.124))),
|z| <=10
}

Carr-337{
z=tan(1/fn1(1/pixel*1/pixel)),c=tan(1/fn2(1/pixel*1/pixel)):
z=((z*z+pixel)/(pixel*pixel+(c-0.124))),
|z| <=10
}

Carr-338{
z=cosxx(1/fn1(1/pixel*1/pixel)),c=cotanh(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
}

Carr-339{
z=sinh(1/fn1(1/pixel*1/pixel)),c=cotanh(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
}

Carr-340{
z=sinh(1/fn1(1/pixel*1/pixel)),c=tanh(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
}

Carr-341{
z=tanh(1/fn1(1/pixel*1/pixel)),c=conj(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
}

Carr-342{
z=conj(1/fn1(1/pixel*1/pixel)),c=conj(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
}

Carr-343{
z=conj(1/fn1(pixel*pixel)),c=conj(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
}

Carr-344{
z=cosxx(1/fn1(pixel*pixel)),c=conj(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
}

Carr-345{
z=tanh(1/fn1(pixel*pixel)),c=tan(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
}

Carr-346{
z=1/sin(1/fn1(pixel*pixel)),c=tan(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
}

Carr-347{
z=sin(1/fn1(pixel*pixel)),c=1/cosxx(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
}

Carr-348{
z=sin(1/fn1(pixel*pixel)),c=1/cosxx(1/fn2(pixel*pixel)):
z=z*z+c*c,
|z| <=10
}

Carr-349{
z=sin(1/fn1(pixel*pixel)),c=1/cosxx(1/fn2(pixel*pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
}

Carr-350{
z=1/sin(1/fn1(pixel*pixel)),c=1/1/conj(1/fn2(pixel*pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
}

Carr-351{
z=1/sin(1/fn1(pixel+1)),c=1/log(1/fn2(pixel+1)):
z=z*z+(c/pixel-1*c/pixel-1),
|z| <=10
}

Carr-352{
z=tanh(1/fn1(pixel)),c=1/flip(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
}

Carr-353{
z=tanh(1/fn1(pixel)),c=1/tan(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
}

Carr-354{
z=tanh(1/fn1(pixel)),c=1/cosxx(1/fn2(pixel*z)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
}

Carr-355{
z=tanh(1/fn1(pixel*c)),c=1/cosxx(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
}

Carr-356{
z=cos(1/fn1(pixel*c)),c=1/cos(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
}

Carr-357{
z=cotanh(1/fn1(pixel*c)),c=1/cos(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
}

Carr-358{
z=sin(1/fn1(pixel*c)),c=1/sin(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel*c),
|z| <=10
}

Carr-359{
z=sin(1/fn1(pixel*c)),c=1/sin(1/fn2(pixel)):
z=z+1/conj(c*c*c),
|z| <=10
}

Carr-360{
z=sinh(1/fn1(pixel*c)),c=1/sqr(1/fn2(pixel)),Bob=sqr(c*c*c):
z=z/(1/pixel)+Bob,
|z| <=10
}

Carr-361{
z=sinh(1/fn1(pixel*c)),c=1/sqr(1/fn2(pixel)),Bob=(1/c*1/c^1/c)*(c*c^c):
z=z/(1/pixel)+Bob,
|z| <=10
}