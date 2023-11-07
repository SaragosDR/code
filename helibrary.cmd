
action var winpercentage %totalprizes; math winpercentage / %totalattempts; math winpercentage * 100; var keptpercentage %prizeskept; math keptpercentage / %totalattempts; math keptpercentage * 100; var costperkeptprize %totalspent; math costperkeptprize / %prizeskept; put #echo >Log Yellow [%scripttag] TotalAttempts: %totalattempts -- TotalPrizes: %totalprizes -- PrizesKept: %prizeskept.  TotalSpent: %totalspent // WinPercentage: %winpercentage% -- KeptPercentage: %keptpercentage% -- Cost/Kept Prize: %costperkeptprize. when A good positive attitude never hurts\.
action var lodgedstring $0 when You have a .* lodged

var badmaterials khaddar

if ("%scripttag" != "DARK") then
{
  var lootkeeplist cloth lootbag instructions|cloth lootpouch instructions|dark green sack made of dessicated kelp|dark green sack made of desiccated kelp|(fibrous|folded|tiny|carved) .* icon of .*|faintly glowing starstone|glass octahedron|piece of iridescent .* seaglass|sea-blue vial|sea-green potion|small sea serpent totem|tiny iridescent cube|translucent conch shell inlaid with .* swirls|dramatic.*cloak fastened with a.*clasp|ornate \S+ ring|compact .* textbook bound with a .* cover|water-stained treasure map|elaborately dressed .* puppet with .* eyes|miniature .* doll dressed in .* robes|porcelain toy .* clothed in .* vestments|burnished .* wheel painted with colorful sea creatures|sleek .* lootpouch fastened with a .* leviathan|polished .* wand topped with a .* starfish|iridescent .* filaments strung with .* stars|folding .* chair with a .* cushioned seat|miniature polar bear with round .* eyes|.* thigh pouch|.* robes|.* skirt|length of .* fabric|latticed .* picnic basket tied with|slim.*codex|large.*tome patterend with stylized.*sigils|feathery.*fronds|small.*trident|sylized.*wave|tapered crown of miniature.*tridents|lacquered.*band set with.*clownfish|slender.*eyebrow ring dangling.*sigil|fragile.*blossom with delicate.*petals|fragile blown-glass sphere cradled within a twisted.*frame|pilgrim's badge sculpted with the emblem of|sea urchin mirror with.*gliding along the spines|small.*treasure chest set with.*embellishments|competition miniature Merelew soldier wielding a tiny.*trident|repair case of polished.*with.*fittings|seaglass bottle of chilled zuoganaas insulated with.*kelp fronds|.*contract marked with the crest of the Traders' Guild|tarina|.*instructions|.*ice skates|infuser stone|potency crystal|seaglass-tipped arrows|seaglass-tipped bolts
}
else
{
  var gems1 agate|alexandrite|amber|amethyst|andalusite|aquamarine|bead|beryl|bloodgem|bloodstone|carnelian|chrysoberyl|carnelian|chalcedony
  var gems2 chrysoberyl|chrysoprase|citrine|coral|crystal|diamond|diopside|emerald|egg|eggcase|garnet|gem|goldstone|glossy malachite
  var gems3 (chunk of|some|piece of).*granite|hematite|iolite|ivory|jade|jasper|kunzite|lapis lazuli|malachite stone|minerals|moonstone|morganite|onyx
  var gems4 opal|pearl|pebble|peridot|quartz|ruby|sapphire|spinel|star-stone|(waermodi|lasmodi|sjatmal|lantholite) stones|sunstone|talon|tanzanite|tooth|topaz|tourmaline|tsavorite|turquoise|zircon
  var allgems %gems1|%gems2|%gems3|%gems4|%gems5

  var badlootlist \S+ kelp|\S+ rockweed|\S+ \S+ rockweed|piece of \S+ sharkskin|\S+ root|\S+ flowers|shark's tooth|burlap cloth|felt cloth|bear-pelt moccasins threaded with white leather laces|cobalt-blue leather belt studded with iron|doeskin moccasins threaded with brown leather laces|embossed leather belt with a gold-washed buckle|fawn-brown leather belt decorated with steel studs|green leather eye patch|light grey leather belt studded with circles of polished amber|pleated deep green wool breeches cross-gartered from ankle to knee with brown leather|purple leather eye patch|seal-pelt moccasins threaded with black leather laces|bear tooth necklace strung on a leather thong|gryphon feather necklace strung on a leather thong|leatherfoot steak|yelith root|ocarina|cambrinth .*|black linen shirt with carved amethyst buttons|black silk surcoat with the crest of the Bards' Guild|pair of pastel pink leather ankle boots decorated with pewter chains

  var lootkeeplist infuser stone|potency crystal|\S+ powder|.* cloth|.* stack|.* leather|.* bar|.* nugget|.* fragment|.* lump|.* tear|.* shard|.* ingot|.* pebble|.* rock|.* stone|.* boulder|.* deed|bulging pouch|small pouch
}

var storage 0
var dolphinpause 0
var healbot NO
var healbotroom 204
var healbotname Maorn

var premium -1
var totalattempts 0
var totalprizes 0
var prizeskept 0
var totalspent 0

if {"$charactername" = "Saragos") then
{
  var storage haversack
  var healbot YES
  var healbotroom 204
  var healbotname Maorn
}
if {"$charactername" = "Navesi") then
{
  var storage duffel
  var healbot YES
  var healbotroom 204
  var healbotname Maorn
}

goto HELIBEND

LOCATIONCHECK:
	if ($zoneid != 6439) then
	{
	  if $zoneid = 1 then
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
	if ("%scripttag" != "DARK") then
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
    if (%storage != 0) then gosub PUTITEM %shorttap in my %storage
    else gosub STOWALL
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

HELIBEND:
