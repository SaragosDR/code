include library.cmd
action (combo) on

var waitstringgood  ^\.\.\.wait|^Sorry\, you may only type ahead
var waitstringbad ^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|Between the ringing in your head|Strangely, you don't feel like fighting right now\.|Your desire to prepare this offensive spell suddenly slips away\.

var maneelement $summonelement
var maneuverlist $summonlist
var cleaveskill $summoncleave
var crashskill $summoncrash
var impaleskill pole
var twirlskill stave
var doublestrikeskill $summondoublestrike
var palmstrikeskill brawl

var seweapon scimitar
var leweapon broadsword
var 2heweapon blade
var sbweapon mallet
var lbweapon hara
var 2hbweapon maul
var poleweapon lance
var staveweapon quarterstaff
var brawlweapon fist

var shielditem $shielditem

#scimitar|sword|broadsword|nimsha|blade|sword|mallet|cudgel|hara|mace|maul|kodur|lance|bardiche|quarterstaff|nightstick

if !def(cleavelast) then put #var cleavelast 0
if !def(crashlast) then put #var crashlast 0
if !def(impalelast) then put #var impalelast 0
if !def(twirllast) then put #var twirllast 0
if !def(doublestrikelast) then put #var doublestrikelast 0
if !def(palmstrikelast) then put #var palmstrikelast 0

var executemaneuver 1


if_1 then
{
  if "%0" = "t" then 
  {    
    #DENSITY_RESET
    gosub SUMMONWEAPONTURN my $righthandnoun
    exit
  }
  elseif "%0" = "l" then 
  {
    #LIGHTER
    gosub SUMMONWEAPONPUSH
    exit
  }
  elseif "%0" = "h" then
  {
    #HEAVIER
    gosub SUMMONWEAPONPULL $righthandnoun
    exit
  }
  elseif "%0" = "b" then 
  {
    #BREAK
    gosub SUMMONWEAPONBREAK $righthandnoun
    exit
  }
  elseif "%0" = "r" then
  {
    #RESET
    send #var slasttime 0
    #send .s
    exit
  }
  elseif "%0" = "m" then
  {
    #MANEUEVER_AFTER
    var executemaneuver 1
  }
  elseif "%0" = "c" then
  {
    #CHARGING
    goto SUMMONCHARGE
  }
  else 
  {
    #SUMMON_SPECIFIED_TYPE
    if ("$righthand" = "Empty") then
    {
      gosub SUMMONWEAPON %maneelement %0
      exit
    } 
    else
    {
      gosub SUMMONWEAPONSHAPE %0
      exit
    }
  }
}

#TESTING_NEXT_MANEUVER_OFF_COOLDOWN
gosub MANEUVERTEST


###GETTING_WEAPON
var manename %maneuverlist(%maneuver)
var maneskill %%manenameskill
var maneweapon %%maneskillweapon
if ("%manename" = "doublestrike") then
{
  var offhandskill %doublestrikeskill
  var offhandweapon %%doublestrikeskillweapon
  put #echo Yellow Manuever %maneuver: %manename (%maneweapon), %offhandskill (%offhandweapon)
}
else put #echo Yellow Manuever %maneuver: %manename (%maneweapon)

#IS_WEAPON_PRESENT
if (matchre("$lefthand", "%shielditem")) then gosub STOW left
if ("%manename" = "palmstrike") then
{
  gosub SUMMONWEAPONBREAK $righthandnoun
}
else
{
	if ("$righthand" != "Empty") then
	{
		var weaponexist 1
		#IS_WEAPON_CORRECT_TYPE
		if (matchre("$righthandnoun", "%maneweapon")) then var weaponcorrect 1
		else var weaponcorrect 0
	}
	else
	{
		var weaponexist 0
		var weaponcorrect 0
		var weaponelement 0
	}
	if ("%manename" = "doublestrike") then
	{
    if ("$lefthand" != "Empty") then
		{
		  var offhandexists 1
		  if (matchre("$lefthandnoun", "%offhandweapon")) then var offhandcorrect 1
		  else var offhandcorrect 0
		}
		else
		{
		  var offhandexists 0
		  var offhandcorrect 0
	  }
	}

	#echo weaponexist: %weaponexist
	#echo weaponcorrect: %weaponcorrect

  #BREAK_OFFHAND_NOT_NEEDED
  if ("%manename" != "doublestrike") then
	{
	  if ("$lefthand" != "Empty") then 
	  {
	    if (!matchre("$lefthand", "%shielditem")) then
	    {
	      gosub SUMMONWEAPONBREAK $lefthandnoun
	    }
	  }
	  var offhandexists 1
	  var offhandcorrect 1
	}
	#SUMMON_WEAPON-DOESNT_EXIST
	if (%weaponexist = 0) then
	{
		gosub SUMMONWEAPON %maneelement %maneskill
		gosub SUMMONWEAPONPULL $righthandnoun
		var weaponexist 1
		var weaponcorrect 1
		var weaponelement 1
	}
	#OFFHAND_WEAPON-DOESNT_EXIST
	if (%offhandexists = 0) then
	{
		gosub SUMMONWEAPON %maneelement %offhandskill
		#gosub SUMMONWEAPONPULL $lefthandnoun
		var offhandexist 1
		var offhandcorrect 1
		var weaponelement 1
	}
	#SHAPE_WEAPON-WRONG_SKILL
	if (%weaponcorrect = 0) then
	{
		gosub SUMMONWEAPONSHAPE %maneskill
		var weaponcorrect 1
	}
  if (%offhandcorrect = 0) then
	{
		gosub SUMMONWEAPONSHAPE %maneskill
		var weaponcorrect 1
	}
}
#put #echo Yellow Weapon swapped!
if (%executemaneuver = 0) then put #var %manenamelast $unixtime

#EXECUTE_MANEUVER
if (%executemaneuver = 1) then
{
  gosub ATTACKACMCOMBO %manename
}
exit



