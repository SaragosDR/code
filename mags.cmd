include library.cmd

action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) (.*)s\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) sprigs of (.*)\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) some (.*)\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) bits of (.*)\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) pieces of wild (.*)\.
action var forageitem stick when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) sticks, branches or limbs.
action var forageitem leaf when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) leaves.
action var quantity $1 when You need to turn in (\d*) more\.

var badforagelist $ttbadforagelist

var storage $storage


MAIN:
  gosub TASKLOGIC
  exit

TASKLOGIC:
  if ($Trading.LearningRate > 33) then var tradinglock 1
	if ($Trading.LearningRate < 4) then var tradinglock 0
  if ($Trading.Ranks >= 1750) then var tradinglock 1
  if (%tradinglock = 1) then
  {
    var noncombattasksactive 0
    return
  }
  var forageitem 0
  var foragezone 7
  var forageroom 556
  gosub STOWALL
  gosub TASKFIND
  if (%forageitem = 0) then
  {
    gosub DEEPSLEEP
    gosub TASKMOVE
    gosub TASKASK
    pause 1
  }
  if ("%forageitem" = "branche") then var forageitem branch
  if ("%forageitem" = "grasse") then var forageitem grass
  if ("%forageitem" = "berrie") then var forageitem berries
  if (matchre("%forageitem", "(\w+) branches")) then var forageitem $1 branch
  if (matchre("%forageitem", "(\w+) leave")) then var forageitem $1 leaf
  if (matchre("%forageitem", "riolur leaf")) then var forageitem riolur leaves
  if (matchre("%forageitem", "%badforagelist")) then
  {
    #put #echo >Log [Mags]: Bad ForageItem: %forageitem
    gosub TASKMOVE
    gosub TASKCANCEL
    goto TASKLOGIC
  }
  put #echo Yellow Quantity: %quantity
  put #echo Yellow Forageitem: %forageitem
  put #echo >Log [Mags]: ForageItem: %forageitem
  gosub CUSTOMFORAGEROOMS
  if ("$zoneid" != "%foragezone") then
  {
    if ("%foragezone" = "1") then gosub TRAVEL crossing
    if ("%foragezone" = "7") then gosub TRAVEL arthe
    if ("%foragezone" = "9b") then gosub TRAVEL sorrow
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
    goto TASKLOGIC
  }
  gosub TASKMOVE
  var givingdone 0
  gosub AWAKE
  gosub TASKGIVELOOP
  goto TASKLOGIC
  

CUSTOMFORAGEROOMS:
  if ("%forageitem" = "briarberry root") then
  {
    var foragezone 7
    var forageroom 116
  }
  if ("%forageitem" = "nuloe stem") then
  {
    var foragezone 9b
    var forageroom 8
  }
  if ("%forageitem" = "tea leaf") then
  {
    var foragezone 7
    var forageroom 313
  }
  return