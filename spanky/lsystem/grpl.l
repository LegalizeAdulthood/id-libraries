_README {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; A large series of L-systems based on the ratio
  x=f    ; 0.6180339887499..., the Golden Ratio or phi.
         ; This file is related to iq2pl.l, in which I have
         ; replaced all the phi with the average of phi and
         ; 1/sqrt2, 0.66257038494.
         ; If this series was changed to d-programming instead of f,
         ; the Angles could be changed by an arbitrarily small amount,
         ; resulting in smooth transitions from one to the next -
         ; and ANIMATIONS.
         ; Changing the ratio in the same way would give a different series
         ; of animations.  And combining these 2 sets of changes
         ; would result in a third series.
  }

pl03- {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl03+ {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl03-- {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl03++ {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl03--- {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]
  }

pl03+++ {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl03a {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]!
  }

pl03a! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]!
  }

pl03b {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]!
  }

pl03b! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]!
  }

pl03c {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]
  }

pl03c! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]
  }

pl03d {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]
  }

pl03e {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]
  }

pl03e! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x]
  }

pl03f {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]
  }

pl03f! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]
  }

pl03g {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!-x]
  }

pl03g!1 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!-x]
  }

pl03g!2 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f+!f[+!@.6180339887499x-x]
  }

pl03h {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!+x]
  }

pl03h!1 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f+f[+!@.6180339887499x!+x]
  }

pl03h!2 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!+x]
  }

pl03h!3 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f+!f[+!@.6180339887499x!+x]
  }

pl03h!4 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f+!f[+!@.6180339887499x+x]
  }

pl03i {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-f[+@.6180339887499x!-x]
  }

pl03i!1 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-f[+!@.6180339887499x!-x]
  }

pl03i!2 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x!-x]
  }

pl03i!3 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x-x]
  }

pl03j {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-f[+@.6180339887499x!+x]
  }

pl03j!1 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-f[+!@.6180339887499x!+x]
  }

pl03j!2 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-!f[+@.6180339887499x!+x]
  }

pl03j!3 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x!+x]
  }

pl03j!4 {; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x+x]
  }

pl03k {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]!
  }

pl03k! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]!
  }

pl03l {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]!
  }

pl03l! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!-@.6180339887499x]!
  }

pl03m {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]!
  }

pl03m! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]!
  }

pl03n {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[-@.6180339887499x!]
  }

pl03n! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[-@.6180339887499x!]
  }

pl03o {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[+@.6180339887499x!]
  }

pl03o! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[+@.6180339887499x!]
  }

pl03p {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[-@.6180339887499x!]
  }

pl03q {  ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[+@.6180339887499x!]
  }

pl03q! { ; Anthony Hanmer 2001
  Angle 3; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[+@.6180339887499x!]
  }

pl04_ {  ; Anthony Hanmer 2001
  Angle 4; 1st in Golden Ratio plant series
  Axiom f; original, needing speedup
  f=f[+@.615f!-f]
  }

pl04- {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series begins
  Axiom x; speedup
  x=f[+@.6180339887499x!-x]
  }

pl04+ {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl04-- {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series begins
  Axiom x;
  x=f[+!@.6180339887499x-x]
  }

pl04++ {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl04--- {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series begins
  Axiom x;
  x=f[+!@.6180339887499x!-x]
  }

pl04+++ {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl04-d1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; d-based
  x=d[\88@.6180339887499x!/92x]
  }

pl04-d2 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; d-based
  x=d[\88@.6180339887499x!/88x]
  }

pl04+d1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; d-based
  x=d[\88@.6180339887499x!\92x]
  }

pl04+d2 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; d-based
  x=d[\88@.6180339887499x!\88x]
  }

pl04a {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!--x]
  }

pl04a!1 { ; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom +x; sft
  x=f[+!@iq2x!--x]
  }

pl04a!2 { ; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom +x; sft, though boring
  x=f[+!@iq2x--x]
  }

pl04a!3 { ; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom +x; sft, better
  x=f[+!@.7x--x]
  }

pl04b {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]!
  }

pl04c {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]!
  }

pl04d {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; change ratio to iq2, =...
  x=f[+@.6180339887499x!--x]!
  ; adh1888, Pseudo-Twindragon Spacefilling Tree...
  }

pl04e {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]
  }

pl04e!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]
  }

pl04f {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]
  }

pl04g{   ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]
  }

pl04h {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]
  }

pl04i {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!-x]
  }

pl04i!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f+f[+!@.6180339887499x-x]
  }

pl04j {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!+x]
  }

pl04j!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f+f[+!@.6180339887499x!+x]
  }

pl04k {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f-f[+@.6180339887499x!-x]
  }

pl04k!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f-f[+!@.6180339887499x-x]
  }

pl04l {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom ++x
  x=f-f[+@.6180339887499x!+x]
  }

pl04l!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom ++x
  x=f-f[+!@.6180339887499x!+x]
  }

pl04m {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]!
  }

pl04m!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]
  }

pl04n {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]!
  }

pl04n!1 { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x!-@.6180339887499x]
  }

pl04o {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]!
  }

pl04o!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x]
  }

pl04p {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]!
  }

pl04p!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]
  }

pl04q {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[-@.6180339887499x!]
  }

pl04q!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[-!@.6180339887499x]
  }

pl04r {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[+@.6180339887499x!]
  }

pl04r!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[+!@.6180339887499x]
  }

pl04s {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[-@.6180339887499x!]
  }

pl04s!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[-!@.6180339887499x]
  }

pl04t {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom +x
  x=f[+@.6180339887499x]!f[+@.6180339887499x!]
  }

pl04t!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom +x
  x=f[+!@.6180339887499x]!f[+!@.6180339887499x]
  }

pl04u {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]+[@.6180339887499fx]]!
  }

pl04v {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]+f[@.6180339887499x]]!
  }

pl04w {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom +x;a spacefilling tree...
  x=f[+@iq2x!]f[-@iq2x!]
  }

pl04w!1 { ; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom +x; sft
  x=f[+!@iq2x!]f[-!@iq2x!]
  }

pl04w!2 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom +x
  x=f[+!@iq2x]f[-@iq2x!]
  }

pl04x {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; almost a spacefilling tree...
  x=f[+@.68x!]f[+@.68x!]
  }

pl04y {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; a spacefilling tree...
  x=f[+@iq2x]!f[-@iq2x!]
  }

pl04z {  ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+x+x!+@.6180339887499x+x+x]!
  }

pl04z!1 {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x+x!+@.6180339887499x+x+x]
  }

pl04aa { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x!+x!]
  }

pl04aa! {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x!+x!]
  }

pl04ab { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+[x]-[x]!+@.6180339887499x+[x]-[x]!]
  }

pl04ab! {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+[x]-[x]!+@.6180339887499x+[x]-[x]!]
  }

pl04ac { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+x+x!+@.6180339887499x+x-x]
  }

pl04ac! {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x+x!+@.6180339887499x+x-x]
  }

pl04ad { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!x]
  }

pl04ad!1 {; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!x]
  }

pl04ad!2 {; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!x]
  }

pl04ae { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; GR is too big, @.5 too small:
  x=f[+@.559x!x] ; average them to @.559
  }

pl04ae! {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; GR is too big, @.5 too small:
  x=f[+!@.559x!x] ; average them to @.559
  }

pl04af { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!+x]
  }

pl04ag { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+@.6180339887499x!!-x]
  }

pl04ag! {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+!@.6180339887499x!!-x]
  }

pl04ah { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+@.6180339887499x!-@1.6180339887499x]
  }

pl04ah! {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+!@.6180339887499x!-@1.6180339887499x]
  }

pl04ai { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@1.6180339887499x]
  }

pl04ai! {; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x; sft w/time-delayed holes
  x=f[+!@iq2x!+@q2x]
  }

pl04aj { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+@iq2x!-@iq2x]
  }

pl04ak { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

pl04ak { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

pl04al { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+@.6180339887499x[@.5f]!-x]
  }

pl04am { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+@.6180339887499x!-x[@.5f]]
  }

pl04an { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+@.6180339887499x[@.5f]!+x]
  }

pl04ao { ; Anthony Hanmer 2001
  Angle 4; Golden Ratio plant series
  Axiom x;
  x=f[+@.6180339887499x!+x[@.5f]]
  }

pl04ap {  ; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom +x;
  x=f[+!@iq2x[@iq2f]!--x]
  }

pl04aq {  ; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom +x;
  x=f[+!@iq2x!--[@.5f]x]
  }

pl04ar {  ; Anthony Hanmer 2001
  Angle 4 ; Golden Ratio plant series
  Axiom +x;
  x=f[+!@iq2x!--x[+!@iq2f]]
  }

pl05- {  ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl05+ {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl05-- {  ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl05++ {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl05+++ {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl05a {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!--x]
  }

pl05a! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!--x]
  }

pl05b {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x]
  }

pl05b!1 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x++x]
  }

pl05b!2 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x]
  }

pl05c {  ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]!
  }

pl05c! { ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]!
  }

pl05d {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]!
  }

pl05d! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]!
  }

pl05e {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!--x]!
  }

pl05e! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!--x]!
  }

pl05f {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x]!
  }

pl05f! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x]!
  }

pl05g {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]
  }

pl05g! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]
  }

pl05h {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]
  }

pl05i {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]
  }

pl05i! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x]
  }

pl05j {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]
  }

pl05j! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]
  }

pl05k {  ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!-x]
  }

pl05k! {  ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!-x]
  }

pl05l {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!+x]
  }

pl05l! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!+x]
  }

pl05m {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!--x]
  }

pl05n {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!++x]
  }

pl05n! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!++x]
  }

pl05o {  ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!-x]!
  }

pl05o! { ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!-x]!
  }

pl05p {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!+x]!
  }

pl05p! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!+x]!
  }

pl05q {  ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!--x]!
  }

pl05q! { ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!--x]!
  }

pl05r {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!++x]!
  }

pl05r! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!++x]!
  }

pl05s {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!-x]
  }

pl05s!1 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f+f[+!@.6180339887499x!-x]
  }

pl05s!2 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!-x]
  }

pl05t {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!+x]
  }

pl05t!1 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f+f[+!@.6180339887499x!+x]
  }

pl05t!2 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!+x]
  }

pl05t!3 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f+!f[+!@.6180339887499x!+x]
  }

pl05u {  ;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f-f[+@.6180339887499x!-x]
  }

pl05u!1 {;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f-f[+!@.6180339887499x!-x]
  }

pl05u!2 {;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f-!f[+@.6180339887499x!-x]
  }

pl05u!3 {;Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x!-x]
  }

pl05v!1 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f-f[+!@.6180339887499x!+x]
  }

pl05v!2 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f-!f[+@.6180339887499x!+x]
  }

pl05v!3 {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x!+x]
  }

pl05w {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]!
  }

pl05w! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]!
  }

pl05x {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]!
  }

pl05x! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!-@.6180339887499x]!
  }

pl05y {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]!
  }

pl05y! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x]!
  }

pl05z {  ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]!
  }

pl05z! { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]!
  }

pl05aa { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[-@.6180339887499x!]
  }

pl05aa!1 {; Anthony Hanmer 2001
  Angle  5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[-!@.6180339887499x!]
  }

pl05aa!2 {; Anthony Hanmer 2001
  Angle  5; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[-@.6180339887499x!]
  }

pl05ab { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[+@.6180339887499x!]
  }

pl05ab!1 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[+!@.6180339887499x!]
  }

pl05ab!2 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[+@.6180339887499x!]
  }

pl05ac {  ; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[-!@.6180339887499x!]
  }

pl05ac!1 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[-!@.6180339887499x!]
  }

pl05ad { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[+@.6180339887499x!]
  }

pl05ad!1 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[+@.6180339887499x!]
  }

pl05ad!2 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[+@.6180339887499x!]
  }

pl05ae { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[--@.6180339887499x!]
  }

pl05ae!1 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[--!@.6180339887499x!]
  }

pl05ae!2 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[--@.6180339887499x!]
  }

pl05af { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[++@.6180339887499x!]
  }

pl05af!1 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[++!@.6180339887499x!]
  }

pl05af!2 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[++@.6180339887499x!]
  }

pl05ag { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[--@.6180339887499x!]
  }

pl05ag!1 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[--@.6180339887499x!]
  }

pl05ah { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[++@.6180339887499x!]
  }

pl05ai { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!]f[--@.6180339887499x!]
  }

pl05ai!1 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!]f[--!@.6180339887499x!]
  }

pl05aj { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!]f[++@.6180339887499x!]
  }

pl05aj!1 {; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!]f[++!@.6180339887499x!]
  }

pl05ak { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x]!f[--@.6180339887499x!]
  }

pl05ak! { ; Anthony Hanmer 2001
  Angle 5 ; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x]!f[--!@.6180339887499x!]
  }

pl05al { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x]!f[++@.6180339887499x!]
  }

pl05al! {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x]!f[++!@.6180339887499x!]
  }

pl05am { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]+[@.6180339887499fx]]!
  }

pl05am! {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]+![@.6180339887499fx]]!
  }

pl05an { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]++[@.6180339887499fx]]!
  }

pl05an! {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]++![@.6180339887499fx]]!
  }

pl05ao { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]+f[@.6180339887499x]]!
  }

pl05ao! {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]+!f[@.6180339887499x]]!
  }

pl05ap { ; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]++f[@.6180339887499x]]!
  }

pl05ap! {; Anthony Hanmer 2001
  Angle 5; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]++!f[@.6180339887499x]]!
  }

pl06- {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl06+ {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl06-- {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl06++ {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl06+++ {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl06a {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!--x]
  }

pl06a! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!--x]
  }

pl06b {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x]
  }

pl06b! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x]
  }

pl06c {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]!
  }

pl06c! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]!
  }

pl06d {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]!
  }

pl06e {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!--x]!
  }

pl06e! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!--x]!
  }

pl06f {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x]!
  }

pl06f! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x]!
  }

pl06g {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]
  }

pl06g! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]
  }

pl06h {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]
  }

pl06i {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]
  }

pl06i! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x]
  }

pl06j {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]
  }

pl06j! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]
  }

pl06k {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!---x]
  }

pl06k!1 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!---x]
  }

pl06k!2 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!---x]
  }

pl06l {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!---x]
  }

pl06l! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!---x]
  }

pl06m {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!---x]!
  }

pl06m! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!---x]!
  }

pl06n {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!---x]!
  }

pl06n!1 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!---x]!
  }

pl06n!2 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[++!@.7x!---x]!
  }

pl06o {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!-x]
  }

pl06o!1 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!-x]
  }

pl06o!2 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f+!f[+!@.6180339887499x-x]
  }

pl06p {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!+x]
  }

pl06p!1 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f+f[+!@.6180339887499x!+x]
  }

pl06p!2 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!+x]
  }

pl06p!3 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f+!f[+!@.6180339887499x!+x]
  }

pl06p!4 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f+!f[+!@.6180339887499x+x]
  }

pl06q {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-f[+@.6180339887499x!-x]
  }

pl06q!1 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-!f[+@.6180339887499x!-x]
  }

pl06q!2 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x!-x]
  }

pl06q!2 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x-x]
  }

pl06r {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-f[+@.6180339887499x!+x]
  }

pl06r!1 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-f[+!@.6180339887499x!+x]
  }

pl06r!2 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-!f[+@.6180339887499x!+x]
  }

pl06r!3 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x!+x]
  }

pl06r!4 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x+x]
  }

pl06s {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]!
  }

pl06s! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]!
  }

pl06t {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]!
  }

pl06t! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!-@.6180339887499x]!
  }

pl06u {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]!
  }

pl06u! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x]!
  }

pl06v {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]!
  }

pl06v! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]!
  }

pl06w {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[-@.6180339887499x!]
  }

pl06w! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[-@.6180339887499x!]
  }

pl06x {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[+@.6180339887499x!]
  }

pl06x! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[+@.6180339887499x!]
  }

pl06y {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[-@.6180339887499x!]
  }

pl06z {  ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[+@.6180339887499x!]
  }

pl06z! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[+@.6180339887499x!]
  }

pl06aa { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[--@.6180339887499x!]
  }

pl06aa!1 {; Anthony Hanmer 2001
  Angle 6 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[--!@.6180339887499x!]
  }

pl06aa!2 {; Anthony Hanmer 2001
  Angle 6 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]f[--@.6180339887499x!]
  }

pl06ab { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[++@.6180339887499x!]
  }

pl06ab!1 {; Anthony Hanmer 2001
  Angle 6 ; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[++!@.6180339887499x!]
  }

pl06ac { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[--@.6180339887499x!]
  }

pl06ad { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[++@.6180339887499x!]
  }

pl06ad! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[++@.6180339887499x!]
  }

pl06ae { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!]f[+++@.6180339887499x!]
  }

pl06ae!1 {; Anthony Hanmer 2001
  Angle 6 ; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x]f[+++@.6180339887499x!]
  }

pl06af { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x]!f[---@.6180339887499x!]
  }

pl06af! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x]!f[---@.6180339887499x!]
  }

pl06ag { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]+[@.6180339887499fx]]!
  }

pl06ah { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]++[@.6180339887499fx]]!
  }

pl06ah1 {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]++![@.6180339887499fx]]!
  }

pl06ai { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]+f[@.6180339887499x]]!
  }

pl06aj { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]++f[@.6180339887499x]]!
  }

pl06ak { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+x+x!+@.6180339887499x+x+x]!
  }

pl06ak! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x+x!+@.6180339887499x+x+x]!
  }

pl06al { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x!+x!]
  }

pl06al! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x!+x!]
  }

pl06am { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+[x]-[x]!+@.6180339887499x+[x]-[x]!]
  }

pl06am! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+[x]-[x]!+@.6180339887499x+[x]-[x]!]
  }

pl06an { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[[+@.6180339887499x]![++x]]
  }

pl06an! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[[+!@.6180339887499x]![++x]]
  }

pl06ao { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!+x]
  }

pl06ao! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!+!x]
  }

pl06ap { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!++x]
  }

pl06ap! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!++!x]
  }

pl06aq { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!---x++x]
  }

pl06aq! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!---x++x]
  }

pl06ar { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x+x]
  }

pl06ar! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x+x]
  }

pl06as { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!---x]++x
  }

pl06as! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!---x]++x
  }

pl06at { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]+x
  }

pl06au { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-@1.6180339887499x]
  }

pl06au! { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-@1.6180339887499x]
  }

pl06av { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@1.6180339887499x]
  }

pl06av! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@1.6180339887499x]
  }

pl06aw { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

pl06ax { ; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

pl06ax! {; Anthony Hanmer 2001
  Angle 6; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

pl08 {   ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-!x]!
  }

pl08- {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl08+ {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl08-- {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl08++ {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl08+++ {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl08-c1 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x; colour 1
  x=f[+@.6180339887499>1x!-x]
  }

pl08+c1 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x; colour 1
  x=f[+@.6180339887499>1x!+x]
  }

pl08-c2 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x; colour 2
  x=f[+@.6180339887499>1x!->1x]
  }

pl08+c2 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x; colour 2
  x=f[+@.6180339887499>1x!+>1x]
  }

pl08-c3 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x; colour 3
  x=f[+@.6180339887499>1x!-<1x]
  }

pl08+c3 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x; colour 3
  x=f[+@.6180339887499>1x!+<1x]
  }

pl08a {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!-x]
  }

pl08a! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!-x]
  }

pl08b {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!---x]
  }

pl08c {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!+++x]
  }

pl08c! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!+++x]
  }

pl08d {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]
  }

pl08d! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]
  }

pl08e {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]
  }

pl08f {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]
  }

pl08f! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x]
  }

pl08g {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]
  }

pl08g! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]
  }

pl08h {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!-@.6180339887499x]
  }

pl08h! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!-@.6180339887499x]
  }

pl08i {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499gx!-gx]
  }

pl08j {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499gx!+gx]
  }

pl08j! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499gx!+gx]
  }

pl08k {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=fg[+@.6180339887499x!-x]
  }

pl08l {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=fg[+@.6180339887499x!+x]
  }

pl08l! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=fg[+!@.6180339887499x!+x]
  }

pl08m {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!--x]
  }

pl08m! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!--x]
  }

pl08n {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!++x]
  }

pl08n! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!++x]
  }

pl08o {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!--x]
  }

pl08o! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!--x]
  }

pl08p {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x]
  }

pl08p! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x]
  }

pl08pq { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!++x]
  }

pl08q {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!+x]
  }

pl08q! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!+x]
  }

pl08r {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-----x]
  }

pl08s {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++x]
  }

pl08s! { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++++x]
  }

pl08t {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++f[+@.6180339887499x!-x]
  }

pl08t!1 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++!f[+@.6180339887499x!-x]
  }

pl08t!2 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++!f[+!@.6180339887499x!-x]
  }

pl08u {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++f[+@.6180339887499x!+x]
  }

pl08u!1 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++f[+!@.6180339887499x!+x]
  }

pl08u!2 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++!f[+@.6180339887499x!+x]
  }

pl08u!3 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++!f[+!@.6180339887499x!+x]
  }

pl08v {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!-x]
  }

pl08v!1 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!-x]
  }

pl08w {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!+x]
  }

pl08w!1 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f+f[+!@.6180339887499x!+x]
  }

pl08w!2 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!+x]
  }

pl08w!3 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f+!f[+!@.6180339887499x!+x]
  }

pl08x {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f-f[+@.6180339887499x!-x]
  }

pl08x!1 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f-!f[+@.6180339887499x!-x]
  }

pl08x!2 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x!-x]
  }

pl08z {  ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++++x
  x=f--f[+@.6180339887499x!-x]
  }

pl08z!1 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++++x
  x=f--!f[+@.6180339887499x!-x]
  }

pl08z!2 {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++++x
  x=f--!f[+!@.6180339887499x!-x]
  }

pl08aa { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++++x
  x=f--f[+@.6180339887499x!+x]
  }

pl08aa!1 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom ++++x
  x=f--!f[+@.6180339887499x!+x]
  }

pl08aa!2 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom ++++x
  x=f--!f[+!@.6180339887499x!+x]
  }

pl08ab { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]+f
  }

pl08ab! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]+f
  }

pl08ac { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]+f
  }

pl08ac! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]+f
  }

pl08ad { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]-f
  }

pl08ad! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]-f
  }

pl08ae { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]-f
  }

pl08ae! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]-f
  }

pl08af { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]++f
  }

pl08af! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]++f
  }

pl08ag { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]++f
  }

pl08ag! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]++f
  }

pl08ah { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]+g
  }

pl08ah! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]+g
  }

pl08ai { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]+g
  }

pl08ai! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]+g
  }

pl08aj { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]-g
  }

pl08aj! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]-g
  }

pl08ak { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]-g
  }

pl08ak! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]-g
  }

pl08al { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]!
  }

pl08al! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x]!
  }

pl08am { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]!
  }

pl08an { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!-x]!
  }

pl08an! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!-x]!
  }

pl08ao { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!---x]!
  }

pl08ao! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!---x]!
  }

pl08ap { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!+++x]!
  }

pl08ap! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!+++x]!
  }

pl08aq { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]!
  }

pl08aq! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x-@.6180339887499x]!
  }

pl08ar { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]!
  }

pl08ar! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!-@.6180339887499x]!
  }

pl08as { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]!
  }

pl08as! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x]!
  }

pl08at { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]!
  }

pl08at! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-x!+@.6180339887499x]!
  }

pl08au { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!-@.6180339887499x]!
  }

pl08au! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!-@.6180339887499x]!
  }

pl08av { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!--x]!
  }

pl08av! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!--x]!
  }

pl08aw { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!++x]!
  }

pl08aw! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!++x]!
  }

pl08ax { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!--x]!
  }

pl08ax! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!--x]!
  }

pl08ay { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x]!
  }

pl08ay! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x]!
  }

pl08az { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++@.6180339887499x!+x]!
  }

pl08az! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+++!@.6180339887499x!+x]!
  }

pl08ba { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-----x]!
  }

pl08ba! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-----x]!
  }

pl08bb { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++x]!
  }

pl08bb! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++++x]!
  }

pl08bc { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++f[+@.6180339887499x!-x]!
  }

pl08bc!1 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom x
  x=f++!f[+@.6180339887499x!-x]!
  }

pl08bd { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f++f[+@.6180339887499x!+x]!
  }

pl08be { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!-x]!
  }

pl08be!1 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom x
  x=f+!f[+@.6180339887499x!-x]!
  }

pl08bf { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f+f[+@.6180339887499x!+x]!
  }

pl08bg { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++++x
  x=f-f[+@.6180339887499x!-x]!
  }

pl08bg!1 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom ++++x
  x=f-!f[+@.6180339887499x!-x]!
  }

pl08bg!2 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom ++++x
  x=f-!f[+!@.6180339887499x!-x]!
  }

pl08bh { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f-f[+@.6180339887499x!+x]!
  }

pl08bh!1 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom x
  x=f-!f[+!@.6180339887499x!+x]!
  }

pl08bi { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++++x
  x=f--f[+@.6180339887499x!-x]!
  }

pl08bi!1 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom ++++x
  x=f--!f[+@.6180339887499x!-x]!
  }

pl08bi!2 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom ++++x
  x=f--!f[+!@.6180339887499x!-x]!
  }

pl08bj { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++++x
  x=f--f[+@.6180339887499x!+x]!
  }

pl08bj!1 {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom ++++x
  x=f--!f[+!@.6180339887499x!+x]!
  }

pl08bk { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x-@.6180339887499x]!
  }

pl08bl { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!-@.6180339887499x]!
  }

pl08bm { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x]!
  }

pl08bn { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x!+@.6180339887499x]!
  }

pl08bo { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!-@.6180339887499x]!
  }

pl08bp { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[-@.6180339887499x!]
  }

pl08bp! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[-@.6180339887499x!]
  }

pl08bq { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[+@.6180339887499x!]
  }

pl08bq! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[+@.6180339887499x!]
  }

pl08br { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[-@.6180339887499x!]
  }

pl08bs { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[+@.6180339887499x!]
  }

pl08bs! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[+@.6180339887499x!]
  }

pl08bt { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[--@.6180339887499x!]
  }

pl08bt! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[--@.6180339887499x!]
  }

pl08bu { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]f[++@.6180339887499x!]
  }

pl08bu! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]f[++@.6180339887499x!]
  }

pl08bv { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[--@.6180339887499x!]
  }

pl08bv! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[--@.6180339887499x!]
  }

pl08bw { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x]!f[++@.6180339887499x!]
  }

pl08bw! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x]!f[++@.6180339887499x!]
  }

pl08bx { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!]f[---@.6180339887499x!]
  }

pl08bx! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!]f[---@.6180339887499x!]
  }

pl08by { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x!]f[+++@.6180339887499x!]
  }

pl08by! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x!]f[+++@.6180339887499x!]
  }

pl08bz { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[++@.6180339887499x]!f[---@.6180339887499x!]
  }

pl08bz! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[++!@.6180339887499x]!f[---@.6180339887499x!]
  }

pl08ca { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++x
  x=f[++@.6180339887499x]!f[+++@.6180339887499x!]
  }

pl08ca! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom ++x
  x=f[++!@.6180339887499x]!f[+++@.6180339887499x!]
  }

pl08cb { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]+[@.6180339887499fx]]!
  }

pl08cc { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]++[@.6180339887499fx]]!
  }

pl08cd { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[[@.6180339887499fx]+++[@.6180339887499fx]]!
  }

pl08ce { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]+f[@.6180339887499x]]!
  }

pl08cf { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]+++f[@.6180339887499x]]!
  }

pl08cg { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[[@.6180339887499x]+++++f[@.6180339887499x]]!
  }

pl08ch { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499f-x++f!-x]
  }

pl08ch! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499f-x++f!-x]
  }

pl08ci { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499f+x--f!+x]
  }

pl08ci! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499f+x--f!+x]
  }

pl08cj { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499fx!--f+x]
  }

pl08ck { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499fx!+f+x]
  }

pl08ck! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499fx!+f+x]
  }

pl08cl { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499fx!--f++x]
  }

pl08cl! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499fx!--f++x]
  }

pl08cm { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+@.6180339887499x!]-x]
  }

pl08cn { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+@.6180339887499x!]+x]
  }

pl08co { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+@iq2x!]-x]
  }

pl08cp { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+@.6180339887499x!]--x]
  }

pl08cp! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+!@.6180339887499x!]--x]
  }

pl08cq { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+@.6180339887499x!]++x]
  }

pl08cq! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+!@.6180339887499x!]++x]
  }

pl08cr { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!x]
  }

pl08cr! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!x]
  }

pl08cs { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+@.5x!]+x]
  }

pl08cs! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=[f[+!@.5x!]+x]
  }

pl08ct { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-[f[-@.6180339887499x!-x]]]
  }

pl08ct! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-[f[-@.6180339887499x!-x]]]
  }

pl08cu { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+[f[-@.6180339887499x!+x]]]
  }

pl08cu! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+[f[-@.6180339887499x!+x]]]
  }

pl08cv { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-[f[-@.6180339887499x!+x]]]
  }

pl08cv! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-[f[-@.6180339887499x!+x]]]
  }

pl08cw { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+[f[-@iq2x!-x]]]
  }

pl08cw! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+[f[-@iq2x!-x]]]
  }

pl08cx { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-[f[-@.6180339887499x!-x]!]]!
  }

pl08cx! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-[f[-@.6180339887499x!-x]!]]!
  }

pl08cy { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+[f[-@.6180339887499x!+x]!]]!
  }

pl08cy! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+[f[-@.6180339887499x!+x]!]]!
  }

pl08cz { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-[f[-@.6180339887499x!+x]!]]!
  }

pl08cz! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-[f[-@.6180339887499x!+x]!]]!
  }

pl08da { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+[f[-@iq2x!-x]!]]!
  }

pl08da! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+[f[-@iq2x!-x]!]]!
  }

pl08db { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+[f[-x!-x]!]]!
  }

pl08db! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+[f[-x!-x]!]]!
  }

pl08dc { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!---x++x]
  }

pl08dc! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!---x++x]
  }

pl08dd { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x+x]
  }

pl08dd! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x+x]
  }

pl08de { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!----x++x]
  }

pl08de! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!----x++x]
  }

pl08df { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!----x+x]
  }

pl08df! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!----x+x]
  }

pl08dg { ; Anthony Hanmer 2000
  Angle 8; Golden Ratio plant series
  Axiom f
  f=f+[@.6180339887499f]!
  }

pl08dg! {; Anthony Hanmer 2000
  Angle 8; Golden Ratio plant series
  Axiom f
  f=f+![@.6180339887499f]!
  }

pl08dh { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!!-x]
  }

pl08dh! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!!-x]
  }

pl08di { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!!+x]
  }

pl08dj { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-@1.6180339887499x]
  }

pl08dk { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@1.6180339887499x]
  }

pl08dk! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@1.6180339887499x]
  }

pl08dl { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

pl08dm { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

pl08dm! {; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

pl08dn { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x[@.5f]-!x]!
  }

pl08do { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x[+!@.5f]-!x]!
  }

pl08dp { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-![@.5f]x]!
  }

pl08dq { ; Anthony Hanmer 2001
  Angle 8; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-!x[+!@.5f]]!
  }

pl08dr { ; Anthony Hanmer 12/2001
  Angle 8; Golden Ratio plant series
  Axiom f
  f=f[+!@.6180339887499f-!f]!
  f=f++f|f++f
  }

pl08ds { ; Anthony Hanmer 12/2001
  Angle 8; Golden Ratio plant series
  Axiom f
  f=f[+!@.6180339887499f-!f]!
  f=f++f|f++ff
  }

pl08iq2- {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!-x]
  }

pl08iq2+ {; Anthony Hanmer 2001
  Angle 8 ; Golden Ratio plant series
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!+x]
  }

pl10- {   ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl10+ {   ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl10-- {   ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl10++ {   ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl10+++ {   ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl10a {   ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++x]
  }

pl10a! {  ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++x]
  }

pl10b {   ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++++x]
  }

pl10c {   ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++++x]
  }

pl10c! {  ; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++++++x]
  }

pl10iq2- {; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!-x]
  }

pl10iq2+ {; Anthony Hanmer 2001
  Angle 10; Golden Ratio plant series
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!+x]
  }

pl12- {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl12+ {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl12-- {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl12++ {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl12+++ {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl12a {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++x]
  }

pl12b {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++++x]
  }

pl12b! {  ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++++++x]
  }

pl12c {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-@1.6180339887499x]
  }

pl12d {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@1.6180339887499x]
  }

pl12e {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

pl12f {   ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

pl12f! {  ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

pl12q  {  ; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!++x]
  }

pl12iq2- {; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!-x]
  }

pl12iq2+ {; Anthony Hanmer 2001
  Angle 12; Golden Ratio plant series
  Axiom x ; overlap by enlarging ratio
  x=f[+@iq2x!+x]
  }

pl14- {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl14+ {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl14-- {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl14++ {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl14+++ {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl14a {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x]
  }

pl14a! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x]
  }

pl14b {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++x]
  }

pl14b! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++x]
  }

pl14c {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++++x]
  }

pl14c! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++++x]
  }

pl14d {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++x]
  }

pl14d! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++++x]
  }

pl14e {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++++++x]
  }

pl14f {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++++++++x]
  }

pl14f! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++++++++x]
  }

pl14g {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++++++x]
  }

pl14g! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++++++++x]
  }

pl14h {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++++++++++x]
  }

pl14h! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++++++++++x]
  }

pl14i {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++++++++x]
  }

pl14i! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+++++++++++x]
  }

pl14j {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++++++++++++x]
  }

pl14j! {  ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++++++++++++x]
  }

pl14k {   ; Anthony Hanmer 2001
  Angle 14; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+++++++++++++x]
  }

pl16- {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl16+ {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl16-- {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl16++ {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl16+++ {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl16a {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x+@.6180339887499x]
  }

pl16a! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x+@.6180339887499x]
  }

pl16b {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x+@.6180339887499x+@.6180339887499x]
  }

pl16b! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x+@.6180339887499x+@.6180339887499x]
  }

pl16c {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+@.6180339887499x!+x+@.6180339887499x]
  }

pl16c! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+@.6180339887499x!+x+@.6180339887499x]
  }

pl16d {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@.6180339887499x!+x+@.6180339887499x+@.6180339887499x]
  }

pl16d! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@.6180339887499x!+x+@.6180339887499x+@.6180339887499x]
  }

pl16e {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@.6180339887499x!+x+@.6180339887499x!+@.6180339887499x]
  }

pl16e! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@.6180339887499x!+x+@.6180339887499x!+@.6180339887499x]
  }

pl16f {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@.6180339887499x!+x+@.6180339887499x!+@.6180339887499x!]
  }

pl16f! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@.6180339887499x!+x+@.6180339887499x!+@.6180339887499x!]
  }

pl16g {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+@.6180339887499x!+x+@.6180339887499x!+@.6180339887499x]!
  }

pl16g! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+@.6180339887499x!+x+@.6180339887499x!+@.6180339887499x]!
  }

pl16h {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@.6180339887499x!+x+@.6180339887499x!+@.6180339887499x!]!
  }

pl16h! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@.6180339887499x!+x+@.6180339887499x!+@.6180339887499x!]!
  }

pl16i {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]+f[@.6180339887499x!]+f[@.6180339887499x!]+f[@.6180339887499x!]
  }

pl16i! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]+f[@.6180339887499x!]+f[@.6180339887499x!]+f[@.6180339887499x!]
  }

pl16j {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@.6180339887499x]
  }

pl16j! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@.6180339887499x]
  }

pl16k {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!]-f[@.6180339887499x!]+f[@.6180339887499x!]-f[@.6180339887499x!]
  }

pl16k! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!]-f[@.6180339887499x!]+f[@.6180339887499x!]-f[@.6180339887499x!]
  }

pl16l {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+x!+@.6180339887499x]
  }

pl16l! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x!+@.6180339887499x]
  }

pl16m {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+x+x!+@.6180339887499x+x+x]
  }

pl16m! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x+x!+@.6180339887499x+x+x]
  }

pl16n {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+x+x!+@.6180339887499x+x+x]!
  }

pl16n! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x+x!+@.6180339887499x+x+x]!
  }

pl16o {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x!+x!]
  }

pl16o! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x!+x!]
  }

pl16p {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x+@.6180339887499x!++x]
  }

pl16p! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x+@.6180339887499x!++x]
  }

pl16q {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+[x]!+@.6180339887499x+[x]!]
  }

pl16q2  { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!++x]
  }

pl16q! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+[x]!+@.6180339887499x+[x]!]
  }

pl16r {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x[+x][+x]!+@.6180339887499x[+x][+x]!]
  }

pl16r! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x[+x][+x]!+@.6180339887499x[+x][+x]!]
  }

pl16s {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+[x]-[x]!+@.6180339887499x+[x]-[x]!]
  }

pl16s! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+[x]-[x]!+@.6180339887499x+[x]-[x]!]
  }

pl16t {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+@.6180339887499x]![+@.6180339887499x]]
  }

pl16t! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+!@.6180339887499x]![+@.6180339887499x]]
  }

pl16u {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+@.6180339887499x]![++@.6180339887499x]]
  }

pl16u! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+!@.6180339887499x]![++@.6180339887499x]]
  }

pl16v {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+@.6180339887499x]![+x]]
  }

pl16v! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+!@.6180339887499x]![+x]]
  }

pl16w {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+@.6180339887499x]![++x]]
  }

pl16w! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+!@.6180339887499x]![++x]]
  }

pl16x {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+@iq2x]![+x]]
  }

pl16x! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+!@iq2x]![+x]]
  }

pl16y {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+@.8x]![+x]]
  }

pl16y! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[[+!@.8x]![+x]]
  }

pl16z {   ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x-x+x!+@.6180339887499x+x-x]
  }

pl16z! {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x+x!+@.6180339887499x+x-x]
  }

pl16aa {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom ++++x
  x=[f[+@.6180339887499x!]-x]
  }

pl16ab {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=[f[+@.6180339887499x!]+x]
  }

pl16ab! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=[f[+!@.6180339887499x!]+x]
  }

pl16ac {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-[f[-@.6180339887499x!-x]]]
  }

pl16ac! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-[f[-@.6180339887499x!-x]]]
  }

pl16ad {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+[f[-@.6180339887499x!+x]]]
  }

pl16ad! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+[f[-@.6180339887499x!+x]]]
  }

pl16ae {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-[f[-@.6180339887499x!+x]]]
  }

pl16ae! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-[f[-@.6180339887499x!+x]]]
  }

pl16af {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+[f[-@iq2x!-x]]]
  }

pl16af! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+[f[-@iq2x!-x]]]
  }

pl16ag {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-[f[-@.6180339887499x!-x]!]]!
  }

pl16ag! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-[f[-@.6180339887499x!-x]!]]!
  }

pl16ah {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+[f[-@.6180339887499x!+x]!]]!
  }

pl16ah! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+[f[-@.6180339887499x!+x]!]]!
  }

pl16ai {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-[f[-@.6180339887499x!+x]!]]!
  }

pl16ai! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!-[f[-@.6180339887499x!+x]!]]!
  }

pl16aj {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+[f[-@iq2x!-x]!]]!
  }

pl16aj! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+[f[-@iq2x!-x]!]]!
  }

pl16ak {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+[f[-x!-x]!]]!
  }

pl16ak! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+[f[-x!-x]!]]!
  }

pl16al {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+[f[-x!-x]!]]!
  }

pl16al! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+[f[-x!-x]!]]!
  }

pl16am {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!---x++x]
  }

pl16am! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!---x++x]
  }

pl16an {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x+x]
  }

pl16an! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x+x]
  }

pl16ao {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!--------x+x]
  }

pl16ao! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!--------x+x]
  }

pl16ap {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!++x+x]
  }

pl16ap! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!++x+x]
  }

pl16aq {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-@1.6180339887499x]
  }

pl16ar {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@1.6180339887499x]
  }

pl16as {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-@.6180339887499x]
  }

pl16at {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@.6180339887499x]
  }

pl16at! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@.6180339887499x]
  }

pl16au {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

pl16av {  ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

pl16av! { ; Anthony Hanmer 2001
  Angle 16; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

pl18- {   ; Anthony Hanmer 2001
  Angle 18; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl18+ {   ; Anthony Hanmer 2001
  Angle 18; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl18-- {  ; Anthony Hanmer 2001
  Angle 18; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl18++ {  ; Anthony Hanmer 2001
  Angle 18; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl18+++ {  ; Anthony Hanmer 2001
  Angle 18; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl20- {   ; Anthony Hanmer 2001
  Angle 20; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl20+ {   ; Anthony Hanmer 2001
  Angle 20; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl20-- {  ; Anthony Hanmer 2001
  Angle 20; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl20++ {  ; Anthony Hanmer 2001
  Angle 20; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl20+++ {  ; Anthony Hanmer 2001
  Angle 20; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl22- {   ; Anthony Hanmer 2001
  Angle 22; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl22+ {   ; Anthony Hanmer 2001
  Angle 22; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl22-- {  ; Anthony Hanmer 2001
  Angle 22; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl22++ {  ; Anthony Hanmer 2001
  Angle 22; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl22+++ {  ; Anthony Hanmer 2001
  Angle 22; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl24- {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-x]
  }

pl24+ {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x]
  }

pl24-- {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x]
  }

pl24++ {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x]
  }

pl24+++ { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x]
  }

pl24a {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+x+x!+@.6180339887499x+x+x]
  }

pl24a! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x+x!+@.6180339887499x+x+x]
  }

pl24b {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+x+x!+@.6180339887499x+x+x]!
  }

pl24b! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+x+x!+@.6180339887499x+x+x]!
  }

pl24c {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x!+@.6180339887499x!+x!]
  }

pl24c! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x!+@.6180339887499x!+x!]
  }

pl24d {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x+[x]-[x]!+@.6180339887499x+[x]-[x]!]
  }

pl24d! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x+[x]-[x]!+@.6180339887499x+[x]-[x]!]
  }

pl24e {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[[+@.6180339887499x]![++x]]
  }

pl24e! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[[+!@.6180339887499x]![++x]]
  }

pl24f {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x-x+x!+@.6180339887499x+x-x]
  }

pl24f! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x-x+x!+@.6180339887499x+x-x]
  }

pl24g {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!]-x]
  }

pl24g! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!]-x]
  }

pl24h {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=[f[+@.6180339887499x!]+x]
  }

pl24h! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=[f[+!@.6180339887499x!]+x]
  }

pl24i {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!-x]-x]
  }

pl24i! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!-x]-x]
  }

pl24j {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!+x]+x]
  }

pl24j! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!+x]+x]
  }

pl24k {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!+x]-x]
  }

pl24k! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!+x]-x]
  }

pl24l {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!-x]+x]
  }

pl24l! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!-x]+x]
  }

pl24m {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!]--x]
  }

pl24m! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!]--x]
  }

pl24n {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!]++x]
  }

pl24n! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!]++x]
  }

pl24o {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!-x]--x]
  }

pl24o! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!-x]--x]
  }

pl24p {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!+x]++x]
  }

pl24p! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!+x]++x]
  }

pl24q {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!+x]--x]
  }

pl24q2 {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!++x]
  }

pl24q! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!+x]--x]
  }

pl24r {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+@.6180339887499x!-x]++x]
  }

pl24r! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x
  x=[f[+!@.6180339887499x!-x]++x]
  }

pl24s {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!--@.309016994x]!--x]!
  }

pl24s! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!--@.309016994x]!--x]!
  }

pl24t {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!++@.309016994x]!++x]!
  }

pl24t! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!++@.309016994x]!++x]!
  }

pl24u {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!+@.309016994x]!--x]!
  }

pl24u! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!+@.309016994x]!--x]!
  }

pl24v {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!-@.309016994x]!++x]!
  }

pl24v! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!-@.309016994x]!++x]!
  }

pl24w {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!--@.309016994x]!---x]!
  }

pl24w! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!--@.309016994x]!---x]!
  }

pl24x {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!++@.309016994x]!+++x]!
  }

pl24x! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!++@.309016994x]!+++x]!
  }

pl24y {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!+@.309016994x]!---x]!
  }

pl24y! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!+@.309016994x]!---x]!
  }

pl24z {   ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!-@.309016994x]!+++x]!
  }

pl24z! {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!-@.309016994x]!+++x]!
  }

pl24aa {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!--@.309016994x]!--x]
  }

pl24aa! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!--@.309016994x]!--x]
  }

pl24ab {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!++@.309016994x]!++x]
  }

pl24ab! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!++@.309016994x]!++x]
  }

pl24ac {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!+@.309016994x]!--x]
  }

pl24ac! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!+@.309016994x]!--x]
  }

pl24ad {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!-@.309016994x]!++x]
  }

pl24ad! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!-@.309016994x]!++x]
  }

pl24ae {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!--@.309016994x]!---x]
  }

pl24ae! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!--@.309016994x]!---x]
  }

pl24af {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!++@.309016994x]!+++x]
  }

pl24af! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!++@.309016994x]!+++x]
  }

pl24ag {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!+@.309016994x]!---x]
  }

pl24ag! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!+@.309016994x]!---x]
  }

pl24ah {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+@.309016994x!-@.309016994x]!+++x]
  }

pl24ah! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom ++++++x; 1/2 the GR
  x=[f[+!@.309016994x!-@.309016994x]!+++x]
  }

pl24ai {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+[f[-x!-x]!]]!
  }

pl24ai! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+[f[-x!-x]!]]!
  }

pl24aj {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+[f[-x!-x]!]]!
  }

pl24aj! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+[f[-x!-x]!]]!
  }

pl24ak {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!---x++x]
  }

pl24ak! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!---x++x]
  }

pl24al {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+x+x]
  }

pl24al! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+x+x]
  }

pl24am {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-@1.6180339887499x]
  }

pl24an {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@1.6180339887499x]
  }

pl24an! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@1.6180339887499x]
  }

pl24ao {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!-@.6180339887499x]
  }

pl24ap {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@.6180339887499x!+@.6180339887499x]
  }

pl24ap! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@.6180339887499x!+@.6180339887499x]
  }

pl24aq {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!-@iq2x]
  }

pl24ar {  ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+@iq2x!+@iq2x]
  }

pl24ar! { ; Anthony Hanmer 2001
  Angle 24; Golden Ratio plant series
  Axiom x
  x=f[+!@iq2x!+@iq2x]
  }

