; Newsgroups: sci.fractals
; Path: unixg.ubc.ca!vanbc.wimsey.com!scipio.cyberstore.ca!
;     math.ohio-state.edu!howland.reston.ans.net!gatech!bloom-beacon.mit.edu!
;     news.tamu.edu!news.utdallas.edu!corpgate!bcarh189.bnr.ca!nott!cunews!
;     freenet.carleton.ca!FreeNet.Carleton.CA!ao950
; From: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
; Subject: WEEEEEird formula  CORRECTION
; Message-ID: <D81K4G.3Hr@freenet.carleton.ca>
; Sender: ao950@freenet2.carleton.ca (Paul Derbyshire)
; Reply-To: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
; Organization: The National Capital FreeNet
; Date: Thu, 4 May 1995 06:45:52 GMT
; Lines: 48
; 
; Use this one, not the earlier one. If you don't want to re-download it
; change "formulaname=PhonyMandel" to "formulaname=PhonyMandelJ" in your copy.
; 
; 
; The formula file must be named 'pgd.frm'
; Note: this formula can be slow. If you have fractint 19, use floating point.
; 
; --
;     .*.  "Clouds are not spheres, mountains are not cones, coastlines are not
;  -()  <  circles, and bark is not smooth, nor does lightning travel in a
;     `*'  straight line."    ,------------------------------------------------
;          -- B. Mandelbrot  |  Paul Derbyshire (PGD) ao950@freenet.carleton.ca

Comment      {;Formulas by: Paul Derbyshire (PGD)
              ;ao950@freenet.carleton.ca
}

PhonyMandelM {c=pixel
              f=15/8
              z=1:
              k=z*z
              z=(k*k/4-k*z*f/3-k/2+f*z-.25)*c,
              |z|<=127}
