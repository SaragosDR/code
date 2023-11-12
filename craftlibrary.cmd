var storage rucksack
var craftingstorage crafting satchel
var hammer diagonal-peen hammer
var tongs tongs
var shovel shovel
var bellows bellows
var oil oil
var rod stirring rod

var disciplines weaponsmithing|armorsmithing|blacksmithing|tailoring
var difficulties easy|challenging|hard

goto CRAFTLIBEND

#####CORE_CRAFTING#####
CRAFTING:
  var craftcount 0
CRAFTINGMAIN:
  if (%craftcount >= %quantity) then return
  gosub GETITEM %discipline book
  gosub STUDYBOOK my %discipline book
  gosub PUTITEM %discipline book in %craftingstorage
  gosub TAPNOUN %product
  var product %nountap
  if (("%discipline" = "weaponsmithing") || ("%discipline" = "armorsmithing") || ("%discipline" = "blacksmithing")) then
  {
    gosub GETITEM my %material ingot in %craftingstorage
    gosub PUTITEM my %material ingot on anvil
    gosub FORGE
  }
  if ("%discipline" = "tailoring") then
  {
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
    gosub PUTITEM %product in %craftingstorage
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
    gosub STOWALL
    gosub MOVE docks
    gosub GOCORRAL
    gosub MOVE %workroom
  }
  gosub STUDYINSTRUCTIONS
  gosub PUTITEM my instructions in my %craftingstorage
  gosub GETITEM my %material %materialnoun in %craftingstorage
  gosub SWAP
  gosub TAPNOUN %product
  var product %nountap
  if ("%discipline" = "tailoring") then gosub TAILOR
  if ("%discipline" = "knitting") then gosub KNIT
  gosub STOW right
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
  match KNITPUSH the pattern is uneven and off by one
  match KNITCAST The garment is nearly complete and now must be cast off
  match KNITKNIT Roundtime:
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

KNITKNIT:
  if (%firstcut = 1) then
  {
    var firstcut 0
    gosub STOWITEM %material %materialnoun
  }
  var craftaction knitknit
  goto KNITMAIN

KNITPUSH:
  var craftaction knitpush
  goto KNITMAIN

KNITTURN:
  var craftaction knitturn
  goto KNITMAIN
  
KNITCAST:
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
      gosub GETITEM %pins in my %craftingstorage
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
  match CUT With the measuring complete, now it is time to cut away more of the fabric with scissors.
  match PINS Two layers of the fabric won't cooperate and could use some pins to align them.
  match PINS The leather keeps bending apart and could use some pins to keep it together.
  match PINS Two pieces of the leather won't cooperate and could use some pins to align them.
  match PINS The fabric keeps folding back and could use some pins to keep it straight.
  match SEW Roundtime
  match SLICKSTONE The fabric develops wrinkles from all the handling and could use a quick ironing.
  match SLICKSTONE A deep crease develops along the fabric, bunching it together awkwardly.
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
  if ("%craftaction" = "pins") then put poke my %product with my %pins
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
    gosub STOWITEM my %scissors
    gosub GETITEM %material %materialnoun
    gosub STOW right
  }
  var craftaction sew
  goto TAILORMAIN
  
SLICKSTONE:
  var craftaction slickstone
  goto TAILORMAIN
  
YARDSTICK:
  var craftaction yardstick
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
    if (("$righthandnoun" != "pliers") && ("$lefthandnoun" != "pliers")) then gosub GETITEM pliers in my %craftingstorage
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
	if ("%craftaction" = "oil") then put pour my oil on my %product
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

TURNCRUCP:
  pause
TURNCRUC:
   matchre TURNCRUCP %waitstring
   match SMELT Roundtime
   put turn crucible with my %rod
   matchwait
   
   
#####SOCIETY_SUBS#####

FINDMASTER:
  var findmastercount 0
  var foundmaster 0
  eval masterrangecount count("%masterrange", "|")
  echo masterrangecount: %masterrangecount
  if (!matchre("$roomobjs", "Forging Society Master")) then gosub FINDMASTERLOOP
  return

FINDMASTERLOOP:
  if (%findmastercount > %masterrangecount) then return
  gosub MOVE %masterrange(%findmastercount)
  if (matchre("$roomobjs", "Forging Society Master")) then
  {
    var foundmaster 1
    return
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


TASKACQUIRE:
  if (("$righthandnoun" != "logbook") && ("$lefthandnoun" != "logbook")) then gosub GETITEM logbook
  gosub LOGBOOKASK %mastername %difficulty %discipline
  gosub PUTITEM logbook in %craftingstorage
  pause .5
  echo product: %product
  echo quantity: %quantity
  echo timelimit: %timelimit
  echo chapter: %chapter
  
  gosub GETITEM %discipline book
  gosub TURNBOOK chapter %chapter
  echo product: %product
  action (pageread) var page $1; action (pageread) off when Page (\d+)\: (a|an|some) (%product)
  gosub READBOOK my %discipline book
  pause .5
  echo page: %page
  gosub TURNBOOK page %page
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
  action var productcheck $4 when \-\=   Chapter (\d+), Page (\d+)\: Instructions for crafting (a|an|some) (.*)    \=\-
  gosub READBOOK my %discipline book
  pause 1
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
  
  #TASK_OUTPUT
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
  if (%maxquantity != 0) then
  {
    if (%quantity > %maxquantity) then
    {
      put #echo Yellow Quantity greater than MaxQuantity.  Trying again.
      goto TASKACQUIRE
    }
  }
  if (%maxvolumes != 0) then
  {
    if (%totalvolume > %maxvolumes) then
    {
      put #echo Yellow Volumes needed greater than MaxVolumes.  Trying again.
      goto TASKACQUIRE
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
  if (%smelting = 1) then
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
  if (%smelting = 1) then
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
  match RETURN The attendant takes some coins from you and hands you
  put order %craftingorderstring
  matchwait


#####BOOK_SUBS#####
TURNBOOK:
  var turnbookstring $0
  goto TURNBOOKMAIN
TURNBOOKP:
  pause
TURNBOOKMAIN:
  matchre %waitstring TURNBOOKP
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
  matchre %waitstring LOGBOOKASKP
  matchre RETURN \w+ shuffles through some notes and says
  put ask %masterstring for %jobstring work
  matchwait

  
  
LOGBOOKBUNDLE:
  var logbundlestring $0
  goto LOGBOOKBUNDLEMAIN
LOGBOOKBUNDLEP:
  pause
LOGBOOKBUNDLEMAIN:
  match LOGBOOKBUNDLEP %waitstring
  matchre RETURN You notate the .* in the logbook then bundle it up for delivery\.
  match LOGBOOKBUNDLEBAD The work order requires items of a higher quality, so you decide against bundling that.
  put bundle %logbundlestring with my logbook
  matchwait
  
LOGBOOKBUNDLEBAD:
  put #echo Yellow Made an item of inferior quality!

GIVEMASTERLOG:
  var givemaster $0
GIVEMASTERLOGP:
  pause
GIVEMASTERLOGMAIN:
  matchre GIVEMASTERLOGP %waitstring
  matchre RETURN You hand \w+ your logbook and bundled items, and are given \d+ \w+ in return\.
  put give my logbook to %givemaster
  matchwait

  
CRAFTLIBEND: