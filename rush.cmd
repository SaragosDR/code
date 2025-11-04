include library.cmd

var shielditem $shielditem

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



var manetest $unixtime
math manetest subtract $rushlast
if (%manetest > 90) then
{
  gosub ATTACKACMCOMBO rush
}
else
{
  var secondsleft 90
  math secondsleft subtract %manetest
  put #echo Yellow Rush is on cooldown!  Next use: %secondsleft sec.
}

