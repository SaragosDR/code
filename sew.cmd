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
  var discipline tailoring
  var quantity %1
  var product %2
  material %3
  var materialnoun cloth

  gosub STOWALL
  if ((%product = "netting") || (%product = "rope") || (%product = "straps")) then gosub ZASELECRAFTING
  else gosub CRAFTING
}
else 
{
  put #echo mono Syntax: .sew <quantity> <product> <material>
}
exit


