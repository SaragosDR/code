include library.cmd

action var contents $3 when ^You rummage through (.*) and see (a|an|some) (.*)\.$
action var contents $2 when In the (.*) you see (.*)\.

var scrolls scroll|ostracon|roll|leaf|vellum|tablet|parchment|bark|papyrus

if (("%1" = "item") || ("%1" = "bag")) then
{
  var transfertype %1
  if ("%transfertype" = "bag") then
  {
    if_5 then 
    {
      var arg1 %2 %3
      var arg2 %4 %5
    }
    else
    {
      if_4 then 
      {
        gosub HELP
        exit
      }
      else
      {
        if_3 then
        {
          echo here
          var arg1 %2
          var arg2 %3
        }
        else
        {
          gosub HELP
          exit
        }  
      }
    }
  }
  else
  {
    if_4 then
    {
      var arg1 %2
      var arg2 %3
      var arg3 %4
    }
    else
    {
      gosub HELP
      exit
    }
  }
  
  
  
}
else
{
  gosub HELP
  exit
}




if ("%transfertype" = "bag") then goto MAINBAG
if ("%transfertype" = "item") then goto MAINITEM
gosub HELP
exit

MAINITEM:
  gosub STOWALL
  gosub GETITEM %arg1 from my %arg2
  if ("$righthand" != "Empty") then
  {
    gosub PUTITEM my %arg1 in my %arg3
  }
  else exit
  goto MAINITEM
  

MAINBAG:
  gosub STOWALL
  put look in my %arg1
  pause 1
	
TRANSFER:
	eval contents replacere("%contents", " wrapped in resin-soaked cloth", "")
  eval contents replacere("%contents", " with a thin woven edge", "")
  eval contents replacere("%contents", " with bright yellow ducks embroidered across the hem", "")
	eval contents replacere("%contents", ", a |, an |, some | and a | and an | and some ", "|")
	eval contents replacere("%contents", "\|[^\|]* (?=\w*($|\|))","|")
	eval contents replacere("%contents", "^[^\|]* (?=\w*($|\|))","")
	eval maxcount count("%contents","|")
	var counter 0

TRANSFER.LOOP:
	if %counter > %maxcount then goto EXIT
  gosub GETITEM %contents(%counter) in my %arg1
  if %arg2 = "vault" then
  {
    gosub PUTITEM my %contents(%counter) in %arg2
  }
  else gosub PUTITEM my %contents(%counter) in my %arg2
	math counter add 1
	goto TRANSFER.LOOP

HELP:
  put #echo mono Syntax:
  put #echo mono .transfer bag <origin adjective> <origin noun> <destination adjective> <destination noun>
  put #echo mono .transfer bag <origin noun> <destination noun>
  put #echo mono .transfer item <noun> <origin noun> <destination noun>
  put #echo mono .transfer scroll <origin noun> <destination noun>
  put #echo mono .transfer scroll <origin adjective> <origin noun> <destination adjective> <destination noun>
  return