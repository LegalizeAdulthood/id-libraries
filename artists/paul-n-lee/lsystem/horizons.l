;Here are some more sets of L-Systems.  This one and the next one should be 
;combined into one file called horizons.l
;If there are any long lines which have been cut into 2, you should restore 
;these to single lines in a text editor.
;
; Tony Hanmer

README {   ; These l-systems, which I have called "Horizons", are all based on
  Angle 8  ; a horizontal line of length 2-5 segments, with a"growth" up off
  Axiom f  ; it, which usually retraces itself to return to the horizon.
  f=f      ; Anthony Hanmer 2000
  }

ADH231 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f+f++++f+f+f
  }

ADH231a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f+f++++f+f+f
  }

ADH232 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f+ff++++ff+f+f
  }

ADH232a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f+ff++++ff+f+f
  }

ADH233 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f+ff++++f++f++++f++f+f+f
  }

ADH233a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f+ff++++f++f++++f++f+f+f
  }

ADH237 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=ff+f+f++f+f++f+f++f+f+f
  }

ADH237a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom +f++f
  f=ff+f+f++f+f++f+f++f+f+f
  }

ADH238 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=ff+ff+f++ff++f+ff+f
  }

ADH238a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom +f++f
  f=ff+ff+f++ff++f+ff+f
  }

ADH239 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=ff+ff+f++ff++f+ff+ff
  }

ADH246 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++f+f++++f++f++++f+f++ff
  }

ADH247 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++f+f++++f++ff++++ff+f++f
  }

ADH248 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f+f++++f++ff++++ff+f++ff
  }

ADH248a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++f+f++++f++ff++++ff+f++ff
  }

ADH249 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=ff++f+f++++f++ff++++ff+f++ff
  }

ADH250 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++ff+f++++f++f++++f+ff++ff
  }

ADH251 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++ff+f++++f++ff++++ff+ff++ff
  }

ADH252 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=ff++ff+f++++f++ff++++ff+ff++f
  }

ADH253 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f++f++f++f+ff
  }

ADH253a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++f++f++f++++f--f--f--f
  f=f+f++f++f++f+ff
  }

ADH253b { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++h
  f=f+f++f++f++f+ff
  h=ff+f++f++f++f+f
  }

ADH254 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f+f+f++f+f+ff
  }

ADH255 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f+f+ff++f+ff+ff
  }

ADH256 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+f++f+ff
  }

ADH256a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f+f+f+f++f-f-f-f
  f=f+f++f+ff
  }

ADH257 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f+f+f+++f-f++ff
  }

ADH257a { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f+++f
  f=f+f+f+++f-f++ff
  }

ADH258 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=ff++f++f++fff
  }

ADH258a { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f++f++f+++f--f--f
  f=ff++f++f++fff
  }

ADH259 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff++ff+ff
  }

ADH259a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom +f++f
  f=f+ff++ff+ff
  }

ADH259b { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f+f+f+f++f-f-f-f
  f=f+ff++ff+ff
  }

ADH260 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f+f++++f-f++ff
  }

ADH260a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++f+f++++f-f++ff
  }

ADH261 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f+f+f+f+++f-f-f++ff
  }

ADH261a { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom +f+++f
  f=f+f+f+f+++f-f-f++ff
  }

ADH262 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=ff+f+f+f+++f-f-f++f
  }

ADH262a { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom -f+++f
  f=ff+f+f+f+++f-f-f++f
  }

ADH264 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+++f++++f+++f++++f+++f++++f+++ff
  }

ADH264a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++f
  f=f+++f++++f+++f++++f+++f++++f+++ff
  }

ADH264b { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++f++f++f++++f--f--f--f
  f=f+++f++++f+++f++++f+++f++++f+++ff
  }

ADH265 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+++ff++++ff+++f++++f+++ff++++ff+++ff
  }

ADH265a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++f
  f=f+++ff++++ff+++f++++f+++ff++++ff+++ff
  }

ADH265b { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++f++f++f++++f--f--f--f
  f=f+++ff++++ff+++f++++f+++ff++++ff+++ff
  }

ADH266 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+++f++++f+++ff++++ff+++f++++f+++ff
  }

ADH266a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom --f++++f
  f=f+++f++++f+++ff++++ff+++f++++f+++ff
  }

ADH266b { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++f++f++f++++f--f--f--f
  f=f+++f++++f+++ff++++ff+++f++++f+++ff
  }

ADH267 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+++ff++++ff+++fff++++fff+++f++++f+++ff
  }

ADH267a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f+++ff++++ff+++fff++++fff+++f++++f+++ff
  }

ADH267b { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++f++f++f++++f--f--f--f
  f=f+++ff++++ff+++fff++++fff+++f++++f+++ff
  }

ADH268 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+++ff++++ff+++f++++f+++fff++++fff+++f
  }

ADH269 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f++++f+++f++++f+++ff
  }

ADH269a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++f
  f=f++f++++f+++f++++f+++ff
  }

ADH269b { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++f++f++f++++f--f--f--f
  f=f++f++++f+++f++++f+++ff
  }

ADH270 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff++++ff+++f++++f+++ff
  }

ADH270a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++ff++++ff+++f++++f+++ff
  }

ADH270b { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++f++f++f++++f--f--f--f
  f=f++ff++++ff+++f++++f+++ff
  }

ADH274 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+++f-f++++f+f+ff
  }

ADH274a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+++f-f++++f+f+ff
  }

ADH275 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+++ff-f++++f+ff+ff
  }

ADH275a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+++ff-f++++f+ff+ff
  }

ADH276 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=ff+++ff-f++++f+ff+f
  }

ADH276a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=ff+++ff-f++++f+ff+f
  }

ADH277 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=ff+++ff-f++++f+ff+ff
  }

ADH277a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=ff+++ff-f++++f+ff+ff
  }

ADH278 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f++f-f+++f+f+ff
  }

ADH278a { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f+++f
  f=f++f-f+++f+f+ff
  }

ADH279 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f++ff-f+++f+ff+ff
  }

ADH279a { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom +f+++f
  f=f++ff-f+++f+ff+ff
  }

ADH280 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+fff+f++f+f++f+f++f+fff+ff
  }

ADH280a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom +f++f
  f=f+fff+f++f+f++f+f++f+fff+ff
  }

ADH281 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff+f++++f+++f++++f+f++++f+++ff++ff
  }

ADH281a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++ff+f++++f+++f++++f+f++++f+++ff++ff
  }

ADH283 { ; Anthony Hanmer 2000
  Angle 8 ; Looking to William McWorter's Maze09
  Axiom f
  f=ff+++f-f++++f+f--f+f++++f-f-f
  }

ADH284 { ; Anthony Hanmer 2000
  Angle 8 ; Looking to William McWorter's Maze09
  Axiom f
  f=ff+++f-f++++f+f--f+f++++f-f-ff
  }

ADH285 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+++f--f++++f++f+ff
  }

ADH285a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+++f--f++++f++f+ff
  }

ADH286 { ; Anthony Hanmer 2000
  Angle 8 ; The Wave
  Axiom f
  f=f+f++f++++f--f+++f
  }

ADH286a { ; Anthony Hanmer 2000
  Angle 8 ; The Wave, doubled
  Axiom f++++f
  f=f+f++f++++f--f+++f
  }

ADH286b { ; Anthony Hanmer 2000
  Angle 8 ; The Wave, square
  Axiom f--f--f--f
  f=f+f++f++++f--f+++f
  }

ADH290 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+f-f++f+f+f
  }

ADH291 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+f-f++f+f+ff
  }

ADH291a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f++f
  f=f+f-f++f+f+ff
  }

ADH291b { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f+f+f+f++f-f-f-f
  f=f+f-f++f+f+ff
  }

ADH292 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff-f++f+ff+ff
  }

ADH292a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom +f++f
  f=f+ff-f++f+ff+ff
  }

ADH293 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff-ff++ff+ff+fff
  }

ADH293a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom +f++f
  f=f+ff-ff++ff+ff+fff
  }

ADH294 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f
  f=f+f++f++++f+++f--f++++f---f++++f+f-f+++f
  }

ADH294a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f++f++++f+++f--f++++f---f++++f+f-f+++f
  }

ADH295 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f++f++++f+++f--f++++f---f++++f+f-f+++ff
  }

ADH295a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f++f++++f+++f--f++++f---f++++f+f-f+++ff
  }

ADH296 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+ff++f++++f+++f--f++++f---f++++f+f-ff+++ff
  }

ADH296a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+ff++f++++f+++f--f++++f---f++++f+f-ff+++ff
  }

ADH297 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f-f---f++++f+++f+f++ff
  }

