var scripttag STT
include library.cmd
include helibrary.cmd

action var lootreceived $1 when One of the thugs escorts you back to the waiting area, putting (.*) in your (right|left) hand\.
action var gotime 1 when A page boy runs up and whispers in your ear, "It's your turn to try the Web, please come to the waiting area\."
action var gotime 1 when The Monger's booming voice comes from the booth, "$charactername will be attempting to escape Pflutikitra's Web\!"
action var gotime 1 when The seedy monger looks up at you and exclaims, "It's already your turn, head to the stage\!"
action var var gotime 1; var yourturn 1 when  One of the toughs whispers in your ear, "It's your turn, slick\.  Go through the stage door\."
action var gotime 1; yourturn 1; var onstage 1 when \[Stupid Terrestrian Tricks, Stage\]
action var yourturn 1; var gotime 1; var onstage 1;var onweb 1 when The Monger's burly assistants hoist you up and toss you unceremoniously into the web\.
#action var yourturn 1; var gotime 1; var onstage 1;var onweb 1 when The nightweaver unyn begins to clamber out onto the web\.
action put #echo >Log Yellow [%scripttag] Out of money.  Withdrawing more. when As you reach to pay for your order, you realize you don't have enough money\.  The seedy monger snorts at you, and says, "Costs 500 kronar to sign up.  Come back when you've got the cash."
action var finished 1 when You manage to escape the bonds holding you against the web and you drop to the ground freely\.


#You may not get on stage at this time.

#One of the thugs escorts you back to the waiting area, putting a smooth linen napkin embroidered with Eluned's Glory blossoms at each corner in your right hand.

var startroom 307
var bucketroom 35


gosub STOWALL
gosub LOCATIONCHECK

MAIN:
  var gotime 0
  var yourturn 0
  var onstage 0
  var onweb 0
  var finished 0
  gosub STOWALL
  if %gotime != 1 then gosub JOINLISTWAIT
  gosub GOROOM amp
  gosub GOROOM area
  if %onstage != 1 then gosub DOORWAIT
  if %onweb != 1 then gosub WEBWAIT
  gosub RUBWEB
  gosub KICKWEB
  gosub HANDLELOOT
	gosub MOVE %startroom
  pause 30
  goto MAIN


JOINLISTWAIT:
  pause .1
  if %gotime = 1 then return
  gosub JOINLIST
  else goto JOINLISTWAIT

DOORWAIT:
  if %onstage != 1 then put go door
  pause 3
  if %yourturn = 1 then
  {
    if %onstage = 1 then return
    else
    {
      gosub GOROOM door
      return
    }
  }
  else goto DOORWAIT

WEBWAIT:
  pause .1
  if %onweb = 1 then return
  else goto WEBWAIT


OUTOFMONEY:
  var roomtarget teller
  gosub MOVE
  gosub HECOINWITHDRAW 10 platinum kronars
  var roomtarget %startroom
  gosub MOVE
  goto JOINLIST


JOINLISTP:
  pause
JOINLIST:
  matchre JOINLISTP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match JOINLISTGOOD The seedy monger looks up to you and says, "Good.  You're registered.
  match RETURN The seedy monger looks up at you and exclaims, "But you are already registered!"
  match RETURN The seedy monger looks up at you and exclaims, "It's already your turn, head to the stage!"
  match OUTOFMONEY As you reach to pay for your order, you realize you don't have enough money.
  put join list
  matchwait

JOINLISTGOOD:
  math totalattempts add 1
  math totalspent add 500
  return

RUBWEBP:
  pause
RUBWEB:
  matchre RUBWEBP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match RETURN Roundtime:
  put rub web
  matchwait
  
KICKWEBP:
  pause
KICKWEB:
  if %finished != 1 then gosub STOWALL
  matchre KICKWEBP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match KICKWEB Roundtime:
  matchre RETURN Now what did the Web ever do to you\?|I could not find what you were referring to\.|You manage to escape the bonds holding you against the web and you drop to the ground freely\.|A great cheer rises from the onlookers\!|One of the thugs escorts you back to the waiting area
  put kick web
  matchwait