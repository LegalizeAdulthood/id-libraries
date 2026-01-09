
Skyline        { ; Gerald K. Dobiasovsky <gerald.dob@aon.at> 
                 ; Sun, 27 Nov 2005 11:15:40 
         ; BTW, if you want skyscrapers, replace the 
         ; line "Y = YF" by something like "Y = YYYYF".
         ;
 Angle 4              ;Right angle
 Axiom XF             ;Starting string (F draws line, X is just a symbol)
 F =                  ;Erases every F from current string
 Y = YF               ;Y is another symbol we need (for vertical lines)
 X = XF+YF-XF-YF+XF   ;X gets replaced by right-up-right-down-right
                      ;(plus the X's and Y's for the next substitution)
 }

