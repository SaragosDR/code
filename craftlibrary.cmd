var disciplines weaponsmithing|armorsmithing|blacksmithing|tailoring
var difficulties easy|challenging|hard

action var product $1; var quantity $2; var quality $3; var timelimit $4 when \w+ shuffles through some notes and says, "Alright, this is an order for(?:a|an|some)? ?(.*)\. I need (\d+) (finely-crafted|of superior quality|of exceptional quality), made from any (?:material|leather|fabric) and due in (\d+) roisaen\.

action var chapter $1 when You seem to recall this item being somewhere in chapter (\d+) of the instruction book\.
action var volume $1 when \(1\) refined metal ingot \((\d+) volume\)
action var yards $1; var materialnoun cloth when \(1\) finished fabric cloth \((\d+) yards\)
action var yards $1; var materialnoun leather when \(1\) refined leather material \((\d+) yards\)

action var polelong $1 when \((\d+)\) finished long wooden pole
action var poleshort $1 when \((\d+)\) finished short wooden pole
action var haft $1 when \((\d+)\) finished wooden haft
action var hilt $1 when \((\d+)\) finished wooden hilt
action var cordshort $1 when \((\d+)\) finished short leather cord
action var cordlong $1 when \((\d+)\) finished long leather cord
action var handle $1 when \((\d+)\) finished metal shield handle
action var handleleather $1 when \((\d+)\) finished leather shield handle
action var boss $1 when \((\d+)\) finished metal shield boss
action var padlarge $1 when \((\d+)\) finished large cloth padding
action var padsmall $1 when \((\d+)\) finished small cloth padding
action var backinglarge $1 when \((\d+)\) finished large leather backing
action var backingsmall $1 when \((\d+)\) finished small leather backing

action math expenses add $1; var currency $2 when The attendant says, "You can purchase (?:a|an|some) \w+ \w+ \w+ for (\d+) (Kronars|Lirums|Dokoras)\.
action math expenses add $1; var currency $2 when The attendant says, "You can purchase (?:a|an|some) \w+ \w+ for (\d+) (Kronars|Lirums|Dokoras)\.
action math expenses add $1; var currency $2 when You decide to purchase the \w+, and pay the sales clerk (\d+) (Kronars|Lirums|Dokoras)\.
action math expenses add $1; var currency $2 when The sentry holds out (?:his|her) hand, saying, "That'll be (\d+) (Kronars|Lirums|Dokoras), (?:sir|madam)\."
action math expenses add $1; var currency $2 when You hand the clerk (\d+) (Kronars|Lirums|Dokoras) and (?:he|she) gives you back a repair ticket\.
action var revenue $1; var currency $2 when You hand \w+ your logbook and bundled items, and are given (\d+) (Kronars|Lirums|Dokoras) in return\.

goto CRAFTLIBEND

#####VARIABLE_SUBS#####
AREAVARINIT:
  #AESRY,DIRGE,LETH,KRESH,RATHA,HAVEN
  #CROSSING
  if ($zoneid = 1) then
  {
    if (("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing") || ("%discipline" = "blacksmithing")) then
    {
      var mastername Yalda
      var masterrange 961|960|903|904|902|865|906|1021|905|962|963 
      var suppliesroom 906
      var bulkroom 1021
      var toolroom 905
      var partsroom 905
      var repairroom 905
      var repairname clerk
      var cruciblerange 960|903|961|904
      var anvilrange 962|963|907|908|909
      var privateforge 906
      var privateforgedoor stone door
    }
    if ("%discipline" = "tailoring") then
    {
      var mastername Milline
      var masterrange 873|910|911|912|913|914|915|916
      var suppliesroom 914
      var bulkroom 0
      var toolroom 913
      var partsroom 0
      var repairroom 9114
      var repairname clerk
      var workroom 917
      #var workrooms 917|918|919|920|921|922|923|924
    }
  }
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
      var repairname clerk
      var cruciblerange 659|656|651|647
      var anvilrange 660|657|652|648
      var privateforge 655
      var privateforgedoor guarded archway
    }
  }
  #MERKRESH
  if ($zoneid = 107) then
  {
    if (("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing") || ("%discipline" = "blacksmithing")) then
    {
      var mastername Kapric
      var masterrange 332|333|334|335|336
      var suppliesroom 334
      var bulkroom 0
      var toolroom 335
      var partsroom 335
      var repairroom 335
      var repairname clerk
      var cruciblerange 337|338|339|340|341
      var anvilrange 342|343|344|345|346
      var privateforge 0
      var privateforgedoor guarded archway
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
      var repairname clerk
      var cruciblerange 403|404|405|406
      var anvilrange 410|411|412|413
      var privateforge 402
      var privateforgedoor battered doors
    }
    if ("%discipline" = "tailoring") then
    {
      var mastername Master
      var masterrange 474|466|467|468|469|470|471|472|473
      var suppliesroom 471
      var bulkroom 0
      var toolroom 473
      var partsroom 0
      var repairroom 473
      var repairname clerk
    }
  }
  return

CRAFTVARLOAD:
  var crafting $m%varsetcrafting
  var craftingstorage $m%varsetcraftingstorage
  var craftingstoragelocation $m%varsetcraftingstoragelocation
  var forging $m%varsetforging
  var forgingdifficulty $m%varsetforgingdifficulty
  var forgingmaterial $m%varsetforgingmaterial
  var forgingdiscipline $m%varsetforgingdiscipline
  var forgingrepair $m%varsetforgingrepair
  var forgingprivateroom $m%varsetforgingprivateroom
  var forgingmaxvolumes $m%varsetforgingmaxvolumes  
  var forgingmaxquantity $m%varsetforgingmaxquantity
  var forgingsmelting $m%varsetforgingsmelting
  
  var outfitting $m%varsetoutfitting
  var outfittingdifficulty $m%varsetoutfittingdifficulty
  var outfittingcloth $m%varsetoutfittingcloth
  var outfittingleather $m%varsetoutfittingleather
  var outfittingrepair $m%varsetoutfittingrepair
  var outfittingmaxquantity $m%varsetoutfittingmaxquantity
  var outfittingmaxyards $m%varsetoutfittingmaxyards
  
  var awl $m%varsetawl
  var bellows $m%varsetbellows
  var hammer $m%varsethammer
  var knittingneedles $m%varsetknittingneedles
  var pliers $m%varsetpliers
  var scissors $m%varsetscissors
  var sewingneedles $m%varsetsewingneedles
  var shovel $m%varsetshovel
  var slickstone $m%varsetslickstone
  var rod $m%varsetrod
  var tongs $m%varsettongs
  var yardstick $m%varsetyardstick
  
  var workorderbail 0
  var expenses 0
  var revenue 0
  var mindstatebegin $Forging.LearningRate
  var timebegin $gametime
  if (("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing") || ("%discipline" = "blacksmithing")) then var crafttype forging
  if ("%discipline" = "tailoring") then var crafttype outfitting
  var forgingrepairlist %bellows|%hammer|%shovel|%rod|%tongs
  var outfittingrepairlist %sewingneedles|%scissors|%awl|%yardstick|%slickstone|%knittingneedles
  
  return

#####WORKORDER_SUBS#####

CRAFTINGABORT:
   var workorderbail 1
   var forging NO
   put #var forging NO
   return

CRAFTINGEND:
  put store default %storage
  if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
  if ("$lefthand" != "Empty") then gosub PUTITEM my $lefthandnoun in my %craftingstorage
  gosub CLOSEITEM my %craftingstorage
  if ("%craftingstoragelocation" = "portal") then
  {
    gosub REMITEM %craftingstorage
    gosub PUTITEM %craftingstorage in my portal
  }
  return
  
CRAFTINGSTART:
  gosub FINDITEM %craftingstorage
  if (%finditemfound = 0) then
  {
    if ("%craftingstoragelocation" = "vault") then
    {
      if ("%forgingtown" != "%vaulttown") then
      {
        put #echo %alertwindow Yellow CraftingStorageLocation is Vault, but VaultTown != ForgingTown!  Ending crafting.
        gosub CRAFTINGABORT
        return
      }
    }
    if ("%craftingstoragelocation" = "portal") then
    {
      put look in my portal
      gosub GETITEM %craftingstorage in my portal
      if (matchre("$righthand", "%craftingstorage")) then
      {
        gosub WEARITEM %craftingstorage
      }
      else
      {
        put #echo %alertwindow Yellow [CRAFT]: Could not find crafting storage.
        exit
      }
    }
    else
    {
      put #echo %alertwindow Yellow [CRAFT]: Could not find crafting storage.
      exit
    }
  }
  gosub OPENITEM my %craftingstorage
  put store default %craftingstorage
  return

WORKORDER:
  #ACQUIRE_TASK
  gosub FINDMASTER
  gosub TASKACQUIRE
  if (%workorderbail = 1) then return
  gosub PUTITEM %discipline book in %craftingstorage
  if ("%crafttype" = "forging") then
  {
    put #echo Yellow Work Order: %quantity %product %quality in %timelimit roisaen.
    put #echo Yellow Volumes: %totalvolume
    put #echo Yellow CordLong: %totalcordlong.....CordShort: %totalcordshort
    put #echo Yellow Hafts: %totalhaft.....Hilts: %totalhilt
    put #echo Yellow Long Poles: %totalpolelong.....Short Poles: %totalpoleshort
    put #echo Yellow Handles: %totalhandle.....Bosses: %totalboss
    put #echo Yellow PadLarge: %totalpadlarge.....PadSmall: %totalpadsmall
    put #echo Yellow BackingLarge: %totalbackinglarge.....BackingSmall: %totalbackingsmall
  }
  if ("%crafttype" = "outfitting") then
  {
    put #echo Yellow Work Order: %quantity %product %quality in %timelimit roisaen.
    put #echo Yellow Yards: %totalyards
    put #echo Yellow CordLong: %totalcordlong.....HandleLeather: %totalhandleleather
    put #echo Yellow PadLarge: %totalpadlarge.....PadSmall: %totalpadsmall
    exit
  }
  #MATERIALS_PURCHASE
  if ("%crafttype" = "outfitting") then
  {
    #CHECKING_EXISTING_MATERIAL
    
  }
  if ("%crafttype" = "forging") then
  {
    #CHECKING_EXISTING_INGOT
    var goodingot 0
    gosub INGOTCHECK
    if (%goodingot != 1) then
    {
      #PURCHASING_INGOTS
      var ingotsused 0
      gosub ORDERBULK
      if ("%forgingsmelting" = "YES") then gosub ORDERMATERIALS
      if (%ingotsused = 0) then
      {
        put #echo Yellow Could not find a combination of ingots to use when smelting is %forgingsmelting.  Turning off forging.
        gosub CRAFTINGABORT
        return
      }
    }
    else
    {
      var ingotsused 1
      put #echo Yellow Had a big enough ingot already!
    }
    #PURCHASING_PARTS
    gosub ORDERPARTS
    
    #PURCHASING_OIL
    gosub COUNTOIL
    put #echo oilcount: %oilcount
    put #echo quantity: %quantity
    if (%oilcount < %quantity) then
    {
        if ($roomid != %partsroom) then gosub MOVE %toolroom
        gosub CRAFTINGORDER 6
        gosub PUTITEM my oil in my %craftingstorage
    }

    #SMELTING
    put #echo Yellow IngotsUsed: %ingotsused
    if (%ingotsused > 1) then
    {
      if ("%forgingsmelting" = "YES") then
      {
        gosub FINDCRUCIBLE
        if (%foundcrucible = 0) then
        {
          put #echo Yellow No free crucibles!
          put store default %storage
          return
        }
        gosub SMELTPUT %material
        gosub SMELT
      }
      else
      {
        put #echo Yellow Needed more than one ingot, but smelting is turned off!  Turning off crafting.
        put #echo %alertwindow Yellow Needed more than one ingot, but smelting is turned off!  Turning off crafting.
        gosub CRAFTINGABORT
        return
      }
    }
  }
  #CRAFTING
  if (%t >= %privateroomuntil) then gosub FINDANVIL
  else var foundanvil 0
  if (%foundanvil = 0) then
  {
    if (("%forgingprivateroom" = "YES") && (%privateforge != 0)) then
    {
      gosub MOVE %privateforge
      gosub GOPRIVATEROOM %privateforgedoor
      var privateroomuntil %t
      math privateroomuntil add 3550
      var rentedprivateroom 1
      var usingprivateroom 1
    }
    else
    {
      put #echo %alertwindow Yellow [CRAFT]: No free anvils!  Stopping forging!
      gosub CRAFTINGABORT
      return
    }
  }
  gosub GETITEM %discipline book
  if ((!matchre("$righthandnoun", "book")) && (!matchre("$lefthandnoun", "book"))) then
  {
    put #echo Yellow Could not find %discipline book!  Turning off crafting.
    put #echo %alertwindow Yellow Could not find %discipline book!  Turning off crafting.
    gosub CRAFTINGABORT
    return
  }
  gosub CRAFTING
  if (%usingprivateroom = 1) then
  {
    gosub MOVEROOMS go %privateforgedoor
    var usingprivateroom 0
  }
  gosub FINDMASTER  
  gosub GETITEM logbook from my %craftingstorage
  put #echo righthandnoun: $righthandnoun
  if (!matchre("$righthandnoun", "logbook")) then
  {
    put #echo %alertwindow Yellow Could not find logbook!  Ending crafting.
    put #echo Yellow Could not find logbook!  Ending crafting.
    gosub CRAFTINGABORT
    return
  }
  gosub GIVEMASTERLOG %mastername
  gosub PUTITEM logbook in my %craftingstorage
  put #echo Yellow Crafting complete!
  var profit %revenue
  math profit subtract %expenses
  var mindstatetotal $Forging.LearningRate
  math mindstatetotal subtract %mindstatebegin
  var timetotal $gametime
  math timetotal subtract %timebegin
  var timetotalmod %timetotal
  math timetotalmod modulus 6
  math timetotal subtract %timetotalmod
  var timetotalminutes %timetotal
  math timetotalminutes / 60
  put #echo >Log [CRAFT] Completed %difficulty %discipline work order in %material.  Revenue: %revenue - Expenses: %expenses = Profit: %profit %currency.  Mindstates gained: %mindstatetotal in %timetotalminutes minutes.
  return

CRAFTREPAIR:
  #REPAIR
  var craftrepairing 0
  if (("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing") || ("%discipline" = "blacksmithing")) then
  {
    if ("%forgingrepair" = "YES") then var craftrepairing 1
  }
  if (%craftrepairing = 1) then
  {
    put #echo Yellow Repairing tools.
    if ($roomid != %repairroom) then gosub MOVE %repairroom
    gosub CRAFTREPAIRLOOP %repairname %crafttype
    gosub CRAFTTICKETLOOP %repairname
  }
  return

FABRICCHECK:
  gosub GETITEM %material %materialnoun in my %craftingstorage
  if ("$righthand" = "Empty") then return
  action (materialcheck) var materialyards $1 when About (\d+) volume of metal was used in this item's construction\.
  gosub ANALYZECRAFT %material %materialnoun
  action (materialcheck) off
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
  matchre COUNTINGOTP %waitstring
  matchre COUNTINGOTGOOD About (\d+) volumes of material make up the \w+ ingot\.
  matchre COUNTINGOTGOOD About (\d+) volume of material make up the \w+ ingot\.
  match RETURN I could not find what you were referring to.
  put count my ingot
  matchwait
  
COUNTINGOTGOOD:
  var ingotcount $0
  return

COUNTOIL:
  var oilcount 0
COUNTOILP:
  pause
COUNTOILMAIN:
  matchre COUNTOILP %waitstring
  matchre COUNTOILGOOD The oil has (\d+) uses remaining\.
  matchre COUNTOILGOOD The oil has (\d+) use remaining\.
  match RETURN I could not find what you were referring to.
  put count my oil in my %craftingstorage
  matchwait
  
COUNTOILGOOD:
  var oilcount $0
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


#####CORE_CRAFTING#####
CRAFTING:
  var craftcount 0
CRAFTINGMAIN:
  if (%craftcount >= %quantity) then return
  gosub GETITEM %discipline book
  if ((!matchre("$righthandnoun", "book")) && (!matchre("$lefthandnoun", "book"))) then
  {
    put #echo Yellow Could not find %discipline book!  Turning off crafting.
    put #echo %alertwindow Yellow Could not find %discipline book!  Turning off crafting.
    gosub CRAFTINGABORT
    return
  }
  if (%workorder != 1 ) then
  {
    action (pageread) on
    action (pageread) var productcheck $3 when \-\=   Chapter (\d+), Page (\d+)\: Instructions for crafting (.*)    \=\-
    if ("%discipline" = "tailoring") then
    {
      action (pageread) var materialnoun $1 when \(\d+\) (?:finished|refined) fabric (cloth|yarn) \(\d+ yards\)
    }
    gosub READBOOK my %discipline book
    gosub TAPNOUN %productcheck
    var product %nountap
    action (pageread) off
    #echo product: %product
    #echo materialnoun: %materialnoun
  }
  gosub STUDYBOOK my %discipline book
  gosub PUTITEM %discipline book in %craftingstorage
  gosub TAPNOUN %product
  var product %nountap
  if (("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing") || ("%discipline" = "blacksmithing")) then
  {
    gosub ANVILCHECK
    if (%cleananvil = 2) then
    {
      gosub GETITEM ingot on anvil
      put #echo %alertwindow Yellow Found $righthand on the anvil before working!  Stowed, please investigate.
      gosub PUTITEM ingot in my %craftingstorage
    }
    gosub GETITEM my %material ingot in %craftingstorage
    gosub PUTITEM my %material ingot on anvil
    gosub FORGE
  }
  if ("%discipline" = "tailoring") then
  {
    gosub GETITEM my %material %materialnoun in %craftingstorage
    gosub SWAP
    gosub TAILOR
  }
  if (%workorder = 1) then
  {
    gosub GETITEM logbook
    gosub LOGBOOKBUNDLE %product
    gosub PUTITEM logbook in my %craftingstorage
    gosub GETITEM %material ingot in my %craftingstorage
    gosuB PUTITEM %material ingot in my %craftingstorage
  }
  else
  {
    gosub STOW right
    #gosub PUTITEM %product in %craftingstorage
  }
  math craftcount add 1
  goto CRAFTINGMAIN


#####ZASELE_SUBS#####
ZASELECRAFTING:
  var craftcount 0
ZASELECRAFTINGMAIN:
  if (%craftcount >= %quantity) then return
  gosub GETITEM %product instructions
  if ("$righthandnoun" != "instructions") then
  {
    gosub LOCATIONCHECK
    gosub FINDZASELENEW
    gosub GETINSTRUCTIONS
    gosub PUTITEM instructions in my %craftingstorage
    gosub MOVE dolphin
    gosub GOCORRAL
    gosub MOVE %workroom
    gosub GETITEM %product instructions
  }
  gosub STUDYINSTRUCTIONS
  gosub PUTITEM my instructions in my %craftingstorage
  gosub GETITEM my %material %materialnoun in %craftingstorage
  gosub SWAP
  gosub TAPNOUN %product
  var product %nountap
  if ("%discipline" = "tailoring") then gosub TAILOR
  if ("%discipline" = "knitting") then gosub KNIT
  gosub PUTITEM $righthand in my %craftingstorage
  gosub PUTITEM %product in %craftingstorage
  math craftcount add 1
  goto ZASELECRAFTINGMAIN
  

STUDYINSTRUCTIONSP:
  pause
STUDYINSTRUCTIONS:
  matchre STUDYINSTRUCTIONSP %waitstring
  match STUDYINSTRUCTIONS The delicate nature of the instructions will cause them to wear out with use.
  match RETURN You now feel ready to begin the crafting process.
  put study instructions
  matchwait


#####KNITTING_SUBS#####
KNIT:
  var firstcut 1
  var craftaction knitknit
  goto KNITMAIN

KNITP:
  pause
KNITMAIN:
  #GETTINGTOOLS
  if ("%craftaction" = "knitknit") then
  {
    if ("$righthandnoun" != "needles") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %knittingneedles in my %craftingstorage
    }
  }
  #MATCHES
  matchre KNITP %waitstring
  match KNITTURN Now the needles must be turned
  match KNITTURN Some ribbing should be added
  match KNITPUSH Next the needles must be pushed
  match KNITPUSH ready to be pushed
  #match KNITPUSH Upon finishing you realize the pattern is uneven and off by one
  match KNITCAST The garment is nearly complete and now must be cast off
  match KNITKNIT Roundtime:
  match KNITKNIT The needles doesn't appear suitable for working on an unfinished
  matchre KNITUNFINISHED You are already knitting an .*\.  You must finish this before starting another project\.
  match RETURN The needles doesn't appear suitable for working on
  match RETURN You add a row of double stitches to
  #ACTIONS
	if ("%craftaction" = "knitknit") then
	{
	  if (%firstcut = 1) then put knit my yarn with my %knittingneedles
    else put knit my %knittingneedles
  }
  if ("%craftaction" = "knitcast") then put cast my %knittingneedles
  if ("%craftaction" = "knitpush") then put push my %knittingneedles
  if ("%craftaction" = "knitturn") then put turn my %knittingneedles
  matchwait
  
KNITUNFINISHED:
  var firstcut 0
  gosub PUTITEM %material %materialnoun in my %craftingstorage
  var craftaction knitknit
  goto KNITMAIN

KNITKNIT:
  if (%firstcut = 1) then
  {
    var firstcut 0
    gosub PUTITEM %material %materialnoun in my %craftingstorage
  }
  var craftaction knitknit
  goto KNITMAIN

KNITPUSH:
  if (%firstcut = 1) then
  {
    var firstcut 0
    gosub PUTITEM %material %materialnoun in my %craftingstorage
  }
  var craftaction knitpush
  goto KNITMAIN

KNITTURN:
  if (%firstcut = 1) then
  {
    var firstcut 0
    gosub PUTITEM %material %materialnoun in my %craftingstorage
  }
  var craftaction knitturn
  goto KNITMAIN
  
KNITCAST:
  if (%firstcut = 1) then
  {
    var firstcut 0
    gosub PUTITEM %material %materialnoun in my %craftingstorage
  }
  var craftaction knitcast
  goto KNITMAIN


#####TAILORING_SUBS#####
TAILOR:
  var firstcut 1
  var craftaction cut
  goto TAILORMAIN

TAILORP:
  pause
TAILORMAIN:
  #GETTINGTOOLS
  if ("%craftaction" = "awl") then
  {
    if ("$righthandnoun" != "awl") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %awl in my %craftingstorage
    }
  }
  if ("%craftaction" = "cut") then
  {
    if ("$righthandnoun" != "scissors") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %scissors in my %craftingstorage
    }
  }
  if ("%craftaction" = "pins") then
  {
    if ("$righthandnoun" != "pins") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM straight pins in my %craftingstorage
      if ("$righthandnoun" != "pins") then gosub NEWPINS
    }
  }
  if ("%craftaction" = "sew") then
  {
    if ("$righthandnoun" != "needles") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %sewingneedles in my %craftingstorage
    }
  }
  if ("%craftaction" = "slickstone") then
  {
    if ("$righthandnoun" != "slickstone") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %slickstone in my %craftingstorage
    }
  }
  if ("%craftaction" = "yardstick") then
  {
    if ("$righthandnoun" != "yardstick") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %yardstick in my %craftingstorage
    }
  }
  #MATCHES
  matchre TAILORP %waitstring
  match AWL One leather piece is too thick for the needle to penetrate and needs holes punched in it.
  match AWL A critical section of leather needs holes punched into it so more thread can secure it.
  match CUT With the measuring complete, now it is time to cut away more of the fabric with scissors.
  match CUT With the measuring complete, now it is time to cut away more of the leather with scissors.
  match PINS Two layers of the fabric won't cooperate and could use some pins to align them.
  match PINS The leather keeps bending apart and could use some pins to keep it together.
  match PINS Two pieces of the leather won't cooperate and could use some pins to align them.
  match PINS The fabric keeps folding back and could use some pins to keep it straight.
  match SEW Roundtime
  match SLICKSTONE The fabric develops wrinkles from all the handling and could use a quick ironing.
  match SLICKSTONE A deep crease develops along the fabric, bunching it together awkwardly.
  match YARDSTICK The leather's dimensions appear to have shifted and could benefit from some remeasuring.
  match YARDSTICK The fabric's dimensions appear to have shifted and could benefit from some remeasuring.
  
  match NEWTHREAD The needles need to have thread put on them before they can be used for sewing.  You think you can STUDY them to learn more.
  #match NEWPINS
  match RETURN You realize that cannot be repaired, and stop.
  #ACTIONS
	if ("%craftaction" = "cut") then
	{
	  if (%firstcut = 1) then put cut my %materialnoun with my %scissors
    else put cut my %product with my %scissors
  }
  if ("%craftaction" = "awl") then put poke my %product with my %awl
  if ("%craftaction" = "pins") then put poke my %product with my straight pins
  if ("%craftaction" = "sew") then put push my %product with my %sewingneedles
  if ("%craftaction" = "slickstone") then put rub my %product with my %slickstone
  if ("%craftaction" = "yardstick") then put measure my %product with my %yardstick
  matchwait

AWL:
  var craftaction awl
  goto TAILORMAIN

CUT:
  var craftaction cut
  goto TAILORMAIN

PINS:
  var craftaction pins
  goto TAILORMAIN

SEW:
  if (%firstcut = 1) then
  {
    var firstcut 0
    gosub PUTITEM my %scissors in my %craftingstorage
    gosub GETITEM %material %materialnoun
    gosub PUTITEM %material %materialnoun in my %craftingstorage
  }
  var craftaction sew
  goto TAILORMAIN
  
SLICKSTONE:
  var craftaction slickstone
  goto TAILORMAIN
  
YARDSTICK:
  var craftaction yardstick
  goto TAILORMAIN

NEWPINS:
  if ($roomid != %toolroom) then gosub MOVE %toolroom
  #gosub DUMPITEM %product
  gosub CRAFTINGORDER 5
  #gosub PUTITEM straight pins in my %craftingstorage
  if ($roomid != %workroom) then gosub MOVE %workroom
  goto TAILORMAIN

NEWTHREAD:
  if ($roomid != %suppliesroom) then gosub MOVE %suppliesroom
  gosub DUMPITEM %product
  gosub CRAFTINGORDER 6
  put put thread on my needles
  gosub GETITEM %product
  if ($roomid != %workroom) then gosub MOVE %workroom
  goto TAILORMAIN

#####FORGING_SUBS#####
ANVILCHECK:
  var cleananvil 0
  goto ANVILCHECKMAIN
ANVILCHECKP:
  pause
ANVILCHECKMAIN:
  matchre ANVILCHECKP %waitstring
  match ANVILCHECKCLEAN The anvil's surface looks clean and ready for forging.
  matchre ANVILCHECKINGOT On the iron anvil you see a \w+ ingot\.
  matchre ANVILCHECKDIRTY On the iron anvil you see (a|an|some).* unfinished .*\.
  put look on anvil
  matchwait

ANVILCHECKCLEAN:
  var cleananvil 1
  return

ANVILCHECKINGOT:
  var cleananvil 2
  return

ANVILCHECKDIRTY:
  gosub ANVILCLEAN
  goto ANVILCHECK


ANVILCLEANP:
  pause
ANVILCLEAN:
  match ANVILCLEAN [Do you really want to clean off the anvil?  Clean it one more time to destroy the contents.]
  match RETURN You stop working and clean off the anvil's surface, discarding
  put clean anvil
  matchwait
  
  
FORGE:
  var firstpound 1
  var craftaction pound
  goto FORGEMAIN

FORGEP:
  pause
FORGEMAIN:
  #GETTINGTOOLS
  if ("%craftaction" = "pound") then
  {
    if ("$righthandnoun" != "hammer") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %hammer in my %craftingstorage
    }
    if ("$lefthandnoun" != "tongs") then
    {
      if ("$lefthand" != "Empty") then gosub PUTITEM my $lefthandnoun in my %craftingstorage
      gosub GETITEM %tongs in my %craftingstorage
    }
  }
  if ("%craftaction" = "turntongs") then
  {
    if ("$righthandnoun" != "hammer") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %hammer in my %craftingstorage
    }
    if ("$lefthandnoun" != "tongs") then
    {
      if ("$lefthand" != "Empty") then gosub PUTITEM my $lefthandnoun in my %craftingstorage
      gosub GETITEM %tongs in my %craftingstorage
    }
  }
  if ("%craftaction" = "bellows") then
  {
    if ("$righthandnoun" != "bellows") then
    {
      if ("$righthand" != "Empty" then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %bellows in my %craftingstorage
    }
  }
  if ("%craftaction" = "shovel") then    
  {
    if ("$righthandnoun" != "shovel") then
    {
      if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
      gosub GETITEM %shovel in my %craftingstorage
    }
  }
  if ("%craftaction" = "pliers") then    
  {
    if (("$righthandnoun" != "pliers") && ("$lefthandnoun" != "pliers")) then gosub GETITEM %pliers in my %craftingstorage
  }
  if ("%craftaction" = "oil") then    
  {
    if (("$righthandnoun" != "oil") && ("$lefthandnoun" != "oil")) then gosub GETITEM oil in my %craftingstorage
    if (("$righthandnoun" != "%product") && ("$lefthandnoun" != "%product")) then gosub GETITEM %product on anvil
  }
  matchre FORGEP %waitstring
  match SHOVEL As you complete working the fire dies down and needs more fuel.
  match SHOVEL As you complete working the fire dies down and appears to need some more fuel.
  matchre TURNTONGS You notice the .* would benefit from some soft reworking.
  matchre TURNTONGS The .* could use some straightening along the horn of the anvil.
  match TURNTONGS The metal now looks ready to be turned into wire using a mandrel or mold set.
  match TURNTONGS The metal must be drawn into wire on a mandrel and placed in mold sets using tongs.
  match QUENCH The metal now appears ready for cooling in the slack tub.
  matchre QUENCH The .* is complete and ready for a quench hardening in the slack tub\.
  match BELLOWS As you finish the fire flickers and is unable to consume its fuel.
	match BELLOWS As you finish working the fire dims and produces less heat from the stifled coals.
	match PLIERS Metal links can be woven into place by using pliers to pull them together.
	match PLIERS The individual chain links are now ready for stitching together using pliers.
	match POUND Roundtime
  match OIL With grinding complete, the metal now needs protection by pouring oil on it.
  match OIL The worked metal looks to be in need of some oil to preserve and protect it.
	matchre ASSEMBLEHAFT You need another finished wooden haft to continue crafting
  matchre ASSEMBLEHILT You need another finished wooden hilt to continue crafting
  matchre ASSEMBLESHORTCORD You need another finished short leather cord to continue crafting
  matchre ASSEMBLELPOLE You need another finished long wooden pole to continue crafting
  matchre ASSEMBLESPOLE You need another finished short wooden pole to continue crafting
  match ASSEMBLELPAD The links appear ready to be woven into and around a cloth padding.
  matchre ASSEMBLESPAD You need another finished small cloth padding to continue crafting .*\.
  matchre ASSEMBLELBACK You need another finished large leather backing to continue crafting .*\.
  matchre ASSEMBLESBACK You need another finished small leather backing to continue crafting .*\.
  matchre GRIND The .* now appears ready for grinding and polishing on a grinding wheel.
	match FORGEMAIN I could not find what you were referring to.
	#ACTIONS
	if ("%craftaction" = "pound") then
	{
	  if (%firstpound = 1) then var poundstring ingot
    else var poundstring %product
    put pound %poundstring on anvil with my hammer
  }
  if ("%craftaction" = "bellows") then put push my bellows
	if ("%craftaction" = "shovel") then put push fuel with my shovel
	if ("%craftaction" = "oil") then put pour oil on my %product
	if ("%craftaction" = "turntongs") then put turn %product on anvil with my tongs
	if ("%craftaction" = "quench") then put push tub
	if ("%craftaction" = "grind") then put push grindstone with my %product
	if ("%craftaction" = "pliers") then put pull my %product with my pliers
  matchwait
  
POUND:
  if ("%craftaction" = "oil") then
  {
    gosub PUTITEM my oil in my %craftingstorage
    return
  }
  if ("%craftaction" = "bellows") then
  {
    if (("$righthandnoun" = "bellows") || ("$lefthandnoun" = "bellows")) then gosub PUTITEM my bellows in my %craftingstorage
  }
  if ("%craftaction" = "shovel") then
  {
    if (("$righthandnoun" = "shovel") || ("$lefthandnoun" = "shovel")) then gosub PUTITEM my shovel in my %craftingstorage
  }
  if ("%craftaction" = "pliers") then
  {
    if (("$righthandnoun" = "pliers") || ("$lefthandnoun" = "pliers")) then gosub PUTITEM my pliers in my %craftingstorage
  }
  var firstpound 0
  var craftaction pound
  goto FORGEMAIN
  
BELLOWS:
  if ("%craftaction" = "pound") then
  {
    if (("$righthandnoun" = "hammer") || ("$lefthandnoun" = "hammer")) then gosub PUTITEM my hammer in my %craftingstorage
    if (("$righthandnoun" = "tongs") || ("$lefthandnoun" = "tongs")) then gosub PUTITEM my tongs in my %craftingstorage
  }
  var craftaction bellows
  goto FORGEMAIN

SHOVELP:
  pause
SHOVEL:
  if ("%craftaction" = "pound") then
  {
    if (("$righthandnoun" = "hammer") || ("$lefthandnoun" = "hammer")) then gosub PUTITEM my hammer in my %craftingstorage
    if (("$righthandnoun" = "tongs") || ("$lefthandnoun" = "tongs")) then gosub PUTITEM my tongs in my %craftingstorage
  }
  var craftaction shovel
  goto FORGEMAIN
  
TURNTONGS:  
  var craftaction turntongs
  goto FORGEMAIN
  

QUENCH:
  var craftaction quench
  goto FORGEMAIN
  
GRIND:
  if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
  if ("$lefthand" != "Empty") then gosub PUTITEM my $lefthandnoun in my %craftingstorage
  gosub GETITEM %product on anvil
  goto GRINDTURN
GRINDTURNP:
  pause
GRINDTURN:
  matchre GRINDTURNP %waitstring
  match GRINDTURN Roundtime
  match GRINDTURN It seems to be picking up speed now but is still rather slow.
  match GRINDTURN Straining a bit less you add force to the grindstone, making it spin even faster.
  match GRINDPUSH Straining a bit less you maintain force to the grindstone, keeping it spinning fast.
  put turn grindstone
  matchwait

GRINDPUSH:
  var craftaction grind
  goto FORGEMAIN

OIL:
  if (("%craftaction" = "pound") || ("%craftaction" = "quench") || ("%craftaction" = "turntongs")) then
  {
    if (("$righthandnoun" = "hammer") || ("$lefthandnoun" = "hammer")) then gosub PUTITEM my hammer in my %craftingstorage
    if (("$righthandnoun" = "tongs") || ("$lefthandnoun" = "tongs")) then gosub PUTITEM my tongs in my %craftingstorage
  }
  var craftaction oil
  goto FORGEMAIN

PLIERS:
  var craftaction pliers
  goto FORGEMAIN

ASSEMBLELONGCORDP:
  pause
ASSEMBLELONGCORD:
  if (("$righthandnoun" = "oil") || ("$lefthandnoun" != "oil")) then gosub PUTITEM my oil in my %craftingstorage
  if (("$righthandnoun" != "cord") && ("$lefthandnoun" != "cord")) then gosub GETITEM long cord in my %craftingstorage
  matchre ASSEMBLELONGCORDP %waitstring
  matchre FORGEMAIN You place your cord with your .* and carefully mark where it will attach when you continue crafting\.
  put assemble my %product with my long cord
  matchwait

ASSEMBLESHORTCORDP:
  pause
ASSEMBLESHORTCORD:
  if (("$righthandnoun" = "oil") || ("$lefthandnoun" != "oil")) then gosub PUTITEM my oil in my %craftingstorage
  if (("$righthandnoun" != "cord") && ("$lefthandnoun" != "cord")) then gosub GETITEM short cord in my %craftingstorage
  matchre ASSEMBLESHORTCORDP %waitstring
  matchre FORGEMAIN You place your cord with your .* and carefully mark where it will attach when you continue crafting\.
  put assemble my %product with my short cord
  matchwait

ASSEMBLEHAFTP:
  pause
ASSEMBLEHAFT:
  if (("$righthandnoun" = "oil") || ("$lefthandnoun" != "oil")) then gosub PUTITEM my oil in my %craftingstorage
  if (("$righthandnoun" != "hilt") && ("$lefthandnoun" != "haft")) then gosub GETITEM haft in my %craftingstorage
  matchre ASSEMBLEHAFTP %waitstring
  matchre FORGEMAIN You slide the haft onto the .* and affix it securely in place\.
  put assemble my %product with my haft
  matchwait

ASSEMBLEHILTP:
  pause
ASSEMBLEHILT:
  if (("$righthandnoun" = "oil") || ("$lefthandnoun" != "oil")) then gosub PUTITEM my oil in my %craftingstorage
  if (("$righthandnoun" != "hilt") && ("$lefthandnoun" != "hilt")) then gosub GETITEM hilt in my %craftingstorage
  matchre ASSEMBLEHILTP %waitstring
  matchre FORGEMAIN You slide the .* over the tang of your hilt and tighten the pommel to secure it\.
  put assemble my %product with my hilt
  matchwait
  
ASSEMBLELPOLEP:
  pause
ASSEMBLELPOLE:
  if (("$righthandnoun" = "oil") || ("$lefthandnoun" != "oil")) then gosub PUTITEM my oil in my %craftingstorage
  if (("$righthandnoun" != "pole") && ("$lefthandnoun" != "pole")) then gosub GETITEM long pole in my %craftingstorage
  matchre ASSEMBLELPOLEP %waitstring
  matchre FORGEMAIN You place your pole with your .* and carefully mark where it will attach when you continue crafting\.
  put assemble my %product with my long pole
  matchwait

ASSEMBLESPOLEP:
  pause
ASSEMBLESPOLE:
  if (("$righthandnoun" = "oil") || ("$lefthandnoun" != "oil")) then gosub PUTITEM my oil in my %craftingstorage
  if (("$righthandnoun" != "pole") && ("$lefthandnoun" != "pole")) then gosub GETITEM short pole in my %craftingstorage
  matchre ASSEMBLESPADP %waitstring
  matchre FORGEMAIN You place your pole with your .* and carefully mark where it will attach when you continue crafting\.
  put assemble my %product with my short pole
  matchwait

ASSEMBLELPADP:
  pause 
ASSEMBLELPAD:
  if (("%craftaction" = "pound") || ("%craftaction" = "quench") || ("%craftaction" = "turntongs")) then
  {
    if (("$righthandnoun" = "hammer") || ("$lefthandnoun" = "hammer")) then gosub PUTITEM my hammer in my %craftingstorage
    if (("$righthandnoun" = "tongs") || ("$lefthandnoun" = "tongs")) then gosub PUTITEM my tongs in my %craftingstorage
  }
  if (("$righthandnoun" = "pliers") || ("$lefthandnoun" = "pliers")) then gosub PUTITEM my pliers in my %craftingstorage
  if (("$righthandnoun" != "padding") && ("$lefthandnoun" != "padding")) then gosub GETITEM large padding in my %craftingstorage
  matchre ASSEMBLELPADP %waitstring
  matchre PLIERS You place your padding with your .* and carefully mark where it will attach when you continue crafting\.
  put assemble my %product with my large padding
  matchwait
  
ASSEMBLESPADP:
  pause
ASSEMBLESPAD:
  if (("%craftaction" = "pound") || ("%craftaction" = "quench") || ("%craftaction" = "turntongs")) then
  {
    if (("$righthandnoun" = "hammer") || ("$lefthandnoun" = "hammer")) then gosub PUTITEM my hammer in my %craftingstorage
    if (("$righthandnoun" = "tongs") || ("$lefthandnoun" = "tongs")) then gosub PUTITEM my tongs in my %craftingstorage
  }
  if (("$righthandnoun" = "pliers") || ("$lefthandnoun" = "pliers")) then gosub PUTITEM my pliers in my %craftingstorage
  if (("$righthandnoun" != "padding") && ("$lefthandnoun" != "padding")) then gosub GETITEM small padding in my %craftingstorage
  matchre ASSEMBLESPADP %waitstring
  matchre PLIERS You place your padding with your .* and carefully mark where it will attach when you continue crafting\.
  put assemble my %product with my small padding
  matchwait
  
ASSEMBLELBACKP:
  pause 
ASSEMBLELBACK:
  if (("%craftaction" = "pound") || ("%craftaction" = "quench") || ("%craftaction" = "turntongs")) then
  {
    if (("$righthandnoun" = "hammer") || ("$lefthandnoun" = "hammer")) then gosub PUTITEM my hammer in my %craftingstorage
    if (("$righthandnoun" = "tongs") || ("$lefthandnoun" = "tongs")) then gosub PUTITEM my tongs in my %craftingstorage
  }
  if (("$righthandnoun" = "pliers") || ("$lefthandnoun" = "pliers")) then gosub PUTITEM my pliers in my %craftingstorage
  if (("$righthandnoun" != "backing") && ("$lefthandnoun" != "backing")) then gosub GETITEM large backing in my %craftingstorage
  matchre ASSEMBLELBACKP %waitstring
  matchre PLIERS You place your padding with your .* and carefully mark where it will attach when you continue crafting\.
  put assemble my %product with my large backing
  matchwait
  
ASSEMBLESBACKP:
  pause
ASSEMBLESBACK:
  if (("%craftaction" = "pound") || ("%craftaction" = "quench") || ("%craftaction" = "turntongs")) then
  {
    if (("$righthandnoun" = "hammer") || ("$lefthandnoun" = "hammer")) then gosub PUTITEM my hammer in my %craftingstorage
    if (("$righthandnoun" = "tongs") || ("$lefthandnoun" = "tongs")) then gosub PUTITEM my tongs in my %craftingstorage
  }
  if (("$righthandnoun" = "pliers") || ("$lefthandnoun" = "pliers")) then gosub PUTITEM my pliers in my %craftingstorage
  if (("$righthandnoun" != "backing") && ("$lefthandnoun" != "backing")) then gosub GETITEM small backing in my %craftingstorage
  matchre ASSEMBLESBACKP %waitstring
  matchre PLIERS You place your backing with your .* and carefully mark where it will attach when you continue crafting\.
  put assemble my %product with my small backing
  matchwait
  
  
#####SMELTING_SUBS#####
SMELTPUT:
  var smeltmaterial $0
  var smeltnoun ingot
  goto SMELTPUTLOOP

SMELTPUTLOOP:
  #You decide that smelting so many metal pieces at once would be dangerous, and stop.
  gosub GETITEM %smeltmaterial %smeltnoun from %craftingstorage
  if ("$righthand" != "Empty") then
  {
    gosub PUTITEM %smeltmaterial %smeltnoun in crucible
    if ("$righthand" != "Empty") then
    {
      gosub TILTCRUC
      gosub PUTITEM %smeltmaterial %smeltnoun in crucible
    }
    goto SMELTPUTLOOP
  }
  else
  }
    if ("%smeltnoun" = "ingot") then
    {
      var smeltnoun nugget
      goto SMELTPUTLOOP
    }
    else return
  }


