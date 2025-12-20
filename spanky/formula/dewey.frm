; From: dewey@mipg.upenn.edu (Dewey Odhner)
; Newsgroups: sci.fractals
; Subject: Shadow Circles of Dragonbat
; Date: 13 Sep 1995 13:41:25 GMT
; Message-ID: <436n25$3ut@netnews.upenn.edu>
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
