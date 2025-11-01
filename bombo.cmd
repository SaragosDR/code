include library.cmd

var waitstringgood  ^\.\.\.wait|^Sorry\, you may only type ahead
var waitstringbad ^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|Between the ringing in your head|Strangely, you don't feel like fighting right now\.|Your desire to prepare this offensive spell suddenly slips away\.

if ("$charactername" = "Sorhhn") then
{

  var maneuverlist doublestrike|cleave|crash|impale|twirl|palmstrike
  var cleaveskill 2he
  var crashskill 2hb
  var impaleskill pole
  var twirlskill stave
  var doublestrikeskill se
  var doublestrikealtskill sb
  var palmstrikeskill brawl
  var maneelement electric

  var seweapon silver nehlata
  var leweapon broadsword
  var 2heweapon black-bladed zweihander
  var sbweapon assassin's blade
  var lbweapon hara
  var 2hbweapon dragonwood mallet
  var poleweapon pole axe
  var staveweapon spiritwood staff
  var brawlweapon fist
}

var maneuverlist $maneuverlist
var cleaveweapon $cleaveweapon
var crashweapon $crashweapon
var impaleweapon $impaleweapon
var twirlweapon $twirlweapon
var doublestrikeweapon $doublestrikeweapon
var doublestrikeweapon2 $doublestrikeweapon2
var powershotweapon $powershotweapon
var powershotammo $powershotammo

if !def(cleavelast) then put #var cleavelast 0
if !def(crashlast) then put #var crashlast 0
if !def(impalelast) then put #var impalelast 0
if !def(twirllast) then put #var twirllast 0
if !def(doublestrikelast) then put #var doublestrikelast 0
if !def(palmstrikelast) then put #var palmstrikelast 0

var executemaneuver 1


#TESTING_NEXT_MANEUVER_OFF_COOLDOWN
eval maneuvernum count("%maneuverlist", "|")
var maneuvertest 0
var maneuver -1
var closestmane 0
gosub MANEUVERTESTLOOP
if (%maneuver = -1) then
{
  var secondsleft 90
  math secondsleft subtract %closestmane
  put #echo Yellow No maneuvers are off cooldown!  Closest maneuver: %secondsleft sec.
  exit
}

var manename %maneuverlist(%maneuver)
var maneweapon %%manenameweapon
if ("%manename" = "doublestrike") then
{
  var offhandweapon %doublestrikeweapon2
  put #echo Yellow Manuever %maneuver: %manename (%maneweapon) (%offhandweapon)
}
else put #echo Yellow Manuever %maneuver: %manename (%maneweapon)

#IS_WEAPON_PRESENT
if ("%manename" = "palmstrike") then
{
  gosub STOW right
}
else
{
	if ("$righthand" != "Empty") then
	{
		var weaponexist 1
		#IS_WEAPON_CORRECT_TYPE
		if (matchre("$righthand", "%maneweapon")) then var weaponcorrect 1
		else var weaponcorrect 0
	}
	else
	{
		var weaponcorrect 0
	}
	#echo manename: %manename
	if ("%manename" = "doublestrike") then
	{
	  #echo lefthand: $lefthand
    if ("$lefthand" != "Empty") then
		{
		  #echo offhandweapon: %offhandweapon
		  #echo lefthand: $lefthand
		  if (matchre("$lefthand", "%offhandweapon")) then var offhandcorrect 1
		  #else var offhandcorrect 0
		}
		else
		{
		  var offhandcorrect 0
	  }
	}
  #OFFHAND_NOT_NEEDED
  if ("%manename" != "doublestrike") then
	{
	  if ("$lefthand" != "Empty") then
	  {
      #gosub STOW left
	  }
	  var offhandcorrect 1
	}
	#INCORRECT_WEAPON
	put #echo weaponcorrect: %weaponcorrect
	if (%weaponcorrect = 0) then
	{
	  if ("$righthand" != "Empty") then
	  {
	    gosub STOW right
	  }
	  gosub GETITEM %maneweapon
		var weaponcorrect 1
	}
	#OFFHAND_GET_WEAPON
	if (%offhandcorrect = 0) then
	{
	  #echo here
	  gosub GETITEM %offhandweapon
		var offhandcorrect 1
  }
	
}
#put #echo Yellow Weapon swapped!
if (%executemaneuver = 0) then
{
  put #echo Yellow %Manenamelast: $unixtime
  put #var %manenamelast $unixtime
}

