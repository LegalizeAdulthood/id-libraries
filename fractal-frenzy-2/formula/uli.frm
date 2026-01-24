;========================================================================
;Date:    Mon, 10 Feb 1992 13:08:59 EST
;From: "Bruno"
;Subject: PAR-File
;X-Topic: Entry #3182 of LISTS.FRAC-L
;To: "LISTS.FRAC-L.3182"
;
;Posted on 10 Feb 1992 at 08:26:57 by BrownVM Mailer (103837)
;
;PAR-File
;
;Date:         Mon, 10 Feb 1992 13:06:54 MEZ
;Reply-To:     'FRACTAL' discussion list <FRAC-L@GITVM1.BITNET>
;From:         QOC62@DMSWWU1A.BITNET
;
;Dear Fragglers !
;We 've got PAR-Files for fractint from FRAC-L (thank you Rodrigo) and want to
;contribute too. Our Parameter- and Formulafiles are following:
;uli.frm
;uli.par
;(I think you will need sam.frm published in FRAC-L (i hope !?) before )
;Interested in YOUR Parameter- or formulafiles.!
;
;Our E-MAIL:
;ULI:  QOC62@DMSWWU1A.BITNET
;TOM:  QOC71@DMSWWU1A.BITNET
;
;Happy fraggling !
;Greetings from Muenster
;


   ULI_1 {
      z = Pixel: z = fn1(1/fn2(z))
      |z| <= 4
   }

   ULI_2 {
      z = Pixel: z = fn1(1/fn2(z+p1))
      |z| <= p2
   }

   ULI_3 {
      z = Pixel: z = fn1(1/fn2(z+p1)+p1)
      |z| <= p2
   }

   ULI_4 {
      z = Pixel: z = fn1(1/(z+p1))*fn2(z+p1)
      |z| <= p2
   }

   ULI_5 {
      z = Pixel, c = fn1(pixel):
      z = fn2(1/(z+c))*fn3(z+c)
      |z| <= p1
   }

   ULI_6 {
      z = Pixel: z = fn1(p1+z)*fn2(p2-z)
      |z| <= p2+16
   }