ADH297a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++f
  f=f++f-f---f++++f+++f+f++ff
  }

ADH298 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff-f---f++++f+++f+ff++ff
  }

ADH298a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++f
  f=f++ff-f---f++++f+++f+ff++ff
  }

ADH299 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f--f+f++++f-f++f++f
  }

ADH299a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++f--f+f++++f-f++f++f
  }

ADH300 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f--f+f++++f-f++f++ff
  }

ADH300a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++f--f+f++++f-f++f++ff
  }

ADH301 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff--f+f++++f-f++ff++ff
  }

ADH301a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++ff--f+f++++f-f++ff++ff
  }

ADH302 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f--f+++f++++f---f++f++f
  }

ADH302a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++f--f+++f++++f---f++f++f
  }

ADH303 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f--f+++f++++f---f++f++ff
  }

ADH303a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++f--f+++f++++f---f++f++ff
  }

ADH304 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff--f+++f++++f---f++ff++ff
  }

ADH304a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f++ff--f+++f++++f---f++ff++ff
  }

ADH306 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f+ff+f++f++f--ff++ff
  }

ADH306a { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f+++f
  f=f+ff+f++f++f--ff++ff
  }

ADH308 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f+ff++f++f-f++f
  }

ADH309 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f+ff++f++f-f++ff
  }

ADH309a { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f+++f
  f=f+ff++f++f-f++ff
  }

ADH310 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f+++f---f++++f+++f---f++ff
  }

ADH310a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++f
  f=f++f+++f---f++++f+++f---f++ff
  }

ADH311 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff+++f---f++++f+++f---ff++ff
  }

ADH311a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++ff+++f---f++++f+++f---ff++ff
  }

ADH312 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+f+f-f++f+ff++f+f+ff
  }

ADH312a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f++f
  f=f+f+f-f++f+ff++f+f+ff
  }

ADH313 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff+f-f++f+ff++f+ff+ff
  }

ADH313a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom +f++f
  f=f+ff+f-f++f+ff++f+ff+ff
  }

ADH314 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f--f+++f--f++++f++f---f++f++f
  }

ADH315 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f--f+++f--f++++f++f---f++f++ff
  }

ADH315a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++f--f+++f--f++++f++f---f++f++ff
  }

ADH316 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff--f+++f--f++++f++f---f++ff++ff
  }

ADH316a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++ff--f+++f--f++++f++f---f++ff++ff
  }

ADH317 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f+ff++++f++f++++f++f+f+ff
  }

ADH317a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f+ff++++f++f++++f++f+f+ff
  }

ADH318 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f+f++f++++f--f+f+f
  }

ADH318a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f+f++f++++f--f+f+f
  }

ADH319 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f+f++f++++f--f+f+ff
  }

ADH319a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f+f++f++++f--f+f+ff
  }

ADH320 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom d
  d=dd\90d\80d\180dd\180d\100d\90d
  }

ADH320a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom d\180d
  d=dd\90d\80d\180dd\180d\100d\90d
  }

ADH321 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom d
  d=dd\80d\90d\180d\90d\180d\90d\180d\90d\100d
  }

ADH321a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom \90d\180d
  d=dd\80d\90d\180d\90d\180d\90d\180d\90d\100d
  }

ADH322 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom d
  d=dd\90d\60d\180dd\180d\120d\90d
  }

ADH322a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom \90d\180d
  d=dd\90d\60d\180dd\180d\120d\90d
  }

ADH323 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom d
  d=dd\60d\90d\180d\90d\180d\90d\180d\90d\120d
  }

ADH323a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom \110d\180d
  d=dd\60d\90d\180d\90d\180d\90d\180d\90d\120d
  }

ADH326 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff+++f+++ff++++f++f++ff
  }

ADH326a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++f
  f=f++ff+++f+++ff++++f++f++ff
  }

ADH327 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff+f+f+ff++f+f+f+f
  }

ADH328 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+ff+++f++++f---ff+++ff
  }

ADH329 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+ff+f+++f+f-f+++f
  }

ADH330 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+ff+f+++f+f-f+++ff
  }

ADH330a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f+ff+f+++f+f-f+++ff
  }

ADH331 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+ff++f++++f--ff+++ff
  }

ADH331a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom ++f++++f
  f=f+ff++f++++f--ff+++ff
  }

ADH332 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff+f+f++ff-f++f+f+f-ff+fff
  }

