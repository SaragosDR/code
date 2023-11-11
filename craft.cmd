include library.cmd
include craftlibrary.cmd


#var materialsizes tiny|small|medium|large|huge|massive|enormous|immense|gargantuan|gigantic|colossal

if_1 then
{
  echo %1, %2, %3, %4
  if (matchre("%1", "%difficulties") then var difficulty %1
  else
  {
    put #echo mono Difficulty must be from %difficulties.
    put #echo mono Syntax: .craft <difficulty> <discipline> <material>
    exit
  }
  if_2 then
  {
    if (matchre("%2", "%disciplines") then var discipline %2
    else
    {
      put #echo mono Discipline must be from %disciplines.
      put #echo mono Syntax: .craft <difficulty> <discipline> <material>
      exit
    }
  }
  else
  {
    put #echo Must specify a discipline.
    put #echo mono Syntax: .craft <difficulty> <discipline> <material>
    exit
  }
  if_3 then
  {
    var material %3
    put #echo Yellow Crafting %difficulty %discipline work orders in %material.
  }
  else
  {
    put #echo Must specify a material.
    put #echo mono Syntax: .craft <difficulty> <discipline> <material>
    exit
  }
}
else
{
  put #echo mono Syntax: .craft <difficulty> <discipline> <material>
  exit
}

var workorder 1
var maxvolumes 200
var maxquantity 2
var smelting 0

action var product $2; var quantity $3; var quality $4; var timelimit $5 when \w+ shuffles through some notes and says, "Alright, this is an order for (a|an|some) (.*)\. I need (\d+) (finely-crafted|of superior quality|of exceptional quality), made from any material and due in (\d+) roisaen\.

action var chapter $1 when You seem to recall this item being somewhere in chapter (\d+) of the instruction book\.
action var volume $1 when \(1\) refined metal ingot \((\d+) volume\)
action var polelong $1 when \((\d+)\) finished long wooden pole
action var poleshort $1 when \((\d+)\) finished short wooden pole
action var haft $1 when \((\d+)\) finished wooden haft
action var hilt $1 when \((\d+)\) finished wooden hilt
action var cordshort $1 when \((\d+)\) finished short leather cord
action var handle $1 when \((\d+)\) finished metal shield handle
action var boss $1 when \((\d+)\) finished metal shield boss
action var padlarge $1 when \((\d+)\) finished large cloth padding
action var padsmall $1 when \((\d+)\) finished small cloth padding
action var backinglarge $1 when \((\d+)\) finished large leather backing
action var backingsmall $1 when \((\d+)\) finished small leather backing

action math expenses add $1; echo expenses: %expenses; var currency $2 when The attendant says, "You can purchase \w+ \w+ \w+ \w+ for (\d+) (Kronars|Lirums|Dokoras)\.
action math expenses add $1; echo expenses: %expenses; var currency $2 when You decide to purchase the \w+, and pay the sales clerk (\d+) (Kronars|Lirums|Dokoras)\.
action var revenue $1; echo revenue: %revenue; var currency $2 when You hand \w+ your logbook and bundled items, and are given (\d+) (Kronars|Lirums|Dokoras) in return\.

gosub AREAVARINIT
gosub STOWALL
put store default %craftingstorage

#Serric pulls a pipe from his tobacco pouch and wanders away.


MAIN:
  #ACQUIRE_TASK
  var expenses 0
  var revenue 0
  var mindstatebegin $Forging.LearningRate
  var timebegin $gametime
  gosub FINDMASTER
  gosub TASKACQUIRE
  gosub PUTITEM %discipline book in %craftingstorage
  put #echo Yellow Work Order: %quantity %product %quality in %timelimit roisaen.
  put #echo Yellow Volumes: %totalvolume
  put #echo Yellow CordLong: %totalcordlong.....CordShort: %totalcordshort
  put #echo Yellow Hafts: %totalhaft.....Hilts: %totalhilt
  put #echo Yellow Long Poles: %totalpolelong.....Short Poles: %totalpoleshort
  put #echo Yellow Handles: %totalhandle.....Bosses: %totalboss
  put #echo Yellow PadLarge: %totalpadlarge.....PadSmall: %totalpadsmall
  put #echo Yellow BackingLarge: %totalbackinglarge.....BackingSmall: %totalbackingsmall
  
  #MATERIALS_PURCHASE
  #CHECKING_EXISTING_INGOT
  var goodingot 0
  gosub INGOTCHECK
  if (%goodingot != 1) then
  {
    #PURCHASING_INGOTS
    var ingotsused 0
    gosub ORDERBULK
    if (%smelting = 1) then gosub ORDERMATERIALS
    if (%ingotsused = 0) then
    {
      put #echo Yellow Could not find a combination of ingots to use when smelting is %smelting.
      exit
    }
  }
  else
  {
    var ingotsused 1
    put #echo Yellow Had a big enough ingot already!
  }
  #PURCHASING_PARTS
  gosub ORDERPARTS
  
  #SMELTING
  put #echo Yellow IngotsUsed: %ingotsused
  if (%ingotsused > 1) then
  {
    if (%smelting = 1) then
    {
      gosub FINDCRUCIBLE
      if (%foundcrucible = 0) then
      {
        put #echo Yellow No free crucibles!
        put store default %storage
        exit
      }
      gosub SMELTPUT %material
      gosub SMELT
    }
    else
    {
      put #echo Yellow needed more than one ingot, but smelting is turned off!
      put store default %storage
      exit
    }
  }
  #CRAFTING
  gosub FINDANVIL
  if (%foundanvil = 0) then
  {
    put #echo Yellow No free anvils!
    put store default %storage
    exit
  }
  gosub GETITEM %discipline book
  gosub CRAFTING
  gosub FINDMASTER  
  gosub GETITEM logbook from my %craftingstorage
  gosub GIVEMASTERLOG %mastername
  gosub PUTITEM logbook in my %craftingstorage
  put #echo Yellow Crafting complete!
  var profit %revenue
  math profit subtract %expenses
  var mindstatetotal $Forging.LearningRate
  math mindstatetotal subtract %mindstatebegin
  var timetotal $gametime
  math timetotal subtract %timebegin
  put #echo >Log [CRAFT] Completed %difficulty %discipline work order in %material.  Revenue: %revenue - Expenses: %expenses = Profit: %profit.  Mindstates gained: %mindstatetotal in %timetotal seconds.
  if ($Forging.LearningRate < 30) then goto MAIN
  else
  {
    put store default %storage
    exit
  }

INGOTCHECK:
  gosub GETITEM %material ingot in my %craftingstorage
  if ("$righthand" = "Empty") then return
  action (ingotcheck) var ingotvolume $1 when About (\d+) volume of metal was used in this item's construction\.
  gosub ANALYZECRAFT %material ingot
  action (ingotcheck) off
  put #echo Yellow ingotvolume: %ingotvolume
  if (%ingotvolume >= %totalvolume) then
  {
    gosub PUTITEM ingot in my %craftingstorage
    var goodingot 1
    return
  }
  else
  {
    gosub FINDCRUCIBLE
    gosub DUMPITEM %material ingot
    goto INGOTCHECK
  }

COUNTINGOT:
  var ingotcount 0
COUNTINGOTP:
  pause
COUNTINGOTMAIN:
  matchre COUNTINGOTPO %waitstring
  matchre COUNTINGOTGOOD About (\d+) volumes of material make up the \w+ ingot\.
  matchre COUNTINGOTGOOD About (\d+) volume of material make up the \w+ ingot\.
  
  put count my ingot
  matchwait
  
COUNTINGOTGOOD:
  var ingotcount $0
  return

ANALYZECRAFT:
  var analyzestring $0
  goto ANALYZECRAFTMAIN
ANALYZECRAFTP:
  pause
ANALYZECRAFTMAIN:
  matchre ANALYZECRAFTP %waitstring
  match RETURN Roundtime:
  put analyze my %analyzestring
  matchwait

  
AREAVARINIT:
  #SHARD
  if ($zoneid = 67) then
  {
    if (("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing") || ("%discipline" = "blacksmithing")) then
    {
      var mastername Serric
      var masterrange 644|645|649|650|653|654|655|658|646|661|800
      var suppliesroom 658
      var bulkroom 800
      var toolroom 653
      var partsroom 653
      var repairroom 650
      var cruciblerange 659|656|651|647
      var anvilrange 660|657|652|648
    }
  }
  #HIB
  if ($zoneid = 116) then
  {
    if (("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing") || ("%discipline" = "blacksmithing")) then
    {
      var mastername Juln
      var masterrange 401|402|403|404|405|406|407|408|409|410|411|412|413
      var suppliesroom 409
      var bulkroom 0
      var toolroom 407
      var partsroom 407
      var repairroom 402
      var cruciblerange 403|404|405|406
      var anvilrange 410|411|412|413
    }
  }
  return
  
  