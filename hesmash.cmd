var scripttag SMASH
include library.cmd
include helibrary.cmd

action var lootreceived $1 when The shell gives way, leaving you with (.*)\.
action var needsheal 1 when A .* shell explodes, embedding fragments directly into your abdomen\.
action put #echo >Log Yellow [%scripttag] Out of money.  Withdrawing more. when A nearby attendant in an otter costume explains, \"Perhaps you should return when you have enough coins\.\"
action var needsheal 1 when eval $bleeding = 1

var grabtotal 10

var startroom 149
var regenmana 9

var empathheal 1
var healmana $m$pscriptmodehealprepmana
math healmana add $m$pscriptmodehealaddmana

MAIN:
  var grabcount 0
  if (($guild = "Empath") && (%empathheal = 1)) then
  {
    if ((%needsheal = 1) || ($SpellTimer.Heal.active != 1) || ($SpellTimer.Heal.duration < 2))  then
    {
      gosub MOVE 35
      gosub REMOVELODGED
      #if $SpellTimer.Regenerate.active != 1 then
      #{
      #  put .p reg %regenmana
		  #  waitfor PCASTING COMPLETE!
      #}
      if (($SpellTimer.Heal.active != 1) || ($SpellTimer.Heal.duration < 2)) then
      {
        put .p heal %healmana
		    waitfor PCASTING COMPLETE!
      }
      var needsheal 0
    }
  }
  else
  {
		if %needsheal = 1 then
		{
			gosub MOVE 35
			gosub REMOVELODGED
			gosub GETHEALED
			var needsheal 0
		}
  }
  gosub LOCATIONCHECK
	gosub GRABBOX
	if %needsheal = 1 then goto MAIN
	gosub MOVE 150
	gosub BREAKSHELL
	gosub HANDLELOOT
  goto MAIN

GRABBOXLOOP:
  if %shellcount >= %grabtotal then return  
  gosub GRABBOX
  math shellcount add 1
  goto GRABBOXLOOP

GRABBOXP:
  pause
GRABBOX:
  matchre GRABBOXP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match RETURN You pick up
  match GRABWOUND As you pick up a shell, claws emerge from its opening.  They quickly clamp down hard on your hand, causing you to drop the shell.  OUCH!
  match GRABWOUND An attendant in an otter costume exclaims, "You should clean your hands before you eat!".
  match GRABSTOW You're going to need your right hand free to do that.
  match GRABNO Selecting the nearest shell, you grab at it haphazardly.  You fail to get a firm hold on your treasure, and it falls back into an enormous box of shells.
  match GRABNO You get a firm grip on a shell from the pile.  Not wanting to risk it slipping away, you squeeze down on your prize until it gives way!  The shell crumbles in your hand, and its fragments fall back into an enormous box of shells.
  match OUTOFMONEY A nearby attendant in an otter costume explains, "Perhaps you should return when you have enough coins."
  put grab box
  matchwait

OUTOFMONEY:
  gosub MOVE teller
  gosub HECOINWITHDRAW 10 platinum kronars
  gosub MOVE %startroom
  goto GRABBOX

GRABSTOW:
  gosub STOWALL
  goto GRABBOX

GRABWOUND:
  var needsheal 1
  return

GRABNO:
  goto GRABBOX

BREAKSHELLP:
  pause
BREAKSHELL:
  math totalattempts add 1
  matchre BREAKSHELLP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match RETURN Leaning back, you begin to float in the waist deep water.
  match RETURN Break what?
  put break my shell
  matchwait
  
  
