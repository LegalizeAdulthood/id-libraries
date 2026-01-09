X-Originating-IP:  [212.72.143.2]
X-Originating-Email:  [a_hanmer@hotmail.com]
X-Sender:  a_hanmer@hotmail.com
From:  "Tony (Anthony) Hanmer" <a_hanmer@hotmail.com>
To:  fractint@mailman.xmission.com
Date:  Fri, 23 Jan 2004 09:05:05 +0500
Subject:  [Fractint] Some new tiles


The family of sets of tiles I describe below is the first of a few 
announcements I intend make this year in L-systems and IFS fractals, my 
patience with other ways of releasing my work having run out.  I hope to see 
a renewed interest in these two types, which I see as underdeveloped and 
worthy of much more attention.

S-Tiles
There are 3 regular tiles in 2 dimensions:  equilateral Triangle, Square and 
Hexagon.
Take one side of any of these, a straight line. Distort it from this 
configuration in any manner which leaves it with 180-degree rotational 
symmetry, the same symmetry which is found in the letter S (or Z, or N).  It 
must also be non-crossing (nc).
Remake the tile using these altered lines as sides, and it will still 
function as a tile.
I call these S-Tiles.  (Does anyone have a better name?)  Several examples 
are known already - you will find them in Benoit Mandelbrot's seminal book, 
"The Fractal Geometry of Nature", pp. 50-55.  I include below a few of my 
own pieces.  Paste them into a file, call it STs.l for example, save it in 
your Fractint directory and you can then run the fractals as type Lsystem.

