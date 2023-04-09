include library.cmd

if ("$charactername" = "Saragos") then
{
  var weapontype elemental
  var weaponname electric javelin
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
  gosub ATTACKTHROWNKNIVES
  goto MAINLOOP