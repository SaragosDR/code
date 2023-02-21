include library.cmd

#debug 10
var pcast 1
var astralcast 1

var starting-harness-amount 20
var starting-harness-number 4
var astralsafe $astralsafe
var minconcentration $minconcentration
eval astralsafe toupper("%astralsafe")
if matchre("%astralsafe", "\b(YES|NO)\b") then
else
{
  var astralsafe YES
  put #var astralsafe YES
}
var hundredth $hundredth
eval hundredth toupper("%hundredth")
if matchre("%hundredth", "\b(YES|NO)\b") then
else
{
  var hundredth NO
  put #var hundredth NO
}
var entering yes
var reharness 0
var re-pow no
var old-moon NONE
var emergency no
var last-dir ""
var expansed no

var cambrinth NO
var harnessing YES
var harnessmax $harnessmax

#ALERTS
#action put #play JustArrived;put #echo Yellow Alarm: Danger! when You realize this would be easier if you use your skill at harnessing to exert some control over the mana streams.
#action put #play JustArrived;put #echo Yellow Alarm: Danger! when You struggle to maintain your distance from the streams of mana.
#action put #play JustArrived;put #echo Yellow Alarm: Danger! when A sharp pain wracks your body as you graze one of the burning streams of mana!  You correct yourself through sheer force of will, barely averting disaster.

action goto WARDEDROOM when Something is interfering with the spell.
action var reharness 1 when You carefully maintain your place among the shifting
action var reharness 1 when You struggle to maintain your distance
action var reharness 1 when Your mind begins to falter, causing you to edge dangerously close
action var reharness 1 when You realize this would be easier if you use your skill at harnessing to exert some control over the mana streams.
action var emergency yes when The entity's mouth remains closed in a scowl, but you can hear him all the same.
action var entering no when The entity's mouth remains closed in a scowl, but you can hear him all the same.
action var emergency yes;var entering no when Unlike most astral phenomena, the static does not go away after a few moments.
action var emergency yes;var entering no when The ground beneath you seems to give way and, for a few horrible moments
action var re-pow yes when before settling into new patterns.
action var center-dir $1 when You believe the center of the microcosm is to the (\S+).
action var end-dir $1 when You believe the end of the conduit lies (\S+).
action var end-dir arrived when You are already at the end of the conduit.
action goto EXPANSED when You cannot sense even a single thread of Lunar energy from where you are.
action goto EXPANSED when What little reality the microcosm provided slips away from your senses.

#MAGIC_TRIGGERS
action var ready 0;var scancel 1 when Your concentration slips for a moment, and your spell is lost.
action var ready 1 when You feel fully prepared to cast your spell.
action var ready 0;var scancel 1 when Your target pattern dissipates because
action var ready 0;var scancel 1 when Your pattern dissipates with the loss of your target.

# The following must be a list of valid arguments, other than shard names/locations:
var arg-list "naus 100 safe fast double"

action echo Aborting astral travel due to an item lying at your feet!  Fix this first!; put #play Unease; put #flash; goto END when Lying at your feet is


if_1
	goto SETUP

