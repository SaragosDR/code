include library.cmd

action math bundletransfervalue add $1 when You scan through (?:.*) and finally decide that they're worth a total of about (\d+) (Kronars|Lirums|Dokoras)\.
action math pouchtransfervalue add $1 when You sort through the gems and finally decide that they're worth a total of about (\d+) (Kronars|Lirums|Dokoras)\.

var bundletransfervalue 0
var pouchtransfervalue 0
var bundlestransferred 0
var pouchestransferred 0

#goto TRANSFERRECEIVELOOP

if_1 then
{
  if ("%1" = "g") then
  {
    put #echo Yellow Giving.
    var mode 1
    var origin vault
    var destination vortical sack
  }
  if ("%1" = "r") then
  {
    put #echo Yellow Receiving.
    var mode 2
    var origin space
    var destination vault
  }
  
}
else
{
  put #echo Must have an argument of either, "g", for giver, or, "r", for receiver.
  exit
}

gosub STOWALL
if (%mode = 1) then
{
  var transferitem bundle
  goto TRANSFERGIVELOOP
}
if (%mode = 2) then
{
  goto TRANSFERRECEIVELOOP
}
exit

TRANSFERGIVELOOP:
  gosub GETITEM %transferitem from %origin
  gosub APPRAISE my %transferitem
  if ("$righthand" != "Empty") then
  {
    gosub PUTLOOP
    if ("%transferitem" = "bundle") then math bundlestransferred add 1
    if ("%transferitem" = "gem pouch") then math pouchestransferred add 1
    
    
    put #echo Yellow Bundles Transferred: %bundlestransferred
    if (%bundlestransferred > 0) then
    {
      put #echo Yellow Total BUndle Value: %bundletransfervalue
      var averagebundle %bundletransfervalue
      math averagebundle divide %bundlestransferred
      put #echo Yellow Average Bundle Value: %averagebundle
    }
    
    put #echo Yellow Pouches transferred: %pouchtransferred
    if (%pouchestransferred > 0) then
    {
      put #echo Yellow Total Pouch Value: %pouchtransfervalue
      var averagepouch %pouchestransfervalue
      math averagepouch divide %pouchestransferred
      put #echo Yellow Average Pouch Value: %averagepouch
    }
    goto TRANSFERGIVELOOP
  }
  else
  {
    if ("%transferitem" = "bundle") then
    {
      var transferitem gem pouch
      goto TRANSFERGIVELOOP
    }
    else
    {
      put #echo Yellow Done!
      exit
    }
  }

PUTLOOP:
  gosub PUTITEM my %transferitem in %destination
  if ("$righthand" != "Empty") then
  {
    pause 2
    goto PUTLOOP
  }
  else return


TRANSFERRECEIVELOOP:
  gosub GETLOOP
  gosub APPRAISE my %transferitem
  gosub PUTITEM $righthand in %destination
  if ("$righthand" != "Empty") then
  {
    gosub PUTITEM $righthand in vortical sack
    put #echo Yellow Vault full!
    exit
  }
  if ("%transferitem" = "bundle") then math bundlestransferred add 1
  if ("%transferitem" = "gem pouch") then math pouchestransferred add 1
  
  
  put #echo Yellow Bundles Transferred: %bundlestransferred
  if (%bundlestransferred > 0) then
  {
    put #echo Yellow Total BUndle Value: %bundletransfervalue
    var averagebundle %bundletransfervalue
    math averagebundle divide %bundlestransferred
    put #echo Yellow Average Bundle Value: %averagebundle
  }
  
  put #echo Yellow Pouches transferred: %pouchestransferred
  if (%pouchestransferred > 0) then
  {
    put #echo Yellow Total Pouch Value: %pouchtransfervalue
    var averagepouch %pouchtransfervalue
    math averagepouch divide %pouchestransferred
    put #echo Yellow Average Pouch Value: %averagepouch
  }
  goto TRANSFERRECEIVELOOP

GETLOOP:
  gosub GETITEM bundle in %origin
  if ("$righthand" = "Empty") then
  {
    gosub GETITEM gem pouch in %origin
    if ("$righthand" = "Empty") then
    {
      pause 2
      goto GETLOOP
    }
    else
    {
      var transferitem gem pouch
      return
    }
  }
  else
  {
    var transferitem bundle
    return
  }

  

  
