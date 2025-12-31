; From - Wed Sep  4 16:39:43 1996
; Path: unixg.ubc.ca!nntp.cs.ubc.ca!newsxfer.itd.umich.edu!
;     news.flint.umich.edu!news.gmi.edu!news.sojourn.com!cancer.vividnet.com!
;     news4.agis.net!agis!www.nntp.primenet.com!nntp.primenet.com!
;     howland.erols.net!newsfeed.internetmci.com!super.zippo.com!zdc!szdc!
;     szdc-e!news
; From: billatny@nyiq.net
; Newsgroups: alt.binaries.pictures.fractals
; Subject: Design60.txt
; Date: Tue, 03 Sep 1996 21:59:32 GMT
; Organization: Zippo
; Lines: 31
; Message-ID: <50ia31$8qu@krypto.zippo.com>
; X-Newsreader: Forte Free Agent 1.0.82
;
; For those of you who use Fractint, here are the codes for the .par
; file and
; .frm files for Design60.
;
; Bill

BILL13 (yaxis) {; Bill Rossi
  z=pixel,pi=3.142857142857:
    z=fn1(z)/fn2(z)-(fn3(z)*pi),
    z=fn4((z)^pi),
  |z| <= 4
}
