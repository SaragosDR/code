include library.cmd

var minconcentration $m$pscriptmodeminconcentration
var minmana $m$pscriptmodeminmana
var harnessing $m$pscriptmodeharnessing
var harnessmax $m$pscriptmodeharnessmax
var cambrinth $m$pscriptmodecambrinth
var chargemax $m$pscriptmodechargemax
var dedicatedcambrinth $m$pscriptmodededicatedcambrinth
var cambitems $m$pscriptmodecambitems
var cambitem1 $m$pscriptmodecambitem1
var cambitem1mana $m$pscriptmodecambitem1mana
var cambitem1worn $m$pscriptmodecambitem1worn
var cambitem2 $m$pscriptmodecambitem2
var cambitem2mana $m$pscriptmodecambitem2mana
var cambitem2worn $m$pscriptmodecambitem2worn
var ritualfocus $m$pscriptmoderitualfocus
var ritualfocusworn $m$pscriptmoderitualfocusworn
var ritualfocusstorage $m$pscriptmoderitualfocusstorage
var ritualfocuscontainer $m$pscriptmoderitualfocuscontainer

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
action var ready 1 Fully targeted! when Your formation of a targeting pattern
action var ready 1 Fully targeted! when Your target pattern has finished forming around the area.
action var ready 0;var scancel 1 when Your target pattern dissipates because
action var ready 0;var scancel 1 when Your pattern dissipates with the loss of your target.
action var badlocate 1 when You see a very vague vision of
action var badlocate 1 when You can just make out the details of 
action var badlocate 1 when Something is blocking your spell from reaching its target.

gosub PRESET

FIRSTTEST:
  if_1 then goto SPELLTABLE
  else
  {
    echo A spell must be specfied!
    goto END
  }
  
SPELLTABLE:
  var spellprepping %1
  eval spell tolower("%spellprepping")
  var prepmana 0
  var casting 1
  
  ####AP_Spells####
  if %spellprepping = "burden" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "dispel" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ease" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "gaf" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "imbue" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "lw" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "maf" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sec" then
  {
    var capmana 600
    gosub CASTSETUP
  }
  if %spellprepping = "stra" then
  {
    var prepmana 1
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  ####Bard_Spells####
  if %spellprepping = "aban" then
  {
    var capmana 37
    gosub CASTSETUP
  }
  if %spellprepping = "aewo" then
  {
    var capmana 20
    gosub CASTSETUP
  }
  if %spellprepping = "alb" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "aot" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "btn" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "botf" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "bos" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "care" then
  {
    var capmana 15
    gosub CASTSETUP
  }
  if %spellprepping = "dalu" then
  {
    var capmana 31
    gosub CASTSETUP
  }
  if %spellprepping = "dmrs" then
  {
    var prepmana 3
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "dema" then
  {
    var prepmana 20
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "drum" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "echo" then
  {
    var capmana 700
    gosub CASTSETUP
  }
  if %spellprepping = "ecry" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "eye" then
  {
    var capmana 20
    gosub CASTSETUP
  }
  if %spellprepping = "fae" then
  {
    var capmana 15
    gosub CASTSETUP
  }
  if %spellprepping = "gj" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "harm" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "hodi" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "mis" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "name" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "nexus" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "pyre" then
  {
    var capmana 37
    gosub CASTSETUP
  }
  if %spellprepping = "rage" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "repr" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "reso" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sanc" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "soul" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  if %spellprepping = "wotm" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "will" then
  {
    var capmana 700
    gosub CASTSETUP
  }
  if %spellprepping = "word" then
  {
    var capmana 600
    gosub CASTSETUP
  }
  
  ####Cleric_Spells####
  if %spellprepping = "ae" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "all" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  if matchre("%spell", "auspice") then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "benediction") then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "bless") then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "centering") then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "chs" then
  {
    var prepmana 7
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "coz" then
  {
    var prepmana 5
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "dr" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
  }
  if %spellprepping = "ef" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "fou" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "ff" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "ghs" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "gg" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "halo" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "hot" then
  {
    var prepmana 7
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "he" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "hh" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }  
  if %spellprepping = "horn" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "hulp" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "hyh" then
  {
    var capmana 31
    gosub CASTSETUP
  }
  if %spellprepping = "it" then
  {
    var prepmana 20
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "mapp" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "malediction") then
  {
    var prepmana 5
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "mre" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "mc" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "mpp" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "om" then
  {
    var prepmana 30
    var capmana 200
    gosub CASTSETUP
  }
  if %spellprepping = "pom" then
  {
    var capmana 700
    gosub CASTSETUP
  }
  if %spellprepping = "ps" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }  
  if %spellprepping = "pfe" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rejuv" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rezz" then
  {
    var capmana 50
    gosub CASTSETUP
  }
  if %spellprepping = "rev" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "sap" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sl" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sol" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sa" then
  {
    var capmana 31
    gosub CASTSETUP
  }
  if %spellprepping = "sb" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "sos" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sick" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "spit" then
  {
    var prepmana 20
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "uncurse" then
  {
    var prepmana 5
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "vigil" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  
  ####Empath_Spells####
  if matchre("%spell", "abs") then
  {
    #var prepmana %2
    var capmana 800
    var spellprepping abs
    gosub CASTSETUP
  }
  if %spellprepping = "ad" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "ags" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "awa") then
  {
    var prepmana 15
    var capmana 100
    var spellprepping awaken
    gosub CASTSETUP
  }
  if %spellprepping = "bs" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "cos" then 
  {
    var capmana 700
    gosub CASTSETUP
  }
  if matchre("%spell", "com") then
  {
    var prepmana 5
    var capmana 33
    var spellprepping compel
    gosub CASTSETUP
  }
  if %spellprepping = "cd" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "fp" then 
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "foc" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "gol" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "gs" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "heal" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "hs" then
  {
    var prepmana 1
    var capmana 100
  }
  if %spellprepping = "hw" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "hl" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "iz" then
  { 
    var capmana 45
    gosub CASTSETUP
  }
  if matchre("%spell", "inn") then
  {
    var prepmana 5
    var capmana 100
    var spellprepping innocence
    gosub CASTSETUP
  }
  if %spellprepping = "ic" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "let") then
  {
    var prepmana 1
    var capmana 33
    var spellprepping lethargy
    gosub CASTSETUP
  }
  if %spellprepping = "mef" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "nb" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if matchre("%spell", "par" then
  {
      var prepmana 2
      var capmana 50
      var tmcast 1
      var spellprepping paralysis
      gosub CASTSETUP
  }
  if %spellprepping = "pop" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  if %spellprepping = "rp" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "ref") then
  {
    var prepmana 5
    var capmana 100
    var spellprepping refresh
    gosub CASTSETUP
  }
  if matchre("%spell", "reg") then
  {
    var capmana 25
    var spellprepping regenerate
    echo spellprepping: %spellprepping
    gosub CASTSETUP
  }
  if matchre("%spell", "tran") then
  {
    var prepmana 15
    var capmana 100
    var spellprepping tranquility
    gosub CASTSETUP
  }
  if matchre("%spell", "vigo") then
  {
    var prepmana 15
    var capmana 100
    var spellprepping vigor
    gosub CASTSETUP
  }
  if %spellprepping = "vh" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  
  ####MM_Spells####
  if %spellprepping = "art" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "aus" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "bc" then
  {
    var capmana 700
    gosub CASTSETUP
  }
  if %spellprepping = "burn" then
  {
    var prepmana 7
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "col" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
    if %ctoverride != 1 then
    {
      echo Cage of Light needs a moon!
      goto END
    }
  }
  if %spellprepping = "calm" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "cv" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "con") then
  {
    var spellprepping contingency
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "daz") then
  {
    var spellprepping dazzle
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "dc" then
  {
    var capmana 600
    gosub CASTSETUP
  }
  if %spellprepping = "do" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "dg" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "fm" then
  {
    var prepmana 1
    var capmana 64
    gosub CASTSETUP
    if %ctoverride != 1 then
    {
      var ctoverride 1
      var ctoverridevar 0
      var bestmoontime 0
      if $Time.isKatambaUp = 1 then
      {
        var ctoverridevar Katamba
        var bestmoontime $Time.katambaSeconds
      }
      if $Time.isXibarUp = 1 then
      {
        if $Time.xibarSeconds > %bestmoontime then
        {
          var ctoverridevar Xibar
          var bestmoontime $Time.xibarSeconds
        } 
      }
      if $Time.isYavashUp = 1 then
      {
        if $Time.yavashSeconds > %bestmoontime then
        {
          var ctoverridevar Yavash
          var bestmoontime $Time.yavashSeconds
        } 
      }
      if %ctoverridevar = 0 then
      {
        echo No moons up!
        exit
      }
      else echo Casting at the moon with longest duration: %ctoverridevar.
    }
  }
  if %spellprepping = "iots" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  if matchre("%spell", "loc") then
  {
    var spellprepping locate
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
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
    }
  }
  if %spellprepping = "mt" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "mb" then
  {
    var prepmana 20
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "ms" then
  {
    var prepmana 20
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "mg" then
  {
    var prepmana 5
    var capmana 25
    gosub CASTSETUP
    if %ctoverride = 0 then
    {
      echo Moongate needs a moon!
      exit
    } 
  }
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
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
    if %ctoverride != 1 then
    {
      echo Moonblade needs a moon!
      goto END
    }
  }
  if %spellprepping = "pd" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "pg" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "psy" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rtr" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  if %spellprepping = "rf" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rend" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rs" then
  {
    var prepmana 40
    var capmana 120
    gosub CASTSETUP
    if %ctoverride = 0 then
    {
      echo Riftal Summons requires a target!
    }
    if $SpellTimer.ClearVision.active = 0 then
    {
      var multicast 1
      var spellprepping cv
      var prepmana 10
      var addmana 0
      var ctoverride 0
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
      }
    }
  }
  if %spellprepping = "sco" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "seer" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "set" then
  {
    var prepmana 3
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "shm" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ss" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "shadowling" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "shadows" then
  {
    var spellprepping shadows
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "she") then
  {
    var spellprepping shear
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sm" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sleep" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "sod" then
  {
    var prepmana 5
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "sls" then
  {
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "sov" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "tf" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "tks" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "tkt" then
  {
    var prepmana 1
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if matchre("%spell", "tel") then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
    if %ctoverride != 1 then
    {
      echo Teleport needs a moon!
      goto END
    }
  }
  if %spellprepping = "ts" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "tv" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "th" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if matchre("%spell", "unl") then
  {
    var spellprepping unleash
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "wd" then
  {
    var prepmana 6
    var capmana 100
    gosub CASTSETUP
  }
  
  ####Necro_Spells####
  if %spellprepping = "acs" then
  {
    var prepmana 1
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "blb" then
  {
    var prepmana 15
    var capmana 66
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "bue" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ch" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "cfb" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "cf" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "devour" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "eotb" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "emc" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "hp" then
  {
    var prepmana 1
    var capmana 22
    gosub CASTSETUP
  }
  if %spellprepping = "ivm" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ks" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "nr" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "obfuscation" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "php" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "pv" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "qe" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rei" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rpu" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "roc" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "rof" then
  {
    var capmana 5
    gosub CASTSETUP
  }
  if %spellprepping = "rog" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "solace" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sv" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "usol" then
  {
    var capmana 37
    gosub CASTSETUP
  }
  if %spellprepping = "vs" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "vod" then
  {
    var prepmana 5
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "vivisection" then
  {
    var prepmana 20
    var capmana 66
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "worm" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  
  ####Paladin_Spells####
  if %spellprepping = "aa" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ag" then
  {
    var capmana 800
    gosub CASTSETUP
    gosub CASTSETUP
  }
  if %spellprepping = "as" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "bot" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "clarity" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "courage" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "crc" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "da" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "dig" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "fst" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "halt" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "hes" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "hoj" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "how" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "mo" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "reb" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "rw" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rue" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sr" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "shatter" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "smh" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "sp" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sf" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "tr" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "vos" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  
  ####Ranger_Spells####
  if %spellprepping = "athleticism" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "af" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "bes" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "blend" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "cac" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "cs" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "cotc" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "compost" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "cotw" then
  {
    var prepmana 10
    var capmana 33
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "df" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "devi" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "de" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "ec" then
  {
    var prepmana 1
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "em" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ey" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "fwb" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "griz" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "hol" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "hb" then
  {
    var prepmana 3
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "inst" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "mon" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  if %spellprepping = "oath" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "stw" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sott" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sks" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "stampede" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "swarm" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "sk" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "wotp" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ws" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  
  ####Trader_Spells####
  if %spellprepping = "ars" then
  {
    var capmana 31
    gosub CASTSETUP
  }
  if %spellprepping = "ava" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "blur" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "crd" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "eli" then
  {
    var capmana 900
    gosub CASTSETUP
  }
  if %spellprepping = "enrichment" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "fin" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "flu" then
  {
    var prepmana 1
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "lgv" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "mom" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "meg" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "non" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "nou" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "phk" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "rega" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "star" then
  {
    var prepmana 30
    var capmana 200
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "stc" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "trc" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "turi" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  
  
  ####WM_Spells####
  if %spellprepping = "aeg" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  if %spellprepping = "aethrolysis" then
  {
    var prepmana 2
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "ac" then
  {
    var capmana 25
    gosub CASTSETUP
  }
  if %spellprepping = "ab" then
  {  
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ala" then
  {  
    var prepmana 1
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "anc" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "al" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "bg" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "cl" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "db" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ee" then
  {
    var capmana 31
    gosub CASTSETUP
  }
  if %spellprepping = "etf" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "es" then
  {
    var prepmana 1
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "fb" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "fr" then
  {
    var capmana 37
    gosub CASTSETUP
  }
  if %spellprepping = "fs" then
  {
    var prepmana 1
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "foi" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "frs" then
  {
    var prepmana 7
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "frostbite" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "gz" then
  {
    var prepmana 1
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "geyser" then
  {
    var prepmana 1
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "gf" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "gi" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "ip" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "ignite" then
  {
     var prepmana 5
     var ctoverride 1
    if_3 then
    {
      var ctoverridevar %3
      var addmana %2
    }
    else
    {
      if_2 then
      {
        if %2 > 0 then
        {
          var addmana %2 
          var ctoverridevar $righthand
        }
        else
        {
          var addmana 100
          var ctoverridevar %2
        }
      }
      else
      {
        var addmana 100
        var ctoverride 1
        var ctoverridevar $righthand
      }
    }
  }
  if %spellprepping = "lb" then
  {
    var prepmana 7
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "mab" then
  {
    var prepmana 15
    var capmana 50
    gosub CASTSETUP
  }
  if %spellprepping = "mof" then
  {
    var capmana 800
    gosub CASTSETUP
  }
  if %spellprepping = "moa" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "pw" then
  {
    var prepmana 7
    var capmana 50
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "rim" then
  {
    var capmana 31
    gosub CASTSETUP
  }
  if %spellprepping = "ros" then
  {
    var capmana 37
    gosub CASTSETUP
  }
  if %spellprepping = "rm" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "shockwave" then
  {
    var prepmana 30
    var capmana 100
    gosub CASTSETUP
    var tmcast 1
  }
  if %spellprepping = "sts" then
  {
    var prepmana 1
    var capmana 50
    gosub CASTSETUP 
  }
  if %spellprepping = "subs" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "suf" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "sw" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "tw" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "tc" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "ti" then
  {
    var prepmana 5
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "trem" then
  {
    var prepmana 10
    var capmana 66
    gosub CASTSETUP
  }
  if %spellprepping = "voi" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "vertigo" then
  {
    var prepmana 5
    var capmana 50
    gosub CASTSETUP
  }
  if %spellprepping = "wb" then
  {
    var prepmana 1
    var capmana 33
    gosub CASTSETUP
  }
  if %spellprepping = "ys" then
  {
    var prepmana 15
    var capmana 100
    gosub CASTSETUP
  }
  if %spellprepping = "zephyr" then
  {
    var prepmana 5
    var capmana 100
    gosub CASTSETUP
  }
  
  #Final_Logic
  if %prepmana = 0 then
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
  }
  else
  {
    if %addmana > %prepmana then math addmana subtract %prepmana
    else var addmana 0
  }
 
MAINLOOP:
  if %casting = 1 then gosub CASTINGLOGIC
  pause 1
  if %scancel = 1 then
  {
    put #parse PCASTING COMPLETE!
    exit
  }
  goto MAINLOOP
 
CASTSETUP:
  if contains("%rituals", "|%spellprepping|") then
  {
    var addmana 0
    if_2 then var prepmana %2
    else var prepmana %capmana
    return
  }
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
        }
      }
      else var prepmana %capmana
    }
    return
  }
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
      if %2 < 0 then var addmana 0
      if %2 > -1 then
      {
        var addmana %2
      }
      else
      {
        var addmana %capmana
        var ctoverride 1
        var ctoverridevar %2
      }
    }
    else var addmana %capmana
  }
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
  var cambtapped 0
  var cambsplitting 0
  var splittingmana 0
  var splitcount 0
  var multicast 0
  var scancel 0
  return
 
MULTICASTRESET:
  gosub PRESET
  goto SPELLTABLE
  
END:
