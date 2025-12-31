; From:	newstedclan@juno.com on 11/06/97 06:26 PM CST
; Please respond to fractint@mail.xmission.com
;
; To:	fractint@xmission.com
; cc:	 (bcc: Jay Hill/NRaD/ACMS)
; Subject:	(fractint) contest formula
;
; "...God is in the details..." Linus C. Pauling
;
; Nuke

contest4  {; Kerry Mitchell
      ; slightly optimized version of Contest formula
         z=p1, c=pixel:
         z2=sqr(z), z=z*z2+c*(1+z-z2), |z| <= 4
         }
contest5  {; Kerry Mitchell
      ; slightly optimized version of Contest formula
         z=p1, c=pixel:
         z2=sqr(z), z=z*z2+c*(1+z-z2), |z| <= 16
         }
