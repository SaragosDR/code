include library.cmd

var sorcdifficulty1percent 40
var sorcdifficulty2percent 50
var sorcdifficulty3percent 60
var sorcdifficulty4percent 70
var sorcdifficulty5percent 70

var minconcentration $minconcentration
var minmana $minmana
var difficulty1percent $difficulty1percent
var difficulty2percent $difficulty2percent
var difficulty3percent $difficulty3percent
var difficulty4percent $difficulty4percent
var difficulty5percent $difficulty5percent
var harnessing $harnessing
var harnessmax $harnessmax
var cambrinth $cambrinth
var chargemax $chargemax
var dedicatedcambrinth $dedicatedcambrinth
var cambitems $cambitems
var cambitem1 $cambitem1
var cambitem1mana $cambitem1mana
var cambitem1worn $cambitem1worn
var cambitem2 $cambitem2
var cambitem2mana $cambitem2mana
var cambitem2worn $cambitem2worn
var ritualfocus $ritualfocus
var ritualfocusworn $ritualfocusworn
var ritualfocusstorage $ritualfocusstorage
var ritualfocuscontainer $ritualfocuscontainer

if %cambitems > 1 then
{
  var totalcamb %cambitem1mana
  math totalcamb add %cambitem2mana
}
else
{
  if %cambitems = 1 then var totalcamb %cambitem1mana
  else 
  {
    var totalcamb 0
  }
}

var pcast 1
var locatecast 0
var badlocate 0
var ctoverride 0

action var ready 0;var scancel 1 when Your concentration slips for a moment, and your spell is lost.
action var ready 1 when You feel fully prepared to cast your spell.
action var ready 1 when Your spell pattern snaps into shape with little preparation!
action var ready 1 Fully targeted! when Your formation of a targeting pattern
action var ready 1 Fully targeted! when Your target pattern has finished forming around the area.
action var ready 0;var scancel 1 when Your target pattern dissipates because
action var ready 0;var scancel 1 when Your pattern dissipates with the loss of your target.
action var badlocate 1 when You see a very vague vision of
action var badlocate 1 when You can just make out the details of 
action var badlocate 1 when Something is blocking your spell from reaching its target.

gosub PRESET

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
  gosub SPELLSTATCHECK %spellprepping
  gosub CASTSETUP
  gosub SPECIALSPELLLOGIC
  goto MAINLOOP
  
 
MAINLOOP:
  gosub CASTINGLOGIC
  pause .5
  if (%scancel = 1) then
  {
    put #parse PCASTING COMPLETE!
    exit
  }
  goto MAINLOOP
 
