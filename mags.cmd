include library.cmd

action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) (.*)s\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) sprigs of (.*)\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) some (.*)\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) bits of (.*)\.
action var forageitem stick when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) sticks, branches or limbs.
action var forageitem leaf when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) leaves.

action var quantity $1 when You need to turn in (\d*) more\.

var badforagelist glaysker flower|briarberry root|coffee bean|almond|moss

var storage $storage

var forageitem 0
var foragezone 7
var forageroom 556


MAINLOOP:
  gosub STOWALL
  var forageitem 0
  gosub TASKFIND
  if (%forageitem = 0) then
  {
    gosub DEEPSLEEP
    gosub TASKMOVE
    gosub TASKASK
    pause 1
  }
  if ("%forageitem" = "branche") then var forageitem branch
  if ("%forageitem" = "berrie") then var forageitem berries
  if (matchre("%forageitem", "(\w+) branches")) then var forageitem $1 branch
  if (matchre("%forageitem", "(\w+) leave")) then var forageitem $1 leaf

  if (matchre("%forageitem", "%badforagelist")) then
  {
    #put #echo >Log [Mags]: Bad ForageItem: %forageitem
    gosub TASKMOVE
    gosub TASKCANCEL
    goto MAINLOOP
  }
  put #echo Yellow Quantity: %quantity
  put #echo Yellow Forageitem: %forageitem
  put #echo >Log [Mags]: ForageItem: %forageitem
  gosub CUSTOMFORAGEROOMS
  if ("$zoneid" != "%foragezone") then
  {
    if ("%foragezone" = "1") then gosub TRAVEL crossing
    if ("%foragezone" = "7") then gosub TRAVEL arthe
  }
  if ($roomid != %forageroom) then gosub MOVE %forageroom
  gosub AWAKE
  var heldquantity 0
  var foragesuccess 0
  gosub TASKFORAGELOOP
  if (%foragesuccess != 1) then
  {
    put #echo Yellow >Log [Mags]: Failed to forage %forageitem!
    gosub TASKMOVE
    gosub TASKCANCEL
    goto MAINLOOP
  }
  gosub TASKMOVE
  var givingdone 0
  gosub AWAKE
  gosub TASKGIVELOOP
  goto MAINLOOP