#EXECUTE_MANEUVER
if (%executemaneuver = 1) then
{
  put #var %manenamelast $unixtime
  gosub BOMBOACM %manename
  put #echo Yellow Maneuver complete!
  
}
exit


#MANEUVERTESTLOOP:
#  #echo maneuvertest: %maneuvertest  maneuvernum: %maneuvernum
#  if (%maneuvertest > %maneuvernum) then return
#  var manetest $unixtime
#	math manetest subtract $%maneuverlist(%maneuvertest)last
#	#echo %maneuverlist(%maneuvertest)last: $%maneuverlist(%maneuvertest)last
#	#echo manetest: %manetest
#	if (%manetest > 90) then
#	{
#	  var maneuver %maneuvertest
#	  return
#	}
#	else
#	{
#	  if (%manetest > %closestmane) then var closestmane %manetest
#	}
#	math maneuvertest add 1
#	goto MANEUVERTESTLOOP


BOMBOACM:
  var argument $0
BOMBOACMMAIN:
  matchre BOMBOACMMAIN %waitstringgood
  matchre BADNEWS %waitstringbad
  match RETURN Roundtime:
  match RETURN With a loud twang, you let fly your
  #match BOMBOACMSTOW You must free up your left hand first.
  matchre BOMBOACMSTAND You'll need to stand up first\.|You must be standing to perform that maneuver\.
  matchre RETURN You aren't close enough to attack\.
  matchre RETURN What are you trying to attack\?
  #match BOWLOADLOGIC You prepare the shot, but stop when you realize the
  #matchre BOWLOADLOGIC You prepare the shot, but stop when you realize the .* is unloaded\.
  matchre BOMBOACMWRONG With your fist\?  That might hurt\.|This weapon lacks the edge necessary to cleave your enemy with\.|Your hands must be empty to deliver such a blow\.|A pike or halberd weapon is necessary to impale your enemy with\.|Only a staff is suitable for the complex motions of the twirl maneuver\.|This works best when you use a suitable ranged weapon\.|This works best when you use a suitable weapon\.|This works best when you are dual wielding suitable weapons\.
  matchre BOMBOACMFAIL You must rest a bit longer before attempting that maneuver again\.
  match BOMBOACMBADNAME You cannot figure out how to do that.
  send maneuver %argument
  matchwait 5
  gosub ERROR

BOMBOACMSTAND:
  gosub STANDBASIC
  goto BOMBOACMMAIN

BOMBOACMWRONG:
  send #echo Yellow ACM attempted with improper item(s) in hands!
  exit

BOMBOACMFAIL:
  send #echo Yellow ACM is still on cooldown!
  math %manenamelast add 10
  exit

BOMBOACMBADNAME:
  send #echo Yellow ACM attempted with bad syntax!
  exit

STANDBASIC:
  if (($prone = 1) || ($sitting = 1) || ($kneeling = 1)) then
  {
    matchre STANDBASIC %waitstringgood
    matchre BADNEWS %waitstringbad
		matchre RETURN You are already standing\.|You stand back up\.|You stand up in the water\.
		matchre STANDBASIC The weight of all your possessions prevents you from standing\.|You are so unbalanced you cannot manage to stand\.
		match BADNEWS You're unconscious!
		send stand
		matchwait 5
    goto ERROR
  }
  else return


BADNEWS:
  put #echo Yellow You've been disrupted!
  exit
  
ERROR:
  put #echo Yellow Something went wrong.
  exit
