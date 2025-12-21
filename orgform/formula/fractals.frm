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
 
; The only caution is that Rabadon sometimes won't work- I have 
; occasionally gotten a division by zero error. Have fun.
;  
; -
; Chris Behrens
; xkbr53c@prodigy.com
 
 
; Path: unixg.ubc.ca!unixg.ubc.ca!news.mic.ucla.edu!nntp.club.cc.cmu.edu!
;     godot.cc.duq.edu!news.duke.edu!news.mathworks.com!uunet!
;     news.sprintlink.net!cs.utexas.edu!news.cs.utah.edu!news.cc.utah.edu!
;     u.cc.utah.edu!kb9727
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
 
; Hope you enjoy these, please send in your own.
;  
; --
; Kim Best                                  *************************
;                                           *      Origamist        *
; Rocky Mountain Cancer Data System         *  Are good with thier  *
; 420 Chipeta Way #120                      *        Hands          *
; Salt Lake City, Utah  84108               *************************
