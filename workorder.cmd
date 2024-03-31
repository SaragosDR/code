include library.cmd
include craftlibrary.cmd

#var materialsizes tiny|small|medium|large|huge|massive|enormous|immense|gargantuan|gigantic|colossal

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
      put #echo Must specify a material.
      goto HELPDISPLAY
    }
  }
  else
  {
    if (("%discipline" = "blacksmithing") || ("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing")) then
    {
      var difficulty $m$varsetforgingdifficulty
      var material $m$varsetforgingmaterial
    }
  }
}
else
{
  goto HELPDISPLAY
}

var varset $varset
gosub CRAFTVARLOAD
var storage $m%varsetstorage
var alertwindow >$alertwindow

var workorder 1
gosub AREAVARINIT
gosub STOWALL

#CRAFTING_STORAGE
gosub CRAFTINGSTART
if (%workorderbail = 1) then return
gosub CRAFTREPAIR

MAIN:
  gosub WORKORDER
  if (%workorderbail = 1) then exit
  if ($Forging.LearningRate < 25) then goto MAIN
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