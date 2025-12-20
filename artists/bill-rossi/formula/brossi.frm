; Path: unixg.ubc.ca!news.bc.net!news.uoregon.edu!news.sprintlink.net!
;     howland.reston.ans.net!news-e1a.megaweb.com!newstf01.news.aol.com!
;     newsbf02.news.aol.com!not-for-mail
; From: billatny@aol.com (Bill at NY)
; Newsgroups: alt.binaries.pictures.fractals
; Subject: More Windows Wallpaper Tiles
; Date: 16 Sep 1995 17:11:19 -0400
; Organization: America Online, Inc. (1-800-827-6364)
; Lines: 67
; Sender: root@newsbf02.news.aol.com
; Message-ID: <43fehn$d96@newsbf02.news.aol.com>
; Reply-To: billatny@aol.com (Bill at NY)
; NNTP-Posting-Host: newsbf02.mail.aol.com
;
; Here are the .frm and .par file codes for my pictures Sonic.gif,
; Red_blob.gif and RedButtn.gif. If you are new to fractint or need help
; figuring out what to do with these codes, let me know; I'll help you out. 
;
; Serving suggestion:  I think these all make very good tiles for Windows
; wallpaper, so I am also uploading small Windows .BMP files of these
; fractals. Let me know what you think. 
 
Doozy18 (yaxis) {; Bill Rossi
  z = pixel, c=fn1(z)/fn2(z):
   t=fn3(z),
   l=t/fn1(t),
   fn1(z)=l,
   z=z/fn4(c)/l+fn1(z),
   |z| <= 4
  }
 
NewOne3 (yaxis) {; Bill Rossi
  z = pixel:
   temp1 = fn1(z) / fn2(z),
   temp2 = fn3(z) - fn4(z),
   temp3 = fn1(z) * fn3(z),
   z = temp1 / temp2 - temp3,
   |z| <= 4
  }
 
Billsfrm (YAXIS) { ; Based on a formula by Paul Carlson
  z = pixel:
   z = (fn1(z)^4) / (fn2(z)^3) / (fn3(z)^2) / (fn4(z)),
   |z| <=4
  }