SMELTP:
  pause
SMELT:
  if (("$righthandnoun" = "ingot") || ("$lefthandnoun" = "ingot")) then
  {
    gosub PUTITEM %rod in my %craftingstorage
    return
  }
  if ("$righthandnoun" != "rod") then
  {
    if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
    gosub GETITEM %rod
  }
  if ("$lefthand" != "Empty") then gosub PUTITEM my $lefthandnoun in my %craftingstorage
  matchre STIRP %waitstring
  match SMELTP Roundtime
  match SMELTBELLOWS As you finish the fire flickers and is unable to consume its fuel.
  match SMELTSHOVEL As you complete working the fire dies down and needs more fuel.
  match TURNCRUC Upon finishing you observe clumps of molten metal accumulating along the crucible's sides.
  match RETURN You can only mix a crucible if it has something inside of it.
  put stir crucible with my rod
  matchwait
  
SMELTBELLOWSP:
  pause
SMELTBELLOWS:
  if ("$righthandnoun" != "bellows" then
  {
    if ("$righthand" != "Empty" then gosub PUTITEM my $righthandnoun in my %craftingstorage
    gosub GETITEM %bellows
  }
  matchre PUSHBELLOWSP %waitstring
  match SMELT Roundtime
  match SMELT The bellows doesn't appear suitable
  put push my %bellows
  matchwait
  
  
SMELTSHOVELP:
  pause
SMELTSHOVEL:
  if ("$righthandnoun" != "shovel") then
  {
    if ("$righthand" != "Empty") then gosub PUTITEM my $righthandnoun in my %craftingstorage
    gosub GETITEM %shovel
  }
  matchre PUSHSHOVELP %waitstring
  match SMELT Roundtime
  put push fuel with my %shovel
  matchwait

TILTCRUCP:
  pause
TILTCRUC:
  matchre TILTCRUCP %waitstring
  match TILTCRUC You grab the crucible's side and prepare to dump it out.
  match RETURN You grab one side of the crucible and pour the hot metal into a slag collecting bin.
  matchwait


TURNCRUCP:
  pause
TURNCRUC:
   matchre TURNCRUCP %waitstring
   match SMELT Roundtime
   put turn crucible with my %rod
   matchwait

#####MATERIAL_SUBS#####

COMBINEALL:
  var combineadj $1
  var combinenoun $2
  goto COMBINEALLMAIN
COMBINEALLMAIN:
  gosub GETITEM %combineadj %combinenoun in my %craftingstorage
  echo righthand: $righthand   lefthand: $lefthand
  if (("$righthand" = "Empty") || ("$lefthand" = "Empty")) then gosub GETITEM %combineadj %combinenoun in my %craftingstorage
  if (("$righthand" != "Empty") && ("$lefthand" != "Empty")) then gosub COMBINE
  else
  {
    gosub PUTITEM %combineadj %combinenoun in my %craftingstorage
    return
  }
  goto COMBINEALLMAIN
  
  
COMBINE:
	matchre RETURN too large
	matchre RETURN You must be holding|You combine
	match RETURN The spool is not large enough to combine both threads.
	put combine my %combineadj %combinenoun with my other %combineadj %combinenoun
	matchwait


COUNT:
  var counttotal 0
  var counttarget $0
  goto COUNTMAIN
COUNTP:
  pause
COUNTMAIN:
  matchre COUNTP %waitstring
  matchre COUNTRETURN About (\d+) volumes of material make up the \w+ bar\.
  matchre COUNTRETURN About (\d+) volumes of material make up the \w+ lump\.
  matchre COUNTRETURN You count out (\d+) yards of material there\.
  matchre COUNTRETURN You count out (\d+) pieces of material there.
  match RETURN I could not find what you were referring to.
  put count $0
  matchwait

COUNTRETURN:
  var counttotal $1
  return

#####SOCIETY_SUBS#####

FINDMASTER:
  var findmastercount 0
  var foundmaster 0
  eval masterrangecount count("%masterrange", "|")
  #put #echo Yellow masterrangecount: %masterrangecount
  if ("%crafttype" = "forging") then
  {
    if (matchre("$roomobjs", "Forging Society Master")) then return
    if (matchre("$roomobjs", "Forging Society Mistress")) then return
  }
  if ("%crafttype" = "outfitting") then
  {
    if (matchre("$roomobjs", "Outfitting Society Master")) then return
    if (matchre("$roomobjs", "Outfitting Society Mistress")) then return
  }
  put #echo Yellow Not in the starting room, looking for master.
  gosub FINDMASTERLOOP

FINDMASTERLOOP:
  if (%findmastercount > %masterrangecount) then return
  gosub MOVE %masterrange(%findmastercount)
  if ("%crafttype" = "forging") then
  {
    if (matchre("$roomobjs", "Forging Society Master")) then
    {
      var foundmaster 1
      return
    }
    if (matchre("$roomobjs", "Forging Society Mistress")) then
    {
      var foundmaster 1
      return
    }
  }
  if ("%crafttype" = "outfitting") then
  {
    if (matchre("$roomobjs", "Outfitting Society Master")) then
    {
      var foundmaster 1
      return
    }
    if (matchre("$roomobjs", "Outfitting Society Mistress")) then
    {
      var foundmaster 1
      return
    }
  }
  math findmastercount add 1
  goto FINDMASTERLOOP


FINDCRUCIBLE:
  var findcruciblecount 0
  var foundcrucible 0
  eval cruciblerangecount count("%cruciblerange", "|")
  echo cruciblerangecount: %cruciblerangecount
  gosub FINDCRUCIBLELOOP
  return

FINDCRUCIBLELOOP:
  if (%findcruciblecount > %cruciblerangecount) then return
  gosub MOVE %cruciblerange(%findcruciblecount)
  if ("$roomplayers" = "") then
  {
    var foundcrucible 1
    return
  }
  math findcruciblecount add 1
  goto FINDCRUCIBLELOOP

FINDANVIL:
  var findanvilcount 0
  var foundanvil 0
  eval anvilrangecount count("%anvilrange", "|")
  echo anvilrangecount: %anvilrangecount
  gosub FINDANVILLOOP
  return

FINDANVILLOOP:
  if (%findanvilcount > %anvilrangecount) then return
  gosub MOVE %anvilrange(%findanvilcount)
  if ("$roomplayers" = "") then
  {
    var foundanvil 1
    return
  }
  math findanvilcount add 1
  goto FINDANVILLOOP

GOPRIVATEROOM:
  match RETURN You approach .*\.  The sentry holds out (his|her) hand, saying,
  matchre RETURN You approach .*\.  The sentry nods and allows you to pass\.
  put go $0
  matchwait



TASKACQUIRE:
  if (("$righthandnoun" != "logbook") && ("$lefthandnoun" != "logbook")) then gosub GETITEM %crafttype logbook
  if (("$righthandnoun" != "logbook") && ("$lefthandnoun" != "logbook")) then
  {
    put #echo Yellow Could not find %crafttype logbook!  Turning off crafting.
    put #echo %alertwindow Yellow Could not find %crafttype logbook!  Turning off crafting.
    gosub CRAFTINGABORT
    return
  }
  var materialnoun 0
  gosub LOGBOOKASK %mastername %difficulty %discipline
  if (%workorderbail = 1) then return
  gosub PUTITEM logbook in %craftingstorage
  pause .5
  #eval product replace("%product", "a ", "")
  #eval product replace("%product", "an ", "")
  #eval product replace("%product", "some ", "")
  echo product: %product
  echo quantity: %quantity
  echo timelimit: %timelimit
  echo chapter: %chapter
  
  gosub GETITEM %discipline book
  if ((!matchre("$righthandnoun", "book")) && (!matchre("$lefthandnoun", "book"))) then
  {
    put #echo Yellow Could not find %discipline book!  Turning off crafting.
    put #echo %alertwindow Yellow Could not find %discipline book!  Turning off crafting.
    gosub CRAFTINGABORT
    return
  }
  gosub TURNBOOK chapter %chapter
  #echo product: %product
  var page 0
  #action (pageread) var page $1; action (pageread) off when Page (\d+)\:\s*(a|an|some)? (%product)
  action (pageread) var page $1; action (pageread) off when Page (\d+)\: (%product)
  gosub READBOOK my %discipline book
  pause 1
  echo page: %page
  if (%page = 0) then
  {
    put #echo %alertwindow Yellow Failed to select a proper page!  Please investigate, turning off forging!
    put #echo Yellow Failed to select a proper page!  Please investigate, turning off forging!
    gosub CRAFTINGABORT
    return
  }
  gosub TURNBOOK page %page
  if ("%crafttype" = "forging") then
  {
    var volume 0
    var haft 0
    var hilt 0
    var cordlong 0
    var cordshort 0
    var polelong 0
    var poleshort 0
    var handle 0
    var boss 0
    var padlarge 0
    var padsmall 0
    var backinglarge 0
    var backingsmall 0
  }
  if ("%crafttype" = "outfitting") then
  {
    var padlarge 0
    var padsmall 0
    var cordlong 0
    var handleleather 0
  }
  #action var productcheck $4 when \-\=   Chapter (\d+), Page (\d+)\: Instructions for crafting (a|an|some)? (.*)    \=\-
  action var productcheck $3 when \-\=   Chapter (\d+), Page (\d+)\: Instructions for crafting (.*)    \=\-
  gosub READBOOK my %discipline book
  pause 1
  echo product: %product
  echo productcheck: %productcheck
  if ("%product" != "%productcheck") then
  {
    put #echo Yellow Intended product and page turned to don't match!  Investigate!
    exit
  }
  if (%volume = 0) then
  {
    put #echo Yellow Could not properly calculate quantities!
    exit
  }
  eval product replace("%product", "a ", "")
  eval product replace("%product", "an ", "")
  eval product replace("%product", "some ", "")
  #MATERIAL_CALCULATIONS
  if ("%crafttype" = "outfitting") then
  {
    echo materialnoun: %materialnoun
    echo yards: %yards
    echo padlarge: %padlarge
    echo padsmall: %padsmall
    echo cordlong: %cordlong
    echo handleleather: %handleleather
  }
  if ("%crafttype" = "outfitting") then
  {
    var totalyards %yards
    math totalyards * %quantity
    var totalcordlong %cordlong
    math totalcordlong * %quantity
    var totalhandleleather %handleleather
    math totalhandleleather * %quantity
    var totalpadlarge %padlarge
    math totalpadlarge * %quantity
    var totalpadsmall %padsmall
    math totalpadsmall * %quantity
    if (%outfittingmaxquantity != 0) then
    {
      if (%quantity > %outfittingmaxquantity) then
      {
        put #echo Yellow Quantity greater than OutfittingMaxQuantity.  Trying again.
        goto TASKACQUIRE
      }
    }
    if (%outfittingmaxyards != 0) then
    {
      if (%totalyards > %outfittingmaxyards) then
      {
        put #echo Yellow Volumes needed greater than OutfittingMaxYards.  Trying again.
        goto TASKACQUIRE
      }
    }
  }
  if ("%crafttype" = "forging") then
  {
    var totalvolume %volume
    math totalvolume * %quantity
    var totalcordshort %cordshort
    math totalcordshort * %quantity
    var totalcordlong %cordlong
    math totalcordlong * %quantity
    var totalhaft %haft
    math totalhaft * %quantity
    var totalhilt %hilt
    math totalhilt * %quantity
    var totalpolelong %polelong
    math totalpolelong * %quantity
    var totalpoleshort %poleshort
    math totalpoleshort * %quantity
    var totalhandle %handle
    math totalhandle * %quantity
    var totalboss %boss
    math totalboss * %quantity
    var totalpadlarge %padlarge
    math totalpadlarge * %quantity
    var totalpadsmall %padsmall
    math totalpadsmall * %quantity
    var totalbackinglarge %backinglarge
    math totalbackinglarge * %quantity
    var totalbackingsmall %backingsmall
    math totalbackingsmall * %quantity
    if (%forgingmaxquantity != 0) then
    {
      if (%quantity > %forgingmaxquantity) then
      {
        put #echo Yellow Quantity greater than ForgingMaxQuantity.  Trying again.
        goto TASKACQUIRE
      }
    }
    if (%forgingmaxvolumes != 0) then
    {
      if (%totalvolume > %forgingmaxvolumes) then
      {
        put #echo Yellow Volumes needed greater than ForgingMaxVolumes.  Trying again.
        goto TASKACQUIRE
      }
    }
  }
  return  

MATERIALSPLITLOOP:
  if (%volumesleft <= 0) then return
  if (%massivenum != 0) then
  {  
    if (%volumesleft >= 10) then
    {
      math volumesleft subtract 10
      math massiveorder add 1
      goto MATERIALSPLITLOOP
    }
    else
    {
      if ("%smallestsize" = "massive") then
      {
        math volumesleft subtract 10
        math massiveorder add 1
        goto MATERIALSPLITLOOP
      }
    }
  }
  if (%hugenum != 0) then
  {  
    if (%volumesleft >= 5) then
    {
      math volumesleft subtract 5
      math hugeorder add 1
      goto MATERIALSPLITLOOP
    }
    else
    {
      if ("%smallestsize" = "huge") then
      {
        math volumesleft subtract 5
        math hugeorder add 1
        goto MATERIALSPLITLOOP
      }
    }
  }
  if (%tinynum != 0) then
  {  
    if (%volumesleft >= 1) then
    {
      math volumesleft subtract 1
      math tinyorder add 1
      goto MATERIALSPLITLOOP
    }
    else
    {
      if ("%smallestsize" = "tiny") then
      {
        math volumesleft subtract 1
        math tinyorder add 1
        goto MATERIALSPLITLOOP
      }
    }
  }
  return


MATERIALBULKSPLITLOOP:
  if (%volumesleft <= 0) then return
  if ("%forgingsmelting" = "YES") then
  {
    if (%colossalnum != 0) then
    {  
      if (%volumesleft >= 200) then
      {
        math volumesleft subtract 200
        math colossalorder add 1
        goto MATERIALBULKSPLITLOOP
      }
    }
    if (%giganticnum != 0) then
    {  
      if (%volumesleft >= 100) then
      {
        math volumesleft subtract 100
        math giganticorder add 1
        goto MATERIALBULKSPLITLOOP
      }
    }
    if (%immensenum != 0) then
    {  
      if (%volumesleft >= 50) then
      {
        math volumesleft subtract 50
        math immenseorder add 1
        goto MATERIALBULKSPLITLOOP
      }
    }
  }
  else
  {
    if (%immensenum != 0) then
    {  
      if (%volumesleft < 50) then
      {
        math volumesleft subtract 50
        math immenseorder add 1
        return
      }
    }
    if (%giganticnum != 0) then
    {  
      if (%volumesleft < 100) then
      {
        math volumesleft subtract 100
        math giganticorder add 1
        return
      }
    }
    if (%colossalnum != 0) then
    {  
      if (%volumesleft < 200) then
      {
        math volumesleft subtract 200
        math colossalorder add 1
        return
      }
    }
  }
  return


ORDERBULK:
  var colossalorder 0
  var giganticorder 0
  var immenseorder 0
  if (%bulkroom = 0) then return
  if ("%forgingsmelting" = "YES") then
  {
    if (%totalvolume < 50) then return
  }
  if ($roomid != %bulkroom) then gosub MOVE %bulkroom
  echo here!
  var immensenum 0
  var giganticnum 0
  var colossalnum 0
  action var immensenum $1; var materialnoun $2 when (\d+)\)\.  an immense %material (ingot|nugget)\.
  action var giganticnum $1; var materialnoun $2 when (\d+)\)\.  a gigantic %material (ingot|nugget)\.
  action var colossalnum $1; var materialnoun $2 when (\d+)\)\.  a colossal %material (ingot|nugget)\.
  gosub CRAFTINGORDER
  pause .5
  echo immensenum %immensenum
  echo giganticnum %giganticnum
  echo colossalnum %colossalnum
  
  echo materialnoun: %materialnoun
  if (%colossalnum != 0) then var smallestsize colossal
  if (%giganticnum != 0) then var smallestsize gigantic
  if (%immensenum != 0) then var smallestsize immense

  var volumesleft %totalvolume
  gosub MATERIALBULKSPLITLOOP
  if (%immenseorder > 0) then gosub ORDERLOOP %immensenum %immenseorder %materialnoun
  if (%giganticorder > 0) then gosub ORDERLOOP %giganticnum %giganticorder %materialnoun
  if (%colossalorder > 0) then gosub ORDERLOOP %colossalnum %colossalorder %materialnoun
  put #echo Yellow totalvolume: %totalvolume
  put #echo Yellow colossalorder: %colossalorder
  put #echo Yellow giganticorder: %giganticorder
  put #echo Yellow immenseorder: %immenseorder
  math ingotsused add %colossalorder
  math ingotsused add %giganticorder
  math ingotsused add %immenseorder
  return
  
ORDERMATERIALS: 
  if ($roomid != %suppliesroom) then gosub MOVE %suppliesroom
  var tinynum 0
  var hugenum 0
  var massivenum 0
  action var tinynum $1; var materialnoun $2 when (\d+)\)\.  a tiny %material (ingot|nugget)\.
  action var hugenum $1; var materialnoun $2 when (\d+)\)\.  a huge %material (ingot|nugget)\.
  action var massivenum $1; var materialnoun $2 when (\d+)\)\.  a massive %material (ingot|nugget)\.
  gosub CRAFTINGORDER
  pause .5
  echo tinynum %tinynum
  echo hugenum %hugenum
  echo massivenum %massivenum
  
  echo materialnoun: %materialnoun
  if (%massivenum != 0) then var smallestsize massive
  if (%hugeum != 0) then var smallestsize huge
  if (%tinynum != 0) then var smallestsize tiny

  
  var massiveorder 0
  var hugeorder 0
  var tinyorder 0
  var volumesleft %totalvolume
  gosub MATERIALSPLITLOOP
  if (%tinyorder > 0) then gosub ORDERLOOP %tinynum %tinyorder %materialnoun
  if (%hugeorder > 0) then gosub ORDERLOOP %hugenum %hugeorder %materialnoun
  if (%massiveorder > 0) then gosub ORDERLOOP %massivenum %massiveorder %materialnoun
  put #echo Yellow massiveorder: %massiveorder
  put #echo Yellow hugeorder: %hugeorder
  put #echo Yellow tinyorder: %tinyorder
  var ingotsused %massiveorder
  math ingotsused add %hugeorder
  math ingotsused add %tinyorder
  return
  
