include library.cmd

var powershotweapon $powershotweapon
var powershotammo $powershotammo
var shielditem $shielditem
var manename powershot

if !def(powershotlast) then put #var powershotlast 0

  action (combo) on
  

if_1 then var pvptarget %1
else var pvptarget $pvptarget

var manetest $unixtime
math manetest subtract $powershotlast
if (%manetest > 90) then
{
  if (!matchre("$righthand", "%powershotweapon")) then gosub GETITEM %powershotweapon
  gosub BOWLOADCHECK %powershotweapon
  if (%bowloadgood = 0) then
  {
    gosub GETITEM %powershotammo
    var ubowmmo %powershotammo
    gosub BOWLOAD %powershotammo
    gosub STOWITEM %powershotammo
  }
  gosub FACETARGET %pvptarget
  gosub ATTACKACMCOMBO powershot
  gosub STOWFEET
}
else
{
  var secondsleft 90
  math secondsleft subtract %manetest
  put #echo Yellow Powershot is on cooldown!  Next use: %secondsleft sec.
}

