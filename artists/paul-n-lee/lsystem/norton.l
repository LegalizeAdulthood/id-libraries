From:	MX%"mcworter@midohio.net" 19-MAR-1997 11:01:52.17
To:	MX%"noel@triumf.ca"
CC:	
Subj:	Oops!  Missing file Norton.l

Return-Path: <mcworter@midohio.net>
Received: from mail.midohio.net by REG.TRIUMF.CA (MX V4.0-1 VAX) with SMTP;
          Wed, 19 Mar 1997 11:01:17 PST
Received: from presario (modem23.midohio.net [206.31.169.122]) by
          mail.midohio.net (8.8.4/8.7.3) with SMTP id OAA18149 for
          <noel@triumf.ca>; Wed, 19 Mar 1997 14:01:11 -0500 (EST)
Message-ID: <333046D8.37E8@midohio.net>
Date: Wed, 19 Mar 1997 14:04:40 -0600
From: "William A McWorter Jr." <mcworter@midohio.net>
Reply-To: mcworter@midohio.net
X-Mailer: Mozilla 3.01Gold (Win95; I)
MIME-Version: 1.0
To: NOEL_GIFFIN <noel@triumf.ca>
Subject: Oops!  Missing file Norton.l
Content-Type: text/plain; charset=us-ascii; name="Norton.l"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline; filename="Norton.l"

Norton12 {
  Angle 4
  Axiom r
  r=c40x<8y<8z<4w
  x=fx+f-yfx
  y=+f-y
  z=|f|z+f-y|f|z-f+w|f|z
  w=-f+wfx+f-yfx-f+w|f|z-f+w
  f=
  }

Norton11 {
  Angle 4
  Axiom r
  r=c40x<8y<8z<4w
  x=fx+f-yfx-f+wfx+f-y
  y=|f|z+f-y
  z=|f|z+f-y|f|z-f+w
  w=fx-f+w|f|z-f+w
  f=
  }

Norton10 {
  Angle 4
  Axiom r
  r=c40x<8y<8z<4w
  x=fx+f-yfx-f+wfx+f-y
  y=|f|z+f-y
  z=|f|z-f+w|f|z+f-y|f|z-f+w
  w=fx-f+w
  f=
  }

Norton09 {
  Angle 4
  Axiom r
  r=c40x<8y<8z<4w
  x=fx+f-yfx-f+wfx
  y=+f-yfx+f-y|f|z-f+w|f|z+f-y
  z=|f|z
  w=-f+w|f|z-f+w
  f=
  }

Norton08Med {
  Angle 8
  Axiom +r
  r=x
  x=x-f-y+f+x+f+y
  y=x-f-y-f-x+f+y
  }

Norton08 {
  Angle 4
  Axiom r
  r=x            ;  r=c40x<8y<8z<4w
  x=fx-fy+fx+fy- ;  x=fx-f+wfx+f-y
  y=+fx-fy-fx+fy ;  y=|f|z+f-yfx+f-y
		 ;  z=|f|z+f-y|f|z-f+w
		 ;  w=fx-f+w|f|z-f+w
  f=
  }

Norton07Med {
  Angle 8
  Axiom +++r
  r=w
  x=x-f-w+f+x+f+y-f-x
  z=z+f+w-f-z-f-y-f-x+f+y+f+z
  w=w-f-z+f+w
  }

Norton07 {
  Angle 4
  Axiom r
  r=c40x<8y<8z<4w
  x=fx-f+wfx+f-yfx
  y=+f-y
  z=|f|z-f+w|f|z+f-yfx+f-y|f|z
  w=-f+w|f|z-f+w
  f=
  }

Norton06 {
  Angle 4
  Axiom r
  r=c40x<8y<8z<4w
  x=fx+f-yfx-f+w|f|z-f+wfx
  y=+f-yfx+f-y|f|z+f-y
  z=|f|z-f+w|f|z
  w=-f+w
  f=
  }

Norton05 {
  Angle 4
  Axiom r
  r=c40x<8y<8z<4w
  x=fx+f-yfx-f+w|f|z-f+wfx+f-yfx
  y=+f-y|f|z+f-y
  z=|f|z
  w=-f+w|f|z-f+w
  f=
  }

Norton04Med {
  Angle 8
  Axiom +r
  r=x
  x=x+f+y+f+z-f-y-f-x-f-w+f+x+f+y
  y=z-f-y
  z=z+f+w-f-z+f+w
  w=x-f-w
  }

Norton04 {
  Angle 4
  Axiom r
  r=c40xc48yc56zc60w
  x=fx+f-y|f|z+f-yfx-f+wfx+f-y
  y=|f|z+f-y
  z=|f|z-f+w|f|z-f+w
  w=fx-f+w
  f=
  }

Norton03Med {
  Angle 8
  Axiom +r
  r=x
  x=x-f-w+f+x+f+y-f-x
  y=y-f-x+f+y
  w=w-f-z+f+w-f-z-f-y+f+z+f+w
  }

Norton03 {
  Angle 4
  Axiom r
  r=c40xc48yc56zc60w
  x=fx-f+wfx+f-yfx
  y=+f-yfx+f-y
  z=|f|z
  w=-f+w|f|z-f+w|f|z+f-y|f|z-f+w
  f=
  }

Norton02Med {
  Angle 8
  Axiom +r
  r=z
  x=x+f+y
  y=z-f-y-f-x+f+y+f+z-f-y
  z=z+f+w+f+x-f-w-f-z+f+w
  w=x-f-w
  }

Norton02 {
  Angle 4
  Axiom r
  r=c40xc48yc56zc60w
  x=fx+f-y
  y=|f|z+f-yfx+f-y|f|z+f-y
  z=|f|z-f+wfx-f+w|f|z-f+w
  w=fx-f+w
  f=
  }

Norton01 { ; Vic Norton
  Angle 4
  Axiom r
  r=x
  x=fx-f+wfx
  y=+f-y
  z=|f|z+f-yfx+f-y|f|z
  w=-f+w|f|z-f+w
  f=
  }


