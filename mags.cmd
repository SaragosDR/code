include library.cmd

action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) (.*)s\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) sprigs of (.*)\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) some (.*)\.
action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) bits of (.*)\.
action var forageitem stick when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) sticks, branches or limbs.
action var forageitem leaf when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) leaves.

action var quantity $1 when You need to turn in (\d*) more\.

var storage $storage

var badforagelist log|almond|moss|tea leaf|plovik leaf|green moss|lavender|sage
var foragelist berries|branch|chamomile|hulnik grass|rose|seolarn weed|turnip

MAINLOOP:
  gosub DEEPSLEEP
  gosub STOWALL
  gosub TASKMOVE
  gosub TASKASK
  pause 1
  if ("%forageitem" = "branche") then var forageitem branch
  if ("%forageitem" = "berrie") then var forageitem berries
  if ("%forageitem" = "plovik leave") then var forageitem plovik leaf
  if ("%forageitem" = "tea leave") then var forageitem tea leaf
  put #echo Yellow Quantity: %quantity
  put #echo Yellow Forageitem: %forageitem
  if (matchre("%forageitem", "%badforagelist")) then
  {
    gosub TASKCANCEL
    goto MAINLOOP
  }
  gosub MOVE ntr
  gosub MOVE 314
  gosub AWAKE
  var heldquantity 0
  gosub TASKFORAGELOOP
  gosub TASKMOVE
  var givingdone 0
  gosub AWAKE
  gosub TASKGIVELOOP
  goto MAINLOOP


