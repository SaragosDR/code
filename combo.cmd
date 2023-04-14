include library.cmd

var alertwindow $alertwindow

var waitstringgood  ^\.\.\.wait|^Sorry\, you may only type ahead
var waitstringbad ^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|Between the ringing in your head|Strangely, you don't feel like fighting right now\.|Your desire to prepare this offensive spell suddenly slips away\.
action put #var %manenamelast $unixtime; put #var save; put #echo Yellow Maneuver complete! when ^You take a step back and (heft|ready) your \w+ behind you\.|^Taking a full step back, you plant your feet and .*\.|^You lower your shoulders and steady your weapon\.|^You lower your shoulders and begin to twirl your staff\.|^You take a step back and ready an upraised palm\.|^You angle to the side and .*\.|^You crouch down and draw your weapons close\.|^You step to the side and adjust your stance\.|^You take a step back and .*\.|You square up your feet and arch your back while searching for an engaged enemy to target\.
#put #echo Yellow Maneuver complete! manenamelast: %manenamelast - $unixtime 
action var failtest $unixtime; math failtest subtract 80; put #var %manenamelast %failtest; send #echo Yellow ACM is still on cooldown! when You must rest a bit longer before attempting that maneuver again\.

var maneuverlist $maneuverlist
var cleaveweapon $cleaveweapon
var crashweapon $crashweapon
var twirlweapon $twirlweapon
var impaleweapon $impaleweapon
var doublestrikeweapon $doublestrikeweapon
var doublestrikeweapon2 $doublestrikeweapon2
var powershotweapon $powershotweapon
var powershotammo $powershotammo


MAIN:  
  #TESTING_NEXT_MANEUVER_OFF_COOLDOWN
  gosub MANEUVERTEST

  ###GETTING_WEAPON
  var manename %maneuverlist(%maneuver)
  var maneweapon %%manenameweapon  
  if ("%manename" = "doublestrike") then
  {
    var offhandweapon %doublestrikeweapon2
    put #echo Yellow Manuever %maneuver: %manename (%maneweapon) (%offhandweapon)
  }
  else
  {
    if ("%manename" = "palmstrike") then put #echo Yellow Manuever %maneuver: %manename
    else put #echo Yellow Manuever %maneuver: %manename (%maneweapon)
  }
  #IS_WEAPON_PRESENT
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

  #GETTINGWEAPONS
  #MAIN_WEAPON
  if ("%manename" = "palmstrike") then
  {
    gosub STOWALL
  }
  else
  {
    #SHAPE_WEAPON-WRONG_SKILL
    if (%weaponcorrect = 0) then
    {
      if (%weaponexists = 1) then gosub STOW right
      if (matchre("$lefthandnoun", "%maneweapon")) then
      {
        gosub SWAP
        var offhandexists 0
      }
      else gosub GETITEM %maneweapon
    }
  }
  
  #OFFHAND
  if ("%manename" = "doublestrike") then
  {
    if (%offhandcorrect = 0) then
    {
      if (%offhandexists = 1) then gosub STOW left
    }
    gosub GETITEM %offhandweapon
  }
  else
  {
    if ("%manename" = "powershot") then
    {
      if (!matchre("$lefthandnoun", "%powershotammo")) then gosub STOW left
    }
    else gosub STOW left
  }
  #POWERSHOT_AMMO
  if ("%manename" = "powershot") then
  {
    gosub GETITEM %powershotammo
    var ubowmmo %powershotammo
    gosub BOWLOAD %powershotammo
  }
  
  #EXECUTE_MANEUVER
  gosub ATTACKACMCOMBO %manename
  exit