echo ------------------------------------------------
echo ------------------ Astral Travel -------------------
echo ------------------------------------------------
echo = Valid Destinations:
echo = Asharshpar'i - Leth Deriel - (leth|asharshpari)
echo = Auilusi - Aesry - (aesry|ricky|auilusi)
echo = Besoge - Mer'kresh - (merkresh|kresh|besoge)
echo = Dinegavren - Therenborough - (theren|dinegavren)
echo = Dor'na'torna - Hibarnhvidar - (hib|hibarnhvidar|dornatorna)
echo = Erekinzil - Taisgath - (ratha|taisgath|erekinzil)
echo = Marendin - Shard - (shard|marendin)
echo = Mintais - Throne City - (throne|mintais)
echo = Tamigen - Raven's Point - (raven|tamigen)
echo = Rolagi - Crossing - (crossing|rolagi)
echo = Tabelrem - Muspar'i - (muspari|tabelrem)
echo = Taniendar - Riverhaven - (river|haven|taniendar)
echo = Vellano - Fang Cove - (fang|vellano)
echo
echo Must be called as .astral <destination> [100] [safe] [fast] [naus]
#echo Valid destinations include Aesry, Crossing, Fang, Hibarnhvidar, Leth, Mer'Kresh, Muspar'i, Ratha, Riverhaven, Raven, Shard, Steppes, Taisgath, Therenborough, Throne, Tiv, Asharshpar'i, Auilusi, Besoge, Dinegavren, Dor'na'torna, Emalerje, Erekinzil, Marendin, Mintais, Rolagi, Tabelrem, Tamigen, Taniendar and Vellano.
echo Include "100" as an argument after any shard names if you wish to enter via the 100th circle ability or set the system variable hundredth to yes.  
echo Include "safe" as an argument after any shard names if you wish to use the double-pow method or set the system variable astralsafe to yes.
echo Include "fast" as an argument after any shard names if you wish to use the single-pow method.
echo Include "naus" as an argument after any shard names if you wish to forego casting AUS.
exit

SETUP:
  timer clear
  timer start
  if $guild != "Moon Mage" then
  {
    put #play Unease
    put #flash
    echo Cancelling astral travel.  You're not a Moon Mage!
    goto END
  }
  if (($sitting = 1) || ($prone = 1) || ($kneeling = 1)) then gosub STAND
	var args %2 %3 %4 %5 %6 %7 %8 %9
	gosub CASTRESET
  gosub RELALL
  gosub STOWALL
  put look $charactername
  pause .5
  if matchre("%args", "safe") then var astralsafe YES
	if matchre("%args", "fast") then var astralsafe NO
	if matchre("%args", "100") then var hundredth YES
	gosub DESTINATION-FIND
	if matchre("%args", "naus") then
	else
  {
    if $SpellTimer.AuraSight.active = 0 then gosub AUSCAST
  }
  echo Extra Safety: %astralsafe
  echo Hundredth Circle Entry: %hundredth
  echo Destination Shard: %destination-shard
	gosub CURRENT-SHARD-RECOGNIZE
	if %current-shard = %destination-shard then
  {
    echo You're already here!  Try again?
    exit
  }
  if ((%current-shard != "none") && (%astralsafe = "YES") && (%hundredth = "YES")) then
  {
    var hundredth NO
    echo Using normal entry since a shard is right here and AstralSafe is ON.
  }
	if ((%hundredth = "NO") && (%current-shard = "none")) then
  {
    echo Can't find a shard and you're not set for the hundredth circle ability.
    exit
  }
  goto ENTRY
  
ENTRY:
  counter set 0
  var spellprepping mg
  var prepmana 5
  var ctoverride 1
  gosub PREP
  gosub HARNESSLOOP
  if %hundredth = "NO" then
  {
    var shardtofocus %current-shard
    gosub FOCUSSHARD
    var ctoverridevar %current-shard
	}
	else var ctoverridevar grazhir
  if %ready != 1 then
	{
	  waitfor You feel fully prepared
	}
  gosub CAST
  var cyclictimer %t
  math cyclictimer add 35
	pause 2
	gosub AWAKE
	goto MAIN


MAIN:
  if %entering = no then
	{
	  if matchre ("$roomobjs", "the silvery-white shard") then goto ENDWAYS
		if matchre ("$roomobjs", "the silvery shard") then goto ENDWAYS
	}
	else
	{
	  if matchre ("$roomname", "Pillar of") then gosub CENTER
	}
	if matchre ("$roomobjs", "%destination-shard") then goto ENDWAYS
	if matchre ("$roomname", "Grey Expanse") then goto EXPANSED
  gosub POW
  gosub ASTRALMOVE
  goto MAIN
	
POWPROCESS:
	if %center-dir = %end-dir then goto POW
	if %entering = "yes" then var current-dir %center-dir
	else var current-dir %end-dir
	if ((%astralsafe = "YES") && (%emergency = "no")) then
	{
	  echo Current-dir: %current-dir
	  echo Last-dir: %last-dir
		if %current-dir != %last-dir then
	  {
	   	var last-dir %current-dir
	  	goto POW
	 	}
	 	else var last-dir ""
	}
	return

ASTRALMOVEP:
  pause
ASTRALMOVE:
	if %reharness = 1 then
	{
	  var harnessamount 20
    gosub HARNESSSIMPLE
		var reharness 0
	}
	if %current-dir = "arrived" then goto ENDWAYS
	matchre ASTRALMOVEP ...wait|type ahead|stunned|while entangled in a web.
	matchre RETURN You move across the unreal landscape, navigating by the streams of Lunar energy.
	put %current-dir
	matchwait
	
CENTER:
	if matchre ("$roomname", "%pillar") then
	{
	  var shardtofocus %destination-shard
	  gosub FOCUSSHARD
	}
	else
	{
		move d
		move %pillar-dir
		var shardtofocus %destination-shard
	  gosub FOCUSSHARD
	}
	var entering no
	return


ENDWAYS:
	gosub CURRENT-SHARD-RECOGNIZE
END-2:
	if %t < %cyclictimer then
	{
		echo Using teleport since MG is still on cooldown.    
		var spellprepping teleport
		var prepmana 5
	}
	else 
	{
	  var spellprepping mg
	  var prepmana 5
	}
	var ctoverride 1
	var ctoverridevar %current-shard
	gosub PREP
  var shardtofocus %current-shard
	gosub FOCUSSHARD
	
  if %goodfocus = 1 then
  {
    if %spellprepping = "teleport" then gosub RELMANA
    gosub CAST
    pause 3
    gosub RELMANA
    exit
  }
  else
  {
    gosub RELSPELL
    goto END-2
  }


EXPANSED:
	var emergency yes
	var entering no
	var expansed yes
	echo Looks like you're dead.  I'm outta here.
	exit

  
#################

POWP:
  pause
POW:
  matchre POWP ...wait|type ahead|stunned|while entangled in a web.
	matchre POWPROCESS Roundtime
	put pow
	matchwait

HARNESSLOOP:
  counter add 1
  var harnessamount %starting-harness-amount
  gosub HARNESSSIMPLE
  if %c < %starting-harness-number then goto HARNESSLOOP
  else return

FOCUSSHARDP:
  pause
FOCUSSHARD:
  matchre FOCUSSHARDP ...wait|type ahead|stunned|while entangled in a web.
  matchre FOCUSSHARDGOOD Roundtime
  matchre FOCUSSHARDBAD You reach out into the seemingly infinite|but cannot forge a connection to it since you are already connected to another shard
  put focus %shardtofocus
  matchwait

FOCUSSHARDGOOD:
  var goodfocus 1
  return
  
FOCUSSHARDBAD:
  var goodfocus 0
  return

CURRENT-SHARD-RECOGNIZE:
	var shards Rolagi|Taniendar|Marendin|Dinegavren|Erekinzil|Mintais|Asharshpar'i|Emalerje|Dor'na'torna|Tamigen|Auilusi|Besoge|Tabelrem|Vellano
	var current-shard none
	if matchre ("$roomdesc", "The cavern centers on a pillar of black stone bathed in the light from a fissure rising through the ceiling to the sky above.") then
	{
		var current-shard Tamigen
		return
	}
	if matchre ("$roomdesc", "Otherwise unadorned, the room is thick with shadows, no sconces or torches to help shed illumination.  You also see an arch and a stone turtle.") then
	{
		var current-shard Dinegavren
		return
	}
  if matchre ("$roomname", "Gealeranendae College, Tear of Grazhir Exhibit") then
  {
		var current-shard Dinegavren
		return
	}
	if matchre ("$roomname", "Phelim's Sanctum, Tear of Grazhir") then
	{
		var current-shard Mintais
		return
	}
	if matchre ("$roomname", "Embalming Chamber") then
  {
		var current-shard Asharshpar’i
		return
	}
	counter set 0
	eval arraylen count("%shards", "|")
	
