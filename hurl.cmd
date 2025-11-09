include library.cmd

if ("$charactername" = "Saragos") then
{
  var weapontype elemental
  var weaponname electric ht
}
if ("$charactername" = "Sorhhn") then
{
  var weapontype weapon
  var weaponname throwing axe
}
if ("$charactername" = "Navesi") then
{
  var weapontype weapon
  var weaponname tyrium axe
}

if_1 then var pvptarget %1
else var pvptarget $pvptarget

if_1 then
{
  if (("%1" = "s") || ("%1" = "sa") || ("%1" = "sax") || ("%1" = "saxe")) then
  {
    var weapontype weapon
    var weaponname throwing axe
  }
  if (("%1" = "n") || ("%1" = "na") || ("%1" = "nax") || ("%1" = "naxe")) then
  {
    var weapontype weapon
    var weaponname tyrium axe
  }
  if (("%1" = "i") || ("%1" = "ic") || ("%1" = "ici") || ("%1" = "icic") || ("%1" = "icicl") || ("%1" = "icicle")) then
  {
    var weapontype weapon
    var weaponname blued icicle
  }
  if (("%1" = "b") || ("%1" = "bl") || ("%1" = "bla") || ("%1" = "blad") || ("%1" = "blade") || ("%1" = "blades")) then
  {
    var weapontype weapon
    var weaponname blades
  }
}


if !matchre("$righthand", "%weaponname") then gosub STOWALL
MAINLOOP:
  if ("%weapontype" = "elemental") then gosub SUMMONWEAPON %weaponname
  if ("%weapontype" = "weapon") then
  {
    if !matchre("$righthand", "%weaponname") then gosub GETITEM %weaponname
  }
  gosub ATTACKHURLPVP
  goto MAINLOOP
  
  
  
ATTACKHURLPVPP:
	pause
ATTACKHURLPVP:
	matchre FACE at what are you
	matchre RETURN There is nothing else to face!
	matchre ATTACKHURLPVPP %waitstring
	matchre RETURN Roundtime|What are you trying to|You must hold the|I could not find what you were referring to\.
	matchre THROWSTOW You need a free hand to
  put hurl %pvptarget
  matchwait 5
	var timeoutsub ATTACKHURLPVP
  var timeoutcommand hurl
	goto TIMEOUT