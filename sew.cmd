include library.cmd
include craftlibrary.cmd

var craftingstorage haversack
var scissors scissors
var sewingneedles sewing needles
var pins pins
var slickstone slickstone
var yardstick yardstick
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
  if (%product = "netting") then gosub ZASELECRAFTING
  else gosub CRAFTING
}
else 
{
  put #echo mono Syntax: .sew  <discipline> <quantity> <product> <material>
}
exit


