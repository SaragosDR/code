include library.cmd

#Your target pattern dissipates because the lava drake is dead, but the main spell remains intact.

action var var goodtarget 0 when (balance|balanced|imbalanced|unbalanced)\]
action var goodtarget 0 when You turn to face

var storage haversack
var multiplier 1



if ("$roomname" = "Duskruin, Antechamber") then
{
  if (%multiplier = 1) then
  {
    gosub GETITEM multiplier
    gosub REDEEM
  }
  gosub GETITEM dueling slip
  move go portcullis
  gosub STOWITEM dueling slip
}
if (contains("$roomname", "Duskruin")) then
{
  put #echo Yellow Duskruin!
  var duskruin 1
}



#VARLOAD
var killadvance $killadvance
var killretreat $killretreat
var killbuffing $killbuffing
var killdb $killdb
var killcyclic $killcyclic
var killcycspell $killcycspell
var killcycprepmana $killcycprepmana
var killdbspell $killdbspell
var killdbprepmana $killdbprepmana
var killdbaddmana $killdbaddmana
var killtm $killtm
var killtmspell $killtmspell
var killtmprepmana $killtmprepmana
var killtmaddmana $killtmaddmana
var killweapon $killweapon
var killweapontype $killweapontype
var killweaponcombo $killweaponcombo
var killthrownverb $killthrownverb
var weaponname $killweaponitem
var ubowammo $killammo
var killloot $killloot
var harnessmax harnessmax
var cambrinth NO
var harnessing YES
var killtmfocus $killtmfocus
var tmfocusitem $tmfocusitem
var tmfocusworn $tmfocusworn
var tmfocusstorage $tmfocusstorage
var tmfocuscontainer $tmfocuscontainer
var ritualfocus $ritualfocus
var ritualfocusworn $ritualfocusworn
var ritualfocusstorage $ritualfocusstorage
var ritualfocuscontainer $ritualfocuscontainer
var minconcentration $minconcentration
var loottype $loottype
var minmana $minmana
var buffnum $buffnum
var collectcoin $collectcoin
var collectgem $collectgem
var collectscroll $collectscroll
var collectmaps $collectmaps

  var buff $buff
  var buffnum $buffnum
  var buff1 $buff1
  var buff1mana $buff1mana
  var buff2 $buff2
  var buff2mana $buff2mana
  var buff3 $buff3
  var buff3mana $buff3mana
  var buff4 $buff4
  var buff4mana $buff4mana
  var buff5 $buff5
  var buff5mana $buff5mana
  var buff6 $buff6
  var buff6mana $buff6mana
  var buff7 $buff7
  var buff7mana $buff7mana
  var buff8 $buff8
  var buff8mana $buff8mana
  var buff9 $buff9
  var buff9mana $buff9mana
  var buff10 $buff10
  var buff10mana $buff10mana
  var buff11 $buff11
  var buff11mana $buff11mana
  var buff12 $buff12
  var buff12mana $buff12mana
  var buff13 $buff13
  var buff13mana $buff13mana
  var buff14 $buff14
  var buff14mana $buff14mana
  var buff15 $buff15
  var buff15mana $buff15mana
  var buff16 $buff16
  var buff16mana $buff16mana
  var difficulty1percent $difficulty1percent
  var difficulty2percent $difficulty2percent
  var difficulty3percent $difficulty3percent
  var difficulty4percent $difficulty4percent
  var difficulty5percent $difficulty5percent
  
  if (("$guild" = "Warrior Mage") || ("$guild" = "Bard")) then
  {
    var nativemana 1
  }
  if (("$guild" = "Cleric") || ("$guild" = "Paladin")) then
  {
    var nativemana 2
  }
  if (("$guild" = "Empath") || ("$guild" = "Ranger")) then
  {
    var nativemana 3
  }
  if (("$guild" = "Moon Mage") || ("$guild" = "Trader")) then
  {
    var nativemana 4
  }
  if ("$guild" = "Necromancer") then
  {
    var nativemana 5
  }
#MM_VARS
var tktitem $tktitem

#WM_VARS
var dragonsbreath $dragonsbreath
var dbprepmana $dbprepmana
var dbaddmana $dbaddmana
var dbprepwait $dbprepwait
var blufmorgaraen $blufmorgaraen
var bgprepmana $bgprepmana
var bgaddmana $bgaddmana
var bgprepwait $bgprepwait
var magneticballista $magneticballista
var mabprepmana $mabprepmana
var mabaddmana $mabaddmana
var mabprepwait $mabprepwait


#STATUSVARS
var kcast 1
var dbready 1
var bgdone 0
var mabload 1
var nextassess 0
var nextsearch 0
var targettype 0
var balance solidly
var aiming 0
var aimready 0
var nextmablook 0
var nextbtnlook 0
var lastspell 0
var melee 0
var duskruinwatch 0

#CYCLIC_VARIABLES
if %killcycspell = "ac" then var cyclicvar SpellTimer.AetherCloak
if %killcycspell = "botf" then var cyclicvar SpellTimer.BlessingoftheFae
if %killcycspell = "care" then var cyclicvar SpellTimer.CaressoftheSun
if %killcycspell = "eye" then var cyclicvar SpellTimer.EyeofKertigen
if %killcycspell = "fae" then var cyclicvar SpellTimer.FaenellasGrace
if %killcycspell = "ghs" then var cyclicvar SpellTimer.GhostShroud
if %killcycspell = "gj" then var cyclicvar SpellTimer.GlythtidesJoy
if %killcycspell = "hodi" then var cyclicvar SpellTimer.HodiernasLilt
if %killcycspell = "ghs" then var cyclicvar SpellTimer.GhostShroud
if %killcycspell = "how" then var cyclicvar SpellTimer.HolyWarrior
if %killcycspell = "regenerate" then var cyclicvar SpellTimer.Regenerate
if %killcycspell = "revelation" then var cyclicvar SpellTimer.Revelation
if %killcycspell = "roc" then var cyclicvar SpellTimer.RiteofContrition
if %killcycspell = "rog" then var cyclicvar SpellTimer.RiteofGrace
if %killcycspell = "sanctuary" then var cyclicvar SpellTimer.Sanctuary
if %killcycspell = "sov" then var cyclicvar SpellTimer.StepsofVuan
if %killcycspell = "tr" then var cyclicvar SpellTimer.TruffenyisRally  
if %killcycspell = "aewo" then var cyclicvar SpellTimer.AetherWolves
if %killcycspell = "alb" then var cyclicvar SpellTimer.AlbredasBalm
if %killcycspell = "dalu" then var cyclicvar SpellTimer.DamarisLullaby
if %killcycspell = "dema" then var cyclicvar SpellTimer.DesertsMaelstrom
if %killcycspell = "ee" then var cyclicvar SpellTimer.ElectrostaticEddy
if %killcycspell = "hyh" then var cyclicvar SpellTimer.HydraHex
if %killcycspell = "fr" then var cyclicvar SpellTimer.FireRain
if %killcycspell = "pyre" then var cyclicvar SpellTimer.PhoenixsPyre
if %killcycspell = "rim" then var cyclicvar SpellTimer.Rimefang
if %killcycspell = "sa" then var cyclicvar SpellTimer.SoulAttrition
if %killcycspell = "sls" then var cyclicvar SpellTimer.StarlightSphere
if %killcycspell = "usol" then var cyclicvar SpellTimer.UniversalSolvent

gosub SPELLVARSLOOP

#DUSKRUIN_TRIGGERS
#action pause 1;send cower when you could try to cower
#action pause 1;send pedal when you could try to pedal
#action pause 1;send jump when you could try to jump
#action pause 1;send roll when you could try to roll
#action pause 1;send duck when you could try to duck
#action pause 1;send lean when you could try to lean
#action pause 1;send bob when you could try to bob
action var duskruinwatch 1; var killtarget $1; put #echo Yellow Target: $1 when An iron portcullis is raised, heralding the arrival of an? \w+ (\w+)!
action var duskruinwatch 1; var killtarget $1; put #echo Yellow Target: $1 when An iron portcullis is raised, heralding the arrival of an? \w+ \w+ (\w+)!
action var bloodscrip $1;put #echo >log Yellow Won %bloodscrip bloodscrip! when ,  and (\d+) bloodscrip\.
action goto DUSKRUINEND when An announcer boasts, "Combatant \w+ is triumphant, defeating all those that opposed (him|her)!"  The overwhelming sound of applause echoes throughout the stands!

