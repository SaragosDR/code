include library.cmd
include helibrary.cmd

var critterlist shark|tigerfish|barracuda|piranha|bloodfish
var critterrooms 56|57|58|59|60|61|62|63|64
var roomcount 8

var shrineroom 56

action put #echo >Log Yellow Caught one!  Won $1. when The helper places (.*) in your hand\.

gosub STOWALL
if (("$righthand") = "Empty") && ("$lefthand" = "Empty")) then
else
{
  put #echo Yellow Could not empty hands!  Address and restart script!
  put #play JustArrived
  exit
}
  
MAIN:
  if ("$righthand" = "Empty") then
  {
    put look
    if matchre("$roomobjs", "\b%critterlist\b") then
    {
      var critter $0
      echo critter: %critter
      gosub STAND
      gosub GETCRITTER
      gosub STAND
    }
    else
    {
      var searchcount 0
      gosub CRITTERSEARCH
      goto MAIN
    }
  }
  if ("$righthand" != "Empty") then
  {
    if ($roomid != %shrineroom) then gosub MOVE %shrineroom
  }
  if ("$righthand" != "Empty") then gosub PUTCRITTER
  pause .1
  goto MAIN

CRITTERSEARCH:
  if (%searchcount > %roomcount) then return
  if ($roomid != %critterrooms(%searchcount) then gosub MOVE %critterrooms(%searchcount)
  put look
  if (matchre("$roomobjs", "%critterlist")) then return
  else
  {
    math searchcount add 1
    goto CRITTERSEARCH
  }
  

GETCRITTERP:
  pause
GETCRITTER:
  matchre GETCRITTERP %waitstring
  match RETURN What were you referring to?
  match RETURN You try, but you're too distracted by your impending doom to concentrate!
  match RETURN Roundtime:
  put get %critter
  matchwait 2
  return

PUTCRITTERP:
  pause
PUTCRITTER:
  matchre PUTCRITTERP %waitstring
  match PUTSUCCESS A helper runs up to you and says, "Thank you friend!  Here's a token of our appreciation for returning our lost
  match RETURN What were you referring to?
  put put my $righthandnoun on shrine
  matchwait 2
  return
  
PUTSUCCESS:
  if ("$righthand" = "Empty") then gosub SWAP
  gosub TAPSHORTEN $righthand
  if (%storage != 0) then gosub PUTITEM %shorttap in my %storage
  else gosub STOWALL
  if ("$righthand" != "Empty") then
  {
    put #echo Yellow Could not empty hands!  Address and restart script!
    put #play JustArrived
    exit
  }
  return

  #The barracuda evades the grab and dashes north!