I have hugely expanded the family of sets as L-systems.  The sets are 
infinite, because a line, the side of a tile, can be made as long and as 
convoluted as one wishes.  (Fractint's capacity to produce these tiles, 
however, is not infinite, because it has a necessary limit on the number of 
characters in a line of L-systems code:  160 for versions up to the last 
developer's release, and 255 for the latter.)  My L-systems file, STiles.l, 
is available zipped from
          http://spanky.triumf.ca/pub/fractals/params/
for those who are interested.  Download and unzip it into your Fractint 
directory, and you're ready to explore these new tiles in Fractint; and to 
add more of your own.

The easiest way to programme a side of any S-Tile, once you've drawn it on 
squared paper, is to write the set of L-system transformations 
("f=f+f-ff"... etc) for the first half of the line; then reverse both the 
order of this line's fs and the polarity of its turns, + becomes - and - 
becomes +.  This process could be automated to speed things up.  Then, in 
your L-systems file, paste the 2 halves of the line (call them a and z) 
together, as az, one string.  In your Axiom, write the required number of fs 
to make the tile, in different colours - e.g. a Square tile would have Axiom 
c9f+c10f+c12f+c14f if you used Angle 4, or c9f++c10f++c12f++c14f if you used 
Angle 8, etc.  Then run the L-system to check that it is nc (non-crossing).

The individual segments (fs) in one's side of an S-Tile need not have 
uniform length.  Altering their lengths can increase or decrease their 
degree of convolutedness (which, I think, is their fractal dimension, is it 
not?).  In some of the cases I've included in STiles.l, the Golden Ratio 
(phi:  c. 1.6180339887499) is a limit which leads to tiles which touch 
themselves, and numbers slightly varying from this number lead either to 
not-quite-touching tiles (the goal), or to self-crossing curves.

How could one automate the process of calculating fractal (Hausdorff) 
dimension for S-Tiles, especially for those whose segments are not uniform 
in length?

These tiles can also be made in a vector drawing programme like CorelDraw or 
Illustrator, as closed curves; then filled, copied and tiled.  But the 
number of "nodes" (segment endpoints) can quickly grow beyond such 
programmes' ability to handle, as I have found.  More than 50000 nodes and 
the thing may crash.

Further variations, less "orthodox", could have islands and lakes, making 
them into dusts - discontinuous curves, though they would still need to be 
tiles.  Another type of variation will be the subject of a future 
announcement - it is a whole family of infinite sets in its own right, and 
even more fascinating than the whole S-Tiles family of sets, I think.

S-Tiles should also work in *3* dimensions, with the 5 regular polyhedra 
(and with regular polytopes in all higher dimensions!), though I've yet to 
begin such experiments, not having the programming skills or the programme 
itself to do them...

Anthony Hanmer
Tbilisi, Republic of Georgia

PS More news to follow - this is only the start.


==========================================================================


X-Originating-IP:  [212.72.143.2]
X-Originating-Email:  [a_hanmer@hotmail.com]
X-Sender:  a_hanmer@hotmail.com
From:  "Tony (Anthony) Hanmer" <a_hanmer@hotmail.com>
To:  fractint@mailman.xmission.com
Date:  Tue, 27 Jan 2004 12:32:31 +0500
Subject:  [Fractint] Golden Ratio and related plants


The Golden Ratio, also known as the Greek letter phi (pronounced "fee") and 
several other names, is indeed a fascinating number.  It is approximately 
1.1680339887499; or is it this number minus 1?  Anyway, it is the only 
answer to the question, Which number satisfies *both* 1/x = x-1 and x^2 = 
x+1?... Wild.  It is also calcualted as ((sqrt 5)-1)/2.  It appears in 
numerous surprising places in nature as well, such as angles of packing of 
sunflower seeds and ratios of flower petals in many species.

I have used the GR in a series of L-systems, where in many cases it acts as 
a limit, allowing growth to approach a certain point but not overlap.  At
          http://spanky.triumf.ca/pub/fractals/params/
There is a file, gr_iq2_pl.zip, containing 2 files -
grpl.l and griq2pl.l
The first of these uses the GR, the second the average of the GR and the 
inverse of the square root of 2.  Some examples appear below.  Paste them 
into a text editor, call the file griq2.l, put it into your Fractint 
directory and it'll be ready to use as type Lsystem.

Unzip these files into your Fractint directory and they're ready to be used 
as type Lsystem.
Enjoy.  And please let me know what you think or if you have any questions.

This is also the place to mention some ideas about colouring L-systems.
One way to really jazz up an otherwise flat L-system can be the following 
type of colouring variation:
Before the first f, put >1, making it >1f
Before the last f, put <1, making it <1f
Other combinations are possible, such as <1/>1,  or if there are 4 fs,
>1f >1f <1f <1f
>1f <1f >1f <1f
>1f <1f <1f >1f

I use this a few places in the above files, and much alsewhere also.  Try it 
for yourself.  I have coloured versions of many old spacefilling curves, the 
Dragon Curve and TwinDragon, etc.

Tony Hanmer
Tbilisi, Republic of Georgia


==========================================================================


X-Originating-IP:  [212.72.143.2]
X-Originating-Email:  [a_hanmer@hotmail.com]
X-Sender:  a_hanmer@hotmail.com
From:  "Tony (Anthony) Hanmer" <a_hanmer@hotmail.com>
To:  fractint@mailman.xmission.com
Date:  Sun, 21 Mar 2004 00:47:58 +0500
Subject:  [Fractint] The Pseudo-Dragon Spacefilling Tree...

Here is an old L-system find of mine, which I have recently explored 
further.  It started out as a speedup to one of my favourite discoveries, a 
curve which could be adjusted from being a spacefilling 1:sqrt2 rectangle to 
the TwinDragon, which is 2 Dragon Curves laid end to end.  Then I discovered 
that this curve could also be transformed into Levy's Curve; and recently 
found its Dragon Curve version as well.  This led me to a curve which seems 
to be halfway between the DC and TD!  Other variations are possible:  
indeed, if one translates the curve into d version from f version, its 
Angles can be incremented to arbitrarily fine differences, making animations 
between the various curves possible.  (This is the case with many 
L-systems...)

Below, included with the curve, are many of the variations I have found.  
Paste the whole thing into a text editor, and call it pdsft.l
Keep this file open, and Alt-Tab into Fractint.  Here you can try all of the 
variations one at a time, by jumping back into the file in the text editor 
and removing the preceeding; semicolon from the string you wish to try, 
saving the file, and jumping back into Fractint.  I have left it with the 
variation which is a half-DC, half-TD mix as default.

One question:  given 8 positions for an angle change, such as + or - (before 
and after each of f, x, f and x), and 8 possible changes of angle for Angle 
8 (0, +, ++, +++, |, +++++, ++++++, -), what is the total number of 
permutations?  (Some of these permutations will lead to a flat line or other 
redundant variations.)

Tony Hanmer
Tbilisi, Republic of Georgia

(adh5306l {; Anthony Hanmer 7/3/2004
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


==========================================================================


