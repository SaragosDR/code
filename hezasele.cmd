var scripttag ZASELE
include library.cmd
include craftlibrary.cmd
include helibrary.cmd

var nouns lump|shard|nugget|bar|leather|cloth|dye|deed|stack|fragment
var searchlist 3|8|10|11|12|13|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|131

var suppliesroom 914
var toolroom 913
var repairroom 925
var repairer Rangu

action var taskitem $1; var taskcount $2; var taskcomplete $3; var taskremaining $2; math taskremaining subtract $3 when In particular, she wanted you to craft (.*) and indicated that (\d+) would suffice\.  So far, you have returned (\d+) to her\.
action put $1 when Seamstress Zasele goes (\w+)\.

timer clear
timer start

gosub STOWALL

MAIN:  
  if (($zoneid != 1) && ($zoneid != 62022)) then
  {
    put #echo Yellow Not in Crossing or Andreshlew!  Exiting!
    exit
  }
  gosub TASKCHECK
  #checking_task_status
  if (%goodtask = 1) then
  {
    put #echo Yellow Valid task.
    gosub TAPNOUN %taskitem
    var tasknoun %nountap
    var countloop 0
    gosub COUNTPRODUCTS
    put #echo Yellow Item to be made: %taskitem
    put #echo Yellow Items in task: %taskcount
    put #echo Yellow Items remaining to complete the task: %taskremaining

    if (%taskremaining > 0) then
    {
      if ($zoneid = 62022) then
      {
        gosub MOVE dolphin
        gosub GOCORRAL
      }
      if (%tasknoun = "netting") then
      {
        var discipline tailoring
        var product netting
        var yards 10
        var material linen
        var materialnoun cloth
        var materialnum 7
      }
      if (%tasknoun = "rope") then
      {
        var discipline tailoring
        var product rope
        var yards 4
        var material linen
        var materialnoun cloth
        var materialnum 7
      }
      if (%tasknoun = "straps") then
      {
        var discipline tailoring
        var product straps
        var yards 5
        var material rat-pelt
        var materialnoun leather
        var materialnum 14
      }
      if (%tasknoun = "outfit") then
      {
        var discipline knitting
        var product outfit
        var yards 12
        var material wool
        var materialnoun yarn
        var materialnum 13
      }
      if ("%discipline" = "tailoring") then
      {
        var yardsneeded %yards
        math yardsneeded * %taskremaining
        var ordersneeded %yardsneeded
        var ordersmodulus %yardsneeded
        math ordersmodulus modulus 10
        if (%ordersmodulus > 0) then
        {
          math ordersneeded + 10
          math ordersneeded - %ordersmodulus
        }
        math ordersneeded / 10
        echo yardsneeded: %yardsneeded
        echo ordersneeded: %ordersneeded
       
        if ($roomid != %suppliesroom) then gosub MOVE %suppliesroom
        #gosub STOWALL
        gosub ORDERLOOP %materialnum %ordersneeded %materialnoun
        gosub COMBINEALL
        gosub PUTITEM %material %materialnoun in my %craftingstorage
      }
      if ("%discipline" = "knitting") then
      {
        var yardsneeded %yards
        math yardsneeded * %taskremaining
        var ordersneeded %yardsneeded
        var ordersmodulus %yardsneeded
        math ordersmodulus modulus 100
        if (%ordersmodulus > 0) then
        {
          math ordersneeded + 100
          math ordersneeded - %ordersmodulus
        }
        math ordersneeded / 100
        put #echo Yellow yardsneeded: %yardsneeded
        put #echo Yellow ordersneeded: %ordersneeded
       
        if ($roomid != %suppliesroom) then gosub MOVE %suppliesroom
        #gosub STOWALL
        gosub ORDERLOOP %materialnum %ordersneeded %materialnoun
      }
      #gosub STOWALL
      #REPAIR
      if ($roomid != %repairroom) then gosub MOVE %repairroom
      gosub CRAFTREPAIRLOOP Rangu outfitting
      gosub CRAFTTICKETLOOP Rangu
      
      if ($roomid != %workroom) then gosub MOVE %workroom
      
      var quantity %taskremaining
      gosub ZASELECRAFTING
      goto MAIN
    }
    else
    {
      put #echo Yellow Turning in work!
      gosub LOCATIONCHECK
      if (!contains("$roomobjs", "Seamstress Zasele")) then
      {
        put #echo Yellow Finding Zasele.
        gosub FINDZASELENEW
      }
      var badturnin 0
      gosub TURNINPRODUCT
      if (%badturnin = 1) then
      {
        var badturnin 0
        goto MAIN
      }
      if ($roomid != %dumproom) then gosub MOVE %dumproom
      gosub PROCESSSACK
      gosub GETITEM my %tasknoun instructions
      gosub DUMPITEM my %tasknoun instructions
    }
  }
  else
  {
    put #echo Yellow No valid task.
  }
  #GETTING_NEW_TASK  
  gosub LOCATIONCHECK
  if (!contains("$roomobjs", "Seamstress Zasele")) then
  {
    put #echo Yellow Finding Zasele.
    gosub FINDZASELENEW
  }
	gosub GETTASK
	gosub PUTITEM my instructions in my %craftingstorage
	goto MAIN
  
 
COMBINEALL:
  matchre COMBINEALL ^You get
  match COMBINEALL2 You need a free hand to pick that up.
  matchre COMBINEALL3 What were you referring to?
  send get %material %materialnoun in my %craftingstorage
  matchwait
  
COMBINEALL2:
	matchre COMBINEALL3 too large
	matchre COMBINEALL You must be holding|You combine
	put combine my %material %materialnoun with my other %material %materialnoun
	matchwait

COMBINEALL3:
  matchre RETURN You put|What were you referring to?
  put put my %material %materialnoun in my %craftingstorage
  matchwait
 

COUNTPRODUCTS:
  matchre GOODCOUNT You see nothing unusual.
  matchre DONECOUNT I could not find what you were referring to.
  if %countloop = 0 then send look first %tasknoun in %craftingstorage
  if %countloop = 1 then send look second %tasknoun in %craftingstorage
  if %countloop = 2 then send look third %tasknoun in %craftingstorage
  if %countloop = 3 then send look fourth %tasknoun in %craftingstorage
  if %countloop = 4 then send look fifth %tasknoun in %craftingstorage
  if %countloop = 5 then send look sixth %tasknoun in %craftingstorage
  if %countloop = 6 then send look seventh %tasknoun in %craftingstorage
  if %countloop = 7 then send look eighth %tasknoun in %craftingstorage
  matchwait
  
GOODCOUNT:
  math countloop add 1
  if %countloop != 8 then goto COUNTPRODUCTS
  else goto DONECOUNT

DONECOUNT: 
  math taskremaining subtract %countloop
  return

FINDZASELENEW:
  var searchnum 0
  eval searchlength count("%searchlist", "|")
  gosub FINDZASELELOOP
  if (contains("$roomobjs", "Seamstress Zasele")) then echo FOUND HER!
  else echo DIDN'T FIND IT!
  return
  
FINDZASELELOOP:
  if %searchnum > %searchlength then return
  gosub MOVE %searchlist(%searchnum)
  if (contains("$roomobjs", "Seamstress Zasele")) then return
  math searchnum add 1
  goto FINDZASELELOOP

  
GETTASKP:
  pause
GETTASK:
  pause .1
  match GETTASKP To whom are you speaking?
  matchre WAITTASK Seamstress Zasele says, "I am sorry, you must wait before I can give you a task."
  matchre TURNINPRODUCT Seamstress Zasele looks at you and says,
  matchre GETTASKCHOOSE Seamstress Zasele beams
  matchre GETTASK2 Seamstress Zasele looks hopeful
  match GETTASKREFUSED "Word has traveled.  You are unreliable.
  put ask zasele for task
  matchwait

GETTASKREFUSED:
  put #echo Yellow Waiting for Zasele to be willing to give a task again.
  pause 60
  goto GETTASK

GETMONEY:
  var zaseleroom $roomid
  var roomtarget bank
  gosub MOVE

WAITTASK:
  pause 30
  goto GETTASK

GETTASK2:
  pause .1
  matchre TURNINPRODUCT Seamstress Zasele looks at you and says,
  matchre GETTASKACCEPT Seamstress Zasele beams 
  put ask zasele for task
  matchwait

GETTASKACCEPT:
  match OUTOFMONEY You rummage around in your pockets and quickly realize you don't have that much.  Seamstress Zasele looks at you knowingly, and shrugs.  She holds up a small, recently painted sign:
  match RETURN Seamstress Zasele smiles warmly and holds out an open hand and lifts a weathered sign with the other:
  put accept task
  return

OUTOFMONEY:
  var startroom $roomid
  gosub MOVE teller
  gosub HECOINWITHDRAW 10 platinum kronars
  gosub MOVE %startroom
  goto GETTASK

GETINSTRUCTIONSP:
  pause
GETINSTRUCTIONS:
  pause .1
  match GETINSTRUCTIONSP %waitstring
  match RETURN Seamstress Zasele frowns.  She holds up one of her signs while handing you
  put ask zasele for instructions
  matchwait

TURNINPRODUCT:
  gosub GETITEM %tasknoun from my %craftingstorage
  if ((matchre ("$righthandnoun", "%tasknoun")) || (matchre ("$lefthandnoun", "%tasknoun"))) then goto GOTPRODUCT
  else
  {
    var badturnin 1
    return
  }
  
GOTPRODUCT:
  pause 1
  match RETURN Seamstress Zasele hands you a woven sack.
  matchre TURNINPRODUCT Zasele holds up her fingers 
  matchre BADPRODUCT Seamstress Zasele inspects the|Seamstress Zasele ignores your offer.
  put give %tasknoun to zasele
  matchwait

BADPRODUCT:
  put drop %tasknoun
  goto TURNINPRODUCT

TASKCHECK:
  matchre GOODTASK While visiting Andreshlew for the Hollow Eve festivities, Zasele has asked you to
  matchre NOTASK You are not currently on a task.
  put task
  matchwait

NOTASK:
  var goodtask 0
  RETURN
  
GOODTASK:
  var goodtask 1
  RETURN



