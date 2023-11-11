include library.cmd
include craftlibrary.cmd

var hammer diagonal-peen hammer
var tongs tongs
var shovel shovel
var bellows bellows
var oil oil
var ingot copper ingot
var craftingcontainer crafting satchel

if_1 then
{
  if (matchre("%1", "%disciplines") then var discipline %1
  else
  {
    put #echo mono Discipline must be from %disciplines.
    exit
  }
  var quantity %2
  var product %3
  if_4 then var material %4

  gosub STOWALL
  gosub CRAFTING
  exit
}
else 
{
  put #echo mono Syntax: .forge  <discipline> <quantity> <product> <material>
}