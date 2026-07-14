include library.cmd

var dismantletype $dismantletype
var shielditem $shielditem
var parrystickitem $parrystickitem
var armornum $armornum
var armor1item $armor1item
var armor2item $armor2item
var armor3item $armor3item
var armor4item $armor4item
var armor5item $armor5item
var armor6item $armor6item
var knucklesitem $knucklesitem

var locksmithkhrifocus $locksmithkhrifocus
var locksmithkhrihasten $locksmithkhrihasten
var locksmithkhriplunder $locksmithkhriplunder
var locksmithkhrisafe $locksmithkhrisafe
var locksmithkhrisight $locksmithkhrisight

var boxstorage $boxstorage

action var baddisarm 1 when ^However, a \w+ \w+ \w+ is not fully disarmed, making any chance of picking it unlikely\.


var boxtype brass|copper|deobar|driftwood|iron|ironwood|mahogany|oaken|pine|steel|wooden
var boxes coffer|crate|strongbox|caddy|casket|skippet|trunk|chest|box
var baddisarm 0

if_1 then
{
  var boxstorage %1
  var repeating 1
  var boxindex 0
  put look in my %boxstorage
}
else
{
  if matchre("$righthand", "%boxtype %boxes") then
  {
    var boxitem $righthandnoun
    var repeating 0
  }
  else
  {
    var repeating 1
    var boxindex 0
    put look in my %boxstorage
  }
}


gosub KHRISTOP all
gosub KHRI sight plunder safe focus hasten
gosub ARMORREMBOXPOP
  
MAIN:
  if %repeating = 1 then
  {
    var boxitem %boxes(%boxindex)
    gosub GETITEM my %boxitem from %boxstorage
  }
  if $righthand = "Empty" then
  {
    if %repeating = 1 then
    {
      math boxindex add 1
      if %boxindex > 8 then goto ENDING
      goto MAIN
    }
    else
    {
      echo No box!
      goto ENDING
    }
  }
  gosub DISARM
  gosub PICK
  gosub OPENITEM my %boxitem
  gosub BOXCOINGET
  gosub BOXFILLPOUCH
  gosub BOXLOOTCHECK
  gosub DISMANTLE
  if %repeating = 1 then goto MAIN
  else goto ENDING

ENDING:
  gosub KHRISTOP sight plunder safe focus hasten
  gosub ARMORCHECK
  if ($standing != 1) then gosub STAND
  exit
  
