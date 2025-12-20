; Formulas from sci.fractals postings
;
; Path: unixg.ubc.ca!news.bc.net!news.mic.ucla.edu!library.ucla.edu!
;     europa.eng.gtefsd.com!newsxfer.itd.umich.edu!gatech!
;     howland.reston.ans.net!swiss.ans.net!prodigy.com!usenet
; From: XKBR53C@prodigy.com (CHRIS BEHRENS )
; Newsgroups: sci.fractals
; Subject: Re: Fractal Formulas
; Date: 28 Nov 1994 23:58:24 GMT
; Organization: Prodigy Services Company  1-800-PRODIGY
; Lines: 24
; Distribution: world
; Message-ID: <3bdqr0$n9i@usenetw1.news.prodigy.com>
; NNTP-Posting-Host: inugap2.news.prodigy.com
; X-Newsreader: Version 1.2
;
; Here are the formulas, then:
;
; The only caution is that Rabadon sometimes won't work- I have
; occasionally gotten a division by zero error. Have fun.
;
; -
; Chris Behrens
; xkbr53c@prodigy.com

Flattop {
      c = z = pixel:
            z = sin(z+2) + (c*z)/(z-2);
          |z| <= 4;
      }

Rabadon {
     z = pixel/2; q = z^sin(pixel); g = pixel:
          z = z^q/g;
          z = (log(q) + sqr(g)) / z;
          z = 4^z / q^g*2;
          |real(z)| <=8;
    }

; Path: unixg.ubc.ca!unixg.ubc.ca!news.mic.ucla.edu!nntp.club.cc.cmu.edu!
;     godot.cc.duq.edu!news.duke.edu!news.mathworks.com!uunet!
;     news.sprintlink.net!cs.utexas.edu!news.cs.utah.edu!
;     news.cc.utah.edu!u.cc.utah.edu!kb9727
; From: kb9727@u.cc.utah.edu (Kim Best)
; Newsgroups: sci.fractals
; Subject: Fractint Par
; Date: 10 Feb 1995 21:33:02 GMT
; Organization: University Of Utah Computer Center
; Lines: 106
; Message-ID: <3hgm2e$9c7@news.cc.utah.edu>
; NNTP-Posting-Host: u.cc.utah.edu
; X-Newsreader: TIN [version 1.2 PL2]
;
; A few more formulas and parameter files, I have had interesting results with.
;
; Hope you enjoy these, please send in your own.
;
; --
; Kim Best                                  *************************
;                                           *      Origamist        *
; Rocky Mountain Cancer Data System         *  Are good with thier  *
; 420 Chipeta Way #120                      *        Hands          *
; Salt Lake City, Utah  84108               *************************

mfn2fn {
z=pixel:
power = fn2(z);
z = fn1(z)^power + pixel,
|z| < p2
}

jfn2fn {
z=pixel:
power = fn2(z);
z = fn1(z)^power + p1,
|z| < p2
}

jtofn {
z=pixel:
power = fn2(z);
z = z^power + p1,
|z| < p2
}

mtofn {
z=pixel:
power = fn2(z);
z = z^power + pixel,
|z| < p2
}

; Newsgroups: sci.fractals
; Path: unixg.ubc.ca!cs.ubc.ca!destroyer!gumby!wupost!cs.utexas.edu!torn!
;     spartan.ac.BrockU.CA!ddametto
; From: ddametto@spartan.ac.BrockU.CA (David Dametto)
; Subject: more Fractint fun
; Message-ID: <1992Dec11.151019.9176@spartan.ac.BrockU.CA>
; Organization: Brock University, St. Catharines Ontario
; X-Newsreader: Tin 1.1 PL4
; Date: Fri, 11 Dec 1992 15:10:19 GMT
; Lines: 43
;
; I'm posting this to sci.fractals for someone who doesn't have access to the
; newsgroups.
;
; > I've been playing around with the exiting conditions for the plain-vanilla
; > Mandelbrot set and these are some of the better results I've gotten out of
; > it.  This is a FRACTINT formula file which you can try out.  Most of these
; > look darn good with just the GOODEGA colour map.  Enjoy!
; >
; >                                                 Darcy "Possum Boy" Boese
;
; --
;
; -----
; David Dametto                 | I'm French!  Why do think I have this
; ddametto@spartan.ac.brocku.ca | outrageous accent, you silly king!

Siamese (XAXIS) {; Try params=6/0/2/0  Note: symmetry valid only for Real p1
c=z=pixel: z=z^p1+c, |z|<=Real(p2)
}

Fingers (XAXIS) {; Try params=2/50/0/0
c=z=pixel: z=z^Real(p1)+c, Real(z)<=Imag(p1)
}

Glow (XAXIS) {;Try params=2/50/0/0
c=z=pixel: z=z^Real(p1)+c, |Real(z)|<=Imag(p1)
}

Waves (XAXIS) {; Try params=2/50/2/1
c=z=pixel: z=z^Real(p1)+c, |Real(z)*Real(p2)|+|Imag(z)*Imag(p2)|<=Imag(p1)
; "She canna take this much longer Cap'n!"
}

WarpEngines (XAXIS) {; Try params=2/1000/0/0
c=z=pixel: z=z^Real(p1)+c, |z^c|<=Imag(p1)
; "Full speed ahead Mr. Sulu!"
}

ReEntry (XAXIS) {; Try params=2/1000/0/0
c=z=pixel: z=z^Real(p1)+c, 1/Imag(p1)<=|z^c|
; "Shields up!  Hull temperature approaching critical!"
}

; Newsgroups: sci.fractals
; Path: unixg.ubc.ca!cs.ubc.ca!utcsri!torn!spartan.ac.BrockU.CA!dboese
; From: dboese@spartan.ac.BrockU.CA (Darcy Boese)
; Subject: Scientific American
; Message-ID: <1993Jan28.160608.10467@spartan.ac.BrockU.CA>
; Organization: Brock University, St. Catharines Ontario
; X-Newsreader: Tin 1.1 PL4
; Date: Thu, 28 Jan 1993 16:06:08 GMT
; Lines: 19
;
; [ Article crossposted from bit.listserv.frac-l ]
; [ Author was Darcy Boese ]
; [ Posted on Thu, 28 Jan 1993 16:05:09 GMT ]
;
; After a lot of messing around, I discovered that using |x| is not the same
; as abs(x) in Fractint formula files.  In any case, I finally managed to get
; a Fractint formula for the fuzzy logic image from the February 1993 issue
; of Scientific American:
;
; To center this on your screen use the command corners=-2/3/2.5/-1.5

fuzzy {
a=real(pixel), b=imag(pixel):
x=1-abs(a-b), y=1-abs(b-1+a), a=x, b=y, sqr(abs(a*a)+abs(b*b))<=p1
}

; From - Mon May 27 13:05:14 1996
; Newsgroups: sci.fractals
; Path: unixg.ubc.ca!info.ucla.edu!agate!howland.reston.ans.net!swrinde!
;     newsfeed.internetmci.com!btnet!news.compulink.co.uk!
;     cix.compulink.co.uk!usenet
; From: rgirvan@cix.compulink.co.uk ("Ray Girvan")
; Subject: Steffensen's Method #2
; Message-ID: <Drz9u3.7vA@cix.compulink.co.uk>
; Organization: Ray Girvan, Technical Author
; References: <Drty2C.1HD@cix.compulink.co.uk>
; Date: Sat, 25 May 1996 20:20:26 GMT
; X-News-Software: Ameol
; Lines: 32
;
; Here's a Fractint formula implementing Steffensen's method
; for finding roots of f(z)=0.  The fractal gives 'strings' at the
; boundaries between capture basins, roughly similar to those
; of Newton's method - but the texture is different, and there's
; also a fractal boundary to an outer diverging region where the
; initial values aren't close enough to a root to be captured.
;
; Ray
; ===========================================================
; Ray Girvan
; rgirvan@cix.compulink.co.uk
; Technical Author / Journalist

STEFF1(XAXIS) {; Ray Girvan, May 1996
   ; Steffensen's Method
   ; for finding roots of f(z)=0
   ; iteration is
   ;   g=[f(z+f(z)) - f(z)] / f(z)
   ;   z = z - f(z)/g
   ; use floating point
   ;
   ; this formula for f(z) = z^3-p2
   ; try p1=0.01, p2=0.1
   ;
   li=p1;
   z=pixel:
   z1=z*z*z-p2;
   g=((z+z1)*(z+z1)*(z+z1)-z1-p2)/z1;     z=z-z1/g,
   |z1| >= li
}

; Path: unixg.ubc.ca!cs.ubc.ca!uw-beaver!uhog.mit.edu!wupost!uunet!pipex!
;     sunic!news.funet.fi!fuug!nullnet!sterna!gadox!sday!jute
; From: jute@sday.pulp.nullnet.fi (Jussi Kantola)
; Newsgroups: sci.fractals
; Subject: Some goodies for Fractint
; Message-ID: <2JR67B1w165w@sday.pulp.nullnet.fi>
; Date: Fri, 23 Jul 93 13:46:24 PDT
; Distribution: world
; Organization: Splattersday
; Lines: 36

; I finally managed to create some Fractint formulas "of my own"
; (thanks to Ramiro Perez's post on Frac-l).  I think I wouldn't
; be posting these if it wasn't for a boring flu that I got :-).
; Gotta do something to make everyone else feel bad too :-).
; --
; Jussi Kantola from Paltamo, Finland  | I couldn't remember my name so I called
; email: jute@sday.pulp.nullnet.fi     | myself Jute.  It's weird being a Jute.

Mite(XAXIS) { ;  That mandel-thingy looks like mite, yes?  Or a rabbit :).
z = pixel:
  z1 = z*z+pixel
  z2 = z*z*z+(p1)
   z = z1+z2-(z1/z2)
|z| <= 4
}

MandelJulia(XAXIS) { ; Pretty sick.  Try your every fave julias for p1.
; Haven't we seen this before?!  This *can't* be original!
z = 0, zj = pixel:
  z1 = z*z+pixel
  z2 = zj*zj+(p1)
   z = z1+z2
|z| < 4
}