ORDERLOOP:
  var ordernum $1
  var orderlimit $2
  var ordernoun $3
  var ordercount 0
ORDERLOOPMAIN:
  if (%ordercount >= %orderlimit) then return
  gosub CRAFTINGORDER %ordernum
  gosub PUTITEM %ordernoun in my %craftingstorage
  math ordercount add 1
  goto ORDERLOOPMAIN


ORDERPARTS:
  echo totalcordlong: %totalcordlong
  echo totalcordshort: %totalcordshort
  echo totalhaft: %totalhaft
  echo totalhilt: %totalhilt
  echo totalpolelong: %totalpolelong
  echo totalpoleshort: %totalpoleshort
  echo totalhandle: %totalhandle
  echo totalboss: %totalboss
  echo totalpadlarge: %totalpadlarge
  echo totalpadsmall: %totalpadsmall
  echo totalbackinglarge: %totalbackinglarge
  echo totalbackingsmall: %totalbackingsmall
  if ($roomid != %partsroom) then gosub MOVE %partsroom
  if (%totalcordlong > 0) then gosub BUYCRATELOOP long cord %totalcordlong
  if (%totalcordshort > 0) then gosub BUYCRATELOOP short cord %totalcordshort
  if (%totalhaft > 0) then gosub BUYCRATELOOP oak haft %totalhaft
  if (%totalhilt > 0) then gosub BUYCRATELOOP oak hilt %totalhilt
  if (%totalpolelong > 0) then gosub BUYCRATELOOP long pole %totalpolelong
  if (%totalpoleshort > 0) then gosub BUYCRATELOOP short pole %totalpoleshort
  if (%totalhandle > 0) then gosub BUYCRATELOOP shield handle %totalhandle
  if (%totalboss > 0) then gosub BUYCRATELOOP shield boss %totalboss
  if (%totalpadlarge > 0) then gosub BUYCRATELOOP large padding %totalpadlarge
  if (%totalpadsmall > 0) then gosub BUYCRATELOOP small padding %totalpadsmall
  if (%totalbackinglarge > 0) then gosub BUYCRATELOOP large backing %totalbackinglarge
  if (%totalbackingsmall > 0) then gosub BUYCRATELOOP small backing %totalbackingsmall
  return

BUYCRATELOOP:
  var partname $1 $2
  var parttotal $3
  var cratecount 0
  echo partname: %partname
  echo parttotal: %parttotal
BUYCRATELOOPMAIN:
  echo cratecount: %cratecount
  if (%cratecount >= %parttotal) then return
  gosub BUYCRATE %partname
  gosub PUTITEM %partname in my %craftingstorage
  math cratecount add 1
  goto BUYCRATELOOPMAIN

BUYCRATE:
  var buycratestring $0
BUYCRATEP:
  pause
BUYCRATEMAIN:
  matchre BUYCRATEP %waitstring
  match RETURN You decide to purchase the
  put buy %buycratestring
  return


CRAFTINGORDERREADP:
  pause
CRAFTINGORDERREAD:
  matchre CRAFTINGORDERREADP %waitstring
  put order
  matchwait


CRAFTINGORDER:
  var craftingorderstring $0
  goto CRAFTINGORDERMAIN
CRAFTINGORDERP:
  pause
CRAFTINGORDERMAIN:
  matchre CRAFTINGORDERP %waitstring
  match RETURN [You may purchase items from the shopkeeper with ORDER #]
  match CRAFTINGORDERMAIN The attendant says, "You can purchase
  match CRAFTINGORDERNOMONEY The attendant shrugs and says, "Ugh, you don't have enough coins to purchase
  match RETURN The attendant takes some coins from you and hands you
  put order %craftingorderstring
  matchwait

CRAFTINGORDERNOMONEY:
  var startroom $roomid
  gosub MOVE teller
  gosub COINWITHDRAW 10 platinum kronars
  gosub MOVE %startroom
  goto CRAFTINGORDER
  

#####BOOK_SUBS#####
TURNBOOK:
  var turnbookstring $0
  goto TURNBOOKMAIN
TURNBOOKP:
  pause
TURNBOOKMAIN:
  matchre TURNBOOKP %waitstring
  match RETURN You turn your book to
  match RETURN The book is already turned to 
  put turn my book to %turnbookstring
  matchwait
  
READBOOK:
  var readbookstring $0
  goto READBOOKMAIN
READBOOKP:
  pause
READBOOKMAIN:
  matchre READBOOKP %waitstring
  match RETURN Page
  put read %readbookstring
  matchwait
  
STUDYBOOK:
  var studystring $0
  goto STUDYBOOKMAIN
STUDYBOOKP:
  pause
STUDYBOOKMAIN:
  matchre STUDYBOOKP %waitstring
  match RETURN You now feel ready to begin the crafting process.
  #You scan the abassi instructions with a glance and completely understand all facets of the design. (5/5)
  #You now feel ready to begin the crafting process.
  #Roundtime: 5 sec.
  put study %studystring
  matchwait

LOGBOOKASK:
  var masterstring $1
  var jobstring $2 $3
  goto LOGBOOKASKMAIN
LOGBOOKASKP:
  pause
LOGBOOKASKMAIN:
  matchre LOGBOOKASKP %waitstring
  matchre RETURN \w+ shuffles through some notes and says
  match LOGBOOKASKFIND To whom are you speaking?
  match LOGBOOKASKUNTIE You realize you have items bundled with the logbook, and should untie them before getting a new work order.
  match LOGBOOKBAD You realize this isn't your logbook, and stop.  Maybe you should study it for more information.
  put ask %masterstring for %jobstring work
  matchwait

LOGBOOKASKFIND:
  gosub FINDMASTER
  goto LOGBOOKASKMAIN

LOGBOOKASKUNTIEP:
  pause
LOGBOOKASKUNTIE:
  matchre LOGBOOKASKUNTIEP %waitstring 
  matchre LOGBOOKASKUNTIEDROP You untie the (\w+) from the logbook.
  put untie my logbook
  matchwait
  
LOGBOOKASKUNTIEDROP:
  gosub DUMPITEM $1
  goto LOGBOOKASKMAIN

LOGBOOKBUNDLE:
  var logbundlestring $0
  goto LOGBOOKBUNDLEMAIN
LOGBOOKBUNDLEP:
  pause
LOGBOOKBUNDLEMAIN:
  match LOGBOOKBUNDLEP %waitstring
  matchre RETURN You notate the .* in the logbook then bundle it up for delivery\.
  match LOGBOOKBUNDLEBAD The work order requires items of a higher quality, so you decide against bundling that.
  put bundle my %logbundlestring with my logbook
  matchwait
  
LOGBOOKBUNDLEBAD:
  put #echo Yellow Made an item of inferior quality!
  put #echo %alertwindow Yellow Made an item of inferior quality!
  return

LOGBOOKBAD:
  put #echo %alertwindow Yellow [CRAFT]: You have a logbook that's not bonded to you!  Stopping forging.
  gosub CRAFTINGABORT
  return

GIVEMASTERLOG:
  var givemaster $0
GIVEMASTERLOGP:
  pause
GIVEMASTERLOGMAIN:
  matchre GIVEMASTERLOGP %waitstring
  matchre RETURN You hand \w+ your logbook and bundled items, and are given \d+ \w+ in return\.
  put give my logbook to %givemaster
  matchwait


#####REPAIR#####

CRAFTREPAIRLOOP:
  var repairer $1
  var craft $2
  var currentrepairitem -1
  eval maxitemsrepair count("%%craftrepairlist","|")
  goto CRAFTREPAIRLOOPMAIN
CRAFTREPAIRLOOPMAIN:
  math currentrepairitem add 1
  if ((%currentrepairitem > %maxitemsrepair) || ("%repairlist" = "")) then
  {
    #echo No valid list.
    return
  }
  gosub GETITEM my %%craftrepairlist(%currentrepairitem)
  pause .5
  if ("$righthand" != "Empty") then gosub CRAFTGIVETOOL
  if ("$righthandnoun" = "ticket") then gosub PUTITEM my ticket in my %craftingstorage
  goto CRAFTREPAIRLOOPMAIN

CRAFTGIVETOOLP:
  pause
CRAFTGIVETOOL:
  matchre CRAFTGIVETOOLSP %waitstring
  matchre NOMONEY You will need more coin if I am to be repairing that!
  matchre CRAFTGIVETOOLSTOW I will not repair something that isn't broken|I'm sorry, but I don't work on those.|Lucky for you!  That isn't damaged!|Read the sign on the wall!|There isn't a scratch on that,|Read the hide on the wall, please|Read the sign please\!|The apprentice repairman frowns and says|Please don't lose the ticket|Please don't lose this ticket|\w+ smiles and says|Don't lose this ticket\!
  matchre CRAFTGIVETOOL ^.* looks over the \w+ and says
  match RETURN What is it you're trying to give\?
  matchre RETURN You hand \w+ \d+ (?:Kronars|Lirums|Dokoras) and he gives you back a repair ticket.
  put give %repairer
  matchwait

CRAFTGIVETOOLSTOW:
  #pause .5
  gosub PUTITEM $righthand in my %craftingstorage
  RETURN

CRAFTTICKETLOOP:
  var ticketstring $0
  goto CRAFTTICKETLOOPMAIN		
		
CRAFTTICKETLOOPMAIN:
  gosub GETITEM %ticketstring ticket
  if ((matchre("$righthandnoun", "ticket")) || (matchre("$righthandnoun", "ticket"))) then
  else
  {
    #echo No ticket!  Moving on.
    return
  }
  gosub GIVETICKETCRAFT
  gosub PUTITEM $righthand in my %craftingstorage
  goto CRAFTTICKETLOOPMAIN

GIVETICKETCRAFTP:
  pause
GIVETICKETCRAFT:
  matchre GIVETICKETCRAFTP %waitstring
  matchre RETURN ^You hand (%repairer) your ticket and are handed back|After a moment, he returns and hands you
  match RETURN You hand the clerk your ticket and are handed back
	matchre CRAFTWAITREPAIR ^\w* smiles and says
	matchre CRAFTWAITREPAIR ^\w* grumbles\, \"Well that isn't gonna be done for another
	matchre CRAFTWAITREPAIR (A|An) \w+ clerk says politely, "That won't be done for another
	matchre GIVETICKETCRAFTWAIT (A|An).* clerk says politely, "That is almost done, just give me a few more moments here."
	matchre GIVETICKETCRAFTWAIT ^\w+ grumbles, \"Well that is almost done, just give me a few more moments here\.\"
	match GIVETICKETCRAFT What is it you're trying to give?
	put give %repairer
	matchwait 5
	var timeoutsub GIVETICKETCRAFT
  var timeoutcommand give %repairer
	goto TIMEOUT

GIVETICKETCRAFTWAIT:
  pause 30
  goto GIVETICKETCRAFT

CRAFTWAITREPAIR:
	pause 60
	goto GIVETICKETCRAFT

CRAFTLIBEND: