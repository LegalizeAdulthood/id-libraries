; From - Wed Sep  4 11:04:41 1996
; Path: unixg.ubc.ca!van-bc!news.mindlink.net!news.atl.bellsouth.net!news.service.emory.edu!cssun.mathcs.emory.edu!metro.atlanta.com!newsfeed.internetmci.com!super.zippo.com!zdc!szdc!szdc-e!news
; From: billatny@nyiq.net
; Newsgroups: alt.binaries.pictures.fractals
; Subject: Spirals.txt for Spirals 5-8
; Date: Tue, 03 Sep 1996 22:02:24 GMT
; Organization: Zippo
; Lines: 81
; Message-ID: <50ia8f$95v@krypto.zippo.com>
; X-Newsreader: Forte Free Agent 1.0.82
; 
; Here are some spirals to show my appreciation for the Masters: Paul,
; Linda and Phil.  Thanks for the great pics!
; 
; For those of you who use Fractint, here are the codes for the .par
; file and
; .frm files for these spirals.
;   

BillTry3   {; Bill Rossi
    z = pixel, c=p1:
    z = ((z-1) * c * (real(p1)>=0)) + ((z+1) * |c|/c * (real(p1)<0)),

    |z| <= 4
 } 

BillTry4   {; Bill Rossi
    z = pixel, c=p1:
    z = ((z-1) * c * (real(p1)>=0)) + ((z+1) * |c|/c * (real(p1)<0)),

    z = fn1(z) + c,
    z = fn2(c) + z,
    |z| <= 4
 } 

; 
; Bill
; 
