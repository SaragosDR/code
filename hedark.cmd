var scripttag DARK
include library.cmd
include helibrary.cmd

action var lootreceived $2 when As you remove your hand from the Darkbox you see (a|an|some) (.*) in your grasp\!
action var needshealing 1 when Unfortunately, your wounds make it impossible for you to play the Darkbox
#action var timetofind 1 when Without warning, the Darkbox simply vanishes.

var searchlist 3|8|10|11|12|13|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|131

var needshealing 0
var startroom 3

gosub STOWALL
gosub LOCATIONCHECK

MAIN:
  if (($bleeding = 1) || (%needshealing = 1)) then
  {
    var needshealing 1
    gosub GETHEALED
  }
  if !contains("$roomobjs", "the Darkbox") then gosub FINDDARKBOX
  gosub STOWALL
  gosub PLAYDARKBOX
  goto MAIN
  exit


FINDDARKBOX:
  var searchnum 0
  eval searchlength count("%searchlist", "|")
  gosub FINDDARKBOXLOOP
  if contains("$roomobjs", "the Darkbox") then echo FOUND IT!
  else echo DIDN'T FIND IT!
  return
  
FINDDARKBOXLOOP:
  if %searchnum > %searchlength then return
  gosub MOVE %searchlist(%searchnum)
  if contains("$roomobjs", "the Darkbox") then return
  math searchnum add 1
  goto FINDDARKBOXLOOP
  
PLAYDARKBOXP:
  pause
PLAYDARKBOX:
  matchre PLAYDARKBOXP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match BADPLAY You fish around in the unseen depths of the Darkbox but you find nothing and remove your hand in disappointment.
  match GOODPLAY And you find something!
  match BADPLAY Before your hand is completely free of the Darkbox a hissing creature darts from the depths of the box and crushes your hand!
  match RETURN Unfortunately, your wounds make it impossible for you to play the Darkbox
  match RETURN Play on what instrument?
  match RETURN What type of song did you want to play?
  match OUTOFMONEY You try to play the Darkbox, but realize you don't have the 200 Kronars required.  How depressing.
  put play darkbox
  matchwait

OUTOFMONEY:
  var currentroom $roomid
  gosub MOVE teller
  gosub HECOINWITHDRAW 10 platinum kronars
  gosub MOVE %currentroom
  goto PLAYDARKBOX

GOODPLAY:
  math totalattempts add 1
  math totalspent add 200
  gosub HANDLELOOT
  return
  
BADPLAY:
  math totalattempts add 1
  math totalspent add 200
  goto PLAYDARKBOX
  
 