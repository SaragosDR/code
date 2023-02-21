include library.cmd
include helibrary.cmd

var critterlist shark|tigerfish|barracuda|piranha|bloodfish
var toprooms 80|81|82|83|84|85|86|87|88|89|90
var bottomrooms 73|
var shrineroom 80

action put #echo >Log Yellow Caught one!  Won $1. when The helper places (.*) in your hand.


MAIN:
  gosub STOWALL
  if ("$righthand" = "Empty") then
  {
    if matchre("$roomobjs", "%critterlist") then
    {
      var critter $0
      echo critter: %critter
      gosub STAND
      gosub GETCRITTER
      gosub STAND
    }
  }
  if ("$righthand" != "Empty") then gosub MOVE %shrineroom
  if ("$righthand" != "Empty") then gosub PUTCRITTER
  pause .1
  goto MAIN
  
  
GETCRITTER:
  match RETURN What were you referring to?
  match RETURN You are still stunned.
  match RETURN You try, but you're too distracted by your impending doom to concentrate!
  match RETURN Stunned:
  match RETURN Roundtime:
  put get %critter
  matchwait
  
PUTCRITTER:
  match PUTSUCCESS A helper runs up to you and says, "Thank you friend!  Here's a token of our appreciation for returning our lost
  match RETURN What were you referring to?
  put put my $righthandnoun on shrine
  matchwait
  
PUTSUCCESS:
  if $righthand = "Empty" then gosub SWAP
  gosub TAPSHORTEN $righthand
  if (%storage != 0) then gosub PUTITEM %shorttap in my %storage
  else gosub STOWALL
  return

  #The barracuda evades the grab and dashes north!