SPECIALSPELLLOGIC:
  if %spellprepping = "gateto" then
  {
    if_3 then
    else
    {
      echo Syntax: .p gateto <mg mana> <moon> <target>
      exit
    }
    if_4 then
    {
      var prepmana %2
      var ctoverride 1
      var ctoverridevar %3
      var smtarget %4
    }
    else
    {
      var prepmana %capmana
      var ctoverride 1
      var ctoverridevar %2
      var smtarget %3
    }
    echo Mana: %prepmana
    echo Moon: %ctoverridevar
    echo Target: %smtarget
    
    if $SpellTimer.ClearVision.active = 0 then
    {
      var multicast 1
      var spellprepping cv
      var prepmana 10
      var addmana 0
      var ctoverride 0
      gosub CASTSETUP
    }
    else
    {
      if $SpellTimer.ShiftMoonbeam.active = 0 then
      {
        var multicast 1
        var spellprepping sm
        var prepmana 15
        var addmana 9
        var ctoverride 0
        gosub CASTSETUP
      }
      else
      {
        if %locatecast = 0 then
        {
          var multicast 1
          var spellprepping locate
          var prepmana 15
          var addmana 0
          var locatecast 1
          var ctoverride 1
          var ctoverridevar %smtarget
          gosub CASTSETUP
        }
        else
        {
          if %badlocate = 1 then
          {
            echo Too far to shift a moonbeam to!
            exit
          }
          var smgood 0
          var smmoon %ctoverridevar
          gosub SHIFTMOON
          if %smgood != 1 then
          {
            echo Can't shift the beam to the target!
            exit
          }
        }
      }
    }
  }
  if %spellprepping = "moonblade" then
  {
    if %ctoverride != 1 then
    {
      echo Moonblade needs a moon!
      goto END
    }
  }
  if matchre("%spell", "loc") then
  {
    if %ctoverride = 0 then
    {
      echo Locate requires a target!
      exit
    }
    if $SpellTimer.ClearVision.active = 0 then
    {
      var multicast 1
      var spellprepping cv
      var prepmana 10
      var addmana 0
      var ctoverride 0
      gosub CASTSETUP
    }
  }
  if %spellprepping = "mg" then
  {
    if %ctoverride = 0 then
    {
      echo Moongate needs a moon!
      exit
    } 
  }
  if %spellprepping = "rs" then
  {
    if %ctoverride = 0 then
    {
      echo Riftal Summons requires a target!
      exit
    }
    if $SpellTimer.ClearVision.active = 0 then
    {
      var multicast 1
      var spellprepping cv
      var prepmana 10
      var addmana 0
      var ctoverride 0
      gosub CASTSETUP
    }
    else
    {
      if %locatecast = 0 then
      {
        var multicast 1
        var spellprepping locate
        var prepmana 15
        var addmana 15
        var locatecast 1
        gosub CASTSETUP
      }
    }
  }
  #if matchre("%spell", "tel") then
  #{
  #  if %ctoverride != 1 then
  #  {
  #    echo Teleport needs a moon!
  #    goto END
  #  }
  #}
  #if %spellprepping = "ignite" then
  #{
  #   var prepmana 5
  #   var ctoverride 1
  #  if_3 then
  #  {
  #    var ctoverridevar %3
  #    var addmana %2
  #  }
  #  else
  #  {
  #    if_2 then
  #    {
  #      if %2 > 0 then
  #      {
  #        var addmana %2 
  #        var ctoverridevar $righthand
  #      }
  #      else
  #      {
  #        var addmana 100
  #        var ctoverridevar %2
  #      }
  #    }
  #    else
  #    {
  #      var addmana 100
  #      var ctoverride 1
  #      var ctoverridevar $righthand
  #    }
  #  }
  #}
  return


CASTSETUP:
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
  #RITUALS
  if contains("%rituals", "|%spellprepping|") then
  {
    var addmana 0
    if_2 then var prepmana %2
    else var prepmana %spellcapmana
    return
  }
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
  #OTHER_SPELLS
  var prepmana %spellminmana
  if_3 then
  {
    var addmana %2
    var ctoverride 1
    var ctoverridevar %3
  }
  else
  {
    if_2 then
    {
      if %2 > -1 then
      {
        var addmana %2
      }
      else
      {
        var addmana %spellcapmana
        var ctoverride 1
        var ctoverridevar %2
      }
    }
    else
    {
      var addmana %spellcapmana
    }
  }
  math addmana subtract %prepmana
  if (%addmana < 0) then var addmana 0
  #TM
  if contains("%targeted", "|%spellprepping|") then var tmcast 1
  if %ctoverridevar = "creature" then var ctoverridevar at creature
  return
     
 
PRESET:
  var cambcharge 0
  var cambcharge1 0
  var cambcharge2 0
  var ready 0
  var prepped 0
  var charged 0
  var harnessed 0
  var spell
  var prepmana 0
  var cambmana 0
  var harnmana 0
  var harntapped 0
  var cambmana1 0
  var cambmana2 0
  var tmcast 0
  var debilcast 0
  var cycliccast 0
  var casting 0
  var othercast 0
  var spellsymb 0
  var spelldifficulty -1
  var cambtapped 0
  var cambsplitting 0
  var splittingmana 0
  var splitcount 0
  var multicast 0
  var scancel 0
  return
 
MULTICASTRESET:
  gosub PRESET
  goto START
  
END:
