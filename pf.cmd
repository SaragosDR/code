include library.cmd

action var pfready 1 when Your .* vibrates slightly as the spell pattern you were tracing with it completes\.
action var pfready 0 when You lose focus on maintaining the spell pattern you were tracing with a dark cube inlaid with shards of blackwater jet.

var minconcentration $minconcentration
var parallelfocus $parallelfocus
var parallelfocusitem $parallelfocusitem

var difficulty1percent $difficulty1percent
var difficulty2percent $difficulty2percent
var difficulty3percent $difficulty3percent
var difficulty4percent $difficulty4percent
var difficulty5percent $difficulty5percent

var shielditem $shielditem
var shieldinhand $shieldinhand

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

timer clear
timer start
var spelldifficulty -1

FIRSTTEST:
  if_1 then goto START
  else
  {
    echo A spell must be specfied!
    goto END
  }
  
START:
  var spellprepping %1
  eval spell tolower("%spellprepping")
  var casting 1
  gosub CASTSETUP
  goto MAINLOOP
  
MAINLOOP:
  gosub PFCASTINGLOGIC
  if (%pfcancel = 1) then
  {
    put #parse PFCASTING COMPLETE!
    exit
  }
  pause .5
  goto MAINLOOP
  
  
CASTSETUP:
  #SPELLSTATCHECK
  gosub SPELLSTATCHECK %spellprepping
  if (%spelldifficulty > 0) then
  {
    if ((%spellmana != %nativemana) && (%spellmana != 0) then
    {
      var spellpercent 100
      #var spellpercent %sorcdifficulty%spelldifficultypercent
    }
    else
    {
      var spellpercent %difficulty%spelldifficultypercent
    }
  }
  else
  {
    put #echo Yellow Unknown spell!
    var spellpercent 100
  }
  var pfpreptime 20
  if (%spellcomplex = 1) then math pfpreptime add 6
  if (%spellbattle = 1) then math pfpreptime subtract 10
  
  #UNRECOGNIZED_SPELL
  if (%spelldifficulty = 0) then
  {
    var spellprepping %1
    var prepmana %2
    var addmana 0
    if_3 then
    {
      var ctoverride 1
      var ctoverridevar %3
    }
    echo Unknown spell!  Attempting anyway.
    return
  }
  #put #echo Yellow Spelldifficulty: %spelldifficulty
  #CYCLICS
  if contains("%allcyclics", "|%spellprepping|") then
  {
    var addmana 0
    if_3 then
    {
      var prepmana %2
      var ctoverride 1
      var ctoverridevar %3
    }
    else
    {
      if_2 then
      {
        if %2 < 0 then var %2 0
        if %2 > -1 then
        {
          var prepmana %2
        }
        else
        {
          var ctoverride 1
          var ctoverridevar %2
          var prepmana %spellcapmana
        }
      }
      else var prepmana %spellcapmana
    }
    return
  }
  #RITUALS
  if contains("%rituals", "|%spellprepping|") then
  {
    put #echo Yellow Cannot prep ritual spells in a parallel focus!
    exit
  }
  #TM
  if contains("%targeted", "|%spellprepping|") then
  {
    put #echo Yellow Cannot prep TM spells in a parallel focus!
    exit
  }
  #DEBIL
  if contains("%debilitation", "|%spellprepping|") then
  {
    put #echo Yellow Cannot prep debilitation spells in a parallel focus!
    exit
  }
  #OTHER_SPELLS
  var prepmana %spellcapmana
  if_3 then
  {
    if %2 > -1 then
    {
      var prepmana %2
    }
    var ctoverride 1
    var ctoverridevar %3
  }
  else
  {
    if_2 then
    {
      if %2 > -1 then
      {
        var prepmana %2
      }
      else
      {
        var prepmana %spellcapmana
        var ctoverride 1
        var ctoverridevar %2
      }
    } 
  }
  if (%addmana < 0) then var addmana 0

  if %ctoverridevar = "creature" then var ctoverridevar at creature
  return
  
PFCASTINGLOGIC:
  #DIFFICULTY_SETTING
  #echo spelldifficulty: %spelldifficulty

  #echo spelldifficulty: %spelldifficulty
  
  #EARLY_READINESS
  if ((%spelldifficulty > 0) && (%spellpercent < 100) then
  {
    var pfpreptest %t
    math pfpreptest subtract %pfinvoketime
    #echo pfpreptest: %pfpreptest
    math pfpreptest divide %pfpreptime
    math pfpreptest * 100
    #echo pfpreptestpercent: %pfpreptest
    if (%pfpreptest >= %spellpercent) then
    {
      var pfready 1
      #put #echo Yellow Ready due to being %pfpreptest% done vs %spellpercent% for the difficulty!
    }
  }
  #NEEDS_PREP
  if (%pfprepped != 1) then
  {
    if ($concentration >= %minconcentration) then
    {
      if !((matchre("$righthand", "%parallelfocusitem")) || (matchre("$lefthand", "%parallelfocusitem"))) then
      {
        if ("$lefthand" != "Empty") then
        {
          if (matchre("$lefthand", "%shielditem")) then gosub WEARITEM %shielditem
          else gosub STOW left
        }
        gosub GETITEM %parallelfocusitem
      }
      gosub INVOKEPFOCUS
      var pfprepped 1
      eval spellpreppingcap toupper(%spellprepping)
      put #echo Yellow Parallel prepping %spellpreppingcap for %spellpercent% of %pfpreptimes.
      gosub STOWITEM %parallelfocusitem
      if ("%shieldinhand" = "YES") then gosub REMITEM %shielditem
    }
  }
  #READY_TO_CAST
  if (%pfready = 1) then 
  {
    if !((matchre("$righthand", "%parallelfocusitem")) || (matchre("$lefthand", "%parallelfocusitem"))) then
    {
      if ("$lefthand" != "Empty") then
      {
        if (matchre("$lefthand", "%shielditem")) then gosub WEARITEM %shielditem
        else gosub STOW left
      }
      gosub GETITEM %parallelfocusitem
    }  
    gosub WAVEPFOCUS
    put #echo Yellow Parallel cast %spellpreppingcap.
    var pfcancel 1
    var pfinvoketime %t
    gosub STOWITEM %parallelfocusitem
    if ("%shieldinhand" = "YES") then gosub REMITEM %shielditem
  }
  return

  
INVOKEPFOCUSP:
  pause
INVOKEPFOCUS:
  matchre INVOKEPFOCUSP %waitstring
  matchre RETURN You begin channeling mana through your .*, forming the spell pattern of .*\.
  match INVOKEPFOCUSFULL You are already channeling a spell through a parallel casting focus.
  put invoke %parallelfocusitem %spellprepping %prepmana
  matchwait
  
INVOKEPFOCUSFULL:
  gosub SHAKEPFOCUS
  goto INVOKEPFOCUS
 
SHAKEPFOCUSP:
  pause
SHAKEPFOCUS:
  matchre SHAKEPFOCUSP %waitstring
  matchre RETURN You shake your .*, clearing the magic lingering within\.
  put shake my %parallelfocusitem
  matchwait
  
WAVEPFOCUSP:
  pause
WAVEPFOCUS:
  matchre WAVEPFOCUSP %waitstring
  matchre RETURN You gesture.|You gesture at|You wave your hand|With a wave of your hand|You roll your hands in an elliptical|You clasp your hands together|You cup your hand before|You clap your hands once|Your spell|You press your fist|You reach with your fist toward the ground.|You speak a few words of righteousness|You whisper|Tendrils of flame|You make a holy gesture|You close your eyes and take several slow|You clench your hands into fists and grit your teeth|You don't think you can manage to ignite another weapon at the moment.|The flames dancing along your fingertips|Mentally steeling yourself in preparation for|You shudder involuntarily|You release an accompaniment of elemental|You thrust your (right|left) arm before you, fingers splayed\.|With a wave of your hand, your vitality is fully restored\.|You strike your heel against the ground|A sense of calm focus|Roundtime|Your heart skips a beat as your spell|You clench your fists, pressing your fingernails painfully into your flesh\.|You place your hands on your temples\.|You raise your fist toward the sun\.|You raise your hand in an imaginary toast to Glythtide\.|You drop briefly to one knee as you firmly press your palms into the ground\.|You steeple your fingers together to channel the spell's energies\.|You close your eyes and focus on the old hero, Lirisa\.|You swear|With a chirurgeon's care, you press your fingertips against the side of your neck\.|As you gesture an ethereal vela'tohr|Steadying your breath, you briefly point one arm up and the other towards the ground, forming a conduit through your body\.
  put wave my %parallelfocusitem
  matchwait