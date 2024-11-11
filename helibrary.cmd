var storage 0
var dolphinpause 0
var dumproom 35
var workroom 745
var craftingstorage haversack

var healbot NO
var healbotroom 204
var healbotname Maorn

var savedyes NO

var storage haversack
var craftingstorage crafting satchel
var awl $awl
var knittingneedles $knittingneedles
var scissors $scissors
var sewingneedles $sewingneedles
var slickstone $slickstone
var yardstick $yardstick

if {"$charactername" = "Saragos") then
{
  var healbot YES
  var healbotroom 204
  var healbotname Maorn
  
  var workroom 264
}
if {"$charactername" = "Isrenar") then
{
  var workroom 292
}
if {"$charactername" = "Navesi") then
{
  var storage gamebag
  var workroom 264
}
if {"$charactername" = "Itusumera") then
{
  var storage gamebag
  var workroom 292
}
if {"$charactername" = "Chyral") then
{
  var storage gearbag
  var workroom 192
  var craftingstorage crafting satchel
  var slickstone sunderstone slickstone
  var yardstick detailed yardstick
}
var outfittingrepairlist %sewingneedles|%scissors|%awl|%yardstick|%slickstone|%knittingneedles

if ("%scripttag" != "DARK") then
{
  var lootkeeplist cloth lootbag instructions|cloth lootpouch instructions|dark green sack made of dessicated kelp|dark green sack made of desiccated kelp|(fibrous|folded|tiny|carved) .* icon of .*|faintly glowing starstone|glass octahedron|piece of iridescent .* seaglass|sea-blue vial|sea-green potion|small sea serpent totem|tiny iridescent cube|translucent conch shell inlaid with .* swirls|dramatic.*cloak fastened with a.*clasp|ornate \S+ ring|compact .* textbook bound with a .* cover|water-stained treasure map|elaborately dressed .* puppet with .* eyes|miniature .* doll dressed in .* robes|porcelain toy .* clothed in .* vestments|burnished .* wheel painted with colorful sea creatures|sleek .* lootpouch fastened with a .* leviathan|polished .* wand topped with a .* starfish|iridescent .* filaments strung with .* stars|folding .* chair with a .* cushioned seat|miniature polar bear with round .* eyes|.* thigh pouch|.* robes|.* skirt|length of .* fabric|latticed .* picnic basket tied with|slim.*codex|large.*tome patterend with stylized.*sigils|feathery.*fronds|small.*trident|sylized.*wave|tapered crown of miniature.*tridents|lacquered.*band set with.*clownfish|slender.*eyebrow ring dangling.*sigil|fragile.*blossom with delicate.*petals|fragile blown-glass sphere cradled within a twisted.*frame|pilgrim's badge sculpted with the emblem of|sea urchin mirror with.*gliding along the spines|small.*treasure chest set with.*embellishments|competition miniature Merelew soldier wielding a tiny.*trident|repair case of polished.*with.*fittings|seaglass bottle of chilled zuoganaas insulated with.*kelp fronds|.*contract marked with the crest of the Traders' Guild|tarina|.*instructions|.*ice skates|infuser stone|potency crystal|seaglass-tipped arrows|seaglass-tipped bolts|.*torque|large .* tome patterned with stylized .* sigils
}
else
{
  var badlootlist \S+ kelp|\S+ rockweed|\S+ \S+ rockweed|piece of \S+ sharkskin|\S+ root|\S+ flowers|shark's tooth|burlap cloth|felt cloth|bear-pelt moccasins threaded with white leather laces|cobalt-blue leather belt studded with iron|doeskin moccasins threaded with brown leather laces|embossed leather belt with a gold-washed buckle|fawn-brown leather belt decorated with steel studs|green leather eye patch|light grey leather belt studded with circles of polished amber|pleated deep green wool breeches cross-gartered from ankle to knee with brown leather|purple leather eye patch|seal-pelt moccasins threaded with black leather laces|bear tooth necklace strung on a leather thong|gryphon feather necklace strung on a leather thong|leatherfoot steak|yelith root|ocarina|cambrinth .*|black linen shirt with carved amethyst buttons|black silk surcoat with the crest of the Bards' Guild|pair of .* leather ankle boots decorated with .* chains|skullcap crafted of .* with colorful beadwork|black linen shirt with carved lapis lazuli buttons|jadice flowers|low-slung pair of billowy sapphire-blue gauze pants gathered close at the ankles|some heavy pearl-grey wool pants with rolled-up cuffs|black silk surcoat with the crest of the Rangers' Guild on the front|some soft .* linen trousers edged with black piping|a clay whistle in the shape of a bird|some pleated turquoise wool breeches cross-gartered from ankle to knee with pink silk cords|a pale blue leather belt decorated with copper studs

  var lootkeeplist infuser stone|potency crystal|\S+ powder|.* cloth|.* stack|.* leather|.* bar|.* nugget|.* fragment|.* lump|.* tear|.* shard|.* ingot|.* pebble|.* rock|.* stone|.* boulder|.* deed|bulging pouch|small pouch
}