CURRENT-SHARD-RECOGNIZE-LOOP:
		if %c > %arraylen then
		{
		  return
		}
		eval shardtest element("%shards", %c)
		if matchre ("$roomobjs", "%shardtest") then
		{
		  var current-shard %shardtest
			return
		}
		counter add 1
		goto CURRENT-SHARD-RECOGNIZE-LOOP


DESTINATION-FIND:
  var gooddest 0
  eval destination tolower("%1")
  if matchre ("%destination", "\b(crossing|rolagi)\b") then
  {
    echo Destination: Crossing
    var destination-shard Rolagi
    var pillar Nightmares
    var pillar-dir n
    var gooddest 1
  }
  if matchre ("%destination", "\b(shard|marendin)\b") then
  {
    echo Destination: Shard
    var destination-shard Marendin
    var pillar Secrets
    var pillar-dir e
    var gooddest 1
  }
  if matchre ("%destination", "\b(river|haven|taniendar)\b") then
  {
    echo Destination: Riverhaven
    var destination-shard Taniendar
    var pillar Introspection
    var pillar-dir w
    var gooddest 1
  }
  if matchre ("%destination", "\b(theren|dinegavren)\b") then
  {
    echo Destination: Therenborough
    var destination-shard Dinegavren
    var pillar Introspection
    var pillar-dir w
    var gooddest 1
  }
  if matchre ("%destination", "\b(ratha|taisgath|erekinzil)\b") then
  {
    echo Destination: Taisgath
    var destination-shard Erekinzil
    var pillar Fortune
    var pillar-dir nw
    var gooddest 1
  }
  if matchre ("%destination", "\b(throne|mintais)\b") then
  {
    echo Destination: Throne City
    var destination-shard Mintais
    var pillar Fortune
    var pillar-dir nw
    var gooddest 1
  }
  if matchre ("%destination", "\b(leth|asharshpari)\b") then
  {
    echo Destination: Leth Deriel
    var destination-shard Asharshpar'i
    var pillar Heavens
    var pillar-dir sw
    var gooddest 1
  }
  if matchre ("%destination", "\b(hib|hibarnhvidar|dornatorna)\b") then
  {
    echo Destination: Hibarnhvidar
    var destination-shard Dor'na'torna
    var pillar Tradition
    var pillar-dir ne
    var gooddest 1
  }
  if matchre ("%destination", "\b(raven|tamigen)\b") then
  {
    echo Destination: Raven's Point
    var destination-shard Tamigen
    var pillar Heavens
    var pillar-dir sw
    var gooddest 1
  }
  if matchre ("%destination", "\b(aesry|ricky|auilusi)\b") then
  {
    echo Destination: Aesry Surlaenis
    var destination-shard Auilusi
    var pillar Tradition
    var pillar-dir ne
    var gooddest 1
  }
  if matchre ("%destination", "\b(merkresh|kresh|besoge)\b") then
  {
    echo Destination: Mer'Kresh
    var destination-shard Besoge
    var pillar Secrets
    var pillar-dir e
    var gooddest 1
  }
  if matchre ("%destination", "\b(muspari|tabelrem)\b") then
  {
    echo Destination: Muspar'i
    var destination-shard Tabelrem
    var pillar Nightmares
    var pillar-dir n
    var gooddest 1
  }
  if matchre ("%destination", "\b(fang|vellano)\b") then
  {
    echo Destination: Fang Cove
    var destination-shard Vellano
    var pillar Unity
    var pillar-dir se
    var gooddest 1
  }
  if %gooddest = 0 then
  {
    echo Unknown destination: %1
		echo Call without arguments for a list of destinations.
		exit
  }
  return
  
WARDEDROOM:
  echo Warded room!  Exiting.
  gosub RELALL
  exit
  
AUSCAST:
  if $SpellTimer.AuraSight.active = 0 then
  {
    if %casting != 1 then
    {
      var spellprepping aus
      var prepmana 5
      var addmana 80
      var casting 1     
    }
    gosub CASTINGLOGIC
    pause 1
    goto AUSCAST
  }
  else return
  
ASTRALCASTCLEANUP:
   var ctoverride 0
   gosub CASTRESET
   return
   
END:
  exit