ADH332a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f++f
  f=f+ff+f+f++ff-f++f+f+f-ff+fff
  }

ADH333 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff+f+f++ff++f+f-ff+fff
  }

ADH333a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom +f++f
  f=f+ff+f+f++ff++f+f-ff+fff
  }

ADH334 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff++f---f++++f+++f--ff++ff
  }

ADH334a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++ff++f---f++++f+++f--ff++ff
  }

ADH335 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff++f---f---f++++f+++f+++f--ff++ff
  }

ADH335a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++ff++f---f---f++++f+++f+++f--ff++ff
  }

ADH336 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++ff++f---ff---f++++f+++ff+++f--ff++fff
  }

ADH336a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++ff++f---ff---f++++f+++ff+++f--ff++fff
  }

ADH337 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f++f---ff---f++++f+++ff+++f--f++ff
  }

ADH338 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f++f---ff--f++++f++ff+++f--f++ff
  }

ADH338a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++f++f---ff--f++++f++ff+++f--f++ff
  }

ADH339 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f++f++f---ff-f++++f+ff+++f--f++ff
  }

ADH339a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f++f++f---ff-f++++f+ff+++f--f++ff
  }

ADH340 { ; Anthony Hanmer 2000
  Angle 12 ;
  Axiom f
  f=f+++f++f++++++f++f++++++f++f+++ff
  }

ADH340a { ; Anthony Hanmer 2000
  Angle 12 ;
  Axiom +f++++++f
  f=f+++f++f++++++f++f++++++f++f+++ff
  }

ADH341 { ; Anthony Hanmer 2000
  Angle 12 ;
  Axiom f
  f=f+++f++f++++++f+f++++++f+++f+++ff
  }

ADH341a { ; Anthony Hanmer 2000
  Angle 12 ;
  Axiom +f++++++f
  f=f+++f++f++++++f+f++++++f+++f+++ff
  }

ADH342 { ; Anthony Hanmer 2000
  Angle 12 ;
  Axiom f
  f=f+++f++f++++++f+@.8f++++++f+++@1.25f+++ff
  }

ADH342a { ; Anthony Hanmer 2000
  Angle 12 ;
  Axiom +f++++++f
  f=f+++f++f++++++f+@.8f++++++f+++@1.25f+++ff
  }

ADH343 { ; Anthony Hanmer 2000
  Angle 12 ;
  Axiom f
  f=f+++f++f++++++ff++++++f++++f+++ff
  }

ADH343a { ; Anthony Hanmer 2000
  Angle 12 ;
  Axiom +f++++++f
  f=f+++f++f++++++ff++++++f++++f+++ff
  }

ADH344 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f++f++f+++f--f+f
  }

ADH345 { ; Anthony Hanmer 2000
  Angle 6 ;
  Axiom f
  f=f++f++@.8f+++f--@1.25f+f
  }

ADH346 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f+f+f-f-f++++f+f+f-f-f+++ff
  }

ADH346a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=f+f+f+f-f-f++++f+f+f-f-f+++ff
  }

ADH347 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=ff+f+f+f-f-f++++f+f+f-f-f+++ff
  }

ADH347a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom +f++++f
  f=ff+f+f+f-f-f++++f+f+f-f-f+++ff
  }

ADH348 { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f
  f=f+f+f+f+f-f-f-f++++f+f+f+f-f-f-f+++fff
  }

ADH348a { ; Anthony Hanmer 2000
  Angle 8 ;
  Axiom f++++f
  f=f+f+f+f+f-f-f-f++++f+f+f+f-f-f-f+++fff
  }

ADH351 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+f+f-f++f+f-f+ff
  }

ADH351a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f++f
  f=f+f+f-f++f+f-f+ff
  }

ADH352 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=ff+f+f-f++f+f-f+ff
  }

ADH352a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f++f
  f=ff+f+f-f++f+f-f+ff
  }

ADH353 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff+f-f++f+f-ff+ff
  }

ADH353a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f++f
  f=f+ff+f-f++f+f-ff+ff
  }

ADH354 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+f+f-f-f++f+f+f-f+ff
  }

ADH354a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f++f
  f=f+f+f-f-f++f+f+f-f+ff
  }

ADH355 { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f
  f=f+ff+f++f+f++f+ff++ff+ff+fff
  }

ADH355a { ; Anthony Hanmer 2000
  Angle 4 ;
  Axiom f++f
  f=f+
}
