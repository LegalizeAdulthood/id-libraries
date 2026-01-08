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
;
; I finally managed to create some Fractint formulas "of my own"
; (thanks to Ramiro Perez's post on Frac-l).  I think I wouldn't
; be posting these if it wasn't for a boring flu that I got :-).
; Gotta do something to make everyone else feel bad too :-).

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

; --
; Jussi Kantola from Paltamo, Finland  | I couldn't remember my name so I called
; email: jute@sday.pulp.nullnet.fi     | myself Jute.  It's weird being a Jute.
