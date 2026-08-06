include library.cmd
include craftlibrary.cmd

#var materialsizes tiny|small|medium|large|huge|massive|enormous|immense|gargantuan|gigantic|colossal

var minconcentration $minconcentration
var minmana $minmana
var difficulty1percent $difficulty1percent
var difficulty2percent $difficulty2percent
var difficulty3percent $difficulty3percent
var difficulty4percent $difficulty4percent
var difficulty5percent $difficulty5percent
var harnessing $harnessing
var harnessmax $harnessmax
var cambrinth $cambrinth
var chargemax $chargemax
var dedicatedcambrinth $dedicatedcambrinth
var cambitems $cambitems
var cambitem1 $cambitem1
var cambitem1mana $cambitem1mana
var cambitem1worn $cambitem1worn
var cambitem2 $cambitem2
var cambitem2mana $cambitem2mana
var cambitem2worn $cambitem2worn
var ritualfocus $ritualfocus
var ritualfocusworn $ritualfocusworn
var ritualfocusstorage $ritualfocusstorage
var ritualfocuscontainer $ritualfocuscontainer
var tattoo $tattoo
var tattootype $tattootype
var tattoospell $tattoospell
var tattooprepmana $tattooprepmana

action var ready 0;var scancel 1 when Your concentration slips for a moment, and your spell is lost.
action var ready 1 when You feel fully prepared to cast your spell.
action var ready 1 when Your spell pattern snaps into shape with little preparation!
action var ready 1 Fully targeted! when Your formation of a targeting pattern
action var ready 1 Fully targeted! when Your target pattern has finished forming around the area.
action var ready 0;var scancel 1 when Your target pattern dissipates because
action var ready 0;var scancel 1 when Your pattern dissipates with the loss of your target.
action var badlocate 1 when You see a very vague vision of
action var badlocate 1 when You can just make out the details of 
action var badlocate 1 when Something is blocking your spell from reaching its target.

  if (%cambitems < 1) then var cambitems 1
  if (%cambitems > 1) then
  {
    var totalcamb %cambitem1mana
    math totalcamb add %cambitem2mana
  }
  else
  {
    if (%cambitems = 1) then var totalcamb %cambitem1mana
    else 
    {
      var totalcamb 0
    }
  }

  var cambcharge 0
  var cambcharge1 0
  var cambcharge2 0
  var ready 0
  var prepped 0
  var charged 0
  var harnessed 0
  var spell
  var prepmana 0
  var cambmana 0
  var harnmana 0
  var harntapped 0
  var cambmana1 0
  var cambmana2 0
  var tmcast 0
  var debilcast 0
  var cycliccast 0
  var casting 0
  var othercast 0
  var spellsymb 0
  var spelldifficulty -1
  var cambtapped 0
  var cambsplitting 0
  var splittingmana 0
  var splitcount 0
  var multicast 0
  var scancel 0



if_1 then
{
  #echo %1, %2, %3, %4
  if (matchre("%1", "help") then
  {
    gosub HELPDISPLAY
    exit
  }
  if (matchre("%1", "%disciplines") then var discipline %1
  else
  {
    put #echo mono Discipline must be from %disciplines.
    goto HELPDISPLAY
  }
  if_2 then
  {
    if_3 then
    {  var revenue 0
      if (matchre("%2", "%difficulties") then var difficulty %2
      else
      {
        put #echo mono Difficulty must be from %difficulties.
        goto HELPDISPLAY
      }
      var material %3
      put #echo Yellow Crafting %difficulty %discipline work orders in %material.
      put #echo %alertwindow Yellow Crafting %difficulty %discipline work order in %material.
    }
    else
    {
      if (("%discipline" = "blacksmithing") || ("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing")) then
      {
        var difficulty $forgingdifficulty
        var material $forgingmaterial
        put #echo Yellow Crafting %difficulty %discipline work orders in %material.
        put #echo %alertwindow Yellow Crafting %difficulty %discipline work order in %material.
      }
      if ("%discipline" = "tailoring") then
      {
        var difficulty $outfittingdifficulty
        var cloth $outfittingcloth
        var leather $outfittingleather
        put #echo Yellow Crafting %difficulty %discipline work orders in %cloth or %leather.
        put #echo %alertwindow Yellow Crafting %difficulty %discipline work order in %cloth or %leather.
      }

    }
  }
  else
  {
    if (("%discipline" = "blacksmithing") || ("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing")) then
    {
      var difficulty $forgingdifficulty
      var material $forgingmaterial
    }
    if ("%discipline" = "tailoring") then
    {
      var difficulty $outfittingdifficulty
      var cloth $outfittingcloth
      var leather $outfittingleather
    }
  }
}
else
{
  goto HELPDISPLAY
}

gosub CRAFTVARLOAD
var storage $storage
var alertwindow >$alertwindow

var workorder 1
gosub AREAVARINIT
gosub STOWALL

#CRAFTING_STORAGE
gosub CRAFTINGSTART
if (%workorderbail = 1) then return
gosub CRAFTREPAIR

MAIN:
  gosub AWAKE
  gosub WORKORDER
  if (%workorderbail = 1) then exit
  if ("%crafttype" = "forging") then var mindstateend $Forging.LearningRate
  if ("%crafttype" = "outfitting") then var mindstateend $Outfitting.LearningRate
  if (%mindstateend < 25) then goto MAIN
  else
  {
    gosub CRAFTINGEND
    exit
  }
  
  
HELPDISPLAY:
  put #echo mono Syntax: .workorder <discipline> <difficulty> <material>
  put #echo mono OR
  put #echo mono Syntax: .workorder <discipline> to use stored variables.
  put #echo mono Difficulties: %difficulties
  put #echo mono Disciplines: %disciplines
  exit