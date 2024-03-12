include library.cmd
include craftlibrary.cmd

var material %1

gosub STOWALL
var varset $varset
var storage $m%varsetstorage
gosub CRAFTVARLOAD

MAIN:
  if_1 then gosub SMELTPUT %material
  gosub SMELT
  exit

  