var sacknouns lump|shard|nugget|bar|leather|cloth|dye|deed|stack|fragment
var commonbones badger-bone|barghest-bone|bear-bone|bison-bone|bobcat-bone|cougar-bone|crocodile-bone|deer-bone|frog-bone|ghoul-bone|goblin-bone|jackal-bone|kobold-bone|lava drake-bone|leucro-bone|prereni-bone|rat-bone|reaver-bone|rotting-bone|serpent-bone|sluagh-bone|snow goblin-bone|stalker-bone|troll-bone|wolf-bone|zombie-bone
var commoncloths burlap|cotton|felt|linen|silk|wool
var commonleathers amber-scale|antelope-skin|azure-scale|badger-pelt|bison-hide|ape-pelt|black goblin-skin|black leucro pelt|black-hide|blood wolf-pelt|boar hide|bobcat-pelt|bronze leucro-hide|brown poloh'izh-hide|caracal-pelt|cave-troll|clouded arzumos pelt|cougar-pelt|crimson-scale|crocodile-skin|damaska boar hide|dark-scale|deer-skin|eel-skin|frog-skin|ghoul-skin|goblin-hide|goblin-skin|gargoyle-hide|hound-pelt|green-scale|grey-scale|gryphon-pelt|horse-hide|jackal-pelt|kobold-skin|la'tami-hide|lava drake-hide|hound-pelt|blue-scale|marble-hide|ogre-skin|pivuh-skin|prereni-skin|quartz-hide|rat-pelt|reaver-pelt|red-leucro|red-scale|salt-encrusted|serpent-skin|salswar-hide|sharkskin|sheepskin|silver-leucro|sluagh-hide|snow goblin-hide|stalker-pelt|storm-bull|troll-skin|trollkin-hide|viper-skin|warcat-pelt|white-pelt|wolf-pelt|zombie-skin
var commonmetals brass|bronze|coal|copper|covellite|highsteel|iron|lead|nickel|oravir|pewter|platinum|silver|steel|tin|gold|zinc
var commonstones alabaster|andesite|basalt|breccia|dolomite|gabbro|granite|jade|limestone|marble|obsidian|onyx|pumice|quartzite|sandstone|schist|serpentine|soapstone|travertine
var commonwoods alder|apple|ash|aspen|balsa|bamboo|birch|cedar|cypress|elm|fir|hemlock|larch|mahogany|mangrove|maple|moabi|oak|pine|spruce|teak|walnut|willow
var commonmats |%commonbones|%commoncloths|%commonleathers|%commonmetals|%commonstones|%commonwoods|

action var winpercentage %totalprizes; math winpercentage / %totalattempts; math winpercentage * 100; var keptpercentage %prizeskept; math keptpercentage / %totalattempts; math keptpercentage * 100; var costperkeptprize %totalspent; math costperkeptprize / %prizeskept; put #echo >Log Yellow [%scripttag] TotalAttempts: %totalattempts -- TotalPrizes: %totalprizes -- PrizesKept: %prizeskept.  TotalSpent: %totalspent // WinPercentage: %winpercentage% -- KeptPercentage: %keptpercentage% -- Cost/Kept Prize: %costperkeptprize. when A good positive attitude never hurts\.
action var lodgedstring $0 when You have a .* lodged

var premium -1
var totalattempts 0
var totalprizes 0
var prizeskept 0
var totalspent 0
eval savedyes toupper(%savedyes)

goto HELIBEND

LOCATIONCHECK:
	if ($zoneid != 62022) then
	{
	  if ($zoneid = 1) then
	  {
	    gosub MOVE docks
	    gosub WHISTLEDOLPHIN
      if (%dolphinpause > 0) then
      {
        pause %dolphinpause
      }
      put #mapper reset
	  }
	  else
	  {
		  put #echo >Log Yellow [%scripttag]: Not in Andreshlew or Crossing!  Please restart!
		  exit
	  }
	}
	if (("%scripttag" != "DARK") && ("%scripttag" != "ZASELE")) then
	{
    if ($roomid != %startroom) then
    {
      gosub MOVE %startroom
    }
  }
	return

REMOVELODGED:
  var lodgedstring 0
  gosub HEALTHVERB
  pause 2
  if %lodgedstring = 0 then return
  echo lodgedstring: %lodgedstring
  eval lodgedstring replace("%lodgedstring", "You have", "")
  eval lodgedstring replace("%lodgedstring", ".", "")
  eval lodgedstring replace("%lodgedstring", ", ", "|")
  eval lodgedstring replacere("%lodgedstring", "a (\w+ \w+) lodged (\w+) into your (\w+)", "\$3")
  eval lodgedstring replacere("%lodgedstring", "a (\w+ \w+) lodged (\w+) into your (\w+ \w+)", "\$3")
  echo lodgedstring: %lodgedstring
  eval lodgedlength length("%lodgedstring")
  echo lodgedlength: %lodgedlength
  if %lodgedlength != 0 then 
  {
    gosub STOWALL
		eval lodgedcount count("%lodgedstring", "|")
		echo lodgedcount: %lodgedcount
		var removecounter 0
		gosub REMOVELODGEDLOOP
  }
  return

REMOVELODGEDLOOP:
  if %removecounter > %lodgedcount then return
  gosub TEND %lodgedstring(%removecounter) 
  gosub DUMPITEM $righthandnoun
  math removecounter add 1
  goto REMOVELODGEDLOOP


HANDLELOOT:
  math totalprizes add 1
  var winpercentage %totalprizes
  math winpercentage / %totalattempts
  math winpercentage * 100
  var keptpercentage %prizeskept
  math keptpercentage / %totalattempts
  math keptpercentage * 100
  var costperkeptprize %totalspent
  math costperkeptprize / %prizeskept
  
  if (("$righthand" != "Empty") || ("$lefthand" != "Empty")) then
  {
    if ("$righthand" != "Empty") then gosub TAPSHORTEN $righthand
    else
    {
      if ("$lefthand" != "Empty") then gosub TAPSHORTEN $lefthand
    }
    
    if matchre("%lootreceived", "%badlootlist") then
    {
      put #echo >Log [%scripttag]: Won %lootreceived!  On the bad lootlist, dumping.
      gosub DUMPITEM %shorttap
      return
    }
  }
  
  if ("%scripttag" = "DARK") then
  {
    if matchre("%lootreceived", "%allgems") then
    {
      gosub STOWITEM %shorttap
      put #echo >Log [%scripttag]: Won %lootreceived!  It's a gem, stowing.
      return
    }
  }
  
  pause .5
  if matchre("%lootreceived", "%lootkeeplist") then
  {
    math prizeskept add 1
    put #echo >Log Yellow [%scripttag]: Won %lootreceived!  On the lootlist, keeping.  TotalAttempts: %totalattempts -- TotalPrizes: %totalprizes -- PrizesKept: %prizeskept.  TotalSpent: %totalspent.
    if (matchre ("%lootreceived", "dark green sack made of desiccated kelp") then
    {
      if ($roomid != %dumproom) then gosub MOVE %dumproom
      gosub PROCESSSACK
    }
    else
    {
      if (%storage != 0) then gosub PUTITEM %shorttap in my %storage
      else gosub STOWALL    
    }
    if ($righthand != "Empty") then
    {
      put #echo >Log Yellow [%scripttag]: Won %lootreceived!  Cannot store!  Exiting!
      exit
    }
  }
  else
  {
    put #echo >Log [%scripttag]: Won %lootreceived!  Not on the lootlist, dumping.
    gosub DUMPITEM %shorttap
  }
  return

GETHEALED:
  put #echo >Log [%scripttag]: Getting healed.
  gosub MOVE dolphin
  gosub GOCORRAL
  if (%dolphinpause > 0) then
  {
    pause %dolphinpause
  }
  put #mapper reset
  put #echo Yellow healbot: %healbot
  if ("%healbot" != "YES") then
  {
    if %premium = -1 then gosub PREMIUMCHECK
    if %premium = 1 then
    {
      gosub MOVE portal
      put go portal
      pause 2
      gosub MOVE healer
      put join list
      waitfor Yrisa crosses $charactername's name from the list.
      gosub MOVE portal
      put go portal
      pause 2
    }
    else
    {
      gosub MOVE w gate
      gosub MOVE dokt
      gosub HEALERUSE
      gosub MOVE crossing
    }
  }
  else
  {
    gosub MOVE %healbotroom
    put tap %healbotname
    waitfor %healbotname shakes your hand.
  }
  var needshealing 0
  gosub MOVE docks
  gosub WHISTLEDOLPHIN
  if (%dolphinpause > 0) then
  {
    pause %dolphinpause
  }
  put #mapper reset
  put #echo >Log [%scripttag]: Healing complete.
  return

GOROOM:
  var goroomstring $0
  goto GOROOMMAIN
GOROOMP:
  pause
GOROOMMAIN:
  matchre GOROOMP %waitstring
  matchre RETURN ^Obvious exits\:|^Obvious paths\:
  put go %goroomstring
  matchwait

GOCORRALP:
  pause
GOCORRAL:
  match GOCORRALP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match CORRALWAIT A pair of Merelew guards assist you into the water where a dolphin is already waiting to take you home!
  match CORRALWAIT A Merelew guard nods to you, smiling.  "We hope you enjoyed your visit to our humble home."  With a mischievious grin, they toss you into the water!  Before you can do more than flail around for a moment, a bottlenose dolphin surfaces beside you.  Grabbing hold, it begins to tow you toward your destination.
  put go corral
  matchwait 5
  echo didn't catch!
  
CORRALWAIT:
  match RETURN [The Crossing Docks, South End]
  matchwait
  
WHISTLEDOLPHINP:
  pause
WHISTLEDOLPHIN:
  match WHISTLEDOLPHINP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match WHISTLEWAIT [You have summoned a dolphin!  Please wait for it to arrive!]
  put whistle for dolphin transport
  matchwait
  
WHISTLEWAIT:
  #match RETURN With a final burst of speed, your dolphin arrives at the docks where a Merelew guard reaches down to fish you out of the water. 
  match RETURN [Andreshlew, South Dock]
  matchwait
  
HEALERUSEP:
  pause
HEALERUSE:
  matchre HEALERUSEP ...wait|type ahead|stunned|while entangled in a web
  matchre RETURN Dokt gives you a quick glance, "Look fine to me, out with you now."|You sit up.
  put lie
  matchwait
  
PREMIUMCHECKP:  
  pause
PREMIUMCHECK:
  matchre PREMIUMCHECKP ...wait|type ahead|stunned|while entangled in a web
  match PREMIUMNO Sign-up for a Premium Account today to join in the fun!
  match PREMIUMYES As of your last logon:
  put premium 10
  matchwait
  
PREMIUMYES:
  var premium 1
  return
  
PREMIUMNO:
  var premium 0


HECOINWITHDRAWP:
	pause
HECOINWITHDRAW:
	matchre HECOINWITHDRAWP %waitstring
	matchre RETURN ^The clerk counts out
	put withdraw $0
	matchwait

PROCESSSACK:
  if ("%scripttag" = "ZASELE") then var sackname woven sack
  else var sackname green sack
  if ("$lefthandnoun" = "sack") then gosub SWAP
  if ("$lefthand" != "Empty") then
  {
    gosub TAPSHORTEN $lefthand
    gosub PUTITEM my %shorttap in my %storage
  }
  if ("$lefthand" != "Empty") then
  {
    put #echo >Log Yellow Problem in clearing the left hand for processing the sack!  Please address!
    exit
  }
  gosub OPENITEM %sackname
  var boxitem %sackname
  gosub BOXFILLPOUCH
  gosub BOXCOINGET
  var sackfail 0
  var sacksuccess 0
  gosub SACKLOOT
  if ((%sacksuccess = 1) && (%sackfail = 0)) then
  { 
    gosub DUMPITEM my %sackname
  }
  else
  {
    put #echo >Log Yellow [%scripttag] Could not identify main sack reward.  Stowing sack for later inspection.
    gosub STOWALL
  }
  return

SACKLOOTP:
  pause
SACKLOOT:
	matchre SACKLOOTP \.\.\.wait|type ahead|stunned|while entangled in a web\.
  matchre SACKLOOTMATS (%sacknouns)
  matchre RETURN In the|nothing|What
	put look in my %sackname
	matchwait
  
SACKLOOTMATS:
  gosub GETITEM $1 in my sack
  if ("$lefthand" = "Empty") then
  {
    var sackfail 1
    #put #echo >Log Red badleft: $lefthand
    #put #echo >Log Red badright: $righthand
    return
  }
  var sacksuccess 1
  gosub TAPSHORTEN $lefthand
  if ("%savedyes" = "NO") then
  {
    if ("$lefthandnoun" = "dye") then
    {
      put #echo >Log [%scripttag] Dumping $lefthand - dye.
      gosub DUMPITEM my %shorttap
      goto SACKLOOT
    }
  }
  gosub TAPADJECTIVE $lefthand
  echo adjtap: %adjtap
  if contains("%commonmats", "|%adjtap|") then
  {
    put #echo >Log [%scripttag] Dumping $lefthand - common.
    gosub DUMPITEM my %shorttap
  }
  else
  {
    put #echo >Log Yellow [%scripttag] Found $lefthand!
    gosub STOWITEM my %shorttap
  }
  goto SACKLOOT


HELIBEND:
