_README {; Anthony Hanmer 2001
  Angle 4; (Golden Ratio + 1/sqrt/2)/2 plant series
  Axiom x; A large series of L-systems based on the average
  x=f    ; of the Golden Ratio and 1/sqrt 2, 0.66257038494.
         ; This file is related to grpl.l, in which I have
         ; replaced all the 0.66257038494 with the Golden Ratio,
         ; 0.6180339887499...
         ; If this series was changed to d-programming instead of f,
         ; the Angles could be changed by an arbitrarily small amount,
         ; resulting in smooth transitions from one to the next -
         ; and ANIMATIONS.
         ; Changing the ratio in the same way would give a different series 
         ; of animations.  And combining these 2 sets of changes
         ; would result in a third series.

  }

gq03- {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq03+ {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq03-- {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq03++ {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq03--- {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]
  }

gq03+++ {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq03a {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]!
  }

gq03a! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]!
  }

gq03b {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]!
  }

gq03b! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]!
  }

gq03c {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]
  }

gq03c! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]
  }

gq03d {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]
  }

gq03e {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]
  }

gq03e! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x]
  }

gq03f {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]
  }

gq03f! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]
  }

gq03g {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!-x]
  }

gq03g!1 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+@.66257038494x!-x]
  }

gq03g!2 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+!@.66257038494x-x]
  }

gq03h {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!+x]
  }

gq03h!1 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+!@.66257038494x!+x]
  }

gq03h!2 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+@.66257038494x!+x]
  }

gq03h!3 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+!@.66257038494x!+x]
  }

gq03h!4 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+!@.66257038494x+x]
  }

gq03i {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+@.66257038494x!-x]
  }

gq03i!1 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+!@.66257038494x!-x]
  }

gq03i!2 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x!-x]
  }

gq03i!3 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x-x]
  }

gq03j {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+@.66257038494x!+x]
  }

gq03j!1 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+!@.66257038494x!+x]
  }

gq03j!2 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+@.66257038494x!+x]
  }

gq03j!3 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x!+x]
  }

gq03j!4 {; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x+x]
  }

gq03k {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]!
  }

gq03k! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]!
  }

gq03l {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]!
  }

gq03l! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!-@.66257038494x]!
  }

gq03m {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]!
  }

gq03m! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]!
  }

gq03n {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[-@.66257038494x!]
  }

gq03n! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[-@.66257038494x!]
  }

gq03o {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[+@.66257038494x!]
  }

gq03o! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[+@.66257038494x!]
  }

gq03p {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[-@.66257038494x!]
  }

gq03q {  ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[+@.66257038494x!]
  }

gq03q! { ; Anthony Hanmer 2001
  Angle 3; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[+@.66257038494x!]
  }

gq04_ {  ; Anthony Hanmer 2001
  Angle 4; 1st in "Avg of Golden Ratio + iq2" plant series
  Axiom f; original, needing speedup
  f=f[+@.615f!-f]
  }

gq04- {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series begins
  Axiom x; speedup
  x=f[+@.66257038494x!-x]
  }

gq04+ {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq04-- {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series begins
  Axiom x; 
  x=f[+!@.66257038494x-x]
  }

gq04++ {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq04--- {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series begins
  Axiom x; 
  x=f[+!@.66257038494x!-x]
  }

gq04+++ {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq04-d1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; d-based
  x=d[\88@.66257038494x!/92x]
  }

gq04-d2 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; d-based
  x=d[\88@.66257038494x!/88x]
  }

gq04+d1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; d-based
  x=d[\88@.66257038494x!\92x]
  }

gq04+d2 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; d-based
  x=d[\88@.66257038494x!\88x]
  }

gq04a {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!--x]
  }

gq04a!1 { ; Anthony Hanmer 2001
  Angle 4 ; "Avg of Golden Ratio + iq2" plant series
  Axiom +x; sft
  x=f[+!@iq2x!--x]
  }

gq04a!2 { ; Anthony Hanmer 2001
  Angle 4 ; "Avg of Golden Ratio + iq2" plant series
  Axiom +x; sft, though boring
  x=f[+!@iq2x--x]
  }

gq04a!3 { ; Anthony Hanmer 2001
  Angle 4 ; "Avg of Golden Ratio + iq2" plant series
  Axiom +x; sft, better
  x=f[+!@.7x--x]
  }

gq04b {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]!
  }

gq04c {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]!
  }

gq04d {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; change ratio to iq2, =...
  x=f[+@.66257038494x!--x]!
  ; adh1888, Pseudo-Twindragon Spacefilling Tree...
  }

gq04e {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]
  }

gq04e!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]
  }

gq04f {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]
  }

gq04g{   ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]
  }

gq04h {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]
  }

gq04i {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!-x]
  }

gq04i!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+!@.66257038494x-x]
  }

gq04j {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!+x]
  }

gq04j!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+!@.66257038494x!+x]
  }

gq04k {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+@.66257038494x!-x]
  }

gq04k!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+!@.66257038494x-x]
  }

gq04l {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom ++x
  x=f-f[+@.66257038494x!+x]
  }

gq04l!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom ++x
  x=f-f[+!@.66257038494x!+x]
  }

gq04m {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]!
  }

gq04m!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]
  }

gq04n {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]!
  }

gq04n!1 { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x-x!-@.66257038494x]
  }

gq04o {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]!
  }

gq04o!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x]
  }

gq04p {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]!
  }

gq04p!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]
  }

gq04q {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[-@.66257038494x!]
  }

gq04q!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[-!@.66257038494x]
  }

gq04r {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[+@.66257038494x!]
  }

gq04r!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[+!@.66257038494x]
  }

gq04s {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[-@.66257038494x!]
  }

gq04s!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[-!@.66257038494x]
  }

gq04t {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom +x
  x=f[+@.66257038494x]!f[+@.66257038494x!]
  }

gq04t!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom +x
  x=f[+!@.66257038494x]!f[+!@.66257038494x]
  }

gq04u {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]+[@.66257038494fx]]!
  }

gq04v {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]+f[@.66257038494x]]!
  }

gq04w {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom +x;a spacefilling tree...
  x=f[+@iq2x!]f[-@iq2x!]
  }

gq04w!1 { ; Anthony Hanmer 2001
  Angle 4 ; "Avg of Golden Ratio + iq2" plant series
  Axiom +x; sft
  x=f[+!@iq2x!]f[-!@iq2x!]
  }

gq04w!2 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom +x
  x=f[+!@iq2x]f[-@iq2x!]
  }

gq04x {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; almost a spacefilling tree...
  x=f[+@.68x!]f[+@.68x!]
  }

gq04y {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; a spacefilling tree...
  x=f[+@iq2x]!f[-@iq2x!]
  }

gq04z {  ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+x+x!+@.66257038494x+x+x]!
  }

gq04z!1 {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x+x!+@.66257038494x+x+x]
  }

gq04aa { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x!+x!]
  }

gq04aa! {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x!+x!]
  }

gq04ab { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+[x]-[x]!+@.66257038494x+[x]-[x]!]
  }

gq04ab! {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+[x]-[x]!+@.66257038494x+[x]-[x]!]
  }

gq04ac { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+x+x!+@.66257038494x+x-x]
  }

gq04ac! {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x+x!+@.66257038494x+x-x]
  }

gq04ad { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!x]
  }

gq04ad!1 {; Anthony Hanmer 2001
  Angle 4 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!x]
  }

gq04ad!2 {; Anthony Hanmer 2001
  Angle 4 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!x]
  }

gq04ae { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; GR is too big, @.5 too small:
  x=f[+@.559x!x] ; average them to @.559
  }

gq04ae! {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; GR is too big, @.5 too small:
  x=f[+!@.559x!x] ; average them to @.559
  }

gq04af { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x!+x]
  }

gq04ag { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; 
  x=f[+@.66257038494x!!-x]
  }

gq04ag! {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; 
  x=f[+!@.66257038494x!!-x]
  }

gq04ah { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x;
  x=f[+@.66257038494x!-@i.66257038494x]
  }

gq04ah! {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x;
  x=f[+!@.66257038494x!-@i.66257038494x]
  }

gq04ai { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+@i.66257038494x]
  }

gq04ai! {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x; sft w/time-delayed holes
  x=f[+!@iq2x!+@q2x]
  }

gq04aj { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x;
  x=f[+@iq2x!-@iq2x]
  }

gq04ak { ; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

gq04ak {; Anthony Hanmer 2001
  Angle 4; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

gq05- {  ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq05+ {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq05-- {  ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq05++ {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq05+++ {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq05a {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!--x]
  }

gq05a! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!--x]
  }

gq05b {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!++x]
  }

gq05b!1 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x++x]
  }

gq05b!2 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!++x]
  }

gq05c {  ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]!
  }

gq05c! { ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!-x]!
  }

gq05d {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]!
  }

gq05d! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]!
  }

gq05e {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!--x]!
  }

gq05e! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!--x]!
  }

gq05f {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!++x]!
  }

gq05f! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!++x]!
  }

gq05g {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]
  }

gq05g! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]
  }

gq05h {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]
  }

gq05i {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]
  }

gq05i! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x]
  }

gq05j {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]
  }

gq05j! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]
  }

gq05k {  ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++@.66257038494x!-x]
  }

gq05k! {  ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++!@.66257038494x!-x]
  }

gq05l {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++@.66257038494x!+x]
  }

gq05l! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++!@.66257038494x!+x]
  }

gq05m {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++@.66257038494x!--x]
  }

gq05n {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++@.66257038494x!++x]
  }

gq05n! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++!@.66257038494x!++x]
  }

gq05o {  ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++@.66257038494x!-x]!
  }

gq05o! { ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++!@.66257038494x!-x]!
  }

gq05p {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++@.66257038494x!+x]!
  }

gq05p! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++!@.66257038494x!+x]!
  }

gq05q {  ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++@.66257038494x!--x]!
  }

gq05q! { ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++!@.66257038494x!--x]!
  }

gq05r {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++@.66257038494x!++x]!
  }

gq05r! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[++!@.66257038494x!++x]!
  }

gq05s {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f+f[+@.66257038494x!-x]
  }

gq05s!1 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f+f[+!@.66257038494x!-x]
  }

gq05s!2 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f+!f[+@.66257038494x!-x]
  }

gq05t {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f+f[+@.66257038494x!+x]
  }

gq05t!1 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f+f[+!@.66257038494x!+x]
  }

gq05t!2 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f+!f[+@.66257038494x!+x]
  }

gq05t!3 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f+!f[+!@.66257038494x!+x]
  }

gq05u {  ;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f-f[+@.66257038494x!-x]
  }

gq05u!1 {;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f-f[+!@.66257038494x!-x]
  }

gq05u!2 {;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f-!f[+@.66257038494x!-x]
  }

gq05u!3 {;Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f-!f[+!@.66257038494x!-x]
  }

gq05v!1 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f-f[+!@.66257038494x!+x]
  }

gq05v!2 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f-!f[+@.66257038494x!+x]
  }

gq05v!3 {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f-!f[+!@.66257038494x!+x]
  }

gq05w {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]!
  }

gq05w! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]!
  }

gq05x {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]!
  }

gq05x! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!-@.66257038494x]!
  }

gq05y {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]!
  }

gq05y! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x]!
  }

gq05z {  ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]!
  }

gq05z! { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]!
  }

gq05aa { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[-@.66257038494x!]
  }

gq05aa!1 {; Anthony Hanmer 2001
  Angle  5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[-!@.66257038494x!]
  }

gq05aa!2 {; Anthony Hanmer 2001
  Angle  5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[-@.66257038494x!]
  }

gq05ab { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[+@.66257038494x!]
  }

gq05ab!1 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[+!@.66257038494x!]
  }

gq05ab!2 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[+@.66257038494x!]
  }

gq05ac {  ; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[-!@.66257038494x!]
  }

gq05ac!1 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[-!@.66257038494x!]
  }

gq05ad { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[+@.66257038494x!]
  }

gq05ad!1 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[+@.66257038494x!]
  }

gq05ad!2 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[+@.66257038494x!]
  }

gq05ae { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[--@.66257038494x!]
  }

gq05ae!1 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[--!@.66257038494x!]
  }

gq05ae!2 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[--@.66257038494x!]
  }

gq05af { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[++@.66257038494x!]
  }

gq05af!1 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[++!@.66257038494x!]
  }

gq05af!2 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[++@.66257038494x!]
  }

gq05ag { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[--@.66257038494x!]
  }

gq05ag!1 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[--@.66257038494x!]
  }

gq05ah { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[++@.66257038494x!]
  }

gq05ai { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x!]f[--@.66257038494x!]
  }

gq05ai!1 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x!]f[--!@.66257038494x!]
  }

gq05aj { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x!]f[++@.66257038494x!]
  }

gq05aj!1 {; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x!]f[++!@.66257038494x!]
  }

gq05ak { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x]!f[--@.66257038494x!]
  }

gq05ak! { ; Anthony Hanmer 2001
  Angle 5 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x]!f[--!@.66257038494x!]
  }

gq05al { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x]!f[++@.66257038494x!]
  }

gq05al! {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x]!f[++!@.66257038494x!]
  }

gq05am { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]+[@.66257038494fx]]!
  }

gq05am! {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]+![@.66257038494fx]]!
  }

gq05an { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]++[@.66257038494fx]]!
  }

gq05an! {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]++![@.66257038494fx]]!
  }

gq05ao { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]+f[@.66257038494x]]!
  }

gq05ao! {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]+!f[@.66257038494x]]!
  }

gq05ap { ; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]++f[@.66257038494x]]!
  }

gq05ap! {; Anthony Hanmer 2001
  Angle 5; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]++!f[@.66257038494x]]!
  }

gq06- {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq06+ {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq06-- {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq06++ {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq06+++ {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq06a {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!--x]
  }

gq06a! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!--x]
  }

gq06b {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!++x]
  }

gq06b! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!++x]
  }

gq06c {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]!
  }

gq06c! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]!
  }

gq06d {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]!
  }

gq06e {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!--x]!
  }

gq06e! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!--x]!
  }

gq06f {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!++x]!
  }

gq06f! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!++x]!
  }

gq06g {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]
  }

gq06g! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]
  }

gq06h {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]
  }

gq06i {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]
  }

gq06i! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x]
  }

gq06j {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]
  }

gq06j! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]
  }

gq06k {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!---x]
  }

gq06k!1 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!---x]
  }

gq06k!2 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!---x]
  }

gq06l {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x!---x]
  }

gq06l! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x!---x]
  }

gq06m {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!---x]!
  }

gq06m! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!---x]!
  }

gq06n {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x!---x]!
  }

gq06n!1 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x!---x]!
  }

gq06n!2 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.7x!---x]!
  }

gq06o {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!-x]
  }

gq06o!1 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+@.66257038494x!-x]
  }

gq06o!2 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+!@.66257038494x-x]
  }

gq06p {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!+x]
  }

gq06p!1 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+!@.66257038494x!+x]
  }

gq06p!2 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+@.66257038494x!+x]
  }

gq06p!3 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+!@.66257038494x!+x]
  }

gq06p!4 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+!@.66257038494x+x]
  }

gq06q {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+@.66257038494x!-x]
  }

gq06q!1 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+@.66257038494x!-x]
  }

gq06q!2 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x!-x]
  }

gq06q!2 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x-x]
  }

gq06r {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+@.66257038494x!+x]
  }

gq06r!1 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+!@.66257038494x!+x]
  }

gq06r!2 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+@.66257038494x!+x]
  }

gq06r!3 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x!+x]
  }

gq06r!4 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x+x]
  }

gq06s {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]!
  }

gq06s! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]!
  }

gq06t {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]!
  }

gq06t! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!-@.66257038494x]!
  }

gq06u {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]!
  }

gq06u! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x]!
  }

gq06v {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]!
  }

gq06v! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]!
  }

gq06w {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[-@.66257038494x!]
  }

gq06w! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[-@.66257038494x!]
  }

gq06x {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[+@.66257038494x!]
  }

gq06x! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[+@.66257038494x!]
  }

gq06y {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[-@.66257038494x!]
  }

gq06z {  ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[+@.66257038494x!]
  }

gq06z! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[+@.66257038494x!]
  }

gq06aa { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[--@.66257038494x!]
  }

gq06aa!1 {; Anthony Hanmer 2001
  Angle 6 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[--!@.66257038494x!]
  }

gq06aa!2 {; Anthony Hanmer 2001
  Angle 6 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]f[--@.66257038494x!]
  }

gq06ab { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[++@.66257038494x!]
  }

gq06ab!1 {; Anthony Hanmer 2001
  Angle 6 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[++!@.66257038494x!]
  }

gq06ac { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[--@.66257038494x!]
  }

gq06ad { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[++@.66257038494x!]
  }

gq06ad! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[++@.66257038494x!]
  }

gq06ae { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x!]f[+++@.66257038494x!]
  }

gq06ae!1 {; Anthony Hanmer 2001
  Angle 6 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x]f[+++@.66257038494x!]
  }