#The prize giver shows you an arena winner's package containing a curving pickaxe edged in glaes, a sanguine-hued recurve bow inlaid with intricate golden scrollwork, a large peach amethyst,  and 250 bloodscrip.  The prize giver continues, "Next time, try putting on a better show, eh Human?"  The giver closes an arena winner's package and hands it to you.
#An announcer shouts, "FIGHT!"  An iron portcullis is raised, heralding the arrival of an arthelun cabalist!
#An announcer boasts, "Combatant Saragos has vanquished the clay mage.  Get it out of there!"  A pair of surly attendants lumbers in and drags the clay mage out of the arena, ridding it of lodged projectiles!

action var balance $1 when You're (\S+)\ balanced and
action var balance $1 when , (\S+)\ balanced and
action var aimready 1 when You think you have your best shot possible now.
action var aiming 0 when Since your left hand is now full, you stop aiming.
action var aiming 0 when You stop aiming.
action var aiming 0 when You stop concentrating on aiming your weapon.

action var ready 1 when You feel fully prepared to cast your spell.
action var ready 1 Fully targeted! when Your formation of a targeting pattern
action var ready 1 Fully targeted! when Your target pattern has finished forming around the area.
action var ready 0;var scancel 1 when Your concentration slips for a moment, and your spell is lost.
action var ready 0;var scancel 1 when Your target pattern dissipates because
action var ready 0;var scancel 1 when Your pattern dissipates with the loss of your target.
action var bgdone 1;put #var SpellTimer.BlufmorGaraen.active 0 when The winds encircling your forearms disperse.
action var bgdone 1;put #var SpellTimer.BlufmorGaraen.active 0 when You wave to
action var bgdone 1;put #var SpellTimer.BlufmorGaraen.active 0 when You point at
action var dbready 1 when You feel ready for more firebreathing.
action var dbready 0 when You sharply inhale, drawing upon
action var dbready 0 when Your throat is too sore to breathe fire again so soon!
action var mabload 1 when ^A .* ballista.* shudders slightly
action var mabload 0 when ^The .* ballista is already loaded
action var mabload 0 when ^You lay your hand upon the .* ballista
action var melee 1 when closes to melee range on you!
action var melee 1 when are (facing|are behind|are flanking|are moving to flank) [?:a|an](.*)(?:\(\d\)\s)at melee range\.
action var melee 1 Match! when is (facing|behind|flanking|moving to flank) you at melee range\.


gosub CASTRESET
timer clear
timer start


if_1 then
{
  var specifictarget 1
  var killtarget %1
  eval killtarget tolower(%killtarget)
}
else
{
  if (%duskruin = 1) then
  {
    var specifictarget 1
  }
  else
  {
    var killtarget 0
    var specifictarget 0
    gosub FACE
    if (%goodtarget = 1) then var killtarget %mob
  }
}

gosub RELSPELL

if %killadvance = "YES" then gosub ADV
MAINLOOP:
  gosub KILLSTATUSCHECK
  #MAIN_LOGIC

  #PREP_LOGIC
  #BUFFING
  if ("%killbuffing" = "YES") then
  {
    if (%casting != 1) then
    {
      if ($mana >= %minmana) then
      {
        gosub BUFFLOGIC
      }
    }
    gosub KILLSTATUSCHECK
  }
  #CYCLIC
  if ("%killcyclic" = "YES") then
  {
    #put #echo Yellow %cyclicvar.active: $%cyclicvar.active
    if ($%cyclicvar.active != 1) then
    {
      if (%casting != 1) then
      {
        gosub RELCYCLIC
        var spellprepping %killcycspell
        gosub SPELLSTATCHECK %spellprepping
        var prepmana %killcycprepmana
        var addmana 0
        var casting 1
      }
    }
    gosub KILLSTATUSCHECK
  }
  #MAB
  if ("%magneticballista" = "YES") then
  {
    gosub MABLOGIC
    gosub KILLSTATUSCHECK
  }
  #DB
  if (%dragonsbreath = "YES") then
  {
    gosub DBLOGIC
    gosub KILLSTATUSCHECK
  }
  #BG
  if ("%blufmorgaraen" = "YES") then
  {
    gosub BGLOGIC
    gosub KILLSTATUSCHECK
  }
  #DEBIL_TM
  if (("%killdb" = "YES") || ("%killtm" = "YES")) then
  {
    if (("%killtm" = "YES") && ("%killdb" = "YES")) then
    {
      if ((%lastspell = 0) || (%lastspell = 2)) then gosub DEBILPREP
      else gosub TMPREP
    }
    else
    {
      if ("%killtm" = "YES") then gosub TMPREP
      if ("%killdb" = "YES") then gosub DEBILPREP
    }
    gosub KILLSTATUSCHECK
  }
  #WEAPON_COMBAT
  if %killweapon = "YES" then
  {
    gosub WEAPONCOMBAT
    gosub KILLSTATUSCHECK
  }
  gosub KILLSTATUSCHECK
  pause .1
  goto MAINLOOP
  

