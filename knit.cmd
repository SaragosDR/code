include library.cmd
include craftlibrary.cmd

var craftingstorage haversack
var scissors scissors
var sewingneedles sewing needles
var pins pins
var slickstone slickstone
var yardstick yardstick
var knittingneedles knitting needles
var craftingcontainer crafting satchel

if_1 then
{
  var discipline knitting
  var quantity %1
  var product %2
  var material %3
  var materialnoun yarn

  gosub STOWALL
  if (%product = "outfit") then gosub ZASELECRAFTING
  else gosub CRAFTING
}
else 
{
  put #echo mono Syntax: .sew <quantity> <product> <material>
}
exit