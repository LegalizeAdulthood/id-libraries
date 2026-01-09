; fml_0403.l, a collection of l-systems posted to the 
; Fractint mail list during March 2004
; compiled by Roger Kaufman

;========================================================================;
;From: a_hanmer at hotmail.com (Tony (Anthony) Hanmer)
;Date: Sat Mar 20 12:48:22 2004
;Subject: [Fractint] The Pseudo-Dragon Spacefilling Tree...

adh5306l {; Anthony Hanmer 7/3/2004
Angle 8 ; pdsft (Pseudo-Dragon SpaceFilling Tree) speedup, various variants
Axiom x ; Choose any string by removing its preceeding ;semicolon
; (All possibilities:  1f1, 1x1, 1f1, 1x1 and
; 0, +, ++, +++, |, +++++, ++++++, -:  = ...?)
;x=d[@iq2\90x]\180d[@iq2\90x]; rectangular sft
;x=f[@iq2++x]|f[@iq2++x]; rectangular sft
;x=f[@iq2+x]|f[@iq2+x]; TD
;f=f+@iq2f|f+++@q2; TD 4026, multiple-layer redundant (mlr) (needs Axiom f)
;f=f+++@iq2f|f+@q2; TD 4027 mlr (needs Axiom f)
;x=d[@iq2\45x]\180d[@iq2/45x]; DC 5306m
;x=f[@iq2+x]|f[@iq2-x]; DC 5306n; 1-string all-f  DC eludes me so far!
;x=f[@iq2+x]f|[@iq2-x]; Fat DC, 13/3/2004
;x=f[@iq2+x]|f[@iq2x-]; Halfway between DC & TD, 13/3/204
;x=f[@iq2+x]f|[@iq2x-]; Halfway between DC & TD, 13/3/204
;x=f[@iq2+x]-f[@iq2x]; Levy's Curve, 13/3/204
;x=f[@iq2++x]|f[@iq2x]; Partway between DC & sft?, 13/3/2004
;x=f[@iq2++x]|f[@iq2+x]; Partway between DC & sft?, 13/3/2004
;x=f[@iq2++x]|f[@iq2-x]; Partway between DC & sft?, 13/3/2004
;x=f[@iq2+x]f[@iq2+x]; TD tree
;x=f[@iq2+x]f[@iq2-x]; Levy's Curve, 12/3/2004
x=f[@iq2+x]|f[@iq2x]; *Halfway BETWEEN* DC & TD! - 8/3/2004
;x=d[@iq2\45x]\180d[@iq2x]; *BETWEEN* DC & TD!, d-version - 9/3/2004
;x=d[@iq2\45x]\180d[@iq2/15x]; *BETWEEN* DC & TD!, Angle 8 - 9/3/2004
;x=d[@iq2\45x]\180d[@iq2/30x]; *BETWEEN* DC & TD!, Angle 8 - 9/3/2004
;x=d[@iq2\45x]\180d[@iq2/40x]; *BETWEEN* DC & TD!, Angle 8 - 9/3/2004
;x=d[@iq2\45x]\180d[@iq2\15x]; *BETWEEN* DC & TD!, Angle 8 - 9/3/2004
;x=d[@iq2\45x]\180d[@iq2\30x]; *BETWEEN* DC & TD!, Angle 8 - 9/3/2004
;x=d[@iq2\45x]\180d[@iq2\40x]; *BETWEEN* DC & TD!, Angle 8 - 9/3/2004
;x=d[@iq2\30x]\180d[@iq2x]; Just playing - 9/3/2004
;x=d[@iq2\60x]\180d[@iq2x]; Just playing - 9/3/2004
;x=d[@iq2\15x]\180d[@iq2x]; Just playing - 9/3/2004
;x=d[@iq2\75x]\180d[@iq2x]; Just playing - 9/3/2004
;x=d[@iq2\90x]\180d[@iq2x]; Just playing - 9/3/2004
;x=f[@iq2+x]|f[@iq2+!+x]; Just playing - 9/3/2004
;x=f[@iq2-!x]|f[@iq2++!x]; Just playing - 9/3/2004
;x=f[@iq2-x]|!f[@iq2+!x]; TD - 9/3/2004
;x=f[@iq2|!x]-!f[@iq2+!x]; sft - 9/3/2004
;x=f[@iq2-!+!x]+f[@iq2+!x]; Just playing - 9/3/2004
;x=f[@iq2-!+!x]|!f[@iq2+!x]; Just playing - 9/3/2004
;x=f[@iq2-!--x]|!f[@iq2+!x]; Rt Triangle - 9/3/2004
;x=f[@iq2---x]|!f[@iq2+!x]; Rt Triangle - 9/3/2004
;x=f[@iq2---x]+++f[@iq2+!x]; Just playing - 9/3/2004
;x=f[@iq2---x]+++f[@iq2|x]; Nice new DC - 9/3/2004
;x=f[@iq2+x]-f[@iq2+x]; playing, 12/3/2004
;x=f[@iq2x]f[@iq2-x]; playing, 12/3/2004
}