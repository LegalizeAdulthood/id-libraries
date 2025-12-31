; Path: unixg.ubc.ca!van-bc!ddsw1!news.mcs.net!godot.cc.duq.edu!
;     toads.pgh.pa.us!news.pgh.net!newsfeed.pitt.edu!dsinc!netnews.upenn.edu!
;     mipg.upenn.edu!dewey
; From: dewey@mipg.upenn.edu (Dewey Odhner)
; Newsgroups: sci.fractals
; Subject: Shadow Circles of Dragonbat
; Date: 13 Sep 1995 13:41:25 GMT
; Organization: University of Pennsylvania
; Lines: 16
; Distribution: world
; Message-ID: <436n25$3ut@netnews.upenn.edu>
; NNTP-Posting-Host: picard.mipg.upenn.edu

; formula:

Dragonbat(XAXIS) {; Dewey Odhner
  c = Pixel, z = Sqr(Pixel)+Pixel:
   z = Sqr(Sqr(z)+c)-c
   c = -c
    LastSqr <= 4
  }
