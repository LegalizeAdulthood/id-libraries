; Path: unixg.ubc.ca!news.bc.net!torn!howland.reston.ans.net!gatech!newsfeed.pitt.edu!dsinc!netnews.upenn.edu!mipg.upenn.edu!dewey
; From: dewey@mipg.upenn.edu (Dewey Odhner)
; Newsgroups: sci.fractals
; Subject: Re: lopsided baby, freckles
; Date: 30 Aug 1995 14:45:30 GMT
; Organization: University of Pennsylvania
; Lines: 47
; Distribution: world
; Message-ID: <421tia$ln5@netnews.upenn.edu>
; References: <41covh$m8q@netnews.upenn.edu> <1995Aug24.010028.16040@nosc.mil> <41kus1$7aa@netnews.upenn.edu>
; NNTP-Posting-Host: picard.mipg.upenn.edu
;
; Several years ago I looked at a formula that I called Dragonbat.
; Just this past weekend I started using Fractint formula for the first
; time, and in a relative of Dragonbat, which I am calling Dragonbat2,
; I found some really bizarre stuff including an asymmetric baby
; mandelbrot (see lops_db2 parameters below or
; ftp://mipgsun.mipg.upenn.edu/pub/dewey/lops_db2.gif).  I wonder whether
; this is the limit of the sequence I mentioned in my previous posting
; (if you remove the disconnected wisps around it).  It looks like
; the buds could become symmetrical if it went a little further, except
; for the filaments, which have different branching patterns.
; So the symmetrical object I was speculating about does not exist.
;
; Can you believe what's hatching out of that egg that's lying on the
; main blob near this baby?
; (See ftp://mipgsun.mipg.upenn.edu/pub/dewey/wild.gif)
;
; Here are my formulas.  (By the way, these formulas don't show the dragon-
; and batlike appearance as in my original Dragonbat program.)

Mandelcubic(XYAXIS) {; Dewey Odhner
  z = Pixel, z = Sqr(z)*z:  ; Start with z**3 to initialize LastSqr
   z = z + Pixel
   z = Sqr(z)*z
    LastSqr <= 4          ; Use LastSqr instead of recalculating
  }

Dragonbat(XAXIS) {; Dewey Odhner
  c = Pixel, z = Sqr(Pixel)+Pixel:
   z = Sqr(Sqr(z)+c)-c
   c = -c
    LastSqr <= 4
  }

Dragonbat2(XAXIS) {; Dewey Odhner
  c = Pixel, z = Sqr(Pixel)-Pixel:
   z = Sqr(Sqr(z)+c)+c
   c = -c
    LastSqr <= 4
  }