WEAPONCOMBAT:
  if %aiming = 1 then return
  var usingtactics 0
  var usingexpert 0
  var badbackstab 0
  var usingstealth 0
  var getitemhand right
  var getitemname %weaponname
  if %killweapontype = "melee" then
  {
    gosub WIELD
    if %killweaponcombo = "edged" then gosub EDGEDCOMBO
    if %killweaponcombo = "blunt" then gosub BLUNTCOMBO
    if %killweaponcombo = "piercing" then gosub PIERCECOMBO
    var hand right
    gosub MOVECHOOSE
    gosub ATTACKMELEE
  }
  if %killweapontype = "brawl" then
  {
    gosub STOWALL
    gosub BRAWLCOMBO
    var hand right
    gosub MOVECHOOSE
    gosub ATTACKMELEE
  }
  if %killweapontype = thrown then
  {
    gosub WIELD
    var weapontype killthrown
    gosub THROWNCOMBO
    gosub ATTACKTHROWN
  }
  if %killweapontype = aimed then
  {
    var weaponmode bow
    var usingbow 1
    gosub BOWSTANCECHECK
    gosub WIELD
    gosub ATTACKBOWKILL
  }
  return

ATTACKBOWKILLP:
	pause
ATTACKBOWKILL:
  if %aiming = 0 then
  {
  	matchre ATTACKBOWKILLP \.\.\.wait|type ahead|stunned|while entangled in a web\.
    matchre ATTACKBOWKILLP Strangely, you don't feel like fighting right now.
    matchre GETLOAD isn't loaded!
    match BOWSTOW You need both hands in order to aim.
	  matchre FACE at what are you|I could not find what you were referring to.
	  matchre AIMSUCCESS You begin to target|You are already targetting|You shift your target to 

	  matchre RETURN Face what?|There is nothing else to face!
    put aim
	  matchwait
	}
	gosub KILLSTATUSCHECK
	return

BOWSTANCECHECK:
  #Safety_Check
  #echo weaponskill%currentweapon: %weaponskill%currentweapon
  if tolower(%weaponskill%currentweapon) = "Bow.LearningRate" then var usingbow 1
  if tolower(%weaponskill%currentweapon) = "Crossbow.LearningRate" then var usingbow 1
  if tolower(%weaponskill%currentweapon) = "Sling.LearningRate" then var usingbow 1
  if matchre ("$lefthand", "%bowweapon") then var usingbow 1
  if matchre ("$lefthand", "%xbowweapon") then var usingbow 1
  if matchre ("$lefthand", "%slingweapon") then var usingbow 1
  if matchre ("$righthand, "%bowweapon") then var usingbow 1
  if matchre ("$righthand, "%xbowweapon") then var usingbow 1
  if matchre ("$righthand, "%slingweapon") then var usingbow 1
  if %usingbow = 1 then
  {
    if %stance != "shield" then
    {
      #echo Changing stance to shield
      var stance shield
      gosub STANCECHANGE
    }
  }
  return  

DEBILPREP:  
  if %goodtarget = 0 then return
  if %casting != 1 then
  {
    var spellprepping %killdbspell
    var prepmana %killdbprepmana
    var addmana %killdbaddmana
    if (%specifictarget = 1) then
    {
      var ctoverride 1
      var ctoverridevar %killtarget
    }
    #if %specifictarget = 0 then var ctoverridevar at creature 
    #else var ctoverridevar %killtarget
    var casting 1
    var lastspell 1
  } 
  return
 
TMPREP:
  if (%goodtarget = 0) then return
  if (%casting != 1) then
  {
    var spellprepping %killtmspell
    var prepmana %killtmprepmana
    var addmana %killtmaddmana
    var casting 1
    var tmcast 1
    var lastspell 2
    var ctoverride 0
    if (%specifictarget = 1) then
    {
      var ctoverride 1
      var ctoverridevar %killtarget
    }
    #if %specifictarget = 0 then var ctoverridevar at creature 
    #else var ctoverridevar %killtarget
  }
  return 
    
  
CLEANCASTINGLOGIC:
  if (%prepped != 1) then
  {
    if ($mana < %minmana) then
    {
      #echo not enough mana
      return
    }
    if $concentration > %minconcentration then gosub PREP
    else return
  }
  if (%prepped = 1) then
  {
    if contains("%rituals", "|%spellprepping|") then
    {
      if %invoked != 1 then
      {
        gosub RITUAL
      }
    }
    if %charged != 1 then
    {
      if %cambtapped > 0 then
      {
        if %t > %cambtapped then gosub CHARGE
      }
      else
      {
        gosub ARRANGEMANA
        gosub CHARGE
      }
    }
  }
  if (%ready = 1) then 
  {
    if %cambtapped = 0 then
    {
      if %spellprepping = %killdbspell then
      {
        if ((matchre("%roomplayers", "%killtarget")) || (matchre("$roomobjs", "%killtarget")) then gosub CAST
      }
      else gosub CAST
    }
  }
  return

BUFFLOGIC:
	if (%casting != 1) then
  {
	  #BUFFS
    var buffing 0
    var buffloop 0
    gosub BUFFINGLOOP
  }
  if %casting != 1 then
  {
    #TATTOO
    if %tattoobuff = "YES" then
    {
      if ((($%tattoovar.active = 1) && ($%tattoovar.duration < %buffbuffer)) || ($%tattoovar.active != 1)) then
      {
        var anybuff 1
        var casting 1
        var scancel 0
        var buffing 1
        var tattoocast 1
        var spellprepping %tattoospell
        var addmana %tattooaddmana
        echo ===Tattoo Buffing===
        echo Prepping %tattoospell
        return
      }
    }
  }
  return

BUFFINGLOOP:
  math buffloop add 1
  if %buffloop <= %buffnum then
  {
    #put #echo Yellow buffloopvar: %buffloopvar
    #put #echo Yellow %buff%buffloopvar.active: $%buff%buffloopvar.active
    if ((($%buff%buffloopvar.active = 1) && ($%buff%buffloopvar.duration < %buffbuffer)) || ($%buff%buffloopvar.active != 1)) then
    {
      if ("%buff%buffloop") = "col" then
      { 
        gosub MOONCHECK
        if %moonsout = 1 then gosub BUFFINGFUNC
        if %casting = 1 then return
        else goto BUFFINGLOOP
      }
      if matchre ("%buff%buffloop", "%transnecro") then
      {  
        #echo Testing a Transcendental spell!
        if %necrosafety = "YES" then
        {
          if %justice = 1 then return
        }
      }
      if %buff%buffloop = "iots" then
      {
        if %iotsscan = 0 then
        {
          gosub FINDBODY
          gosub TELEOBJECTS
          var iotsscan 1
        }
        if ((%verena = 1) || (%szeldia = 1) || (%dawgolesh = 1) || (%merewalda = 1)) then gosub BUFFINGFUNC
        if %casting = 1 then return
        else goto BUFFINGLOOP
      }
      gosub BUFFINGFUNC
      if %casting = 1 then return
    }
  }
  else return
  goto BUFFINGLOOP
  
BUFFINGFUNCOLD:
  var anybuff 1
  var casting 1
  var scancel 0
  var buffing 1
  var spellprepping %buff%buffloop
	var prepmana %buff%buffloopprepmana
	if contains("%rituals", "|%spellprepping|") then 	var addmana 0
  else 	var addmana %buff%buffloopaddmana
  var preptimewait %buff%buffloopprepwait
	#echo preptimewait: %preptimewait
	#var %buff%buffloop %buff%buffloopduration
	return

BUFFINGFUNC:
  var anybuff 1
  var casting 1
  var scancel 0
  var buffing 1
  var spellprepping %buff%buffloop
  gosub SPELLSTATCHECK %spellprepping
	var prepmana %spellminmana
	if contains("%rituals", "|%spellprepping|") then
	{
	  var prepmana %buff%buffloopmana
    var addmana 0
  }
  else
  {
    #put #echo Yellow buff%buffloopmana %buff%buffloopmana
    #put #echo Yellow prepmana: %prepmana
    var addmana %buff%buffloopmana
    math addmana subtract %prepmana
	}
	return

BTNLOGIC:
  if (%t > %nextbtnlook) then
  {
    put look
    eval ballista matchre ("$roomobjs", "ballista")
    if %ballista = 0 then
    {
      if %casting != 1 then
      {
        var spellprepping mab
        var prepmana %mabprepmana
        var addmana %mabaddmana
        var casting 1
        var mabload 0
        var preptimewait %mabprepwait
      }
    }
    var nextmablook %t
    math nextmablook add 10
  }
  return


BGLOGIC:
  if (($SpellTimer.BlufmorGaraen.active != 1) || (%bgdone = 1)) then
  {
    if (%casting != 1) then
    {
      if $SpellTimer.AetherCloak.active = 1 then gosub RELCYCLIC
      var spellprepping bg
      var prepmana %bgprepmana
      var addmana %bgaddmana
      var casting 1
      var bgdone 0
      var preptimewait %bgprepwait
      #gosub CLEANCASTINGLOGIC
      gosub CASTINGLOGIC
    }
  }
  else
  {
    if %goodtarget = 0 then return 
    var bggesture wave
    var bgmon %killtarget
    gosub BGATTACK
  }
  return

DBLOGIC:
  if ($SpellTimer.DragonsBreath.active != 1) then
  {
    if %casting != 1 then
    {
      if $SpellTimer.AetherCloak.active = 1 then gosub RELCYCLIC
      var spellprepping db
      var prepmana %dbprepmana
      var addmana %dbaddmana
      var casting 1
      var dbready 1
      var preptimewait %dbprepwait
    }
  }
  else
  {
    if %goodtarget = 0 then return  
    if %dbready = 1 then
    {
      var exhaletarget %killtarget
      gosub EXHALETARGET
    }
  }
  return

MABLOGIC:
  if %mabload = 1 then
  {
    if %goodtarget = 1 then
    {
      gosub BALLISTALOAD
      var mabload 0
    }
  }
  if %t > %nextmablook then
  {
    put look
    eval ballista matchre ("$roomobjs", "ballista")
    if %ballista = 0 then
    {
      if %casting != 1 then
      {
        var spellprepping mab
        var prepmana %mabprepmana
        var addmana %mabaddmana
        var casting 1
        var mabload 0
        var preptimewait %mabprepwait
      }
    }
    var nextmablook %t
    math nextmablook add 10
  }
  return


KILLSTATUSCHECK:
  if (%duskruinwatch = 1) then
  {
    gosub DUSKRUINCHECK
    var duskruinwatch 0
  }
  if $sitting = 1 then gosub STAND
  if $kneeling = 1 then gosub STAND
  if $prone = 1 then gosub STAND
  if %scancel = 1 then
  {
    var scancel 0
    gosub SPELLCANCEL
  }
  #ASSESS
  if (%specifictarget = 0) then
  {
    if ((%specifictarget != 1) && (%goodtarget != 1)) then
    {
      if (%t >= %nextassess) then
      {
        if ($monstercount > 0) then
        {
          gosub FACE
          if (%goodtarget = 1) then var killtarget %mob
          else
          {
            var nextassess %t
            math nextassess add 2
          }
        }
      }
    }
  }
  else
  {
    var goodtarget 0
    #put #echo Yellow monsterlist: $monsterlist
    #echo killtarget: %killtarget
    if matchre("$monsterlist", "%killtarget") then var goodtarget 1
    if matchre("$roomplayers", "%killtarget") then var goodtarget 1
  }
  #KILLRETREAT
  if %killretreat = "YES" then
  {
    if %melee = 1 then
    {
      gosub RETREAT
      var melee 0
    }
  }
  if %killtmfocus = "YES" then
  {
    if (matchre ("$righthand", "%tmfocusitem")) then
    else
    {
      gosub STOW right
      gosub GETITEM %tmfocusitem
      gosub TMFOCUSINVOKE
    }
  }
  if (%casting = 1) then
  {
    if ((%blufmorgaraen = "YES") then
    {
      if %spellprepping = %killdbspell then
      {
        if $SpellTimer.BlufmorGaraen.active != 1 then gosub SPELLCANCEL 
      }
    }
    if ("%dragonsbreath" = "YES") then
    {
      if ("%spellprepping" = "%killdbspell") then
      {
        if ($SpellTimer.DragonsBreath.active != 1) then gosub SPELLCANCEL
      }
    }
    #gosub CLEANCASTINGLOGIC
    gosub CASTINGLOGIC
  }
  if %aimready = 1 then gosub FIRE
  if %preptimewait > 0 then
  {
    if %preptime > 0 then
    {
      var preptimewaittest %preptime
      math preptimewaittest add %preptimewait
      if %t >= %preptimewaittest then
      {
        var ready 1
      }
    }
  }
  if matchre ("$roomobjs", "((which|that) appears dead|\(dead\))") then
  {
    if (%duskruin != 1) then
    {
      if (%t > %nextsearch) then
      {
        var goodtarget 0
        gosub LOOT
        gosub LOOTCHECK
        var nextsearch %t
        math nextsearch add 2
      }
    }
  }
  return
  
  HANDCHECK:
    if %getitemhand = "left" then var otheritemhand right
    if %getitemhand = "right" then var otheritemhand left
    if matchre ("$%otheritemhandhand", "%getitemname") then gosub SWAP
    if matchre ("$%getitemhandhand", "%getitemname") then
    else
    {
      if $%getitemhandhand != "Empty" then
      {
        gosub STOW right
      }
      if %platring = "YES" then
      {
        if matchre ("%getitemname", "%platringitem") then
        {
          gosub PLATRING
          if %hand = "left" then gosub SWAP
        }
        else gosub WIELD
      }
      else gosub WIELD
      if ((%getitemname = "sword") || (%getitemname = "white sword") || (%getitemname = "bastard sword") || (%getitemname = "broadaxe") || (%getitemname = "war sword") || (%getitemname = "half-handled riste") || (%getitemname = "riste")) then gosub SWAPCHECK
      return

DUSKRUINCHECK:
  matchre DUSKRUINCHECK %waitstring
  matchre Pedal ^You appraise the situation .* pedal .*\!$
  matchre Bob ^You appraise the situation .* bob .*\!$
  matchre Duck ^You appraise the situation .* duck .*\!$
  matchre Jump ^You appraise the situation .* jump .*\!$
  matchre Lean ^You appraise the situation .* lean .*\!$
  matchre Cower ^You appraise the situation .* cower .*\!$
  matchre RETURN ^Watch out for whom
  matchre RETURN ^You've already spotted the .* intentions
  match DUSKRUINCHECK doesn't appear to be up to anything...yet.
  match DUSKRUINCHECK You are not currently watching anything.
  send watch
  matchwait
  
pedal:
  gosub put pedal
  return

jump:
  gosub put jump
  return

bob:
  gosub put bob
  return
  
cower:
  gosub put cower
  return

duck:
  gosub put duck
  return

lean:
  gosub put lean
  return
  
put:
  var put $0
  PUT_1:
  matchre put_1 ^\.\.\.wait|^Sorry,|^Please wait\.
  matchre pedal you could try to (back pedal|pedal back) out of the way!$
  matchre jump you could try to (jump over it|prepare to jump)!$
  matchre bob you could try to bob back and forth!$
  matchre cower you could try to cower (into a smaller target|out of the way)!$
  matchre duck you could try to duck down!$
  matchre lean you could try to lean out of the way!$
  matchre RETURN Strain
  matchre RETURN Roundtime
  matchre RETURN But you are
  matchre RETURN crashes to a sudden halt
  matchre RETURN You sense the rage|The momentus rage|You form the epicenter|Your hands shake
  matchre RETURN not ready|You must rest|already|^You|^You've
  put %put
  matchwait 2
  return
    
DUSKRUINEND:
  waitfor A pair of surly attendants escorts you from the arena floor.
  gosub STOWALL
  gosub OPENITEM my package
  gosub GETITEM bloodscrip from my package
  gosub STOWITEM package
  gosub GETITEM bloodscrip from %storage
  gosub COMBINE
  gosub STOWALL
  move se
  exit 
COMBINEP:
  matchwait
COMBINE:
  matchre COMBINEP %waitstring
  match RETURN You combine
  put combine bloodscrip
  matchwait
 
 REDEEMP:
   pause
 REDEEM:
  matchre REDEEMP %waitstring
  match RETURN You redeem the times multiplier, multiplying the amount of bloodscrip you will gain in the near future.
  match RETURN You redeem the ten times multiplier, multiplying the amount of bloodscrip you will gain in the near future.
  put redeem multiplier
  matchwait
  
END: