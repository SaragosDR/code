include library.cmd

var shielditem $shielditem
var shieldinhand $shieldinhand

if_1 then var pvptarget %1
else var pvptarget $pvptarget


if !def(rushlast) then put #var rushlast 0

  action (combo) on

if (matchre("$lefthand", "%shielditem")) then
else
{
  if (matchre("$righthand", "%shielditem")) then gosub SWAP
  else
  {
    gosub REMITEM %shielditem 
  }
}

gosub FACETARGET %pvptarget

var manetest $unixtime
math manetest subtract $rushlast
if (%manetest > 90) then
{
  action (acm) on
  gosub ATTACKACMCOMBO rush
  action (acm) off
}
else
{
  var secondsleft 90
  math secondsleft subtract %manetest
  put #echo Yellow Rush is on cooldown!  Next use: %secondsleft sec.
  if ("%shieldinhand" != "YES") then gosub WEARITEM %shielditem
}