gq06af { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x]!f[---@.66257038494x!]
  }

gq06af! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x]!f[---@.66257038494x!]
  }

gq06ag { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]+[@.66257038494fx]]!
  }

gq06ah { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]++[@.66257038494fx]]!
  }

gq06ah1 {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]++![@.66257038494fx]]!
  }

gq06ai { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]+f[@.66257038494x]]!
  }

gq06aj { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]++f[@.66257038494x]]!
  }

gq06ak { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+x+x!+@.66257038494x+x+x]!
  }

gq06ak! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x+x!+@.66257038494x+x+x]!
  }

gq06al { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x!+x!]
  }

gq06al! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x!+x!]
  }

gq06am { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+[x]-[x]!+@.66257038494x+[x]-[x]!]
  }

gq06am! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+[x]-[x]!+@.66257038494x+[x]-[x]!]
  }

gq06an { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+@.66257038494x]![++x]]
  }

gq06an! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+!@.66257038494x]![++x]]
  }

gq06ao { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!+x]
  }

gq06ao! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!+!x]
  }

gq06ap { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!++x]
  }

gq06ap! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!++!x]
  }

gq06aq { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!---x++x]
  }

gq06aq! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!---x++x]
  }

gq06ar { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x+x]
  }

gq06ar! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x+x]
  }

gq06as { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!---x]++x
  }

gq06as! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!---x]++x
  }

gq06at { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]+x
  }

gq06au { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-@i.66257038494x]
  }

gq06au! { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-@i.66257038494x]
  }

gq06av { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+@i.66257038494x]
  }

gq06av! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+@i.66257038494x]
  }

gq06aw { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

gq06ax { ; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

gq06ax! {; Anthony Hanmer 2001
  Angle 6; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

gq08 {   ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x-!x]!
  }

gq08- {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq08+ {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq08-- {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq08++ {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq08+++ {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq08-c1 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x; colour 1
  x=f[+@.66257038494>1x!-x]
  }

gq08+c1 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x; colour 1
  x=f[+@.66257038494>1x!+x]
  }

gq08-c2 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x; colour 2
  x=f[+@.66257038494>1x!->1x]
  }

gq08+c2 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x; colour 2
  x=f[+@.66257038494>1x!+>1x]
  }

gq08-c3 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x; colour 3
  x=f[+@.66257038494>1x!-<1x]
  }

gq08+c3 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x; colour 3
  x=f[+@.66257038494>1x!+<1x]
  }

gq08a {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!-x]
  }

gq08a! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!-x]
  }

gq08b {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!---x]
  }

gq08c {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!+++x]
  }

gq08c! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!+++x]
  }

gq08d {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]
  }

gq08d! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]
  }

gq08e {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]
  }

gq08f {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]
  }

gq08f! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x]
  }

gq08g {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]
  }

gq08g! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]
  }

gq08h {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!-@.66257038494x]
  }

gq08h! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!-@.66257038494x]
  }

gq08i {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494gx!-gx]
  }

gq08j {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494gx!+gx]
  }

gq08j! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494gx!+gx]
  }

gq08k {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=fg[+@.66257038494x!-x]
  }

gq08l {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=fg[+@.66257038494x!+x]
  }

gq08l! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=fg[+!@.66257038494x!+x]
  }

gq08m {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!--x]
  }

gq08m! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!--x]
  }

gq08n {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!++x]
  }

gq08n! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!++x]
  }

gq08o {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!--x]
  }

gq08o! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!--x]
  }

gq08p {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!++x]
  }

gq08p! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!++x]
  }

gq08pq { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!++x]
  }

gq08q {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!+x]
  }

gq08q! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!+x]
  }

gq08r {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-----x]
  }

gq08s {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+++++x]
  }

gq08s! { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+++++x]
  }

gq08t {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++f[+@.66257038494x!-x]
  }

gq08t!1 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++!f[+@.66257038494x!-x]
  }

gq08t!2 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++!f[+!@.66257038494x!-x]
  }

gq08u {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++f[+@.66257038494x!+x]
  }

gq08u!1 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++f[+!@.66257038494x!+x]
  }

gq08u!2 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++!f[+@.66257038494x!+x]
  }

gq08u!3 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++!f[+!@.66257038494x!+x]
  }

gq08v {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!-x]
  }

gq08v!1 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+@.66257038494x!-x]
  }

gq08w {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!+x]
  }

gq08w!1 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+!@.66257038494x!+x]
  }

gq08w!2 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+@.66257038494x!+x]
  }

gq08w!3 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+!@.66257038494x!+x]
  }

gq08x {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+@.66257038494x!-x]
  }

gq08x!1 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+@.66257038494x!-x]
  }

gq08x!2 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x!-x]
  }

gq08z {  ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--f[+@.66257038494x!-x]
  }

gq08z!1 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--!f[+@.66257038494x!-x]
  }

gq08z!2 {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--!f[+!@.66257038494x!-x]
  }

gq08aa { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--f[+@.66257038494x!+x]
  }

gq08aa!1 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--!f[+@.66257038494x!+x]
  }

gq08aa!2 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--!f[+!@.66257038494x!+x]
  }

gq08ab { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]+f
  }

gq08ab! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]+f
  }

gq08ac { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]+f
  }

gq08ac! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]+f
  }

gq08ad { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]-f
  }

gq08ad! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]-f
  }

gq08ae { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]-f
  }

gq08ae! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]-f
  }

gq08af { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]++f
  }

gq08af! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]++f
  }

gq08ag { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]++f
  }

gq08ag! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]++f
  }

gq08ah { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]+g
  }

gq08ah! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]+g
  }

gq08ai { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]+g
  }

gq08ai! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]+g
  }

gq08aj { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]-g
  }

gq08aj! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]-g
  }

gq08ak { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]-g
  }

gq08ak! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x]-g
  }

gq08al { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x]!
  }

gq08al! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x]!
  }

gq08am { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x]!
  }

gq08an { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!-x]!
  }

gq08an! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!-x]!
  }

gq08ao { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!---x]!
  }

gq08ao! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!---x]!
  }

gq08ap { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!+++x]!
  }

gq08ap! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!+++x]!
  }

gq08aq { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]!
  }

gq08aq! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x-@.66257038494x]!
  }

gq08ar { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]!
  }

gq08ar! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!-@.66257038494x]!
  }

gq08as { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]!
  }

gq08as! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x]!
  }

gq08at { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]!
  }

gq08at! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-x!+@.66257038494x]!
  }

gq08au { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!-@.66257038494x]!
  }

gq08au! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!-@.66257038494x]!
  }

gq08av { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!--x]!
  }

gq08av! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!--x]!
  }

gq08aw { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!++x]!
  }

gq08aw! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!++x]!
  }

gq08ax { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!--x]!
  }

gq08ax! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!--x]!
  }

gq08ay { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!++x]!
  }

gq08ay! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!++x]!
  }

gq08az { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++@.66257038494x!+x]!
  }

gq08az! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+++!@.66257038494x!+x]!
  }

gq08ba { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-----x]!
  }

gq08ba! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-----x]!
  }

gq08bb { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+++++x]!
  }

gq08bb! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+++++x]!
  }

gq08bc { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++f[+@.66257038494x!-x]!
  }

gq08bc!1 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++!f[+@.66257038494x!-x]!
  }

gq08bd { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f++f[+@.66257038494x!+x]!
  }

gq08be { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!-x]!
  }

gq08be!1 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+!f[+@.66257038494x!-x]!
  }

gq08bf { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f+f[+@.66257038494x!+x]!
  }

gq08bg { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f-f[+@.66257038494x!-x]!
  }

gq08bg!1 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f-!f[+@.66257038494x!-x]!
  }

gq08bg!2 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f-!f[+!@.66257038494x!-x]!
  }

gq08bh { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-f[+@.66257038494x!+x]!
  }

gq08bh!1 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f-!f[+!@.66257038494x!+x]!
  }

gq08bi { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--f[+@.66257038494x!-x]!
  }

gq08bi!1 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--!f[+@.66257038494x!-x]!
  }

gq08bi!2 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--!f[+!@.66257038494x!-x]!
  }

gq08bj { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--f[+@.66257038494x!+x]!
  }

gq08bj!1 {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=f--!f[+!@.66257038494x!+x]!
  }

gq08bk { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x-@.66257038494x]!
  }

gq08bl { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!-@.66257038494x]!
  }

gq08bm { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x]!
  }

gq08bn { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-x!+@.66257038494x]!
  }

gq08bo { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!-@.66257038494x]!
  }

gq08bp { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[-@.66257038494x!]
  }

gq08bp! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[-@.66257038494x!]
  }

gq08bq { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[+@.66257038494x!]
  }

gq08bq! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[+@.66257038494x!]
  }

gq08br { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[-@.66257038494x!]
  }

gq08bs { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[+@.66257038494x!]
  }

gq08bs! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[+@.66257038494x!]
  }

gq08bt { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[--@.66257038494x!]
  }

gq08bt! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[--@.66257038494x!]
  }

gq08bu { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]f[++@.66257038494x!]
  }

gq08bu! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]f[++@.66257038494x!]
  }

gq08bv { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[--@.66257038494x!]
  }

gq08bv! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[--@.66257038494x!]
  }

gq08bw { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x]!f[++@.66257038494x!]
  }

gq08bw! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x]!f[++@.66257038494x!]
  }

gq08bx { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x!]f[---@.66257038494x!]
  }

gq08bx! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x!]f[---@.66257038494x!]
  }

gq08by { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x!]f[+++@.66257038494x!]
  }

gq08by! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x!]f[+++@.66257038494x!]
  }

gq08bz { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++@.66257038494x]!f[---@.66257038494x!]
  }

gq08bz! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[++!@.66257038494x]!f[---@.66257038494x!]
  }

gq08ca { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++x
  x=f[++@.66257038494x]!f[+++@.66257038494x!]
  }

gq08ca! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom ++x
  x=f[++!@.66257038494x]!f[+++@.66257038494x!]
  }

gq08cb { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]+[@.66257038494fx]]!
  }

gq08cc { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]++[@.66257038494fx]]!
  }

gq08cd { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[[@.66257038494fx]+++[@.66257038494fx]]!
  }

gq08ce { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]+f[@.66257038494x]]!
  }

gq08cf { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]+++f[@.66257038494x]]!
  }

gq08cg { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[@.66257038494x]+++++f[@.66257038494x]]!
  }

gq08ch { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494f-x++f!-x]
  }

gq08ch! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494f-x++f!-x]
  }

gq08ci { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494f+x--f!+x]
  }

gq08ci! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494f+x--f!+x]
  }

gq08cj { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494fx!--f+x]
  }

gq08ck { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494fx!+f+x]
  }

gq08ck! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494fx!+f+x]
  }

gq08cl { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494fx!--f++x]
  }

gq08cl! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494fx!--f++x]
  }

gq08cm { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+@.66257038494x!]-x]
  }

gq08cn { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+@.66257038494x!]+x]
  }

gq08co { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+@iq2x!]-x]
  }

gq08cp { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+@.66257038494x!]--x]
  }

gq08cp! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+!@.66257038494x!]--x]
  }

gq08cq { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+@.66257038494x!]++x]
  }

gq08cq! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+!@.66257038494x!]++x]
  }

gq08cr { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!x]
  }

gq08cr! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!x]
  }

gq08cs { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+@.5x!]+x]
  }

gq08cs! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+!@.5x!]+x]
  }

gq08ct { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-[f[-@.66257038494x!-x]]]
  }

gq08ct! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-[f[-@.66257038494x!-x]]]
  }

gq08cu { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+[f[-@.66257038494x!+x]]]
  }

gq08cu! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+[f[-@.66257038494x!+x]]]
  }

gq08cv { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-[f[-@.66257038494x!+x]]]
  }

gq08cv! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-[f[-@.66257038494x!+x]]]
  }

gq08cw { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+[f[-@iq2x!-x]]]
  }

gq08cw! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+[f[-@iq2x!-x]]]
  }

gq08cx { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-[f[-@.66257038494x!-x]!]]!
  }

gq08cx! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-[f[-@.66257038494x!-x]!]]!
  }

gq08cy { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+[f[-@.66257038494x!+x]!]]!
  }

gq08cy! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+[f[-@.66257038494x!+x]!]]!
  }

gq08cz { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-[f[-@.66257038494x!+x]!]]!
  }

gq08cz! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-[f[-@.66257038494x!+x]!]]!
  }

gq08da { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+[f[-@iq2x!-x]!]]!
  }

gq08da! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+[f[-@iq2x!-x]!]]!
  }

gq08db { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+[f[-x!-x]!]]!
  }

gq08db! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+[f[-x!-x]!]]!
  }

gq08dc { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!---x++x]
  }

gq08dc! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!---x++x]
  }

gq08dd { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x+x]
  }

gq08dd! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x+x]
  }

gq08de { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!----x++x]
  }

gq08de! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!----x++x]
  }

gq08df { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!----x+x]
  }

gq08df! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!----x+x]
  }

gq08dg { ; Anthony Hanmer 2000
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom f
  f=f+[@.66257038494f]!
  }

gq08dg! {; Anthony Hanmer 2000
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom f
  f=f+![@.66257038494f]!
  }

gq08dh { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!!-x]
  }

gq08dh! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!!-x]
  }

gq08di { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!!+x]
  }

gq08dj { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-@i.66257038494x]
  }

gq08dk { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+@i.66257038494x]
  }

gq08dk! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+@i.66257038494x]
  }

gq08dl { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

gq08dm { ; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

gq08dm! {; Anthony Hanmer 2001
  Angle 8; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

gq08iq2- {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!-x]
  }

gq08iq2+ {; Anthony Hanmer 2001
  Angle 8 ; "Avg of Golden Ratio + iq2" plant series
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!+x]
  }

gq10- {   ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq10+ {   ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq10-- {   ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq10++ {   ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq10+++ {   ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq10a {   ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+++x]
  }

gq10a! {  ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+++x]
  }

gq10b {   ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!++++x]
  }

gq10c {   ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+++++++x]
  }

gq10c! {  ; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+++++++x]
  }

gq10iq2- {; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series 
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!-x]
  }

gq10iq2+ {; Anthony Hanmer 2001
  Angle 10; "Avg of Golden Ratio + iq2" plant series 
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!+x]
  }

gq12- {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq12+ {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq12-- {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq12++ {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq12+++ {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq12a {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+++++x]
  }

gq12b {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+++++++x]
  }

gq12b! {  ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+++++++x]
  }

gq12c {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-@i.66257038494x]
  }

gq12d {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+@i.66257038494x]
  }

gq12e {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

gq12f {   ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

gq12f! {  ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

gq12q  {  ; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!++x]
  }

gq12iq2- {; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!-x]
  }

gq12iq2+ {; Anthony Hanmer 2001
  Angle 12; "Avg of Golden Ratio + iq2" plant series 
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!+x]
  }

gq14- {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq14+ {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq14-- {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq14++ {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq14+++ {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq14a {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!++x]
  }

gq14a! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!++x]
  }

gq14b {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+++x]
  }

gq14b! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+++x]
  }

gq14c {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!++++x]
  }

gq14c! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!++++x]
  }

gq14d {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+++++x]
  }

gq14d! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+++++x]
  }

gq14e {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!++++++x]
  }

gq14f {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!++++++++x]
  }

gq14f! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!++++++++x]
  }

gq14g {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+++++++++x]
  }

gq14g! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+++++++++x]
  }

gq14h {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!++++++++++x]
  }

gq14h! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!++++++++++x]
  }

gq14i {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+++++++++++x]
  }

gq14i! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+++++++++++x]
  }

gq14j {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!++++++++++++x]
  }

gq14j! {  ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!++++++++++++x]
  }

gq14k {   ; Anthony Hanmer 2001
  Angle 14; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+++++++++++++x]
  }

gq16- {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq16+ {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq16-- {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq16++ {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq16+++ {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq16a {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x+@.66257038494x]
  }

gq16a! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x+@.66257038494x]
  }

gq16b {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x+@.66257038494x+@.66257038494x]
  }

gq16b! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x+@.66257038494x+@.66257038494x]
  }

gq16c {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+@.66257038494x!+x+@.66257038494x]
  }

gq16c! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+@.66257038494x!+x+@.66257038494x]
  }

gq16d {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+@.66257038494x!+x+@.66257038494x+@.66257038494x]
  }

gq16d! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+@.66257038494x!+x+@.66257038494x+@.66257038494x]
  }

gq16e {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+@.66257038494x!+x+@.66257038494x!+@.66257038494x]
  }

gq16e! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+@.66257038494x!+x+@.66257038494x!+@.66257038494x]
  }

gq16f {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+@.66257038494x!+x+@.66257038494x!+@.66257038494x!]
  }

gq16f! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+@.66257038494x!+x+@.66257038494x!+@.66257038494x!]
  }

gq16g {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+@.66257038494x!+x+@.66257038494x!+@.66257038494x]!
  }

gq16g! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+@.66257038494x!+x+@.66257038494x!+@.66257038494x]!
  }

gq16h {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+@.66257038494x!+x+@.66257038494x!+@.66257038494x!]!
  }

gq16h! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+@.66257038494x!+x+@.66257038494x!+@.66257038494x!]!
  }

gq16i {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]+f[@.66257038494x!]+f[@.66257038494x!]+f[@.66257038494x!]
  }

gq16i! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]+f[@.66257038494x!]+f[@.66257038494x!]+f[@.66257038494x!]
  }

gq16j {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+@.66257038494x]
  }

gq16j! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+@.66257038494x]
  }

gq16k {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!]-f[@.66257038494x!]+f[@.66257038494x!]-f[@.66257038494x!]
  }

gq16k! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!]-f[@.66257038494x!]+f[@.66257038494x!]-f[@.66257038494x!]
  }

gq16l {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+x!+@.66257038494x]
  }

gq16l! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x!+@.66257038494x]
  }

gq16m {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+x+x!+@.66257038494x+x+x]
  }

gq16m! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x+x!+@.66257038494x+x+x]
  }

gq16n {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+x+x!+@.66257038494x+x+x]!
  }

gq16n! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x+x!+@.66257038494x+x+x]!
  }

gq16o {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x!+x!]
  }

gq16o! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x!+x!]
  }

gq16p {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!++x+@.66257038494x!++x]
  }

gq16p! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!++x+@.66257038494x!++x]
  }

gq16q {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+[x]!+@.66257038494x+[x]!]
  }

gq16q2  { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!++x]
  }

gq16q! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+[x]!+@.66257038494x+[x]!]
  }

gq16r {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x[+x][+x]!+@.66257038494x[+x][+x]!]
  }

gq16r! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x[+x][+x]!+@.66257038494x[+x][+x]!]
  }

gq16s {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+[x]-[x]!+@.66257038494x+[x]-[x]!]
  }

gq16s! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+[x]-[x]!+@.66257038494x+[x]-[x]!]
  }

gq16t {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+@.66257038494x]![+@.66257038494x]]
  }

gq16t! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+!@.66257038494x]![+@.66257038494x]]
  }

gq16u {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+@.66257038494x]![++@.66257038494x]]
  }

gq16u! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+!@.66257038494x]![++@.66257038494x]]
  }

gq16v {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+@.66257038494x]![+x]]
  }

gq16v! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+!@.66257038494x]![+x]]
  }

gq16w {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+@.66257038494x]![++x]]
  }

gq16w! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+!@.66257038494x]![++x]]
  }

gq16x {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+@iq2x]![+x]]
  }

gq16x! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+!@iq2x]![+x]]
  }

gq16y {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+@.8x]![+x]]
  }

gq16y! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+!@.8x]![+x]]
  }

gq16z {   ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x-x+x!+@.66257038494x+x-x]
  }

gq16z! {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x-x+x!+@.66257038494x+x-x]
  }

gq16aa {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++x
  x=[f[+@.66257038494x!]-x]
  }

gq16ab {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+@.66257038494x!]+x]
  }

gq16ab! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+!@.66257038494x!]+x]
  }

gq16ac {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-[f[-@.66257038494x!-x]]]
  }

gq16ac! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-[f[-@.66257038494x!-x]]]
  }

gq16ad {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+[f[-@.66257038494x!+x]]]
  }

gq16ad! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+[f[-@.66257038494x!+x]]]
  }

gq16ae {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-[f[-@.66257038494x!+x]]]
  }

gq16ae! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-[f[-@.66257038494x!+x]]]
  }

gq16af {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+[f[-@iq2x!-x]]]
  }

gq16af! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+[f[-@iq2x!-x]]]
  }

gq16ag {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-[f[-@.66257038494x!-x]!]]!
  }

gq16ag! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-[f[-@.66257038494x!-x]!]]!
  }

gq16ah {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+[f[-@.66257038494x!+x]!]]!
  }

gq16ah! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+[f[-@.66257038494x!+x]!]]!
  }

gq16ai {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!-[f[-@.66257038494x!+x]!]]!
  }

gq16ai! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!-[f[-@.66257038494x!+x]!]]!
  }

gq16aj {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+[f[-@iq2x!-x]!]]!
  }

gq16aj! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+[f[-@iq2x!-x]!]]!
  }

gq16ak {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+[f[-x!-x]!]]!
  }

gq16ak! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+[f[-x!-x]!]]!
  }

gq16al {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+[f[-x!-x]!]]!
  }

gq16al! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+[f[-x!-x]!]]!
  }

gq16am {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!---x++x]
  }

gq16am! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!---x++x]
  }

gq16an {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x+x]
  }

gq16an! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x+x]
  }

gq16ao {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!--------x+x]
  }

gq16ao! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!--------x+x]
  }

gq16ap {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!++x+x]
  }

gq16ap! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!++x+x]
  }

gq16aq {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-@i.66257038494x]
  }

gq16ar {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+@i.66257038494x]
  }

gq16as {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-@.66257038494x]
  }

gq16at {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+@.66257038494x]
  }

gq16at! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+@.66257038494x]
  }

gq16au {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

gq16av {  ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

gq16av! { ; Anthony Hanmer 2001
  Angle 16; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

gq18- {   ; Anthony Hanmer 2001
  Angle 18; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq18+ {   ; Anthony Hanmer 2001
  Angle 18; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq18-- {  ; Anthony Hanmer 2001
  Angle 18; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq18++ {  ; Anthony Hanmer 2001
  Angle 18; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq18+++ {  ; Anthony Hanmer 2001
  Angle 18; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq20- {   ; Anthony Hanmer 2001
  Angle 20; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq20+ {   ; Anthony Hanmer 2001
  Angle 20; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq20-- {  ; Anthony Hanmer 2001
  Angle 20; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq20++ {  ; Anthony Hanmer 2001
  Angle 20; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq20+++ {  ; Anthony Hanmer 2001
  Angle 20; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq22- {   ; Anthony Hanmer 2001
  Angle 22; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq22+ {   ; Anthony Hanmer 2001
  Angle 22; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq22-- {  ; Anthony Hanmer 2001
  Angle 22; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq22++ {  ; Anthony Hanmer 2001
  Angle 22; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq22+++ {  ; Anthony Hanmer 2001
  Angle 22; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq24- {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-x]
  }

gq24+ {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+x]
  }

gq24-- {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x-x]
  }

gq24++ {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x+x]
  }

gq24+++ { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+x]
  }

gq24a {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+x+x!+@.66257038494x+x+x]
  }

gq24a! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x+x!+@.66257038494x+x+x]
  }

gq24b {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+x+x!+@.66257038494x+x+x]!
  }

gq24b! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+x+x!+@.66257038494x+x+x]!
  }

gq24c {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x!+@.66257038494x!+x!]
  }

gq24c! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x!+@.66257038494x!+x!]
  }

gq24d {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x+[x]-[x]!+@.66257038494x+[x]-[x]!]
  }

gq24d! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x+[x]-[x]!+@.66257038494x+[x]-[x]!]
  }

gq24e {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+@.66257038494x]![++x]]
  }

gq24e! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[[+!@.66257038494x]![++x]]
  }

gq24f {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x-x+x!+@.66257038494x+x-x]
  }

gq24f! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x-x+x!+@.66257038494x+x-x]
  }

gq24g {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!]-x]
  }

gq24g! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!]-x]
  }

gq24h {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+@.66257038494x!]+x]
  }

gq24h! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=[f[+!@.66257038494x!]+x]
  }

gq24i {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!-x]-x]
  }

gq24i! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!-x]-x]
  }

gq24j {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!+x]+x]
  }

gq24j! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!+x]+x]
  }

gq24k {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!+x]-x]
  }

gq24k! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!+x]-x]
  }

gq24l {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!-x]+x]
  }

gq24l! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!-x]+x]
  }

gq24m {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!]--x]
  }

gq24m! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!]--x]
  }

gq24n {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!]++x]
  }

gq24n! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!]++x]
  }

gq24o {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!-x]--x]
  }

gq24o! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!-x]--x]
  }

gq24p {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!+x]++x]
  }

gq24p! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!+x]++x]
  }

gq24q {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!+x]--x]
  }

gq24q2 {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!++x]
  }

gq24q! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!+x]--x]
  }

gq24r {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+@.66257038494x!-x]++x]
  }

gq24r! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x
  x=[f[+!@.66257038494x!-x]++x]
  }

gq24s {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!--@.309016994x]!--x]!
  }

gq24s! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!--@.309016994x]!--x]!
  }

gq24t {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!++@.309016994x]!++x]!
  }

gq24t! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!++@.309016994x]!++x]!
  }

gq24u {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!+@.309016994x]!--x]!
  }

gq24u! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!+@.309016994x]!--x]!
  }

gq24v {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!-@.309016994x]!++x]!
  }

gq24v! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!-@.309016994x]!++x]!
  }

gq24w {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!--@.309016994x]!---x]!
  }

gq24w! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!--@.309016994x]!---x]!
  }

gq24x {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!++@.309016994x]!+++x]!
  }

gq24x! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!++@.309016994x]!+++x]!
  }

gq24y {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!+@.309016994x]!---x]!
  }

gq24y! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!+@.309016994x]!---x]!
  }

gq24z {   ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!-@.309016994x]!+++x]!
  }

gq24z! {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!-@.309016994x]!+++x]!
  }

gq24aa {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!--@.309016994x]!--x]
  }

gq24aa! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!--@.309016994x]!--x]
  }

gq24ab {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!++@.309016994x]!++x]
  }

gq24ab! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!++@.309016994x]!++x]
  }

gq24ac {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!+@.309016994x]!--x]
  }

gq24ac! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!+@.309016994x]!--x]
  }

gq24ad {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!-@.309016994x]!++x]
  }

gq24ad! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!-@.309016994x]!++x]
  }

gq24ae {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!--@.309016994x]!---x]
  }

gq24ae! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!--@.309016994x]!---x]
  }

gq24af {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!++@.309016994x]!+++x]
  }

gq24af! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!++@.309016994x]!+++x]
  }

gq24ag {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!+@.309016994x]!---x]
  }

gq24ag! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!+@.309016994x]!---x]
  }

gq24ah {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!-@.309016994x]!+++x]
  }

gq24ah! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!-@.309016994x]!+++x]
  }

gq24ai {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@iq2x!+[f[-x!-x]!]]!
  }

gq24ai! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@iq2x!+[f[-x!-x]!]]!
  }

gq24aj {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+[f[-x!-x]!]]!
  }

gq24aj! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+[f[-x!-x]!]]!
  }

gq24ak {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!---x++x]
  }

gq24ak! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!---x++x]
  }

gq24al {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+@.66257038494x!+x+x]
  }

gq24al! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series
  Axiom x
  x=f[+!@.66257038494x!+x+x]
  }

gq24am {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-@i.66257038494x]
  }

gq24an {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+@i.66257038494x]
  }

gq24an! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+@i.66257038494x]
  }

gq24ao {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!-@.66257038494x]
  }

gq24ap {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@.66257038494x!+@.66257038494x]
  }

gq24ap! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@.66257038494x!+@.66257038494x]
  }

gq24aq {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

gq24ar {  ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

gq24ar! { ; Anthony Hanmer 2001
  Angle 24; "Avg of Golden Ratio + iq2" plant series 
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

