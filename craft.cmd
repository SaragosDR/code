include library.cmd
include craftlibrary.cmd

if_1 then
{
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
  else
  {
    put #echo Must specify an material.
    goto HELPDISPLAY
  }
}
else
{
  goto HELPDISPLAY
}
var discipline %1
var material %2


var varset $varset
gosub CRAFTVARLOAD
var storage $m%varsetstorage
var alertwindow >$m%varsetalertwindow

var workorder 0
var quantity 1
gosub AREAVARINIT
gosub STOWALL



MAIN:
  gosub CRAFTING
  exit
  
HELPDISPLAY:
  put #echo mono Syntax: .craft <discipline> <material>
  put #echo mono Should start in front of an anvil for forging.
  put #echo mono Crafting book should start turned to the correct page.
  put #echo mono Material should be in your crafting storage.
  exit