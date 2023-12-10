include library.cmd

var crossingshops herilo|orielda|talmai|chizili|mauriga|falken|berolt|berolt2|orem|grisgonda1|grisgonda2|milgrym|tembeg|marcipur|ragge|bard|durantine|brisson1|brisson2

SET: 
  if_1 then
  {  
    if tolower("%1") = "convert" then
    {
      gosub VARCONVERT
      exit
    }
    if tolower("%1") = "display" then goto DISPLAY
    if tolower("%1") = "help" then goto MAINHELP
    
    if tolower("%1") = "mode" then
    {
      if matchre("%2", "\b(1|2|3|4)\b") then
      {  
        var setvar varset
        var input %2  
        if $varset = %input then
        {
          put #echo mono You're already in that mode!
          exit
        }
        put #var varset %input
        put #var save
        put #echo mono Changed to varible mode %input.
        goto END
      }
      else
      {
        put #echo mono You can only set mode 1, 2, 3, or 4!
        goto END
      }
    }
    if tolower("%1") = "copy" then
    {
      if !matchre("%2", "\b(all|general|movement|loot|upkeep|combat|combat2|noncombat|guild|magic|spell|buff)\b") then
      {
        put #echo mono Options are: all|general|movement|loot|upkeep|combat|combat2|noncombat|guild|magic|spell|buff.
        goto END
      } 
      if !matchre("%3", "\b(1|2|3|4|5)\b") then
      {
        put #echo mono You must specify mode 1, 2, 3, 4, or 5 for the source to copy from!
        goto END
      }
      if !matchre("%4", "\b(1|2|3|4|5)\b") then
      {
        put #echo mono You must specify mode 1, 2, 3, 4, or 5 for the destination to copy to!
        goto END
      }
      if %3 = %4 then
      {
        put #echo mono Both modes cannot be the same for a copy!
        goto END
      }
      var copymode %2
      var source %3
      var dest %4
      put #echo Copied mode %source variables to mode %dest.
      gosub VARCOPY
      goto END
    }
    if tolower("%1") = "mode1list" then goto REGLISTSET
    if tolower("%1") = "mode1step" then goto REGTEXTSET
    if tolower("%1") = "mode2list" then goto REGLISTSET
    if tolower("%1") = "mode2step" then goto REGTEXTSET
    if tolower("%1") = "mode1priority" then goto REGYESNOSET
    if tolower("%1") = "mode2priority" then goto REGYESNOSET
    
    
    if tolower("%1") = "deathaction" then
    {
      if matchre("%2", "\b(logout|alert)\b") then
      {  
        var setvar deathaction
        var input %2  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only set logout or alert!
        goto END
      }
    }
    if tolower("%1") = "disconnectaction" then
    {
      if matchre("%2", "\b(reconnect|quit)\b") then
      {  
        var setvar disconnectaction
        var input %2  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only set reconnect or quit!
        goto END
      }
    }
    if tolower("%1") = "alertwindow" then
    {
      if matchre("%2", "\b(Main|Conversation|Log)\b") then
      {  
        var setvar alertwindow
        var input %2  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only set Main, Conversation, or Log!
        goto END
      }
    }
    if tolower("%1") = "healthalerts" then goto REGYESNOSET
    if tolower("%1") = "healthalertnum" then goto REGTEXTSET
    if tolower("%1") = "speechalerts" then goto REGYESNOSET
    if tolower("%1") = "nervealerts" then goto REGYESNOSET
    if tolower("%1") = "sorceryalerts" then goto REGYESNOSET
    if tolower("%1") = "emotealerts" then goto REGYESNOSET
    if tolower("%1") = "arrivalalerts" then goto REGYESNOSET
    if tolower("%1") = "gmalerts" then goto REGYESNOSET
    if tolower("%1") = "paranoiaalerts" then goto REGYESNOSET
    if tolower("%1") = "pvpalerts" then goto REGYESNOSET
    if tolower("%1") = "pvpstealthalerts" then goto REGYESNOSET
    if tolower("%1") = "inventoryalerts" then goto REGYESNOSET
    if tolower("%1") = "bugout" then goto YESNOSET
    if tolower("%1") = "bugoutnum" then goto TEXTSET
    if tolower("%1") = "bugoutonbleed" then goto YESNOSET
    if tolower("%1") = "bugoutroom" then goto TEXTSET
    if tolower("%1") = "autoupkeep" then goto YESNOSET
    if tolower("%1") = "aumoveshard" then goto YESNOSET
    if tolower("%1") = "sharditem" then goto TEXTSET
    if tolower("%1") = "movewhistle" then goto YESNOSET
    if tolower("%1") = "movescream" then goto YESNOSET
    if tolower("%1") = "movevanish" then goto YESNOSET
    if tolower("%1") = "auonhealth" then goto YESNOSET
    if tolower("%1") = "auhealthnum" then goto TEXTSET
    if tolower("%1") = "auonbleed" then goto YESNOSET
    if tolower("%1") = "auonnerves" then goto YESNOSET
    if tolower("%1") = "auonburden" then goto YESNOSET
    if tolower("%1") = "auonammo" then goto YESNOSET
    if tolower("%1") = "auonboxes" then goto YESNOSET
    if tolower("%1") = "auburdennum" then
    {
      if matchre("%2", "\b(1|2|3|4|5|6|7|8|9|10|11)\b") then
      {  
        var setvar auburdennum
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose a number 1-11!
        goto END
      }
    }
    if tolower("%1") = "minmoney" then goto TEXTSET
    if tolower("%1") = "exchange" then goto YESNOSET
    if tolower("%1") = "autopath" then
    {
      eval input toupper(%2)  
      if matchre("%input", "\b(YES|NO|PREMIUM)\b") then
      {  
        var setvar autopath
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose yes, no, or premium!
        goto END
      }
    }
    if tolower("%1") = "repair" then goto YESNOSET
    if tolower("%1") = "repairlist" then
    {
      var setvar repairlist  
      var input %2
      if_3 then var input %input %3
      if_4 then var input %input %4
      if_5 then var input %input %5
      if_6 then var input %input %6
      if_7 then var input %input %7
      if_8 then var input %input %8
      if_9 then
      {
        echo String too long!
        exit
      }
      put #var m$varset%setvar %input
      put #var save
      goto VARDISPLAY
    }
    if tolower("%1") = "bundlesell" then goto YESNOSET
    if tolower("%1") = "bundlevault" then goto YESNOSET
    if tolower("%1") = "bundlerope" then goto TEXTSET
    if tolower("%1") = "vaulttown" then
    {
      if (matchre("%2", "\b(%townvaultpresetlist)\b")) then
      {  
        var setvar vaulttown
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %townvaultpresetlist.
        goto END
      }
    }
    if tolower("%1") = "vaultmove" then goto YESNOSET
    if tolower("%1") = "gemsell" then goto YESNOSET
    if tolower("%1") = "gemvault" then goto YESNOSET
    if tolower("%1") = "gempouches" then goto TEXTSET
    if tolower("%1") = "nuggetsell" then goto TEXTSET
    if tolower("%1") = "barsell" then goto TEXTSET
    if tolower("%1") = "ammobuy" then goto YESNOSET
		if tolower("%1") = "ammobuylist" then goto TEXTSET
		if tolower("%1") = "ammobuytown" then
    {
      if matchre("%2", "\b(%ammopresetlist)\b") then
      {  
        var setvar ammobuytown
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from: %ammopresetlist!
        goto END
      }
    }
    if tolower("%1") = "lockpickbuytown" then
    {
      if matchre("%2", "\b(%lockpickpresetlist)\b") then
      {  
        var setvar lockpickbuytown
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from: %lockpickpresetlist!
        goto END
      }
    }
		if tolower("%1") = "ammocontainer" then goto TEXTSET
		if tolower("%1") = "ammomin" then goto TEXTSET
    if tolower("%1") = "lockpickbuy" then goto YESNOSET
    if tolower("%1") = "lockpickstacker" then goto TEXTSET
    if tolower("%1") = "lockpickitem" then goto TEXTSET
    if tolower("%1") = "boxpopping" then goto YESNOSET
    if tolower("%1") = "dismantletype" then goto TEXTSET
    if tolower("%1") = "spiderfeed" then goto YESNOSET
    if tolower("%1") = "incense" then goto TEXTSET
    if tolower("%1") = "stancemain" then goto TEXTSET
    if tolower("%1") = "noncomdelay" then goto YESNOSET
    if tolower("%1") = "weapons" then goto YESNOSET
    if tolower("%1") = "weapon1" then goto PRIORSET
    if tolower("%1") = "weapon2" then goto PRIORSET
    if tolower("%1") = "weapon3" then goto PRIORSET
    if tolower("%1") = "weapon4" then goto PRIORSET
    if tolower("%1") = "weapon5" then goto PRIORSET
    if tolower("%1") = "weapon6" then goto PRIORSET
    if tolower("%1") = "weapon7" then goto PRIORSET
    if tolower("%1") = "weapon8" then goto PRIORSET
    if tolower("%1") = "weapon9" then goto PRIORSET
    if tolower("%1") = "weapon10" then goto PRIORSET
    if tolower("%1") = "weapon11" then goto PRIORSET
    if tolower("%1") = "weapon12" then goto PRIORSET
    if tolower("%1") = "weapon13" then goto PRIORSET
    if tolower("%1") = "weapon14" then goto PRIORSET
    if tolower("%1") = "offhand" then goto YESNOSET
    if tolower("%1") = "acms" then goto YESNOSET
    if tolower("%1") = "weaponnum" then
    {
      if matchre("%2", "\b(1|2|3|4|5|6|7|8|9|10|11|12|13|14)\b") then
      {  
        var setvar weaponnum
        var input %2  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only set 1-14 weapons!
        goto END
      }
    }
    if tolower("%1") = "lowestfirst" then goto YESNOSET
    if tolower("%1") = "killafterlock" then goto YESNOSET
    if tolower("%1") = "seweapon" then goto TEXTSET
    if tolower("%1") = "seoffhand" then goto YESNOSET
    if tolower("%1") = "secombo" then
    {
      if matchre("%2", "\b(slice|puncture)\b") then
      {  
        var setvar secombo
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose slice or puncture!
        goto END
      }
    }
    if tolower("%1") = "leweapon" then goto TEXTSET
    if tolower("%1") = "leoffhand" then goto YESNOSET
    if tolower("%1") = "theweapon" then goto TEXTSET
    if tolower("%1") = "sbweapon" then goto TEXTSET
    if tolower("%1") = "sboffhand" then goto YESNOSET
    if tolower("%1") = "lbweapon" then goto TEXTSET
    if tolower("%1") = "lboffhand" then goto YESNOSET
    if tolower("%1") = "thbweapon" then goto TEXTSET
    if tolower("%1") = "staveweapon" then goto TEXTSET
    if tolower("%1") = "staveoffhand" then goto YESNOSET
    if tolower("%1") = "staveworn" then goto YESNOSET
    if tolower("%1") = "stavetied" then goto YESNOSET
    if tolower("%1") = "poleweapon" then goto TEXTSET
    if tolower("%1") = "poleworn" then goto YESNOSET
    if tolower("%1") = "poletied" then goto YESNOSET
    if tolower("%1") = "polecombo" then
    {
      if matchre("%2", "\b(slice|puncture)\b") then
      {  
        var setvar polecombo
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose slice or puncture!
        goto END
      }
    }
    if tolower("%1") = "bastardsworditem" then goto TEXTSET
    if tolower("%1") = "barmaceitem" then goto TEXTSET
    if tolower("%1") = "holyiconitem" then goto TEXTSET
    if tolower("%1") = "risteitem" then goto TEXTSET
    if tolower("%1") = "hhristeitem" then goto TEXTSET
    if tolower("%1") = "ltweapon" then goto TEXTSET
    if tolower("%1") = "ltoffhand" then goto YESNOSET
    if tolower("%1") = "htweapon" then goto TEXTSET
    if tolower("%1") = "htoffhand" then goto YESNOSET
    if tolower("%1") = "xbowweapon" then goto TEXTSET
    if tolower("%1") = "bowweapon" then goto TEXTSET
    if tolower("%1") = "xbowammo" then goto TEXTSET
    if tolower("%1") = "xbowworn" then goto YESNOSET
    if tolower("%1") = "bowammo" then goto TEXTSET
    if tolower("%1") = "bowworn" then goto YESNOSET
    if tolower("%1") = "slingweapon" then goto TEXTSET
    if tolower("%1") = "slingammo" then goto TEXTSET
    if tolower("%1") = "htbond" then
    {
      if matchre("%2", "\b(yes|no|special)\b") then
      {  
        var setvar htbond
        eval input toupper(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose yes, no, or special!
        goto END
      }
    }
    if tolower("%1") = "ltbond" then
        {
      if matchre("%2", "\b(yes|no|special)\b") then
      {  
        var setvar ltbond
        eval input toupper(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose yes, no, or special!
        goto END
      }
    }
    if tolower("%1") = "htverb" then
    {
      if matchre("%2", "\b(throw|lob|hurl)\b") then
      {  
        var setvar htverb
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only throw, hurl, or lob!
        goto END
      }
    }
    if tolower("%1") = "ltverb" then
    {
      if matchre("%2", "\b(throw|lob|hurl)\b") then
      {  
        var setvar ltverb
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only throw, hurl, or lob!
        goto END
      }
    }
    if tolower("%1") = "ignitebackup" then goto TEXTSET
    
    if tolower("%1") = "platring" then goto YESNOSET
    if tolower("%1") = "platringitem" then goto TEXTSET
    if tolower("%1") = "stealth" then goto YESNOSET
    if tolower("%1") = "stealthnv" then goto YESNOSET
    if tolower("%1") = "climbingrope" then goto YESNOSET
    if tolower("%1") = "climbingropename" then goto TEXTSET
    if tolower("%1") = "climbingropehum" then goto YESNOSET
    if tolower("%1") = "humsong" then goto TEXTSET
    if tolower("%1") = "windboard" then goto YESNOSET
    if tolower("%1") = "windboardtimer" then goto TEXTSET
    if tolower("%1") = "locksmithbox" then goto YESNOSET
    if tolower("%1") = "locksmithboxtimer" then goto TEXTSET
    if tolower("%1") = "locksmithboxitem" then goto TEXTSET
    if tolower("%1") = "skinfatrainer" then goto YESNOSET
    if tolower("%1") = "skinfatrainertimer" then goto TEXTSET
    if tolower("%1") = "skinfatraineritem" then goto TEXTSET
    if tolower("%1") = "windboardcharge" then goto REGTEXTSET
    if tolower("%1") = "windboardtrick" then goto TEXTSET
    if tolower("%1") = "appfocus" then goto YESNOSET
    if tolower("%1") = "appfocusitem" then goto TEXTSET
    if tolower("%1") = "recall" then goto YESNOSET
    if tolower("%1") = "necrostate" then
    {
      if matchre("%2", "\b(unsullied|forsaken|redeemed)\b") then
      {  
        var setvar necrostate
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are unsullied, forsaken, or redeemed!
        goto END
      }
    }
    if tolower("%1") = "necrosafety" then goto YESNOSET
    if tolower("%1") = "necrowhitelist" then goto LISTSET
    if tolower("%1") = "riteofgrace" then goto YESNOSET
    if tolower("%1") = "rogprepmana" then goto TEXTSET
    if tolower("%1") = "rogcycle" then goto YESNOSET
    if tolower("%1") = "preserve" then goto YESNOSET
    if tolower("%1") = "dissect" then goto YESNOSET
    if tolower("%1") = "smite" then goto YESNOSET
    if tolower("%1") = "tithe" then goto YESNOSET
    if tolower("%1") = "backstab" then goto YESNOSET
    if tolower("%1") = "snipe" then goto YESNOSET
    if tolower("%1") = "khrimax" then goto TEXTSET
    if tolower("%1") = "khriadaptation" then goto YESNOSET
    if tolower("%1") = "khriavoidance" then goto YESNOSET
    if tolower("%1") = "khricunning" then goto YESNOSET
    if tolower("%1") = "khridampen" then goto YESNOSET
    if tolower("%1") = "khridarken" then goto YESNOSET
    if tolower("%1") = "khrielusion" then goto YESNOSET
    if tolower("%1") = "khriendure" then goto YESNOSET
    if tolower("%1") = "khrievanescence" then goto YESNOSET
    if tolower("%1") = "khriflight" then goto YESNOSET
    if tolower("%1") = "khrifright" then goto YESNOSET
    if tolower("%1") = "khrifocus" then goto YESNOSET
    if tolower("%1") = "khriharrier" then goto YESNOSET
    if tolower("%1") = "khrihasten" then goto YESNOSET
    if tolower("%1") = "khriinsight" then goto YESNOSET
    if tolower("%1") = "khriplunder" then goto YESNOSET
    if tolower("%1") = "khrisagacity" then goto YESNOSET
    if tolower("%1") = "khrisensing" then goto YESNOSET
    if tolower("%1") = "khriserenity" then goto YESNOSET
    if tolower("%1") = "khrishadowstep" then goto YESNOSET
    if tolower("%1") = "khrisight" then goto YESNOSET
    if tolower("%1") = "khristeady" then goto YESNOSET
    if tolower("%1") = "khristrike" then goto YESNOSET
    if tolower("%1") = "khriguile" then goto YESNOSET
    if tolower("%1") = "khriprowess" then goto YESNOSET
    if tolower("%1") = "khriterrify" then goto YESNOSET
    if tolower("%1") = "khridebil" then goto YESNOSET
    if tolower("%1") = "khridebiltype" then
    {
      if matchre("%2", "\b(prowess|guile|credence|terrify|intimidate|eliminate)\b") then
      {  
        var setvar khridebiltype
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can't arrange %2 times!
        goto END
      }
    }
    if tolower("%1") = "movevanish" then goto YESNOSET
    if tolower("%1") = "harvest" then goto YESNOSET
    if tolower("%1") = "harveststore" then goto YESNOSET
    if tolower("%1") = "harveststorenum" then goto TEXTSET
    if tolower("%1") = "devour" then goto YESNOSET
    if tolower("%1") = "devourprepmana" then goto TEXTSET
    if tolower("%1") = "devouraddmana" then goto TEXTSET
    if tolower("%1") = "siphonvit" then goto YESNOSET
    if tolower("%1") = "siphonvitprepmana" then goto TEXTSET
    if tolower("%1") = "siphonvitaddmana" then goto TEXTSET
    if tolower("%1") = "siphonvitnum" then goto TEXTSET
    if tolower("%1") = "eotbrel" then goto YESNOSET
    if tolower("%1") = "tactics" then goto YESNOSET
    if tolower("%1") = "tacticsweapons" then goto LISTSET
    if tolower("%1") = "arrange" then
    {
      if matchre("%2", "\b(0|1|2|3|4|5)\b") then
      {  
        var setvar arrange
        eval input toupper(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can't arrange %2 times!
        goto END
      }
    }
    if tolower("%1") = "arrangeforpart" then goto YESNOSET
    if tolower("%1") = "skinafterlock" then goto YESNOSET
    if tolower("%1") = "dropskins" then goto YESNOSET
    if tolower("%1") = "braid" then goto YESNOSET
    if tolower("%1") = "appraise" then goto YESNOSET
    if tolower("%1") = "appraisetarget" then
    {
      if matchre("%2", "\b(bundle|creature)\b") then
      {  
        var setvar appraisetarget
        var input %2  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only set bundle, or creature!
        goto END
      }
    }
    if tolower("%1") = "appraisetimer" then goto TEXTSET
    if tolower("%1") = "appsaveitem" then
    {
      if matchre("%2", "\b(lumpy|tight|none)\b") then
      {  
        var setvar appsaveitem
        var input %2  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only set tight, lumpy, or none!
        goto END
      }
    }
    if tolower("%1") = "appsaveitemstorage" then goto TEXTSET
    if tolower("%1") = "perform" then goto YESNOSET
    if tolower("%1") = "noncombat" then goto YESNOSET
    if tolower("%1") = "burgle" then goto YESNOSET
    if tolower("%1") = "burglestorage" then goto TEXTSET
    if tolower("%1") = "burgletool" then goto TEXTSET
    if tolower("%1") = "burglepickitem" then goto TEXTSET
    if tolower("%1") = "burglepickworn" then goto YESNOSET
    if tolower("%1") = "burgleropeitem" then goto TEXTSET
    if tolower("%1") = "burglemaxgrabs" then
    {
      if matchre("%2", "\b(0|1|2|3|4|5|6)\b") then
      {  
        var setvar burglemaxgrabs
        var input %2  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Must be a number 0-6!
        goto END
      }
    }
    if tolower("%1") = "burgleloot" then goto YESNOSET
    if tolower("%1") = "burglekeeplist" then goto YESNOSET
    if tolower("%1") = "burglepawn" then goto YESNOSET
    if tolower("%1") = "burglethiefbin" then goto YESNOSET
    if tolower("%1") = "burglekhrihasten" then goto YESNOSET
    if tolower("%1") = "burglekhriplunder" then goto YESNOSET
    if tolower("%1") = "burglekhrisilence" then goto YESNOSET
    if tolower("%1") = "burglekhrislight" then goto YESNOSET
    if tolower("%1") = "burglerf" then goto YESNOSET
    if tolower("%1") = "burglerfdelay" then goto TEXTSET
    if tolower("%1") = "burgleeotb" then goto YESNOSET
    if tolower("%1") = "burgleeotbdelay" then goto TEXTSET
   
    if tolower("%1") = "boxpopkhrifocus" then goto YESNOSET
    if tolower("%1") = "boxpopkhrihasten" then goto YESNOSET
    if tolower("%1") = "boxpopkhriplunder" then goto YESNOSET
    if tolower("%1") = "boxpopkhrisafe" then goto YESNOSET
    if tolower("%1") = "boxpopkhrisight" then goto YESNOSET
   
    if tolower("%1") = "braidtarget" then goto TEXTSET
    if tolower("%1") = "songtype" then goto TEXTSET
    if tolower("%1") = "instrument" then goto TEXTSET
    if tolower("%1") = "instrumentworn" then goto YESNOSET
    if tolower("%1") = "instrumenthands" then goto TEXTSET
    if tolower("%1") = "instrumentassess" then goto YESNOSET
    if tolower("%1") = "instclean" then goto YESNOSET
    if tolower("%1") = "instcleancloth" then goto TEXTSET
    if tolower("%1") = "compendium" then goto YESNOSET
    if tolower("%1") = "compendiumtimer" then goto TEXTSET
    if tolower("%1") = "textbook" then goto YESNOSET
    if tolower("%1") = "textbooktimer" then goto TEXTSET
    if tolower("%1") = "textbookitem" then goto TEXTSET
    if tolower("%1") = "textbooklist" then goto LISTSET
    if tolower("%1") = "teaching" then goto YESNOSET
    if tolower("%1") = "teachtargets" then goto LISTSET
    if tolower("%1") = "perchealth" then goto YESNOSET
    if tolower("%1") = "warhorn" then goto YESNOSET
    if tolower("%1") = "warhornitem" then goto TEXTSET
    if tolower("%1") = "expertise" then goto YESNOSET
    if tolower("%1") = "whirlwind" then goto YESNOSET
    if tolower("%1") = "dualload" then goto YESNOSET
    if tolower("%1") = "pounce" then goto YESNOSET
    if tolower("%1") = "ritstype" then
    {
      if matchre("%2", "\b(any|low|mid|high)\b") then
      {  
        var setvar ritstype
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are any, low, mid, or high!
        goto END
      }
    }
    if tolower("%1") = "mininnerfire" then goto TEXTSET
    if tolower("%1") = "berserkava" then goto YESNOSET
    if tolower("%1") = "avafatigue" then goto TEXTSET
    if tolower("%1") = "berserkdrought" then goto YESNOSET
    if tolower("%1") = "berserkfamine" then goto YESNOSET
    if tolower("%1") = "faminevit" then goto TEXTSET
    if tolower("%1") = "meditatestaunch" then goto YESNOSET
    if tolower("%1") = "expaccuracy" then goto YESNOSET
    if tolower("%1") = "expdamage" then goto YESNOSET
    if tolower("%1") = "berserkblizzard" then goto YESNOSET
    if tolower("%1") = "berserkcyclone" then goto YESNOSET
    if tolower("%1") = "berserkearthquake" then goto YESNOSET
    if tolower("%1") = "berserkflashflood" then goto YESNOSET
    if tolower("%1") = "berserkhurricane" then goto YESNOSET
    if tolower("%1") = "berserklandslide" then goto YESNOSET
    if tolower("%1") = "landslidetraining" then goto YESNOSET
    if tolower("%1") = "berserktornado" then goto YESNOSET
    if tolower("%1") = "tornadotraining" then goto YESNOSET
    if tolower("%1") = "berserktsunami" then goto YESNOSET
    if tolower("%1") = "tsunamibackup" then goto TEXTSET
    if tolower("%1") = "berserkvolcano" then goto YESNOSET
    if tolower("%1") = "berserkwildfire" then goto YESNOSET
    if tolower("%1") = "bearform" then goto YESNOSET
    if tolower("%1") = "buffaloform" then goto YESNOSET
    if tolower("%1") = "dragonform" then goto YESNOSET
    if tolower("%1") = "eagleform" then goto YESNOSET
    if tolower("%1") = "monkeyform" then goto YESNOSET
    if tolower("%1") = "owlform" then goto YESNOSET
    if tolower("%1") = "pantherform" then goto YESNOSET
    if tolower("%1") = "piranhaform" then goto YESNOSET
    if tolower("%1") = "pythonform" then goto YESNOSET
    if tolower("%1") = "wolverineform" then goto YESNOSET
    if tolower("%1") = "meditatebastion" then goto YESNOSET
    if tolower("%1") = "meditatecontemplation" then goto YESNOSET
    if tolower("%1") = "meditateserenity" then goto YESNOSET
    if tolower("%1") = "meditatetenacity" then goto YESNOSET
    if tolower("%1") = "roaranger" then goto YESNOSET
    if tolower("%1") = "roarembrace" then goto YESNOSET
    if tolower("%1") = "roarkuniyo" then goto YESNOSET
    if tolower("%1") = "roarrage" then goto YESNOSET
    if tolower("%1") = "roarscreech" then goto YESNOSET
    if tolower("%1") = "roarshriek" then goto YESNOSET
    if tolower("%1") = "roarwail" then goto YESNOSET
    if tolower("%1") = "whistlepiercing" then goto YESNOSET
    if tolower("%1") = "avoidshock" then goto YESNOSET
    if tolower("%1") = "manipulate" then goto YESNOSET
    if tolower("%1") = "manipnum" then goto TEXTSET
    if tolower("%1") = "teacher" then goto TEXTSET
    if tolower("%1") = "teachskill" then
    {
      var setvar %1
      if_3 then var input %2 %3
      else var input %2
      if matchre("%input", "\b(Bows|Brawling|Crossbow|Heavy Thrown|Large Blunt|Large Edged|Light Thrown|Polearms|Slings|Small Blunt|Small Edged|Staves|Twohanded Blunt|Twohanded Edged|Targeted Magic|Debilitation|Warding|Evasion|Tactics|Light Armor|Chain Armor|Brigandine|Plate Armor|Defending)\b") then
      { 
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You may only set Bows|Brawling|Crossbow|Heavy Thrown|Large Blunt|Large Edged|Light Thrown|Polearms|Slings|Small Blunt|Small Edged|Staves|Twohanded Blunt|Twohanded Edged|Targeted Magic|Debilitation|Warding|Evasion|Tactics|Light Armor|Chain Armor|Brigandine|Plate Armor|Defending!  Capitalization is important!
        goto END
      }
    }
    if tolower("%1") = "leweapon" then goto TEXTSET
    if tolower("%1") = "attune" then goto YESNOSET
    if tolower("%1") = "minconcentration" then goto TEXTSET
    if tolower("%1") = "outdoor" then goto YESNOSET
    if tolower("%1") = "outdoortimer" then goto TEXTSET
    if tolower("%1") = "collectitem" then
    {
      {
      if matchre("%2", "\b(rock|bunny)\b") then
      {  
        var setvar collectitem
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are rock or bunny!
        goto END
      }
    }
    }
    if tolower("%1") = "hunting" then goto YESNOSET
    if tolower("%1") = "huntingtimer" then goto TEXTSET
    if tolower("%1") = "spell" then goto YESNOSET
    if tolower("%1") = "buff" then goto YESNOSET
    if tolower("%1") = "abuff" then goto YESNOSET
    if tolower("%1") = "gbuff" then goto YESNOSET
    if tolower("%1") = "gbufftarget" then goto TEXTSET
    if tolower("%1") = "buffbuffer" then goto TEXTSET
    if tolower("%1") = "debil" then goto YESNOSET
    if tolower("%1") = "debilskill" then
    {
      if matchre("%2", "\b(debil|sorcery)\b") then
      {  
        var setvar debilskill
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are debil or sorcery!
        goto END
      }
    }
    if tolower("%1") = "tm" then goto YESNOSET
    if tolower("%1") = "tmskill" then
    {
      if matchre("%2", "\b(tm|sorcery)\b") then
      {  
        var setvar tmskill
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are tm or sorcery!
        goto END
      }
    }
    if tolower("%1") = "tmdbprior" then goto YESNOSET
    if tolower("%1") = "cyclic" then goto YESNOSET
    if tolower("%1") = "cyclicbuff" then goto YESNOSET
    if tolower("%1") = "cyctm" then goto YESNOSET
    if tolower("%1") = "cycdebil" then goto YESNOSET
    if tolower("%1") = "spelltracking" then goto YESNOSET
    if tolower("%1") = "astro" then goto YESNOSET
    if tolower("%1") = "astrotimer" then goto TEXTSET
    if tolower("%1") = "predictiontool" then
    {
      if matchre("%2", "\b(none|bones|mirror)\b") then
      {  
        var setvar predictiontool
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are none, bones, or mirror!
        goto END
      }
    }
    if tolower("%1") = "predictiontoolitem" then goto TEXTSET
    if tolower("%1") = "theurgy" then goto YESNOSET
    if tolower("%1") = "pray" then goto YESNOSET
    if tolower("%1") = "osrelmeraud" then goto YESNOSET
    if tolower("%1") = "omprepmana" then goto TEXTSET
    if tolower("%1") = "omaddmana" then goto TEXTSET
    if tolower("%1") = "omtimer" then goto TEXTSET
    if tolower("%1") = "praydeity" then goto TEXTSET
    if tolower("%1") = "meraudcommune" then goto YESNOSET
    if tolower("%1") = "elunedcommune" then goto YESNOSET
    if tolower("%1") = "tamsinecommune" then goto YESNOSET
    if tolower("%1") = "anloralpin" then goto YESNOSET
    if tolower("%1") = "anloralpinitem" then goto TEXTSET
    if tolower("%1") = "pilgrimbadge" then goto YESNOSET
    if tolower("%1") = "pilgrimbadgeitem" then goto TEXTSET
    if tolower("%1") = "prayermat" then goto YESNOSET
    if tolower("%1") = "prayermatitem" then goto TEXTSET
    if tolower("%1") = "dirtstacker" then goto YESNOSET
    if tolower("%1") = "dirtstackeritem" then goto TEXTSET
    if tolower("%1") = "lighter" then goto YESNOSET
    if tolower("%1") = "lighteritem" then goto TEXTSET
    if tolower("%1") = "watercontainer" then goto TEXTSET
    if tolower("%1") = "recite" then goto YESNOSET
    if tolower("%1") = "dance" then goto YESNOSET
    if tolower("%1") = "blessdelay" then goto TEXTSET
    if tolower("%1") = "hyhcast" then
    {
      if_3 then var input %2 %3
      else var input %2
      if matchre("%input", "\b(coz|male|male offense|male defense)\b") then
      {  
        var setvar hyhcast
        eval input tolower(%input)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Only coz, male, male offense, and male defense are supported!
        goto END
      }
    }
    if tolower("%1") = "tktitem" then goto TEXTSET
    if tolower("%1") = "shadowlingnoun" then goto TEXTSET
    if tolower("%1") = "invest" then goto YESNOSET
    if tolower("%1") = "tradingsell" then goto YESNOSET
    if tolower("%1") = "tradingselltown" then
    {
      if (matchre("%2", "\b(%townvaultpresetlist)\b")) then
      {  
        var setvar tradingselltown
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %townvaultpresetlist.
        goto END
      }
    }
    if tolower("%1") = "tradingsellsource" then
    {
      if matchre("%2", "\b(vault|portal)\b") then
      {
        {  
          var setvar tradingsellsource
          eval input toupper(%2)  
          put #var m$varset%setvar %input
          put #var save
          goto VARDISPLAY
        }
        else
        {
          put #echo mono Must be either vault or portal!
          goto END
        }
      }
    }
    if tolower("%1") = "tradingtasks" then goto YESNOSET
    if tolower("%1") = "summoning" then goto YESNOSET
    if tolower("%1") = "summonweapon" then goto YESNOSET
    if tolower("%1") = "summonweapontimer" then goto TEXTSET
    if tolower("%1") = "pathway" then goto YESNOSET
    if tolower("%1") = "pathwaytype" then goto TEXTSET
    if tolower("%1") = "domain" then goto YESNOSET
    if tolower("%1") = "domaintype" then goto TEXTSET
    if tolower("%1") = "chargeafterlock" then goto YESNOSET
    if tolower("%1") = "calspell" then goto TEXTSET
    if tolower("%1") = "calprepmana" then goto TEXTSET
    if tolower("%1") = "calddmana" then goto TEXTSET
    if tolower("%1") = "cambrinth" then goto YESNOSET
    if tolower("%1") = "dedicatedcambrinth" then goto YESNOSET
    if tolower("%1") = "harnessing" then goto YESNOSET
    if tolower("%1") = "harnessmax" then goto TEXTSET
    if tolower("%1") = "chargemax" then goto TEXTSET
    if tolower("%1") = "straightcast" then goto YESNOSET
    if tolower("%1") = "minmana" then goto TEXTSET
    if tolower("%1") = "castingthrottle" then goto TEXTSET
    if tolower("%1") = "cambitems" then
    {
      if matchre("%2", "\b(0|1|2)\b") then
      {  
        var setvar cambitems
        eval input toupper(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Only 0, 1 or 2 cambrinth items are supported!
        goto END
      }
    }
    if tolower("%1") = "cambitem1" then goto TEXTSET
    if tolower("%1") = "cambitem1mana" then goto TEXTSET
    if tolower("%1") = "cambitem1worn" then goto YESNOSET
    if tolower("%1") = "cambitem2" then goto TEXTSET
    if tolower("%1") = "cambitem2mana" then goto TEXTSET
    if tolower("%1") = "cambitem2worn" then goto YESNOSET
    if tolower("%1") = "ritualfocus" then goto TEXTSET
    if tolower("%1") = "ritualfocusstorage" then goto YESNOSET
    if tolower("%1") = "ritualfocusworn" then goto YESNOSET
    if tolower("%1") = "ritualfocuscontainer" then goto TEXTSET
    if tolower("%1") = "tmfocus" then goto YESNOSET
    if tolower("%1") = "tmfocusitem" then goto TEXTSET
    if tolower("%1") = "tmfocusworn" then goto YESNOSET
    if tolower("%1") = "tmfocusstorage" then goto YESNOSET
    if tolower("%1") = "tmfocuscontainer" then goto TEXTSET
    if tolower("%1") = "combatsanowret" then goto YESNOSET
    if tolower("%1") = "noncomsanowret" then goto YESNOSET
    if tolower("%1") = "sanowretitem" then goto TEXTSET
    if tolower("%1") = "research" then goto YESNOSET
    if tolower("%1") = "gafprepmana" then goto TEXTSET 
    if tolower("%1") = "gafaddmana" then goto TEXTSET
    if tolower("%1") = "researchnum" then goto 1THRU5SET
    if tolower("%1") = "researchtype1" then goto TEXTSET
    if tolower("%1") = "researchtype2" then goto TEXTSET
    if tolower("%1") = "researchtype3" then goto TEXTSET
    if tolower("%1") = "researchtype4" then goto TEXTSET
    if tolower("%1") = "researchtype5" then goto TEXTSET
    if tolower("%1") = "shieldname" then goto TEXTSET
    if tolower("%1") = "armorcheck" then goto YESNOSET
    if tolower("%1") = "shielditem" then goto TEXTSET
    if tolower("%1") = "parrystickitem" then goto TEXTSET
    if tolower("%1") = "armornum" then goto TEXTSET
    if tolower("%1") = "armor1item" then goto TEXTSET
    if tolower("%1") = "armor2item" then goto TEXTSET
    if tolower("%1") = "armor3item" then goto TEXTSET
    if tolower("%1") = "armor4item" then goto TEXTSET
    if tolower("%1") = "armor5item" then goto TEXTSET
    if tolower("%1") = "armor6item" then goto TEXTSET
    if tolower("%1") = "knucklesitem" then goto TEXTSET
    if tolower("%1") = "storage" then goto TEXTSET
    if tolower("%1") = "collectcoin" then goto YESNOSET
    if tolower("%1") = "collectscroll" then goto YESNOSET
    if tolower("%1") = "collectmaps" then goto YESNOSET
    if tolower("%1") = "collectnuggets" then goto YESNOSET
    if tolower("%1") = "collectbars" then goto YESNOSET
    if tolower("%1") = "collectmaterials" then goto YESNOSET
    if tolower("%1") = "misckeeplist" then goto LISTSET
    if tolower("%1") = "collectgem" then goto YESNOSET
    if tolower("%1") = "savegwethstones" then goto YESNOSET
    if tolower("%1") = "collectboxes" then goto YESNOSET
    if tolower("%1") = "boxstorage" then goto TEXTSET
    if tolower("%1") = "almanac" then goto YESNOSET
    if tolower("%1") = "almanacitem" then goto TEXTSET
    if tolower("%1") = "almanacalerts" then goto YESNOSET
    if tolower("%1") = "ejournal" then goto YESNOSET
    if tolower("%1") = "ejournalitem" then goto TEXTSET
    if tolower("%1") = "ejournalstates" then goto TEXTSET
    if tolower("%1") = "tarantula" then goto YESNOSET
    if tolower("%1") = "tarantulaitem" then goto TEXTSET
    if tolower("%1") = "tarantulaskill1" then goto TEXTSET
    if tolower("%1") = "tarantulaskill2" then goto TEXTSET
    if tolower("%1") = "custommovement" then goto YESNOSET
    if tolower("%1") = "killbeforemove" then goto YESNOSET
    if tolower("%1") = "combatpreset" then
    {
      #echo combatpresetp1: %combatpresetp1
      if matchre("%2", "\b(%combatpresetlist)\b") then
      {  
        var setvar combatpreset
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from: %combatpresetlist!
        goto END
      }
    }
    if tolower("%1") = "movetimeout" then goto TEXTSET
    if tolower("%1") = "presetpremium" then
    {
      eval input toupper(%2) 
      if matchre("%input", "\b(YES|NO|ONLY)\b") then
      {  
        var setvar presetpremium
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose YES, NO, or ONLY!
        goto END
      }
    }
    if tolower("%1") = "findroom" then goto YESNOSET
    if tolower("%1") = "findroomlist" then goto LISTSET
    if tolower("%1") = "frwhitelist" then goto LISTSET
    if tolower("%1") = "frblacklist" then goto LISTSET
    if tolower("%1") = "frprefergroup" then goto YESNOSET
    if tolower("%1") = "zone" then goto TEXTSET
    if tolower("%1") = "travel" then goto YESNOSET
    if tolower("%1") = "traveldest" then goto TEXTSET
    if tolower("%1") = "move" then goto YESNOSET
    if tolower("%1") = "movelist" then goto LISTSET
    if tolower("%1") = "targetroom" then goto TEXTSET
     
    if tolower("%1") = "upkeeptown" then
    {
      if (matchre("%2", "\b(%townpresetlist)\b")) then
      {  
        var setvar upkeeptown
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %townpresetlist.
        goto END
      }
    }
    
    if tolower("%1") = "premiumring" then goto YESNOSET
    if tolower("%1") = "premiumringitem" then goto TEXTSET
    if tolower("%1") = "nearestportaltown" then
    {
      if (matchre("%2", "\b(%townportalpresetlist)\b")) then
      {  
        var setvar nearestportaltown
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %townportalpresetlist.
        goto END
      }
    }
    if tolower("%1") = "burglepreset" then
    {
      if (matchre("%2", "\b(%townburglepresetlist)\b")) then
      {  
        var setvar burglepreset
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %townburglepresetlist.
        goto END
      }
    }
    if tolower("%1") = "pawnpreset" then
    {
      if (matchre("%2", "\b(%pawnpresetlist)\b")) then
      {  
        var setvar pawnpreset
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %pawnpresetlist.
        goto END
      }
    }
    if tolower("%1") = "performpreset" then
    {
      if (matchre("%2", "\b(%townperformpresetlist)\b")) then
      {  
        var setvar performpreset
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %townperformpresetlist.
        goto END
      }
    }  
    if tolower("%1") = "lootalerts" then goto YESNO
    if tolower("%1") = "loottype" then
    {
      if matchre("%2", "\b(treasure|boxes|equipment|goods|all)\b") then
      {  
        var setvar loottype
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose treasure, boxes, equipment, goods, or all!
        goto END
      }
    }
    if tolower("%1") = "lootalldead" then goto YESNOSET
    if tolower("%1") = "skinning" then goto YESNOSET
    if tolower("%1") = "collectammo" then goto YESNOSET
    if tolower("%1") = "abuffnum" then goto 0THRU8SET
    if tolower("%1") = "abuff1" then goto ABUFFSET
    if tolower("%1") = "abuff1prepmana" then goto TEXTSET 
    if tolower("%1") = "abuff1addmana" then goto TEXTSET
    if tolower("%1") = "abuff2" then goto ABUFFSET
    if tolower("%1") = "abuff2prepmana" then goto TEXTSET 
    if tolower("%1") = "abuff2addmana" then goto TEXTSET
    if tolower("%1") = "abuff3" then goto ABUFFSET
    if tolower("%1") = "abuff3prepmana" then goto TEXTSET 
    if tolower("%1") = "abuff3addmana" then goto TEXTSET
    if tolower("%1") = "abuff4" then goto ABUFFSET
    if tolower("%1") = "abuff4prepmana" then goto TEXTSET 
    if tolower("%1") = "abuff4addmana" then goto TEXTSET
    if tolower("%1") = "abuff5" then goto ABUFFSET
    if tolower("%1") = "abuff5prepmana" then goto TEXTSET 
    if tolower("%1") = "abuff5addmana" then goto TEXTSET
    if tolower("%1") = "abuff6" then goto ABUFFSET
    if tolower("%1") = "abuff6prepmana" then goto TEXTSET 
    if tolower("%1") = "abuff6addmana" then goto TEXTSET
    if tolower("%1") = "abuff7" then goto ABUFFSET
    if tolower("%1") = "abuff7prepmana" then goto TEXTSET 
    if tolower("%1") = "abuff7addmana" then goto TEXTSET
    if tolower("%1") = "abuff8" then goto ABUFFSET
    if tolower("%1") = "abuff8prepmana" then goto TEXTSET 
    if tolower("%1") = "abuff8addmana" then goto TEXTSET
    if tolower("%1") = "buffnum" then goto 0THRU16SET
    if tolower("%1") = "buff1" then goto BUFFSET
    if tolower("%1") = "buff1prepmana" then goto TEXTSET 
    if tolower("%1") = "buff1addmana" then goto TEXTSET
    if tolower("%1") = "buff1prepwait" then goto TEXTSET
    if tolower("%1") = "buff2" then goto BUFFSET
    if tolower("%1") = "buff2prepmana" then goto TEXTSET 
    if tolower("%1") = "buff2addmana" then goto TEXTSET
    if tolower("%1") = "buff2prepwait" then goto TEXTSET
    if tolower("%1") = "buff3" then goto BUFFSET
    if tolower("%1") = "buff3prepmana" then goto TEXTSET 
    if tolower("%1") = "buff3addmana" then goto TEXTSET
    if tolower("%1") = "buff3prepwait" then goto TEXTSET
    if tolower("%1") = "buff4" then goto BUFFSET
    if tolower("%1") = "buff4prepmana" then goto TEXTSET 
    if tolower("%1") = "buff4addmana" then goto TEXTSET
    if tolower("%1") = "buff4prepwait" then goto TEXTSET
    if tolower("%1") = "buff5" then goto BUFFSET
    if tolower("%1") = "buff5prepmana" then goto TEXTSET 
    if tolower("%1") = "buff5addmana" then goto TEXTSET
    if tolower("%1") = "buff5prepwait" then goto TEXTSET
    if tolower("%1") = "buff6" then goto BUFFSET
    if tolower("%1") = "buff6prepmana" then goto TEXTSET 
    if tolower("%1") = "buff6addmana" then goto TEXTSET
    if tolower("%1") = "buff6prepwait" then goto TEXTSET
    if tolower("%1") = "buff7" then goto BUFFSET
    if tolower("%1") = "buff7prepmana" then goto TEXTSET 
    if tolower("%1") = "buff7addmana" then goto TEXTSET
    if tolower("%1") = "buff7prepwait" then goto TEXTSET
    if tolower("%1") = "buff8" then goto BUFFSET
    if tolower("%1") = "buff8prepmana" then goto TEXTSET 
    if tolower("%1") = "buff8addmana" then goto TEXTSET
    if tolower("%1") = "buff8prepwait" then goto TEXTSET
    if tolower("%1") = "buff9" then goto BUFFSET
    if tolower("%1") = "buff9prepmana" then goto TEXTSET 
    if tolower("%1") = "buff9addmana" then goto TEXTSET
    if tolower("%1") = "buff9prepwait" then goto TEXTSET
    if tolower("%1") = "buff10" then goto BUFFSET
    if tolower("%1") = "buff10prepmana" then goto TEXTSET 
    if tolower("%1") = "buff10addmana" then goto TEXTSET
    if tolower("%1") = "buff10prepwait" then goto TEXTSET
    if tolower("%1") = "buff11" then goto BUFFSET
    if tolower("%1") = "buff11prepmana" then goto TEXTSET 
    if tolower("%1") = "buff11addmana" then goto TEXTSET
    if tolower("%1") = "buff11prepwait" then goto TEXTSET
    if tolower("%1") = "buff12" then goto BUFFSET
    if tolower("%1") = "buff12prepmana" then goto TEXTSET 
    if tolower("%1") = "buff12addmana" then goto TEXTSET
    if tolower("%1") = "buff12prepwait" then goto TEXTSET
    if tolower("%1") = "buff13" then goto BUFFSET
    if tolower("%1") = "buff13prepmana" then goto TEXTSET 
    if tolower("%1") = "buff13addmana" then goto TEXTSET
    if tolower("%1") = "buff13prepwait" then goto TEXTSET
    if tolower("%1") = "buff14" then goto BUFFSET
    if tolower("%1") = "buff14prepmana" then goto TEXTSET 
    if tolower("%1") = "buff14addmana" then goto TEXTSET
    if tolower("%1") = "buff14prepwait" then goto TEXTSET
    if tolower("%1") = "buff15" then goto BUFFSET
    if tolower("%1") = "buff15prepmana" then goto TEXTSET 
    if tolower("%1") = "buff15addmana" then goto TEXTSET
    if tolower("%1") = "buff15prepwait" then goto TEXTSET
    if tolower("%1") = "buff16" then goto BUFFSET
    if tolower("%1") = "buff16prepmana" then goto TEXTSET 
    if tolower("%1") = "buff16addmana" then goto TEXTSET
    if tolower("%1") = "buff16prepwait" then goto TEXTSET
    if tolower("%1") = "ombuffnum" then goto 0THRU8SET
    if tolower("%1") = "ombuff1" then goto OMBUFFSET
    if tolower("%1") = "ombuff2" then goto OMBUFFSET
    if tolower("%1") = "ombuff3" then goto OMBUFFSET
    if tolower("%1") = "ombuff4" then goto OMBUFFSET
    if tolower("%1") = "ombuff5" then goto OMBUFFSET
    if tolower("%1") = "ombuff6" then goto OMBUFFSET
    if tolower("%1") = "ombuff7" then goto OMBUFFSET
    if tolower("%1") = "ombuff8" then goto OMBUFFSET
    if tolower("%1") = "gbuffnum" then goto 0THRU8SET
    if tolower("%1") = "gbuff1" then goto TEXTSET
    if tolower("%1") = "gbuff1prepmana" then goto TEXTSET 
    if tolower("%1") = "gbuff1addmana" then goto TEXTSET
    if tolower("%1") = "gbuff1duration" then goto TEXTSET
    if tolower("%1") = "gbuff2" then goto TEXTSET
    if tolower("%1") = "gbuff2prepmana" then goto TEXTSET 
    if tolower("%1") = "gbuff2addmana" then goto TEXTSET
    if tolower("%1") = "gbuff2duration" then goto TEXTSET
    if tolower("%1") = "gbuff3" then goto TEXTSET
    if tolower("%1") = "gbuff3prepmana" then goto TEXTSET 
    if tolower("%1") = "gbuff3addmana" then goto TEXTSET
    if tolower("%1") = "gbuff3duration" then goto TEXTSET
    if tolower("%1") = "gbuff4" then goto TEXTSET
    if tolower("%1") = "gbuff4prepmana" then goto TEXTSET 
    if tolower("%1") = "gbuff4addmana" then goto TEXTSET
    if tolower("%1") = "gbuff4duration" then goto TEXTSET
    if tolower("%1") = "gbuff5" then goto TEXTSET
    if tolower("%1") = "gbuff5prepmana" then goto TEXTSET 
    if tolower("%1") = "gbuff5addmana" then goto TEXTSET
    if tolower("%1") = "gbuff5duration" then goto TEXTSET
    if tolower("%1") = "gbuff6" then goto TEXTSET
    if tolower("%1") = "gbuff6prepmana" then goto TEXTSET 
    if tolower("%1") = "gbuff6addmana" then goto TEXTSET
    if tolower("%1") = "gbuff6duration" then goto TEXTSET
    if tolower("%1") = "gbuff7" then goto TEXTSET
    if tolower("%1") = "gbuff7prepmana" then goto TEXTSET 
    if tolower("%1") = "gbuff7addmana" then goto TEXTSET
    if tolower("%1") = "gbuff7duration" then goto TEXTSET
    if tolower("%1") = "gbuff8" then goto TEXTSET
    if tolower("%1") = "gbuff8prepmana" then goto TEXTSET 
    if tolower("%1") = "gbuff8addmana" then goto TEXTSET
    if tolower("%1") = "gbuff8duration" then goto TEXTSET 

    if tolower("%1") = "fastertargeting" then goto REGYESNOSET
    if tolower("%1") = "fasterbattleprep" then goto REGYESNOSET
    if tolower("%1") = "fastermatrices" then goto REGYESNOSET
    if tolower("%1") = "silentprep" then goto REGYESNOSET
    if tolower("%1") = "hideprep" then goto REGYESNOSET
    
    if tolower("%1") = "pscriptmode" then goto REGTEXTSET
    if tolower("%1") = "astralsafe" then goto REGYESNOSET 
    if tolower("%1") = "hundredth" then goto REGYESNOSET 
    
    if tolower("%1") = "maneuverlist" then goto REGLISTSET
    if tolower("%1") = "cleaveweapon" then goto REGTEXTSET
    if tolower("%1") = "crashweapon" then goto REGTEXTSET
    if tolower("%1") = "impaleweapon" then goto REGTEXTSET
    if tolower("%1") = "twirlweapon" then goto REGTEXTSET
    if tolower("%1") = "doublestrikeweapon" then goto REGTEXTSET
    if tolower("%1") = "doublestrikeweapon2" then goto REGTEXTSET
    if tolower("%1") = "powershotweapon" then goto REGTEXTSET
    if tolower("%1") = "powershotammo" then goto REGTEXTSET
    
    if tolower("%1") = "summonelement" then goto REGTEXTSET
    if tolower("%1") = "summoningot" then goto REGTEXTSET
    if tolower("%1") = "summonlist" then goto REGLISTSET
    if tolower("%1") = "summoncleave" then goto REGTEXTSET
    if tolower("%1") = "summoncrash" then goto REGTEXTSET
    if tolower("%1") = "summondoublestrike" then goto REGTEXTSET
    
    if tolower("%1") = "killdb" then goto REGYESNOSET
    if tolower("%1") = "killdbspell" then goto REGTEXTSET
    if tolower("%1") = "killdbprepmana" then goto REGTEXTSET
    if tolower("%1") = "killdbaddmana" then goto REGTEXTSET
    if tolower("%1") = "killloot" then goto REGYESNOSET
    if tolower("%1") = "killadvance" then goto REGYESNOSET
    if tolower("%1") = "killretreat" then goto REGYESNOSET
    if tolower("%1") = "killtmfocus" then goto REGYESNOSET
    if tolower("%1") = "killbuffing" then goto REGYESNOSET
    if tolower("%1") = "killtm" then goto REGYESNOSET
    if tolower("%1") = "killtmspell" then goto REGTEXTSET
    if tolower("%1") = "killtmprepmana" then goto REGTEXTSET
    if tolower("%1") = "killtmaddmana" then goto REGTEXTSET
    if tolower("%1") = "killcyclic" then goto REGYESNOSET
    if tolower("%1") = "killcycspell" then goto REGCYCLICSET
    if tolower("%1") = "killcycprepmana" then goto REGTEXTSET
    if tolower("%1") = "killweapon" then goto REGYESNOSET
    if tolower("%1") = "killweapontype" then
    {
      if matchre("%2", "\b(melee|brawl|aimed|thrown)\b") then
      {  
        var setvar killweapontype
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are melee, brawl, aimed, or thrown.
        goto END
      }
    }
    if tolower("%1") = "killweaponcombo" then
    {
      if matchre("%2", "\b(edged|blunt|piercing)\b") then
      {  
        var setvar killweaponcombo
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are edged, blunt, or piercing.
        goto END
      }
    }
    if tolower("%1") = "killthrownverb" then
    {
      if matchre("%2", "\b(lob|throw|hurl)\b") then
      {  
        var setvar killthrownverb
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are lob, throw, or hurl.
        goto END
      }
    }
    if tolower("%1") = "killthrownverb" then goto REGYESNOSET
    if tolower("%1") = "killweaponitem" then goto REGTEXTSET
    if tolower("%1") = "killammo" then goto REGTEXTSET
    if tolower("%1") = "beckonthenaga" then goto REGYESNOSET
    if tolower("%1") = "btnprepmana" then goto REGTEXTSET
    if tolower("%1") = "btnaddmana" then goto REGTEXTSET
    if tolower("%1") = "btnprepwait" then goto REGTEXTSET
    if tolower("%1") = "dragonsbreath" then goto REGYESNOSET
    if tolower("%1") = "dbprepmana" then goto REGTEXTSET
    if tolower("%1") = "dbaddmana" then goto REGTEXTSET
    if tolower("%1") = "dbprepwait" then goto REGTEXTSET
    if tolower("%1") = "blufmorgaraen" then goto REGYESNOSET
    if tolower("%1") = "bgprepmana" then goto REGTEXTSET
    if tolower("%1") = "bgaddmana" then goto REGTEXTSET
    if tolower("%1") = "bgprepwait" then goto REGTEXTSET
    if tolower("%1") = "magneticballista" then goto REGYESNOSET
    if tolower("%1") = "mabprepmana" then goto REGTEXTSET
    if tolower("%1") = "mabaddmana" then goto REGTEXTSET
    if tolower("%1") = "mabprepwait" then goto REGTEXTSET
    
    if tolower("%1") = "spellnum" then goto 1THRU4SET
    if tolower("%1") = "spell1" then goto TEXTSET
    if tolower("%1") = "skill1" then goto MSKILLSET
    if tolower("%1") = "spell1prepmana" then goto TEXTSET 
    if tolower("%1") = "spell1addmana" then goto TEXTSET
    if tolower("%1") = "spell1prepwait" then goto TEXTSET
    if tolower("%1") = "spell1symb" then goto YESNOSET
    if tolower("%1") = "spell1tattoo" then goto YESNOSET
    if tolower("%1") = "spell2" then goto TEXTSET
    if tolower("%1") = "skill2" then goto MSKILLSET
    if tolower("%1") = "spell2prepmana" then goto TEXTSET 
    if tolower("%1") = "spell2addmana" then goto TEXTSET
    if tolower("%1") = "spell2prepwait" then goto TEXTSET
    if tolower("%1") = "spell2symb" then goto YESNOSET
    if tolower("%1") = "spell2tattoo" then goto YESNOSET
    if tolower("%1") = "spell3" then goto TEXTSET
    if tolower("%1") = "skill3" then goto MSKILLSET
    if tolower("%1") = "spell3prepmana" then goto TEXTSET 
    if tolower("%1") = "spell3addmana" then goto TEXTSET
    if tolower("%1") = "spell3prepwait" then goto TEXTSET
    if tolower("%1") = "spell3symb" then goto YESNOSET
    if tolower("%1") = "spell3tattoo" then goto YESNOSET
    if tolower("%1") = "spell4" then goto TEXTSET
    if tolower("%1") = "skill4" then goto MSKILLSET
    if tolower("%1") = "spell4prepmana" then goto TEXTSET 
    if tolower("%1") = "spell4addmana" then goto TEXTSET
    if tolower("%1") = "spell4prepwait" then goto TEXTSET
    if tolower("%1") = "spell4symb" then goto YESNOSET
    if tolower("%1") = "spell4tattoo" then goto YESNOSET
    if tolower("%1") = "spelltm" then goto TEXTSET
    if tolower("%1") = "spelltmprepmana" then goto TEXTSET 
    if tolower("%1") = "spelltmaddmana" then goto TEXTSET
    if tolower("%1") = "spelltmtattoo" then goto YESNOSET
    if tolower("%1") = "paralysis" then goto YESNOSET 
    if tolower("%1") = "paralysisprepmana" then goto TEXTSET 
    if tolower("%1") = "paralysisaddmana" then goto TEXTSET
    if tolower("%1") = "vitheal" then goto YESNOSET 
    if tolower("%1") = "vithealnum" then goto TEXTSET
    if tolower("%1") = "vithealprepmana" then goto TEXTSET 
    if tolower("%1") = "vithealaddmana" then goto TEXTSET
    if tolower("%1") = "heal" then goto YESNOSET 
    if tolower("%1") = "healprepmana" then goto TEXTSET 
    if tolower("%1") = "healaddmana" then goto TEXTSET
    if tolower("%1") = "curedisease" then goto YESNOSET 
    if tolower("%1") = "cdprepmana" then goto TEXTSET 
    if tolower("%1") = "cdaddmana" then goto TEXTSET
    if tolower("%1") = "adcheal" then goto YESNOSET
    if tolower("%1") = "adcdisease" then goto YESNOSET
    if tolower("%1") = "adcpoison" then goto YESNOSET
    if tolower("%1") = "absolution" then goto YESNOSET
    if tolower("%1") = "absolutionprepmana" then goto TEXTSET
    if tolower("%1") = "iztouch" then goto YESNOSET
    if tolower("%1") = "izprepmana" then goto TEXTSET
    if tolower("%1") = "iztimer" then goto TEXTSET
    if tolower("%1") = "piercinggaze" then goto YESNOSET
    if tolower("%1") = "pgprepmana" then goto TEXTSET 
    if tolower("%1") = "pgaddmana" then goto TEXTSET
    if tolower("%1") = "mindshout" then goto YESNOSET 
    if tolower("%1") = "mindshoutprepmana" then goto TEXTSET 
    if tolower("%1") = "mindshoutaddmana" then goto TEXTSET
    if tolower("%1") = "eilliescry" then goto YESNOSET 
    if tolower("%1") = "eilliescryprepmana" then goto TEXTSET 
    if tolower("%1") = "eilliescryaddmana" then goto TEXTSET
    if tolower("%1") = "misdirection" then goto YESNOSET 
    if tolower("%1") = "misdirectionprepmana" then goto TEXTSET 
    if tolower("%1") = "misdirectionaddmana" then goto TEXTSET
    if tolower("%1") = "symbiosisbuff" then goto YESNOSET
    if tolower("%1") = "symbiosisspell" then goto TEXTSET
    if tolower("%1") = "symbiosisprepmana" then goto TEXTSET
    if tolower("%1") = "symbiosisaddmana" then goto TEXTSET
    if tolower("%1") = "symbiosisprepwait" then goto TEXTSET
    if tolower("%1") = "tattoobuff" then goto YESNOSET
    if tolower("%1") = "tattootype" then
    {
      if matchre("%2", "\b(runic|heroic)\b") then
      {
        var setvar tattootype
        eval input tolower(%2)  
        put #var m$varset%setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are heroic, or runic.
        goto END
      }
    }
    if tolower("%1") = "tattoospell" then goto TEXTSET
    if tolower("%1") = "wandbuff" then goto YESNOSET
    if tolower("%1") = "wandbuffnum" then goto TEXTSET
    if tolower("%1") = "wandstorage" then goto TEXTSET
    if tolower("%1") = "wand1item" then goto TEXTSET
    if tolower("%1") = "wand1num" then goto TEXTSET
    if tolower("%1") = "wand1spell" then gosub WANDBUFFSET
    if tolower("%1") = "wand2item" then goto TEXTSET
    if tolower("%1") = "wand2num" then goto TEXTSET
    if tolower("%1") = "wand2item" then goto TEXTSET
    if tolower("%1") = "wand3num" then goto TEXTSET
    if tolower("%1") = "wand3spell" then gosub WANDBUFFSET
    if tolower("%1") = "wand3spell" then gosub WANDBUFFSET
    if tolower("%1") = "wand4item" then goto TEXTSET
    if tolower("%1") = "wand4num" then goto TEXTSET
    if tolower("%1") = "wand4spell" then gosub WANDBUFFSET
    if tolower("%1") = "tattooaddmana" then goto TEXTSET
    if tolower("%1") = "tattooprepwait" then goto TEXTSET
    if tolower("%1") = "spelldb" then goto TEXTSET
    if tolower("%1") = "spelldbtattoo" then goto YESNOSET
    if tolower("%1") = "spelldbprepmana" then goto TEXTSET 
    if tolower("%1") = "spelldbaddmana" then goto TEXTSET
    if tolower("%1") = "spellcnum" then goto 1THRU3SET
    if tolower("%1") = "spellc1" then goto CYCLICSET
    if tolower("%1") = "skillc1" then goto MSKILLSET
    if tolower("%1") = "spellc1prepmana" then goto TEXTSET 
    if tolower("%1") = "spellc2" then goto CYCLICSET
    if tolower("%1") = "skillc2" then goto MSKILLSET
    if tolower("%1") = "spellc2prepmana" then goto TEXTSET 
    if tolower("%1") = "spellc3" then goto CYCLICSET
    if tolower("%1") = "skillc3" then goto MSKILLSET
    if tolower("%1") = "spellc3prepmana" then goto TEXTSET 
    if tolower("%1") = "spellctm" then goto CYCTMSET
    if tolower("%1") = "spellctmprepmana" then goto TEXTSET 
    if tolower("%1") = "spellcdb" then goto CYCDBSET
    if tolower("%1") = "spellcdbprepmana" then goto TEXTSET
    if tolower("%1") = "debilassist" then goto YESNOSET
    if tolower("%1") = "dbanum" then goto TEXTSET
    if tolower("%1") = "dbalist" then goto LISTSET
    if tolower("%1") = "dbaspell1" then goto TEXTSET
    if tolower("%1") = "dbaspell1prepmana" then goto TEXTSET
    if tolower("%1") = "dbaspell1addmana" then goto TEXTSET
    if tolower("%1") = "dbaspell2" then goto TEXTSET
    if tolower("%1") = "dbaspell2prepmana" then goto TEXTSET
    if tolower("%1") = "dbaspell2addmana" then goto TEXTSET
    if tolower("%1") = "dbaspell3" then goto TEXTSET
    if tolower("%1") = "dbaspell3prepmana" then goto TEXTSET
    if tolower("%1") = "dbaspell3addmana" then goto TEXTSET
    if tolower("%1") = "performcyclic" then goto YESNOSET
    if tolower("%1") = "pspellcnum" then goto 1THRU3SET
    if tolower("%1") = "pspellc1" then goto CYCLICSET
    if tolower("%1") = "pskillc1" then goto MSKILLSET
    if tolower("%1") = "pspellc1prepmana" then goto TEXTSET 
    if tolower("%1") = "pspellc2" then goto CYCLICSET
    if tolower("%1") = "pskillc2" then goto MSKILLSET
    if tolower("%1") = "pspellc2prepmana" then goto TEXTSET 
    if tolower("%1") = "pspellc3" then goto CYCLICSET
    if tolower("%1") = "pskillc3" then goto MSKILLSET
    if tolower("%1") = "pspellc3prepmana" then goto TEXTSET
    put #echo mono Invalid option.  .set display all to see a list of options.
    goto END
  }
  else goto MAINHELP

MAINHELP:
  if $traindefaultset != 1 then
	{
	  var traindefaultset 1
	  gosub SETDEFAULTS
	}
  put #echo mono Options:
  put #echo mono .SET <variable> <value> - changes variables
	put #echo mono  .SET DISPLAY ALL  - Displays all variables
	put #echo
  put #echo mono  .SET MODE <value> - Changes variable mode to view, 1 or 2.
  put #echo mono  .SET COPY <variable section> <source> <destination> - Copies variables from the variable section in the value1 mode to the value2 mode.
	put #echo
  put #echo mono  .SET DISPLAY GENERAL - General variables.
  put #echo mono  .SET DISPLAY MOVEMENT
  put #echo mono  .SET DISPLAY LOOT - Loot-related variables.
  put #echo mono  .SET DISPLAY UPKEEP - In-town upkeep variables.
  put #echo
  put #echo mono  .SET DISPLAY COMBAT - Weapon and Armor combat variables.
  put #echo mono  .SET DISPLAY COMBAT2 - Survival and Lore combat variables.
  put #echo mono  .SET DISPLAY NONCOMBAT - Noncombat skills, and movement to move out of combat and train them.
  put #echo mono  .SET DISPLAY GUILD - Guild-specific variables.
  put #echo mono  .SET DISPLAY MAGIC - General magic variables.
  if (($guild != "Barbarian") && ($guild != "Thief")) then
  {
    put #echo mono  .SET DISPLAY SPELL - Spellcasting training and research variables.
	}
	put #echo mono  .SET DISPLAY BUFF  - Magical Buff variables, including wands and tattoos.
	put #echo
	put #echo mono  .SET DISPLAY KILL - Variables for Kill.cmd script.
	put #echo mono  .SET DISPLAY OTHER - Variables for scripts other than Train.cmd.
	put #echo 
	goto END

PRIORSET:
  eval setvar tolower(%1)
  eval input toupper(%2)
  #echo Input: %input
  if matchre("%input", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL|NONE)\b") then
  {  
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono You can't set %setvar to %input!
    exit
  }  

MSKILLSET:
  eval setvar tolower(%1)
  eval input tolower(%2)
  if matchre("%input", "\b(augmentation|utility|warding|sorcery)\b") then
  {  
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono You have to choose either augmentation, utility, or warding!
    goto END
  }  


LEFTRIGHTSET:
  eval setvar tolower(%1)
  eval input toupper(%2) 
  if matchre("%2", "\b(left|right)\b") then
  {  
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono You can't set %2 weapon!
    goto END
  }  

YESNOSET:
  eval setvar tolower(%1)
  eval input toupper(%2) 
  if matchre("%input", "\b(YES|NO)\b") then
  {
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Either yes or no!
    goto END
  }  

REGYESNOSET:
  eval setvar tolower(%1)
  eval input toupper(%2) 
  if matchre("%input", "\b(YES|NO)\b") then
  {
    put #var %setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Either yes or no!
    goto END
  }

TEXTSET:
  eval setvar tolower(%1)
  gosub TEXTSETTRIM
  #echo input: %input
  if (("%input" = "2he") || ("%input" = "2HE")) then var input "2he"
  else eval input1 tolower(%input)
  put #var m$varset%setvar %input
  put #var save
  goto VARDISPLAY

REGTEXTSET:
  eval setvar tolower(%1)
  gosub TEXTSETTRIM
  if ((%"input" = "2he") || ("%input" = "2HE")) then var input "2he"
  else eval input1 tolower(%input)
  put #var %setvar %input
  put #var save
  goto VARDISPLAY

TEXTSETTRIM:
  var input %0
  eval input replace("%input", " ", "|")
  eval remstring element("%input", 0)
  eval input replace("%input", "%remstring|", "")
  eval input replace("%input", "|", " ")
  return

TEXTSETCAPS:
  var setvar %1
  var input1 %2
  var input2 %3
  if_3 then var input %input1 %input2
  else var input %input1
  put #var m$varset%setvar %input
  put #var save
  goto VARDISPLAY


LISTSET:
  var setvar %1 
  var input %2
  if_3 then var input %input %3
  if_4 then var input %input %4
  if_5 then var input %input %5
  if_6 then var input %input %6
  if_7 then var input %input %7
  if_8 then var input %input %8
  if_9 then
  {
    echo String too long!
    exit
  }
  put #var m$varset%setvar %input
  put #var save
  goto VARDISPLAY

REGLISTSET:
  var setvar %1 
  var input %2
  if_3 then var input %input %3
  if_4 then var input %input %4
  if_5 then var input %input %5
  if_6 then var input %input %6
  if_7 then var input %input %7
  if_8 then var input %input %8
  if_9 then
  {
    echo String too long!
    exit
  }
  put #var %setvar %input
  put #var save
  goto VARDISPLAY


0THRU8SET:
  if matchre("%2", "\b(0|1|2|3|4|5|6|7|8)\b") then
  {  
    eval setvar tolower(%1)
    eval input toupper(%2)  
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Only 0 - 8 items are supported!
    goto END
  }
  goto VARDISPLAY
  
0THRU16SET:
  if matchre("%2", "\b(0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16)\b") then
  {  
    eval setvar tolower(%1)
    eval input toupper(%2)  
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Only 0 - 16 items are supported!
    goto END
  }
  goto VARDISPLAY

0THRU34SET:
  if matchre("%2", "\b(0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34)\b") then
  {
    eval setvar tolower(%1)
    eval input1 tolower(%2) 
    var input %input1
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Only 0 - 34 items are supported!
    goto END
  }
  
1THRU60SET:
  if matchre("%2", "\b(0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60)\b") then
  {
    eval setvar tolower(%1)
    eval input1 tolower(%2) 
    var input %input1
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Only 1 - 60 items are supported!
    goto END
  }

1THRU3SET:
  if matchre("%2", "\b(1|2|3)\b") then
  {
    eval setvar tolower(%1)
    eval input1 tolower(%2) 
    var input %input1
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Only 1 - 3 items are supported!
    goto END
  }

1THRU4SET:
  if matchre("%2", "\b(1|2|3|4)\b") then
  {
    eval setvar tolower(%1)
    eval input1 tolower(%2) 
    var input %input1
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Only 1 - 3 items are supported!
    goto END
  }
  
1THRU5SET:
  if matchre("%2", "\b(1|2|3|4|5)\b") then
  {
    eval setvar tolower(%1)
    eval input1 tolower(%2) 
    var input %input1
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Only 1 - 5 items are supported!
    goto END
  }

BUFFSET:
  eval setvar tolower(%1)
  eval input tolower(%2) 
  #if matchre("%input", "%buffs") then
  if contains("%buffs", "|%input|") then
  { 
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Not setup for that buff!
    put #echo mono Valid Buffs: %buffs
    goto END
  }  

WANDBUFFSET:    
  eval setvar tolower(%1)
  eval input tolower(%2) 
  if matchre("%input", "hes|mef|rage|rw|sw|will|wotp") then
  { 
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Not setup for that buff!
    put #echo mono Valid Buffs: hes|mef|rage|rw|sw|will|wotp
    goto END
  }  

OMBUFFSET:
  eval setvar tolower(%1)
  eval input tolower(%2) 
  if matchre("%input", "%ombuffs") then
  { 
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Not setup for that buff!
    put #echo mono Valid Buffs: %ombuffs
    goto END
  } 

ABUFFSET:
  eval setvar tolower(%1)
  eval input tolower(%2) 
  if matchre("%input", "%abuffs") then
  { 
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Not setup for that abuff!
    put #echo mono Valid ABuffs: %abuffs
    goto END
  }

CYCTMSET:
  eval setvar tolower(%1)
  eval input1 tolower(%2)
  eval input2 tolower(%3)
  if 3 then var input %input1 %input2
  else var input %input1 
  if contains("%cyctms", "|%input|") then
  { 
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Not setup for that cyclic TM!
    put #echo mono Valid Cyclics: %cyctms
    goto END
  }  

CYCDBSET:
  eval setvar tolower(%1)
  eval input tolower(%2) 
  if contains("%cycdbs", "|%input|") then
  { 
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Not setup for that cyclic DB!
    put #echo mono Valid Cyclics: %cycdbs
    goto END
  }  

CYCLICSET:
  eval setvar tolower(%1)
  eval input tolower(%2) 
  if contains("%cyclics", "|%input|") then
  { 
    put #var m$varset%setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Not setup for that cyclic!
    put #echo mono Valid Cyclics: %cyclics
    goto END
  }  


REGCYCLICSET:
  eval setvar tolower(%1)
  eval input tolower(%2) 
  if contains("%allcyclics", "|%input|") then
  { 
    put #var %setvar %input
    put #var save
    goto VARDISPLAY
  }
  else
  {
    put #echo mono Not setup for that cyclic!
    put #echo mono Valid Cyclics: %cyclics
    goto END
  } 


VARDISPLAY:
  put #echo mono Changed %setvar to %input.
  goto END
  
DISPLAY:
  gosub SETDEFAULTS
  if 2 then
  {
    var varmatch 0
    if tolower("%2") = "all" then
    {
      gosub DISPLAYHEADER
      gosub DISPLAYGENERAL
      gosub DISPLAYMOVEMENT
      gosub DISPLAYLOOT
      gosub DISPLAYUPKEEP
      gosub DISPLAYNONCOMBAT
      gosub DISPLAYCOMBAT
      gosub DISPLAYCOMBAT2
      gosub DISPLAYGUILD
      gosub DISPLAYMAGIC
      if (($guild != "Barbarian") && ($guild != "Thief")) then
      {
        gosub DISPLAYSPELL
        var buffloop 0
        gosub DISPLAYBUFF
        var buffloop 0
      }
      gosub DISPLAYKILL
      gosub DISPLAYOTHER
      goto END
    }
        
    gosub DISPLAYHEADER
    if tolower("%2") = "general" then gosub DISPLAYGENERAL
    if tolower("%2") = "movement" then gosub DISPLAYMOVEMENT
    if tolower("%2") = "loot" then gosub DISPLAYLOOT
    if tolower("%2") = "upkeep" then gosub DISPLAYUPKEEP
    if tolower("%2") = "combat" then gosub DISPLAYCOMBAT
    if tolower("%2") = "combat2" then gosub DISPLAYCOMBAT2
    if tolower("%2") = "noncombat" then gosub DISPLAYNONCOMBAT
    if tolower("%2") = "guild" then
    {
      var buffloop 0
      gosub DISPLAYGUILD
    }
    if tolower("%2") = "magic" then gosub DISPLAYMAGIC
    if tolower("%2") = "spell" then gosub DISPLAYSPELL
    if tolower("%2") = "buff" then
    {
      var buffloop 0
      gosub DISPLAYBUFF
    }
    if tolower("%2") = "kill" then gosub DISPLAYKILL
    if tolower("%2") = "other" then gosub DISPLAYOTHER
    if %varmatch = 0 then gosub MAINHELP
    goto END
  }
  else
  {
    gosub MAINHELP
    goto END
  }
  
DISPLAYHEADER:
	put #echo
	put #echo mono ================================================
	put #echo mono ================== TRAINING! ===================
	put #echo mono ================================================
	put #echo
	return
	
DISPLAYGENERAL:
	var varmatch 1
	put #echo mono =================== General ====================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ================================================
	put #echo
	gosub REGOUTPUT CharacterName
	gosub REGOUTPUT Guild
	gosub REGOUTPUT Circle
	put #echo
	put #echo mono DeathAction: $deathaction     (logout or alert)
	put #echo mono DisconnectAction: $disconnectaction     (reconnect or quit)
	put #echo
	gosub REGOUTPUT AlertWindow
  gosub REGOUTPUT HealthAlerts HealthAlertNum
	gosub REGOUTPUT NerveAlerts
	gosub REGOUTPUT SorceryAlerts
	gosub REGOUTPUT InventoryAlerts
	put #echo
	gosub REGOUTPUT SpeechAlerts
	gosub REGOUTPUT EmoteAlerts
	gosub REGOUTPUT GMAlerts
	gosub REGOUTPUT PvPAlerts
	gosub REGOUTPUT PvPStealthAlerts
	gosub REGOUTPUT ArrivalAlerts
	put #echo
  gosub REGOUTPUT ParanoiaAlerts
  put #echo
	gosub OUTPUT Almanac AlmanacItem
	gosub OUTPUT AlmanacAlerts
	gosub OUTPUT EJournal EJournalItem
	gosub OUTPUT EJournalStates
	gosub OUTPUT Tarantula TarantulaItem
	gosub OUTPUT TarantulaSkill1 TarantulaSkill2
	put #echo
  put #echo Gray mono -----MultiTrain - Training different variable set sin multiple combat areas-----
  put #echo Gray mono *** NOTE: MULTITRAIN CURRENTLY ONLY WORKS WITH MODES 1 AND 2! ***
  put #echo Gray mono Valid weapon skills to trigger off of: brawl, se, le, the, sb, lb, thb, stave, pole, lt, ht, bow, xbow, sling, parry
  put #echo Gray mono Valid magic skills to trigger off of: debil, tm, sorcery
  put #echo Gray mono Valid lore skills to trigger off of:  empathy, tactics
  put #echo Gray mono Valid survival skills to trigger off of: backstab, evasion, stealth, thanatology, skinning, firstaid
  put #echo Gray mono Valid armor skills to trigger off of: brigandine, chain, defending, light, plate, shield
  put #echo
  put #echo mono Mode1List: $mode1list     (the list of skills checked, separated by |)
  put #echo mono Mode1Step: $mode1step     (the number of mindstates to increase before moving to the other mode)
  put #echo mono Mode1Priority: $mode1priority     (if YES, script will switch back to mode 1 if any skills hit 0)
  put #echo
  put #echo mono Mode2List: $mode2list     (the list of skills checked, separated by |)
  put #echo mono Mode2Step: $mode2step     (the number of mindstates to increase before moving to the other mode)
  put #echo mono Mode2Priority: $mode2priority     (if YES, script will switch back to mode 1 if any skills hit 0)
  put #echo
  return

DISPLAYUPKEEP:
  var varmatch 1
  put #echo mono  =================== Upkeep ====================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ===============================================
	put #echo
	gosub OUTPUT AutoUpkeep
	gosub OUTPUT AUOnHealth AUHealthNum
  gosub OUTPUT AUOnBleed
  gosub OUTPUT AUOnNerves
  gosub OUTPUT AUOnBurden AUBurdenNum
  gosub OUTPUT AUOnAmmo
  gosub OUTPUT AUOnBoxes
	gosub OUTPUT MinMoney
	gosub OUTPUT Exchange
	put #echo
	gosub OUTPUT AutoPath (yes|no|premium)
	gosub OUTPUT Repair
	gosub OUTPUT RepairList
  gosub OUTPUT BundleSell
  gosub OUTPUT BundleVault
  gosub OUTPUT VaultMove
  gosub OUTPUT BundleRope
  gosub OUTPUT GemSell
  gosub OUTPUT GemVault
  gosub OUTPUT GemPouches
  gosub OUTPUT NuggetSell
  gosub OUTPUT BarSell
  put #echo
  gosub OUTPUT AmmoBuy
  gosub OUTPUT AmmoBuyList
  gosub OUTPUT AmmoContainer
  gosub OUTPUT AmmoMin
  if $guild = "Cleric" then gosub OUTPUT Incense
  put #echo
  gosub OUTPUT LockpickBuy
  gosub OUTPUT LockpickStacker (Required)
  gosub OUTPUT LockpickItem
  gosub OUTPUT BoxPopping
  gosub OUTPUT DismantleType
  put #echo
	gosub OUTPUT AppFocus
  gosub OUTPUT AppFocusItem
	gosub OUTPUT SpiderFeed
  return

DISPLAYLOOT:
	var varmatch 1
	put #echo mono  =================== Loot ====================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ===============================================
  put #echo mono Storage: $m$varsetstorage
  put #echo mono LootAlerts: $m$varsetlootalerts
  put #echo mono LootType: $m$varsetloottype     (treasure|boxes|equipment|goods|all)
	put #echo mono LootAllDead: $m$varsetlootalldead     (not group-hunting friendly)  
	gosub OUTPUT CollectBoxes
	gosub OUTPUT BoxStorage
	gosub OUTPUT CollectCoin	
	gosub OUTPUT CollectGem
	gosub OUTPUT SaveGwethStones
	gosub OUTPUT CollectMaps
	gosub OUTPUT CollectNuggets
	gosub OUTPUT CollectBars
	gosub OUTPUT CollectMaterials
	gosub OUTPUT CollectScroll
	put #echo mono MiscKeepList: $m$varsetmisckeeplist    (list of loot items to be kept, separated by the | character)
	put #echo
  gosub OUTPUT Skinning
	gosub OUTPUT Arrange
  gosub OUTPUT ArrangeForPart
  gosub OUTPUT SkinAfterLock
  gosub OUTPUT DropSkins
  gosub OUTPUT Dissect
  return

DISPLAYCOMBAT:
	var varmatch 1
	put #echo mono  =================== Combat ====================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ===============================================
	put #echo
	gosub OUTPUT Weapons
	put #echo mono StanceMain: $m$varsetstancemain     (a primary stance for combat that involves all 3 defenses)
  gosub OUTPUT LowestFirst
  put #echo mono KillAfterLock: $m$varsetkillafterlock     (continues killing creatures after weapons are locked)
	gosub OUTPUT WeaponNum
	gosub OUTPUT Weapon1 Weapon8
	gosub OUTPUT Weapon2 Weapon9
	gosub OUTPUT Weapon3 Weapon10
	gosub OUTPUT Weapon4 Weapon11
	gosub OUTPUT Weapon5 Weapon12
	gosub OUTPUT Weapon6 Weapon13
  gosub OUTPUT Weapon7 Weapon14
  gosub OUTPUT Offhand
	gosub OUTPUT ACMs
	put #echo
	gosub OUTPUT SEWeapon SEOffhand
	gosub OUTPUT SECombo
	gosub OUTPUT LEWeapon LEOffhand
  gosub OUTPUT THEWeapon
  gosub OUTPUT SBWeapon SBOffhand
	gosub OUTPUT LBWeapon LBOffhand
  gosub OUTPUT THBWeapon
	gosub OUTPUT StaveWeapon StaveOffhand
	gosub OUTPUT StaveWorn StaveTied
  gosub OUTPUT PoleWeapon PoleCombo
  gosub OUTPUT PoleWorn PoleTied
  put #echo
  put #echo mono Swappables: (Text should match exactly the weapon name in other variables, ristes should always be two words to prevent confusion between riste types).
	gosub OUTPUT BastardSwordItem
	gosub OUTPUT BarMaceItem
	gosub OUTPUT HolyIconItem
	gosub OUTPUT RisteItem
	gosub OUTPUT HHRisteItem
	put #echo
	gosub OUTPUT LTWeapon LTOffhand
	gosub OUTPUT LTBond LTVerb
	gosub OUTPUT HTWeapon HTOffhand 
  gosub OUTPUT HTBond HTVerb
	put #echo
	gosub OUTPUT XbowWeapon XbowAmmo
	gosub OUTPUT XbowWorn
	gosub OUTPUT BowWeapon BowAmmo
	gosub OUTPUT BowWorn
	gosub OUTPUT SlingWeapon SlingAmmo
	gosub OUTPUT Collectammo
	put #echo
	if $guild = "Warrior Mage" then
	{
	  gosub OUTPUT PlatRing
	  gosub OUTPUT PlatRingItem
	}
	put #echo
  gosub OUTPUT ArmorCheck
  gosub OUTPUT ShieldItem
  gosub OUTPUT ParryStickItem
  gosub OUTPUT ArmorNum
  gosub OUTPUT Armor1Item
  gosub OUTPUT Armor2Item
  gosub OUTPUT Armor3Item
  gosub OUTPUT Armor4Item
  gosub OUTPUT Armor5Item
  gosub OUTPUT Armor6Item
  gosub OUTPUT KnucklesItem
  put #echo
	return

DISPLAYCOMBAT2:
  var varmatch 1
  put #echo mono  ================== Combat 2 ===================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ===============================================
  put #echo mono NonComDelay: $m$varsetnoncomdelay    (delays skills that require retreating until after weapons have advanced sufficiently)
  put #echo mono Appraise: $m$varsetappraise
  put #echo mono AppraiseTarget: $m$varsetappraisetarget     (bundle, or creature)
  put #echo mono AppraiseTimer: $m$varsetappraisetimer     (in seconds, min is 75)
  put #echo mono AppSaveItem: $m$varsetappsaveitem     (none, tight, or lumpy, only relevant if AppraiseTarget is bundle.) 
  put #echo mono AppSaveItemStorage: $m$varsetappsaveitemstorage     (must be different from main storage, only relevant if AppraiseTarget is bundle.)
  put #echo mono Hunting: $m$varsethunting
  put #echo mono HuntingTimer: $m$varsethuntingtimer     (in seconds, minimum is 75)
  put #echo mono Outdoor: $m$varsetoutdoor
  put #echo mono OutdoorTimer: $m$varsetoutdoortimer     (in seconds, minimum is 0)
  put #echo mono CollectItem: $m$varsetcollectitem
  gosub OUTPUT Stealth
  gosub OUTPUT Tactics
  gosub OUTPUT TacticsWeapons
  gosub OUTPUT Recall
  gosub OUTPUT Teaching
  put #echo mono TeachSkill: $m$varsetteachskill       (must equal the full text of the skill)
  gosub OUTPUT TeachTargets
  put #echo
  put #echo mono Compendium: $m$varsetcompendium
  put #echo mono CompendiumTimer: $m$varsetcompendiumtimer     (in seconds, minimum is 0)
  put #echo mono Textbook: $m$varsettextbook
  put #echo mono TextbookTimer: $m$varsettextbooktimer     (in seconds, minimum is 0)
  put #echo mono TextbookItem: $m$varsettextbookitem
  put #echo mono TextbookList: $m$varsettextbooklist
  put #echo
  put #echo mono LocksmithBox: $m$varsetlocksmithbox
  put #echo mono LocksmithBoxTimer: $m$varsetlocksmithboxtimer     (in seconds, minimum is 0)
  put #echo mono LocksmithBoxItem: $m$varsetlocksmithboxitem
  put #echo mono SkinFATrainer: $m$varsetskinfatrainer
  put #echo mono SkinFATrainerTimer: $m$varsetskinfatrainertimer     (in seconds, minimum is 0)
  put #echo mono SkinFATrainerItem: $m$varsetskinfatraineritem
  put #echo mono Windboard: $m$varsetwindboard
  put #echo mono WindboardTimer: $m$varsetwindboardtimer     (in seconds, minimum is 0)
  put #echo mono WindboardCharge: $windboardcharge
  put #echo mono WindboardTrick: $m$varsetwindboardtrick
  put #echo
  return

DISPLAYNONCOMBAT:
  var varmatch 1
	put #echo mono  =================== Noncombat ====================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ===============================================
  put #echo
  gosub OUTPUT NonCombat
	put #echo
  gosub OUTPUT Burgle
	gosub OUTPUT BurgleStorage
  put #echo mono BurgleTool: $m$varsetburgletool    (pick, rope, or both, which chooses tool based on learningrates.)  
  gosub OUTPUT BurglePickItem BurglePickWorn
  gosub OUTPUT BurgleRopeItem
  gosub OUTPUT BurgleMaxGrabs
  gosub OUTPUT BurgleLoot
  #gosub OUTPUT BurgleKeepList
  gosub OUTPUT BurglePawn
  #if $guild = "Thief" then gosub OUTPUT BurgleThiefBin
  put #echo
  gosub OUTPUT Perform
  gosub OUTPUT PerformCyclic
	if tolower("$performcyclic") = "yes" then
  {
    put #echo
    put #echo mono PSpellCNum: $m$varsetpspellcnum
    if $pspellcnum > 0 then put #echo mono PSpellC1: $m$varsetpspellc1
    if $pspellcnum > 0 then put #echo mono PSkillC1: $m$varsetpskillc1
    if $pspellcnum > 0 then put #echo mono PSpellC1PrepMana: $m$varsetpspellc1prepmana
    if $pspellcnum > 1 then put #echo mono PSpellC2: $m$varsetpspellc2
    if $pspellcnum > 1 then put #echo mono PSkillC2: $m$varsetpskillc2
    if $pspellcnum > 1 then put #echo mono PSpellC2PrepMana: $m$varsetpspellc2prepmana
    if $pspellcnum > 2 then put #echo mono PSpellC3: $m$varsetpspellc3
    if $pspellcnum > 2 then put #echo mono PSkillC3: $m$varsetpskillc3
    if $pspellcnum > 2 then put #echo mono PSpellC3PrepMana: $m$varsetpspellc3prepmana
    put #echo
  }
  gosub OUTPUT Instrument
  gosub OUTPUT InstrumentWorn
  gosub OUTPUT InstrumentHands
  gosub OUTPUT InstrumentAssess
  gosub OUTPUT InstClean InstCleanCloth
  gosub OUTPUT SongType
  gosub OUTPUT ClimbingRope ClimbingRopeName
  gosub OUTPUT ClimbingRopeHum HumSong
  put #echo
  put #echo mono NonComSanowret: $m$varsetnoncomsanowret
  put #echo
	gosub OUTPUT Research
	gosub OUTPUT GAFPrepMana GAFAddMana
  put #echo mono ResearchNum: $m$varsetresearchnum
  gosub OUTPUT ResearchType1 ResearchType2
  gosub OUTPUT ResearchType3 ResearchType4
  gosub OUTPUT ResearchType5
  put #echo
	return

DISPLAYMAGIC:
  var varmatch 1
	put #echo mono  =================== Magic ====================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ===============================================
	put #echo
  if (($guild != "Barbarian") && ($guild != "Thief")) then
  {
    put #echo mono Attune: $m$varsetattune
    put #echo mono MinConcentration: $m$varsetminconcentration
    put #echo mono MinMana: $m$varsetminmana
    put #echo mono CastingThrottle $m$varsetcastingthrottle     (In seconds, 0 is the minimum.  Amount of time to wait after a cast before checking variables to cast again.)
    put #echo mono StraightCast: $m$varsetstraightcast
    put #echo mono Harnessing: $m$varsetharnessing
    put #echo mono HarnessMax: $m$varsetharnessmax
    put #echo mono Cambrinth: $m$varsetcambrinth
    put #echo mono ChargeMax: $m$varsetchargemax
    put #echo mono DedicatedCambrinth: $m$varsetdedicatedcambrinth
    put #echo mono CambItems: $m$varsetcambitems
    put #echo mono Cambitem1: $m$varsetcambitem1
    put #echo mono Cambitem1mana: $m$varsetcambitem1mana
    put #echo mono Cambitem1Worn: $m$varsetcambitem1worn
    put #echo mono Cambitem2: $m$varsetcambitem2
    put #echo mono Cambitem2mana: $m$varsetcambitem2mana
    put #echo mono Cambitem2Worn: $m$varsetcambitem2worn
    put #echo mono RitualFocus: $m$varsetritualfocus
    put #echo mono RitualFocusWorn: $m$varsetritualfocusworn
    put #echo mono RitualFocusStorage: $m$varsetritualfocusstorage
    put #echo mono RitualFocusContainer: $m$varsetritualfocuscontainer
    put #echo mono TMFocus: $m$varsettmfocus
    put #echo mono TMFocusItem: $m$varsettmfocusitem
    put #echo mono TMFocusWorn: $m$varsettmfocusworn
    put #echo mono TMFocusStorage: $m$varsettmfocusstorage
    put #echo mono TMFocusContainer: $m$varsettmfocuscontainer
    put #echo mono TMDBPrior: $m$varsettmdbprior
  }
  put #echo mono CombatSanowret: $m$varsetcombatsanowret
  put #echo mono SanowretItem: $m$varsetsanowretitem
  return

DISPLAYBUFF:
  var varmatch 1
  put #echo mono  =================== Buffs ====================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ===============================================
  put #echo
  gosub OUTPUT Buff
  gosub OUTPUT BuffBuffer
  gosub OUTPUT BuffNum
  var buffloop 0
  gosub DISPLAYBUFFLOOP
  echo
  gosub OUTPUT SymbiosisBuff
  gosub OUTPUT SymbiosisSpell
  gosub OUTPUT SymbiosisPrepMana
  gosub OUTPUT SymbiosisAddMana
  gosub OUTPUT SymbiosisPrepWait
  echo
  gosub OUTPUT TattooBuff
  gosub OUTPUT TattooType
  gosub OUTPUT TattooSpell
  gosub OUTPUT TattooAddMana
  gosub OUTPUT TattooPrepWait
  put #echo
  gosub OUTPUT WandBuff
  gosub OUTPUT WandStorage
  gosub OUTPUT WandBuffNum
  gosub OUTPUT Wand1Spell Wand2Spell
  gosub OUTPUT Wand1Num Wand2num
  gosub OUTPUT Wand1Item Wand2Item
  gosub OUTPUT Wand3Spell Wand4Spell
  gosub OUTPUT Wand3Num Wand4num
  gosub OUTPUT Wand3Item Wand4Item
  if $guild != "Bard" then
  {
    echo
    put #echo mono Misdirection: $m$varsetmisdirection
    put #echo mono MisdirectionPrepMana: $m$varsetmisdirectionprepmana
    put #echo mono MisdirectionAddMana: $m$varsetmisdirectionaddmana
  }
  put #echo
  gosub OUTPUT ABuff
  gosub OUTPUT ABuffNum
  var buffloop 0
  gosub DISPLAYABUFFLOOP
  put #echo
  gosub OUTPUT GBuff
  gosub OUTPUT GBuffNum
  gosub OUTPUT GBuffTarget
  var buffloop 0
  gosub DISPLAYGBUFFLOOP
  return

DISPLAYBUFFLOOP:
  math buffloop add 1
  if %buffloop > $m$varsetbuffnum then return
  put #echo mono Buff%buffloop: $m$varsetbuff%buffloop
  put #echo mono Buff%buffloopPrepMana: $m$varsetbuff%buffloopprepmana
  if contains("%rituals", "|$m$varsetbuff%buffloop|") then
  else put #echo mono Buff%buffloopAddMana: $m$varsetbuff%buffloopaddmana
  put #echo mono Buff%buffloopPrepWait: $m$varsetbuff%buffloopprepwait
  goto DISPLAYBUFFLOOP
  
DISPLAYABUFFLOOP:
  math buffloop add 1
  if %buffloop > $m$varsetabuffnum then return
  put #echo mono ABuff%buffloop: $m$varsetabuff%buffloop
  put #echo mono ABuff%buffloopPrepMana: $m$varsetabuff%buffloopprepmana
  if contains("%rituals", "|$m$varsetabuff%buffloop|") then
  else put #echo mono ABuff%buffloopAddMana: $m$varsetabuff%buffloopaddmana
  goto DISPLAYABUFFLOOP

DISPLAYGBUFFLOOP:
  math buffloop add 1
  if %buffloop > $m$varsetgbuffnum then return
  put #echo mono GBuff%buffloop: $m$varsetgbuff%buffloop
  put #echo mono GBuff%buffloopPrepMana: $m$varsetgbuff%buffloopprepmana
  if contains("%rituals", "|$m$varsetgbuff%buffloop|") then
  else put #echo mono GBuff%buffloopAddMana: $m$varsetgbuff%buffloopaddmana
  goto DISPLAYGBUFFLOOP
 
DISPLAYSPELL:
  var varmatch 1
  put #echo mono  =================== Spells ====================
  put #echo mono =================== Mode: $varset ===================
	put #echo mono ===============================================
  put #echo
  gosub OUTPUT Spell
  gosub OUTPUT SpellNum
  gosub OUTPUT Spell1 Spell2
  gosub OUTPUT Skill1 Skill2
  gosub OUTPUT Spell1PrepMana Spell2PrepMana
  gosub OUTPUT Spell1Addmana Spell2AddMana
  gosub OUTPUT Spell1PrepWait Spell2PrepWait
  gosub OUTPUT Spell1Symb Spell2Symb
  gosub OUTPUT Spell1Tattoo Spell2Tattoo
  put #echo
  gosub OUTPUT Spell3 Spell4
  gosub OUTPUT Skill3 Skill4
  gosub OUTPUT Spell3PrepMana Spell4PrepMana
  gosub OUTPUT Spell3Addmana Spell4AddMana
  gosub OUTPUT Spell3PrepWait Spell4PrepWait
  gosub OUTPUT Spell3Symb Spell4Symb
  gosub OUTPUT Spell3Tattoo Spell4Tattoo
  put #echo
  gosub OUTPUT TM Debil
  gosub OUTPUT TMSkill DebilSkill
  gosub OUTPUT SpellTM SpellDB
  gosub OUTPUT SpellTMPrepMana SpellDBPrepMana
  gosub OUTPUT SpellTMAddMana SpellDBAddMana
  gosub OUTPUT SpellTMPrepWait SpellDBPrepWait
  gosub OUTPUT SpellTMTattoo SpellDBTattoo
  put #echo
  gosub OUTPUT Cyclic
  gosub OUTPUT CyclicBuff
  gosub OUTPUT SpellCNum
  gosub OUTPUT SpellC1 SpellC2
  gosub OUTPUT SkillC1 SkillC2
  gosub OUTPUT SpellC1PrepMana SpellC2PrepMana
  gosub OUTPUT SpellC3
  gosub OUTPUT SkillC3
  gosub OUTPUT SpellC3PrepMana
  put #echo
  gosub OUTPUT CycTM CycDebil
  gosub OUTPUT SpellCTM SpellCDB
  gosub OUTPUT SpellCTMPrepMana SpellCDBPrepMana
  put #echo
  gosub OUTPUT DebilAssist
  gosub OUTPUT DBANum
  #put #echo mono DBAPause: $m$varsetdbapause     (the pause between casts of debilitation spells, in seconds)
  gosub OUTPUT DBAList
  gosub OUTPUT DBASpell1 DBASpell2
  gosub OUTPUT DBASpell1PrepMana DBASpell2PrepMana
  gosub OUTPUT DBASpell1AddMana DBASpell2AddMana
  gosub OUTPUT DBASpell3
  gosub OUTPUT DBASpell3PrepMana
  gosub OUTPUT DBASpell3AddMana
  put #echo
  return

DISPLAYGUILD:
  var varmatch 1
  if %buffloop = 0 then
  {
    put #echo
    put #echo mono  =================== Guild ====================
    put #echo mono =================== Mode: $varset ===================
	  put #echo mono ===============================================
	  put #echo
    put #echo mono Guild: $guild
    if $guild = "Barbarian" then
    {
      gosub OUTPUT DualLoad
      gosub OUTPUT Warhorn WarhornItem
      gosub OUTPUT Whirlwind
      put #echo
      gosub OUTPUT Expertise
      gosub OUTPUT ExpAccuracy
      gosub OUTPUT ExpDamage
      put #echo
      put #echo mono MinInnerFire: $m$varsetmininnerfire     (minimum inner fire to start a berserk or meditation.)
      put #echo
      put #echo mono Conditional Abilities
      gosub OUTPUT BerserkAva AvaFatigue
      gosub OUTPUT BerserkFamine FamineVit
      gosub OUTPUT MeditateStaunch
      put #echo
      gosub OUTPUT BerserkBlizzard
      gosub OUTPUT BerserkCyclone
      gosub OUTPUT BerserkDrought
      gosub OUTPUT BerserkEarthquake
      gosub OUTPUT BerserkFlashflood
      gosub OUTPUT BerserkHurricane
      gosub OUTPUT BerserkLandslide LandslideTraining
      gosub OUTPUT BerserkTornado TornadoTraining
      gosub OUTPUT BerserkTsunami
      put #echo mono TsunamiBackup $m$varsettsunamibackup     (the weapon Tsunami will use to activate with if you otherwise have no acceptable weapon in hand)
      gosub OUTPUT BerserkVolcano
      gosub OUTPUT BerserkWildfire
      put #echo
      gosub OUTPUT BearForm
      gosub OUTPUT BuffaloForm
      gosub OUTPUT DragonForm
      gosub OUTPUT EagleForm
      gosub OUTPUT MonkeyForm
      gosub OUTPUT OwlForm
      gosub OUTPUT PantherForm
      gosub OUTPUT PiranhaForm
      gosub OUTPUT PythonForm
      gosub OUTPUT WolverineForm
      put #echo
      gosub OUTPUT MeditateBastion
      gosub OUTPUT MeditateContemplation
      gosub OUTPUT MeditateSerenity
      gosub OUTPUT MeditateTenacity
      put #echo
      gosub OUTPUT RoarAnger
      gosub OUTPUT RoarEmbrace
      gosub OUTPUT RoarKuniyo
      gosub OUTPUT RoarRage
      gosub OUTPUT RoarScreech
      gosub OUTPUT RoarShriek
      gosub OUTPUT RoarWail
    }
    if $guild = "Bard" then
    {
      put #echo mono WhistlePiercing: $m$varsetwhistlepiercing
      put #echo mono MoveWhistle: $m$varsetmovewhistle
      put #echo mono MoveScream: $m$varsetmovescream
      put #echo mono EilliesCry: $m$varseteilliescry
      put #echo mono EilliesCryPrepMana: $m$varseteilliescryprepmana
      put #echo mono EilliesCryAddMana: $m$varseteilliescryaddmana
      put #echo mono Misdirection: $m$varsetmisdirection
      put #echo mono MisdirectionPrepMana: $m$varsetmisdirectionprepmana
      put #echo mono MisdirectionAddMana: $m$varsetmisdirectionaddmana
    }
    if $guild = "Cleric" then
    {
      put #echo mono Theurgy: $m$varsettheurgy
      put #echo mono Pray: $m$varsetpray
      put #echo mono PrayDeity: $m$varsetpraydeity
      put #echo mono AnloralPin: $m$varsetanloralpin
      put #echo mono AnloralPinItem: $m$varsetanloralpinitem    
      put #echo mono PilgrimBadge: $m$varsetpilgrimbadge
      put #echo mono PilgrimBadgeitem: $m$varsetpilgrimbadgeitem
      put #echo mono MeraudCommune: $m$varsetmeraudcommune
      put #echo mono ElunedCommune: $m$varsetelunedcommune
      put #echo mono TamsineCommune: $m$varsettamsinecommune
      put #echo mono Recite: $m$varsetrecite
      put #echo mono Dance: $m$varsetdance
      put #echo mono PrayerMat: $m$varsetprayermat
      put #echo mono PrayerMatItem: $m$varsetprayermatitem
      put #echo mono BlessDelay: $m$varsetblessdelay
      echo
      put #echo mono DirtStacker: $m$varsetdirtstacker
      put #echo mono DirtStackerItem: $m$varsetdirtstackeritem
      put #echo mono Lighter: $m$varsetlighter
      put #echo mono LighterItem: $m$varsetlighteritem
      put #echo mono WaterContainer: $m$varsetwatercontainer
      echo
      put #echo mono HYHCast: $m$varsethyhcast     (coz, male, male offense, male defense)
      echo
      put #echo mono OsrelMeraud: $m$varsetosrelmeraud
      put #echo mono OMPrepMana: $m$varsetomprepmana
      put #echo mono OMAddmana: $m$varsetomaddmana
      put #echo mono OMBuffNum: $m$varsetombuffnum
    }

    if $guild = "Empath" then
    {
      put #echo mono AvoidShock: $m$varsetavoidshock
      put #echo mono PercHealth: $m$varsetperchealth
      put #echo mono Manipulate: $m$varsetmanipulate
      put #echo mono ManipNum: $m$varsetmanipnum
      put #echo mono Paralysis: $m$varsetparalysis
      put #echo mono ParalysisPrepMana: $m$varsetparalysisprepmana
      put #echo mono ParalysisAddMana: $m$varsetparalysisaddmana
      put #echo mono VitHeal: $m$varsetvitheal
      put #echo mono VitHealPrepMana: $m$varsetvithealprepmana
      put #echo mono VitHealAddMana: $m$varsetvithealaddmana
      put #echo mono VitHealNum: $m$varsetvithealnum 
      put #echo mono Heal: $m$varsetheal
      put #echo mono HealPrepMana: $m$varsethealprepmana
      put #echo mono HealAddMana: $m$varsethealaddmana
      put #echo mono CureDisease: $m$varsetcuredisease
      put #echo mono CDPrepMana: $m$varsetcdprepmana
      put #echo mono CDAddMana: $m$varsetcdaddmana
      put #echo mono ADCHeal: $m$varsetadcheal
      #put #echo mono ADCDisease: $m$varsetadcdisease
      #put #echo mono ADCPOison: $m$varsetadcpoison
      put #echo mono Absolution: $m$varsetabsolution
      put #echo mono AbsolutionPrepMana: $m$varsetabsolutionprepmana
      put #echo mono IZTouch: $m$varsetiztouch
      put #echo mono IZPrepMana: $m$varsetizprepmana
      put #echo mono IZTimer: $m$varsetiztimer    (in seconds, minimum is 0)
    }
    if $guild = "Moon Mage" then
    {
      put #echo mono Astro: $m$varsetastro
      put #echo mono AstroTimer: $m$varsetastrotimer     (in seconds, minimum is 0)
      put #echo mono PredictionTool: $m$varsetpredictiontool
      put #echo mono PredictionToolItem: $m$varsetpredictiontoolitem
      gosub OUTPUT TKTItem
      gosub OUTPUT ShadowlingNoun
      put #echo mono PiercingGaze: $m$varsetpiercinggaze
      put #echo mono PGPrepMana: $m$varsetpgprepmana
      put #echo mono PGAddMana: $m$varsetpgaddmana
      put #echo mono MindShout: $m$varsetmindshout
      put #echo mono MindShoutPrepMana: $m$varsetmindshoutprepmana
      put #echo mono MindShoutAddMana: $m$varsetmindshoutaddmana
      put #echo
      put #echo mono BurgleRF: $m$varsetburglerf
      put #echo mono BurgleRFDelay: $m$varsetburglerfdelay
    }
    if $guild = "Necromancer" then
    {
      put #echo mono NecroState: $m$varsetnecrostate
      put #echo mono NecroSafety: $m$varsetnecrosafety
      put #echo mono NecroWhitelist: $m$varsetnecrowhitelist
      put #echo mono RiteofGrace: $m$varsetriteofgrace
      put #echo mono ROGPrepMana: $m$varsetrogprepmana
      put #echo mono ROGCycle: $m$varsetrogcycle
      put #echo mono Devour: $m$varsetdevour
      put #echo mono DevourPrepMana: $m$varsetdevourprepmana
      put #echo mono DevourAddMana: $m$varsetdevouraddmana
      put #echo mono SiphonVit: $m$varsetsiphonvit
      put #echo mono SiphonVitPrepMana: $m$varsetsiphonvitprepmana
      put #echo mono SiphonVitAddMana: $m$varsetsiphonvitaddmana
      if $necrostate != "redeemed" then put #echo mono SiphonVitNum: $m$varsetsiphonvitnum
      put #echo
      put #echo mono Preserve: $m$varsetpreserve
      put #echo mono Dissect: $m$varsetdissect
      put #echo mono Harvest: $m$varsetharvest
      put #echo mono HarvestStore: $m$varsetharveststore
      put #echo mono HarvestStoreNum: $m$varsetharveststorenum
      put #echo mono EOTBRel: $m$varseteotbrel
      put #echo
      put #echo mono BurgleEOTB: $m$varsetburgleeotb
      put #echo mono BurgleEOTBDelay: $m$varsetburgleeotbdelay
    }
    if $guild = "Paladin" then
    {
      put #echo mono Smite: $m$varsetsmite
      put #echo
      put #echo mono Tithe: $m$varsettithe
      put #echo
      put #echo mono PilgrimBadge: $m$varsetpilgrimbadge
      put #echo mono PilgrimBadgeitem: $m$varsetpilgrimbadgeitem
      put #echo mono AnloralPin: $m$varsetanloralpin
      put #echo mono AnloralPinItem: $m$varsetanloralpinitem 
      put #echo mono WaterContainer: $m$varsetwatercontainer
    }
    if $guild = "Ranger" then
    {
      put #echo mono Pounce: $m$varsetpounce 
      put #echo mono Snipe: $m$varsetsnipe
      put #echo mono DualLoad: $m$varsetdualload
      put #echo mono RITSType: $m$varsetritstype
    }
    if $guild = "Thief" then
    {
      put #echo mono Backstab: $m$varsetbackstab
      put #echo mono Snipe: $m$varsetsnipe
      put #echo mono DualLoad: $m$varsetdualload
      put #echo
      put #echo mono KhriMax: $m$varsetkhrimax
      put #echo mono KhriAdaptation: $m$varsetkhriadaptation
      put #echo mono KhriAvoidance: $m$varsetkhriavoidance
      put #echo mono KhriCunning: $m$varsetkhricunning
      put #echo mono KhriDampen: $m$varsetkhridampen
      put #echo mono KhriDarken: $m$varsetkhridarken
      put #echo mono KhriElusion: $m$varsetkhrielusion
      put #echo mono KhriEndure: $m$varsetkhriendure
      gosub OUTPUT KhriEvanescence
      put #echo mono KhriFlight: $m$varsetkhriflight
      put #echo mono KhriFright: $m$varsetkhrifright
      put #echo mono KhriFocus: $m$varsetkhrifocus
      put #echo mono KhriHarrier: $m$varsetkhriharrier
      put #echo mono KhriHasten: $m$varsetkhrihasten
      put #echo mono KhriInsight: $m$varsetkhriinsight
      put #echo mono KhriPlunder: $m$varsetkhriplunder
      put #echo mono KhriSagacity: $m$varsetkhrisagacity
      put #echo mono KhriSensing: $m$varsetkhrisensing
      gosub OUTPUT KhriSerenity
      gosub OUTPUT KhriShadowstep
      put #echo mono KhriSight: $m$varsetkhrisight
      put #echo mono KhriSteady: $m$varsetkhristeady
      put #echo mono KhriStrike: $m$varsetkhristrike
      put #echo
      gosub OUTPUT KhriGuile
      put #echo mono KhriProwess: $m$varsetkhriprowess
      put #echo mono KhriTerrify: $m$varsetkhriterrify
      put #echo
      put #echo mono KhriDebil $khridebil
      put #echo mono KhriDebilType: $m$varsetkhridebiltype
      put #echo 
      gosub OUTPUT MoveVanish
      put #echo
      put #echo mono BurgleKhriHasten: $m$varsetburglekhrihasten
      put #echo mono BurgleKhriPlunder: $m$varsetburglekhriplunder
      put #echo mono BurgleKhriSilence: $m$varsetburglekhrisilence
      put #echo mono BurgleKhriSlight: $m$varsetburglekhrislight
      gosub OUTPUT BoxpopKhriFocus
      gosub OUTPUT BoxpopKhriHasten
      gosub OUTPUT BoxpopKhriPlunder
      gosub OUTPUT BoxpopKhriSafe
      gosub OUTPUT BoxpopKhriSight
    }
    if $guild = "Trader" then
    {
      gosub OUTPUT Invest
      gosub OUTPUT TradingSell
      #put #echo mono TradingSellSource: $m$varsettradingsellsource     (vault or portal)
      gosub OUTPUT TradingSellTown
      gosub OUTPUT TradingTasks
    }
    if $guild = "Warrior Mage" then
    {
      put #echo mono Summoning: $m$varsetsummoning
      put #echo mono SummonWeapon: $m$varsetsummonweapon
      put #echo mono SummonWeaponTimer: $m$varsetsummonweapontimer     (in seconds, minimum is 0)
      put #echo mono Pathway: $m$varsetpathway
      put #echo mono PathwayType: $m$varsetpathwaytype
      put #echo mono Domain: $m$varsetdomain
      put #echo mono DomainType: $m$varsetdomaintype
      put #echo
      put #echo mono ChargeAfterLock: $m$varsetchargeafterlock     (Cast a spell to boost charge, even after magic is locked/capped)
      put #echo mono CALSpell: $m$varsetcalspell
      put #echo mono CALPrepMana: $m$varsetcalprepmana
      put #echo mono CALAddMana: $m$varsetcaladdmana
      put #echo
      put #echo mono IgniteBackup: $m$varsetignitebackup
    }
    math buffloop add 1
  }
  if %buffloop >= 1 then
  {  
    if %buffloop > $m$varsetombuffnum then return
    put #echo mono OMBuff%buffloop: $m$varsetombuff%buffloop
    math buffloop add 1
    goto DISPLAYGUILD
  }
  return

DISPLAYOTHER:
  var varmatch 1
  put #echo mono =================== Preptimer Script Variables ===================
  put #echo mono FasterTargeting: $fastertargeting
  put #echo mono FasterBattlePrep: $fasterbattleprep
  put #echo mono FasterBattlePrep: $fastermatrices
  put #echo mono SilentPrep: $silentprep
  put #echo mono HidePrep: $hideprep
  echo
  put #echo mono =================== P Script Variables ===================
  echo
  put #echo mono PScriptMode: $pscriptmode
  echo
  put #echo mono =================== Combo Script Variables ===================
  echo
  gosub REGOUTPUT ManeuverList
  gosub REGOUTPUT CleaveWeapon
  gosub REGOUTPUT CrashWeapon
  gosub REGOUTPUT ImpaleWeapon
  gosub REGOUTPUT TwirlWeapon
  gosub REGOUTPUT DoublestrikeWeapon
  gosub REGOUTPUT DoublestrikeWeapon2
  gosub REGOUTPUT PowershotWeapon
  gosub REGOUTPUT PowershotAmmo
  if ("$guild" = "Warrior Mage") then
  {
    echo
    put #echo mono =================== Slide Script Variables ===================
    echo
    gosub REGOUTPUT SummonElement
    gosub REGOUTPUT SummonIngot
    gosub REGOUTPUT SummonList
    gosub REGOUTPUT SummonCleave
    gosub REGOUTPUT SummonCrash
    gosub REGOUTPUT SummonDoublestrike
  }
  if $guild = "Moon Mage" then
  {
    put #echo mono =================== Astral Script Variables===================
    put #echo mono AstralSafe: $astralsafe
    put #echo mono Hundredth: $hundredth
    echo
  }
  return
  
DISPLAYKILL:
  var varmatch 1
  put #echo mono =================== Kill Script Variables===================
  put #echo mono Killloot: $killloot
  #put #echo mono KillAdvance: $killadvance
  put #echo mono KillRetreat: $killretreat
  put #echo mono KillTMFocus: $killtmfocus
  put #echo mono KillBuffing: $killbuffing
  put #echo
  put #echo mono KillCyclic: $killcyclic
  put #echo mono KillCycSpell: $killcycspell
  put #echo mono KillCycPrepMana: $killcycprepmana
  put #echo
  put #echo mono KillDB: $killdb
  put #echo mono KillDBSpell: $killdbspell
  put #echo mono KillDBPrepMana: $killdbprepmana
  put #echo mono KillDBAddMana: $killdbaddmana
  put #echo
  put #echo mono KillTM: $killtm
  put #echo mono KillTMspell: $killtmspell
  put #echo mono KillTMPrepMana: $killtmprepmana
  put #echo mono KillTMAddMana: $killtmaddmana
  put #echo
  if ("$guild" = "Bard") then
  {
    put #echo mono BeckontheNaga: $beckonthenaga
    put #echo mono BTNPrepMana: $btnprepmana
    put #echo mono BTNAddMana: $btnaddmana
    put #echo mono BTNPrepWait: $btnprepwait
  }
  if ("$guild" = "Warrior Mage") then
  {
    put #echo mono DragonsBreath: $dragonsbreath
    put #echo mono DBPrepMana: $dbprepmana
    put #echo mono DBAddMana: $dbaddmana
    put #echo mono DBPrepWait: $dbprepwait
    put #echo mono BlufmorGaraen: $blufmorgaraen
    put #echo mono BGPrepMana: $bgprepmana
    put #echo mono BGAddMana: $bgaddmana
    put #echo mono BGPrepWait: $bgprepwait
    put #echo mono MagneticBallista: $magneticballista
    put #echo mono MABPrepMana: $mabprepmana
    put #echo mono MABAddMana: $mabaddmana
    put #echo mono MABPrepWait: $mabprepwait
  }
  put #echo
  put #echo mono KillWeapon: $killweapon
  put #echo mono KillWeaponType: $killweapontype     (melee, brawl, thrown, or aimed)
  if $killweapontype != "brawl" then put #echo mono KillWeaponItem: $killweaponitem
  if $killweapontype = "aimed" then put #echo mono KillAmmo: $killammo
  if $killweapontype = "melee" then put #echo mono KillWeaponCombo: $killweaponcombo     (edged, blunt, or piercing)
  if $killweapontype = "thrown" then put #echo mono KillThrownVerb: $killthrownverb     (lob, throw, or hurl)
  if $killweapontype = "thrown" then put #echo mono KillThrownBond: $killthrownbond
  put #echo
  return

DISPLAYMOVEMENT:
  var varmatch 1
  put #echo
  put #echo mono ========== Movement Script Variables ==========
  put #echo mono =================== Mode: $varset ===================
  put #echo mono ===============================================
  put #echo
  put #echo mono =================== Combat Movement ===================
  put #echo
  #put #echo mono MoveClenchShard: $m$varsetmoveclenchshard
  #put #echo mono ShardItem: $m$varsetsharditem
  gosub OUTPUT Bugout
  gosub OUTPUT BugoutNum
  gosub OUTPUT BugoutOnBleed
  put #echo
  gosub OUTPUT CustomMovement
  gosub OUTPUT KillBeforeMove
  gosub OUTPUT MoveTimeout
  put #echo
  gosub OUTPUT CombatPreset
  put #echo Gray mono Options: 
  #708090
  put #echo Gray --P1: %combatpresetp1
  put #echo Gray --P2: %combatpresetp2
  put #echo Gray --P3: %combatpresetp3
  put #echo Gray --P4: %combatpresetp4
  put #echo Gray --P5: %combatpresetp5
  put #echo mono PresetPremium: $m$varsetpresetpremium    (YES, NO, or ONLY if you wish to select only from Premium rooms.)
  if ("$m$varsetcustommovement" = "YES") then
  {
    if ($m$varsetcombatpreset = "none") then
    {
      gosub OUTPUT Zone
      gosub OUTPUT Travel
      put #echo mono TravelDest: $m$varsettraveldest    (a valid destination for the travel.cmd script included with the automapper repository)
      gosub OUTPUT Move
      put #echo mono MoveList: $m$varsetmovelist    (a list of valid #goto locations for the automapper, separated by the | character)
      gosub OUTPUT TargetRoom
      gosub OUTPUT FindRoom
      gosub OUTPUT FindRoomList
      gosub OUTPUT BugoutRoom
      gosub OUTPUT NearestPortalTown
    }
    else
    {
      gosub OUTPUTGRAY Zone
      gosub OUTPUTGRAY Travel
      put #echo Gray mono TravelDest: $m$varsettraveldest    (a valid destination for the travel.cmd script included with the automapper repository)
      gosub OUTPUTGRAY Move
      put #echo Gray mono MoveList: $m$varsetmovelist    (a list of valid #goto locations for the automapper, separated by the | character)
      gosub OUTPUTGRAY TargetRoom
      put #echo
      gosub OUTPUTGRAY FindRoom
      gosub OUTPUTGRAY FindRoomList
      gosub OUTPUTGRAY BugoutRoom
      gosub OUTPUTGRAY NearestPortalTown
    }
  }
  put #echo
  gosub OUTPUT FRWhitelist
  gosub OUTPUT FRBlackList
  gosub OUTPUT FRPreferGroup
  put #echo
  put #echo mono =================== Upkeep Movement ===================
	put #echo
	gosub OUTPUT UpkeepTown (%townpresetlist)
	gosub OUTPUT PremiumRing
	gosub OUTPUT PremiumRingItem
	#gosub OUTPUT NearestPortalTown (%townportalpresetlist)
	put #echo
	gosub OUTPUT VaultTown
  gosub OUTPUT AmmoBuyTown (%ammopresetlist)
  gosub OUTPUT LockpickBuyTown (%lockpickpresetlist)
  put #echo
  put #echo mono =================== NonCombat Movement ===================
  put #echo
  gosub OUTPUT BurglePreset
  put #echo Gray mono Options: %townburglepresetlist
	gosub OUTPUT PawnPreset
	put #echo Gray mono Options: %pawnpresetlist
  gosub OUTPUT PerformPreset
  put #echo Gray mono Options: %townperformpresetlist
  put #echo
  return

REGOUTPUT:
  var displayvar $1
  eval lowervar tolower("%displayvar")
  var actualvar $%lowervar
  eval count2 length("$2")
  
  if %count2 > 0 then
  {
    eval spacenum count("$0", " ")
    var displayvar2 $2
    eval lowervar2 tolower("%displayvar2")
    var actualvar2 $%lowervar2
    eval namelength length("%lowervar")
    eval varlength length("%actualvar")
    var dotnum 40
    math dotnum subtract %namelength
    math dotnum subtract %varlength
    math dotnum subtract 2
    var dotcount 0
    gosub DOTLOOP
    put #echo mono %displayvar: %actualvar%dotvar%displayvar2: %actualvar2
  }
  else put #echo mono %displayvar: %actualvar
  return

OUTPUT:
  var displayvar $1
  eval lowervar tolower("%displayvar")
  var actualvar $m$varset%lowervar
  eval count2 length("$2")
  
  if (%count2 > 0) then
  {
    eval parenthesesnum count("$2", "(")
    if (%parenthesesnum = 0) then
    { 
      eval spacenum count("$0", " ")
      var displayvar2 $2
      eval lowervar2 tolower("%displayvar2")
      var actualvar2 $m$varset%lowervar2
      eval namelength length("%lowervar")
      eval varlength length("%actualvar")     
      var dotnum 40
      math dotnum subtract %namelength
      math dotnum subtract %varlength
      math dotnum subtract 2
      var dotcount 0
      gosub DOTLOOP
      put #echo mono %displayvar: %actualvar%dotvar%displayvar2: %actualvar2
    }
    else
    {
      put #echo mono %displayvar: %actualvar     $2
    }
  }
  else put #echo mono %displayvar: %actualvar
  return
  
OUTPUTGRAY:
  var displayvar $1
  eval lowervar tolower("%displayvar")
  var actualvar $m$varset%lowervar
  eval count2 length("$2")
  
  if %count2 > 0 then
  {
    eval spacenum count("$0", " ")
    var displayvar2 $2
    eval lowervar2 tolower("%displayvar2")
    var actualvar2 $m$varset%lowervar2
    eval namelength length("%lowervar")
    eval varlength length("%actualvar")
    var dotnum 40
    math dotnum subtract %namelength
    math dotnum subtract %varlength
    math dotnum subtract 2
    var dotcount 0
    gosub DOTLOOP
    put #echo Gray mono %displayvar: %actualvar%dotvar%displayvar2: %actualvar2
  }
  else put #echo Gray mono %displayvar: %actualvar
  return    

DOTLOOP:
  if %dotcount >= %dotnum then return
  if %dotcount = 0 then var dotvar . 
  else var dotvar %dotvar.
  math dotcount add 1
  goto DOTLOOP
  
VARCOPY:
  if %copymode = "general" then gosub VARCOPYGENERAL
  if %copymode = "movement" then gosub VARCOPYMOVEMENT
  if %copymode = "loot" then gosub VARCOPYLOOT
  if %copymode = "upkeep" then gosub VARCOPYUPKEEP
  if %copymode = "combat" then gosub VARCOPYCOMBAT
  if %copymode = "combat2" then gosub VARCOPYCOMBAT2
  if %copymode = "noncombat" then gosub VARCOPYNONCOMBAT
  if %copymode = "guild" then gosub VARCOPYGUILD
  if %copymode = "magic" then gosub VARCOPYMAGIC
  if %copymode = "buff" then gosub VARCOPYBUFF
  if %copymode = "spell" then gosub VARCOPYSPELL
  if %copymode = "all" then
  {
    gosub VARCOPYGENERAL
    gosub VARCOPYMOVEMENT
    gosub VARCOPYLOOT
    gosub VARCOPYUPKEEP
    gosub VARCOPYCOMBAT
    gosub VARCOPYCOMBAT2
    gosub VARCOPYNONCOMBAT
    gosub VARCOPYGUILD
    gosub VARCOPYMAGIC
    gosub VARCOPYBUFF
    gosub VARCOPYSPELL
  }
  return

VARCOPYUPKEEP:
  put #var m%destautoupkeep $m%sourceautoupkeep
  put #var m%destmoveclenchshard $m%sourcemoveclenchshard
  put #var m%destmovewhistle $m%sourcemovewhistle
  put #var m%destmovescream $m%sourcemovescream
  put #var m%destmovevanish $m%sourcemovevanish
  put #var m%destauonhealth $m%sourceauonhealth
  put #var m%destauhealthnum $m%sourceauhealthnum
  put #var m%destauonbleed $m%sourceauonbleed
  put #var m%destauonnerves $m%sourceauonnerves
  put #var m%destauonburden $m%sourceauonburden
  put #var m%destauburdennum $m%sourceauburdennum
  put #var m%destauonammo $m%sourceauonammo
  put #var m%destauonboxes $m%sourceauonboxes
  put #var m%destminmoney $m%sourceminmoney
  put #var m%destexchange $m%sourceexchange
  put #var m%destautopath $m%sourceautopath
  put #var m%destrepair $m%sourcerepair
  put #var m%destrepairlist $m%sourcerepairlist
  put #var m%destbundlesell $m%sourcebundlesell
  put #var m%destbundlevault $m%sourcebundlevault
  put #var m%destvaultmove $m%sourcevaultmove
  put #var m%destbundlerope $m%sourcebundlerope
  put #var m%destgemsell $m%sourcegemsell
  put #var m%destgemvault $m%sourcegemvault
  put #var m%destgempouches $m%sourcegempouches
  put #var m%destnuggetsell $m%sourcenuggetsell
  put #var m%destbarsell $m%sourcebarsell
  put #var m%destammobuy $m%sourceammobuy
  put #var m%destammobuylist $m%sourceammobuylist
  put #var m%destammocontainer $m%sourceammocontainer
  put #var m%destammomin $m%sourceammomin
  put #var m%destlockpickbuy $m%sourcelockpickbuy
  put #var m%destlockpickstacker $m%sourcelockpickstacker
  put #var m%destlockpickitem $m%sourcelockpickitem
  put #var m%destboxpopping $m%sourceboxpopping
  put #var m%destdismantletype $m%sourcedismantletype
  put #var m%destspiderfeed $m%sourcespiderfeed
  put #var m%destappfocus $m%sourceappfocus
  put #var m%destappfocusitem $m%sourceappfocusitem
  put #var m%destincense $m%sourceincense
  put #var save
  return

VARCOPYCOMBAT:
  put #var m%destcombat $m%sourcecombat
  put #var m%deststancemain $m%sourcestancemain
  put #var m%destlowestfirst $m%sourcelowestfirst
  put #var m%destkillafterlock $m%sourcekillafterlock
  put #var m%destweaponnum $m%sourceweaponnum
  put #var m%destweapon1 $m%sourceweapon1
  put #var m%destweapon2 $m%sourceweapon2
  put #var m%destweapon3 $m%sourceweapon3
  put #var m%destweapon4 $m%sourceweapon4
  put #var m%destweapon5 $m%sourceweapon5
  put #var m%destweapon6 $m%sourceweapon6
  put #var m%destweapon7 $m%sourceweapon7
  put #var m%destweapon8 $m%sourceweapon8
  put #var m%destweapon9 $m%sourceweapon9
  put #var m%destweapon10 $m%sourceweapon10
  put #var m%destweapon11 $m%sourceweapon11
  put #var m%destweapon12 $m%sourceweapon12
  put #var m%destweapon13 $m%sourceweapon13
  put #var m%destweapon14 $m%sourceweapon14
  
  put #var m%destoffhand $m%sourceoffhand
  put #var m%destacms $m%sourceacms
  
  put #var m%destseoffhand $m%sourceseoffhand
  put #var m%destsecombo $m%sourcesecombo
  put #var m%destleoffhand $m%sourceleoffhand
  put #var m%destsboffhand $m%sourcesboffhand
  put #var m%destlboffhand $m%sourcelboffhand
  put #var m%deststaveoffhand $m%sourcestaveoffhand
  put #var m%destseweapon $m%sourceseweapon
  put #var m%destleweapon $m%sourceleweapon
  put #var m%desttheweapon $m%sourcetheweapon
  put #var m%destsbweapon $m%sourcesbweapon
  put #var m%destlbweapon $m%sourcelbweapon
  put #var m%destthbweapon $m%sourcethbweapon
  put #var m%deststaveweapon $m%sourcestaveweapon
  put #var m%deststaveworn $m%sourcestaveworn
  put #var m%deststavetied $m%sourcestavetied
  put #var m%destpoleweapon $m%sourcepoleweapon
  put #var m%destpoleworn $m%sourcepoleworn
  put #var m%destpoletied $m%sourcepoletied
  put #var m%destpolecombo $m%sourcepolecombo
  put #var m%destbastardsworditem $m%sourcebastardsworditem
  put #var m%destbarmaceitem $m%sourcebarmaceitem
  put #var m%destholyiconitem $m%sourceholyiconitem
  put #var m%destristeitem $m%sourceristeitem
  put #var m%desthhristeitem $m%sourcehhristeitem
  
  put #var m%destltweapon $m%sourceltweapon
  put #var m%destltoffhand $m%sourceltoffhand
  put #var m%destltbond $m%sourceltbond
  put #var m%destltverb $m%sourceltverb
  put #var m%desthtweapon $m%sourcehtweapon
  put #var m%desthtoffhand $m%sourcehtoffhand
  put #var m%desthtbond $m%sourcehtbond
  put #var m%desthtverb $m%sourcehtverb
  
  put #var m%destxbowweapon $m%sourcexbowweapon
  put #var m%destxbowammo $m%sourcexbowammo
  put #var m%destxbowworn $m%sourcexbowworn
  put #var m%destbowweapon $m%sourcebowweapon
  put #var m%destbowammo $m%sourcebowammo
  put #var m%destbowworn $m%sourcebowworn
  put #var m%destslingweapon $m%sourceslingweapon
  put #var m%destslingammo $m%sourceslingammo
  put #var m%destcollectammo $m%sourcecollectammo
  
  put #var m%destplatring $m%sourceplatring
  put #var m%destplatringitem $m%sourceplatringitem
  
  put #var m%destarmorcheck $m%sourcearmorcheck
  put #var m%destarmornum $m%sourcearmornum
  put #var m%destshielditem $m%sourceshielditem
  put #var m%destparrystickitem $m%sourceparrystickitem
  put #var m%destarmor1item $m%sourcearmor1item
  put #var m%destarmor2item $m%sourcearmor2item
  put #var m%destarmor3item $m%sourcearmor3item
  put #var m%destarmor4item $m%sourcearmor4item
  put #var m%destarmor5item $m%sourcearmor5item
  put #var m%destarmor6item $m%sourcearmor6item
  put #var m%destknucklesitem $m%sourceknucklesitem
  put #var save
  return
  
VARCOPYGENERAL:
  put #var m%destalmanac $m%sourcealmanac
  put #var m%destalmanacitem $m%sourcealmanacitem
  put #var m%destalmanacalerts $m%sourcealmanacalerts
  put #var m%destejournal $m%sourceejournal
  put #var m%destejournalitem $m%sourceejournalitem
  put #var m%destejournalstates $m%sourceejournalstates
  put #var m%desttarantula $m%sourcetarantula
  put #var m%desttarantulaitem $m%sourcetarantulaitem
  put #var m%desttarantulaskill1 $m%sourcetarantulaskill1
  put #var m%desttarantulaskill2 $m%sourcetarantulaskill2
  put #var save
  return
  
VARCOPYMOVEMENT:
  put #var m%destbugout $m%sourcebugout
  put #var m%destbugoutnum $m%sourcebugoutnum
  put #var m%destbugoutonbleed $m%sourcebugoutonbleed

  put #var m%destcustommovement $m%sourcecustommovement
  put #var m%destkillbeforemove $m%sourcekillbeforemove
  put #var m%destmovetimeout $m%sourcemovetimeout
  put #var m%destcombatpreset $m%sourcecombatpreset
  put #var m%destpresetpremium $m%sourcepresetpremium
  put #var m%destzone $m%sourcezone
  put #var m%desttravel $m%sourcetravel
  put #var m%desttraveldest $m%sourcetraveldest
  put #var m%destmove $m%sourcemove
  put #var m%destmovelist $m%sourcemovelist
  put #var m%desttargetroom $m%sourcetargetroom
  put #var m%destbugoutroom $m%sourcebugoutroom
  
  put #var m%destfindroom $m%sourcefindroom
  put #var m%destfindroomlist $m%sourcefindroomlist
  put #var m%destfrwhitelist $m%sourcefrwhitelist
  put #var m%destfrblacklist $m%sourcefrblacklist
  put #var m%destfrprefergroup $m%sourcefrprefergroup
  
  put #var m%destupkeeptown $m%sourceupkeeptown
  put #var m%destpremiumring $m%sourcepremiumring
  put #var m%destpremiumringitem $m%sourcepremiumringitem
  put #var m%destnearestportaltown $m%sourcenearestportaltown
  
  put #var m%destvaulttown $m%sourcevaulttown
  put #var m%destammobuytown $m%sourceammobuytown
  put #var m%destlockpickbuytown $m%sourcelockpickbuytown
  put #var m%destburglepreset $m%sourceburglepreset
  put #var m%destpawnpreset $m%sourcepawnpreset
  put #var m%destperformpreset $m%sourceperformpreset
  put #var save
  return
  
VARCOPYLOOT:
  put #var m%destlootalerts $m%sourcelootalerts
  put #var m%destloottype $m%sourceloottype
  put #var m%destlootalldead $m%sourcelootalldead
  put #var m%destcollectcoin $m%sourcecollectcoin
  put #var m%destcollectscroll $m%sourcecollectscroll
  put #var m%destcollectmaps $m%sourcecollectmaps
  put #var m%destcollectnuggets $m%sourcecollectnuggets
  put #var m%destcollectbars $m%sourcecollectbars
  put #var m%destcollectmaterials $m%sourcecollectmaterials
  put #var m%destcollectgem $m%sourcecollectgem
  put #var m%destsavegwethstones $m%sourcesavegwethstones
  put #var m%destcollectboxes $m%sourcecollectboxes
  put #var m%destboxstorage $m%sourceboxstorage
  put #var m%destmisckeeplist $m%sourcemisckeeplist
  put #var m%deststorage $m%sourcestorage
  put #var m%destskinning $m%sourceskinning
  put #var m%destdissect $m%sourcedissect
  put #var m%destarrange $m%sourcearrange
  put #var m%destarrangeforpart $m%sourcearrangeforpart
  put #var m%destskinafterlock $m%sourceskinafterlock
  put #var m%destdropskins $m%sourcedropskins
  put #var save
  return

VARCOPYCOMBAT2:
  put #var m%destnoncomdelay $m%sourcenoncomdelay
  put #var m%destappraise $m%sourceappraise
  put #var m%destappraisetarget $m%sourceappraisetarget
  put #var m%destappraisetimer $m%sourceappraisetimer
  put #var m%destappsaveitem $m%sourceappsaveitem
  put #var m%destappsaveitemstorage $m%sourceappsaveitemstorage
  put #var m%desthunting $m%sourcehunting
  put #var m%desthuntingtimer $m%sourcehuntingtimer
  put #var m%destoutdoor $m%sourceoutdoor
  put #var m%destoutdoortimer $m%sourceoutdoortimer
  put #var m%destcollectitem $m%sourcecollectitem
  put #var m%deststealth $m%sourcestealth
  put #var m%desttactics $m%sourcetactics
  put #var m%desttacticsweapons $m%sourcetacticsweapons
  put #var m%destrecall $m%sourcerecall
  put #var m%destteaching $m%sourceteaching
  put #var m%destteachtargets $m%sourceteachtargets
  put #var m%destteachskill $m%sourceteachskill
  put #var m%destteachtargetnum $m%sourceteachtargetnum
  put #var m%destteachtargets $m%sourceteachtargets
  
  put #var m%destcompendium $m%sourcecompendium
  put #var m%destcompendiumtimer $m%sourcecompendiumtimer
  put #var m%desttextbook $m%sourcetextbook
  put #var m%desttextbooktimer $m%sourcetextbooktimer
  put #var m%desttextbookitem $m%sourcetextbookitem
  put #var m%desttextbooklist $m%sourcetextbooklist
  
  put #var m%destlocksmithbox $m%sourcelocksmithbox
  put #var m%destlocksmithboxitem $m%sourcelocksmithboxitem
  put #var m%destlocksmithboxtimer $m%sourcelocksmithboxtimer
  put #var m%destskinfatrainer $m%sourceskinfatrainer
  put #var m%destskinfatrainertimer $m%sourceskinfatrainertimer
  put #var m%destskinfatraineritem $m%sourceskinfatraineritem
  put #var m%destwindboard $m%sourcewindboard
  put #var m%destwindboardcharge $m%sourcewindboardcharge
  put #var m%destwindboardtrick $m%sourcewindboardtrick
  put #var m%destwindboardtimer $m%sourcewindboardtimer
  put #var save
  return

VARCOPYMAGIC: 
  put #var m%desttmdbprior $m%sourcetmdbprior
  
  put #var m%destattune $m%sourceattune
  put #var m%destminconcentration $m%sourceminconcentration
  put #var m%destcombatsanowret $m%sourcecombatsanowret
  put #var m%destnoncomsanowret $m%sourcenoncomsanowret
  put #var m%destsanowretitem $m%sourcesanowretitem
  put #var m%destbuff $m%sourcebuff
  put #var m%destabuff $m%sourceabuff
  put #var m%destgbuff $m%sourcegbuff
  put #var m%destgbufftarget $m%sourcegbufftarget
  put #var m%destbuffbuffer $m%sourcebuffbuffer
  put #var m%destspelltracking $m%sourcespelltracking

  put #var m%destcambrinth $m%sourcecambrinth
  put #var m%destdedicatedcambrinth $m%sourcededicatedcambrinth
  put #var m%destresearch $m%sourceresearch
  put #var m%destgafprepmana $m%sourcegafprepmana
  put #var m%destgafaddmana $m%sourcegafaddmana
  put #var m%destresearchnum $m%sourceresearchnum
  put #var m%destresearchtype1 $m%sourceresearchtype1
  put #var m%destresearchtype2 $m%sourceresearchtype2
  put #var m%destresearchtype3 $m%sourceresearchtype3
  put #var m%destresearchtype4 $m%sourceresearchtype4
  put #var m%destresearchtype5 $m%sourceresearchtype5
  put #var m%destharnessing $m%sourceharnessing
  put #var m%destharnessmax $m%sourceharnessmax
  put #var m%destchargemax $m%sourcechargemax
  put #var m%destminmana $m%sourceminmana
  put #var m%destcastingthrottle $m%sourcecastingthrottle
  put #var m%deststraightcast $m%sourcestraightcast
  put #var m%destcambitem1 $m%sourcecambitem1
  put #var m%destcambitems $m%sourcecambitems
  put #var m%destcambitem1mana $m%sourcecambitem1mana
  put #var m%destcambitem1worn $m%sourcecambitem1worn
  put #var m%destcambitem2 $m%sourcecambitem2
  put #var m%destcambitem2mana $m%sourcecambitem2mana
  put #var m%destcambitem2worn $m%sourcecambitem2worn
  put #var m%destritualfocus $m%sourceritualfocus
  put #var m%destritualfocusstorage $m%sourceritualfocusstorage
  put #var m%destritualfocusworn $m%sourceritualfocusworn
  put #var m%destritualfocuscontainer $m%sourceritualfocuscontainer
  put #var m%desttmfocus $m%sourcetmfocus
  put #var m%desttmfocusitem $m%sourcetmfocusitem
  
  put #var m%desttmfocusstorage $m%sourcetmfocusstorage
  put #var m%desttmfocusworn $m%sourcetmfocusworn
  put #var m%desttmfocuscontainer $m%sourcetmfocuscontainer
  put #var save
  return
  
VARCOPYNONCOMBAT: 
  put #var m%destnoncombat $m%sourcenoncombat
 
  put #var m%destburgle $m%sourceburgle
  put #var m%destburglestorage $m%sourceburglestorage
  put #var m%destburgletool $m%sourceburgletool
  put #var m%destburglepickitem $m%sourceburglepickitem
  put #var m%destburglepickworn $m%sourceburglepickworn
  put #var m%destburgleropeitem $m%sourceburgleropeitem
  put #var m%destburglemaxgrabs $m%sourceburglemaxgrabs
  put #var m%destburgleloot $m%sourceburgleloot
  put #var m%destburglekeeplist $m%sourceburglekeeplist
  put #var m%destburglepawn $m%sourceburglepawn
  
  put #var m%destperform $m%sourceperform
  put #var m%destsongtype $m%sourcesongtype
  put #var m%destinstrument $m%sourceinstrument
  put #var m%destinstrumentworn $m%sourceinstrumentworn
  put #var m%destinstrumenthands $m%sourceinstrumenthands
  put #var m%destinstrumentassess $m%sourceinstrumentassess
  put #var m%destinstclean $m%sourceinstclean
  put #var m%destinstcleancloth $m%sourceinstcleancloth
  put #var m%destclimbingrope $m%sourceclimbingrope
  put #var m%destclimbingropename $m%sourceclimbingropename
  put #var m%destclimbingropehum $m%sourceclimbingropehum
  put #var m%desthumsong $m%sourcehumsong
  
  put #var save
  return

VARCOPYBUFF:
  put #var m%destbuffnum $m%sourcebuffnum
  put #var m%destbuff1 $m%sourcebuff1
  put #var m%destbuff1prepmana $m%sourcebuff1prepmana
  put #var m%destbuff1addmana $m%sourcebuff1addmana
  put #var m%destbuff1prepwait $m%sourcebuff1prepwait
  put #var m%destbuff2 $m%sourcebuff2
  put #var m%destbuff2prepmana $m%sourcebuff2prepmana
  put #var m%destbuff2addmana $m%sourcebuff2addmana
  put #var m%destbuff2prepwait $m%sourcebuff2prepwait
  put #var m%destbuff3 $m%sourcebuff3
  put #var m%destbuff3prepmana $m%sourcebuff3prepmana
  put #var m%destbuff3addmana $m%sourcebuff3addmana
  put #var m%destbuff3prepwait $m%sourcebuff3prepwait
  put #var m%destbuff4 $m%sourcebuff4
  put #var m%destbuff4prepmana $m%sourcebuff4prepmana
  put #var m%destbuff4addmana $m%sourcebuff4addmana
  put #var m%destbuff4prepwait $m%sourcebuff4prepwait
  put #var m%destbuff5 $m%sourcebuff5
  put #var m%destbuff5prepmana $m%sourcebuff5prepmana
  put #var m%destbuff5addmana $m%sourcebuff5addmana
  put #var m%destbuff5prepwait $m%sourcebuff5prepwait
  put #var m%destbuff6 $m%sourcebuff6
  put #var m%destbuff6prepmana $m%sourcebuff6prepmana
  put #var m%destbuff6addmana $m%sourcebuff6addmana
  put #var m%destbuff6prepwait $m%sourcebuff6prepwait
  put #var m%destbuff7 $m%sourcebuff7
  put #var m%destbuff7prepmana $m%sourcebuff7prepmana
  put #var m%destbuff7addmana $m%sourcebuff7addmana
  put #var m%destbuff7prepwait $m%sourcebuff7prepwait
  put #var m%destbuff8 $m%sourcebuff8
  put #var m%destbuff8prepmana $m%sourcebuff8prepmana
  put #var m%destbuff8addmana $m%sourcebuff8addmana
  put #var m%destbuff8prepwait $m%sourcebuff8prepwait
  put #var m%destbuff9 $m%sourcebuff9
  put #var m%destbuff9prepmana $m%sourcebuff9prepmana
  put #var m%destbuff9addmana $m%sourcebuff9addmana
  put #var m%destbuff9prepwait $m%sourcebuff9prepwait
  put #var m%destbuff10 $m%sourcebuff10
  put #var m%destbuff10prepmana $m%sourcebuff10prepmana
  put #var m%destbuff10addmana $m%sourcebuff10addmana
  put #var m%destbuff10prepwait $m%sourcebuff10prepwait
  put #var m%destbuff11 $m%sourcebuff11
  put #var m%destbuff11prepmana $m%sourcebuff11prepmana
  put #var m%destbuff11addmana $m%sourcebuff11addmana
  put #var m%destbuff11prepwait $m%sourcebuff11prepwait
  put #var m%destbuff12 $m%sourcebuff12
  put #var m%destbuff12prepmana $m%sourcebuff12prepmana
  put #var m%destbuff12addmana $m%sourcebuff12addmana
  put #var m%destbuff12prepwait $m%sourcebuff12prepwait
  put #var m%destbuff13 $m%sourcebuff13
  put #var m%destbuff13prepmana $m%sourcebuff13prepmana
  put #var m%destbuff13addmana $m%sourcebuff13addmana
  put #var m%destbuff13prepwait $m%sourcebuff13prepwait
  put #var m%destbuff14 $m%sourcebuff14
  put #var m%destbuff14prepmana $m%sourcebuff14prepmana
  put #var m%destbuff14addmana $m%sourcebuff14addmana
  put #var m%destbuff14prepwait $m%sourcebuff14prepwait
  put #var m%destbuff15 $m%sourcebuff15
  put #var m%destbuff15prepmana $m%sourcebuff15prepmana
  put #var m%destbuff15addmana $m%sourcebuff15addmana
  put #var m%destbuff15prepwait $m%sourcebuff15prepwait
  put #var m%destbuff16 $m%sourcebuff16
  put #var m%destbuff16prepmana $m%sourcebuff16prepmana
  put #var m%destbuff16addmana $m%sourcebuff16addmana
  put #var m%destbuff16prepwait $m%sourcebuff16prepwait
  put #var m%destabuffnum $m%sourceabuffnum
  put #var m%destabuff1 $m%sourceabuff1
  put #var m%destabuff1prepmana $m%sourceabuff1prepmana
  put #var m%destabuff1addmana $m%sourceabuff1addmana
  put #var m%destabuff2 $m%sourceabuff2
  put #var m%destabuff2prepmana $m%sourceabuff2prepmana
  put #var m%destabuff2addmana $m%sourceabuff2addmana
  put #var m%destabuff3 $m%sourceabuff3
  put #var m%destabuff3prepmana $m%sourceabuff3prepmana
  put #var m%destabuff3addmana $m%sourceabuff3addmana
  put #var m%destabuff4 $m%sourceabuff4
  put #var m%destabuff4prepmana $m%sourceabuff4prepmana
  put #var m%destabuff4addmana $m%sourceabuff4addmana
  put #var m%destabuff5 $m%sourceabuff5
  put #var m%destabuff5prepmana $m%sourceabuff5prepmana
  put #var m%destabuff5addmana $m%sourceabuff5addmana
  put #var m%destabuff6 $m%sourceabuff6
  put #var m%destabuff6prepmana $m%sourceabuff6prepmana
  put #var m%destabuff6addmana $m%sourceabuff6addmana
  put #var m%destabuff7 $m%sourceabuff7
  put #var m%destabuff7prepmana $m%sourceabuff7prepmana
  put #var m%destabuff7addmana $m%sourceabuff7addmana
  put #var m%destabuff8 $m%sourceabuff8
  put #var m%destabuff8prepmana $m%sourceabuff8prepmana
  put #var m%destabuff8addmana $m%sourceabuff8addmana
  put #var m%destgbuffnum $m%sourcegbuffnum
  put #var m%destgbuff1 $m%sourcegbuff1
  put #var m%destgbuff1prepmana $m%sourcegbuff1prepmana
  put #var m%destgbuff1addmana $m%sourcegbuff1addmana
  put #var m%destgbuff1duration $m%sourcegbuff1duration
  put #var m%destgbuff2 $m%sourcegbuff2
  put #var m%destgbuff2prepmana $m%sourcegbuff2prepmana
  put #var m%destgbuff2addmana $m%sourcegbuff2addmana
  put #var m%destgbuff2duration $m%sourcegbuff2duration
  put #var m%destgbuff3 $m%sourcegbuff3
  put #var m%destgbuff3prepmana $m%sourcegbuff3prepmana
  put #var m%destgbuff3addmana $m%sourcegbuff3addmana
  put #var m%destgbuff3duration $m%sourcegbuff3duration
  put #var m%destgbuff4 $m%sourcegbuff4
  put #var m%destgbuff4prepmana $m%sourcegbuff4prepmana
  put #var m%destgbuff4addmana $m%sourcegbuff4addmana
  put #var m%destgbuff4duration $m%sourcegbuff4duration
  put #var m%destgbuff5 $m%sourcegbuff5
  put #var m%destgbuff5prepmana $m%sourcegbuff5prepmana
  put #var m%destgbuff5addmana $m%sourcegbuff5addmana
  put #var m%destgbuff5duration $m%sourcegbuff5duration
  put #var m%destgbuff6 $m%sourcegbuff6
  put #var m%destgbuff6prepmana $m%sourcegbuff6prepmana
  put #var m%destgbuff6addmana $m%sourcegbuff6addmana
  put #var m%destgbuff6duration $m%sourcegbuff6duration
  put #var m%destgbuff7 $m%sourcegbuff7
  put #var m%destgbuff7prepmana $m%sourcegbuff7prepmana
  put #var m%destgbuff7addmana $m%sourcegbuff7addmana
  put #var m%destgbuff7duration $m%sourcegbuff7duration
  put #var m%destgbuff8 $m%sourcegbuff8
  put #var m%destgbuff8prepmana $m%sourcegbuff8prepmana
  put #var m%destgbuff8addmana $m%sourcegbuff8addmana
  put #var m%destgbuff8duration $m%sourcegbuff8duration
  put #var save
  return
  
VARCOPYSPELL:
  put #var m%destspell $m%sourcespell
  put #var m%destspellnum $m%sourcespellnum
  put #var m%destspell1 $m%sourcespell1
  put #var m%destskill1 $m%sourceskill1
  put #var m%destspell1prepmana $m%sourcespell1prepmana
  put #var m%destspell1addmana $m%sourcespell1addmana
  put #var m%destspell1prepwait $m%sourcespell1prepwait
  put #var m%destspell1symb $m%sourcespell1symb
  put #var m%destspell1tattoo $m%sourcespell1tattoo
  put #var m%destspell2 $m%sourcespell2
  put #var m%destskill2 $m%sourceskill2
  put #var m%destspell2prepmana $m%sourcespell2prepmana
  put #var m%destspell2addmana $m%sourcespell2addmana
  put #var m%destspell2prepwait $m%sourcespell2prepwait
  put #var m%destspell2symb $m%sourcespell2symb
  put #var m%destspell2tattoo $m%sourcespell2tattoo
  put #var m%destspell3 $m%sourcespell3
  put #var m%destskill3 $m%sourceskill3
  put #var m%destspell3prepmana $m%sourcespell3prepmana
  put #var m%destspell3addmana $m%sourcespell3addmana
  put #var m%destspell3prepwait $m%sourcespell3prepwait
  put #var m%destspell3symb $m%sourcespell3symb
  put #var m%destspell3tattoo $m%sourcespell3tattoo
  put #var m%destspell4 $m%sourcespell4
  put #var m%destskill4 $m%sourceskill4
  put #var m%destspell4prepmana $m%sourcespell4prepmana
  put #var m%destspell4addmana $m%sourcespell4addmana
  put #var m%destspell4prepwait $m%sourcespell4prepwait
  put #var m%destspell4symb $m%sourcespell4symb
  put #var m%destspell4tattoo $m%sourcespell4tattoo
  put #var m%desttm $m%sourcetm
  put #var m%desttmskill $m%sourcetmskill
  put #var m%destspelltm $m%sourcespelltm
  put #var m%destspelltmprepmana $m%sourcespelltmprepmana
  put #var m%destspelltmaddmana $m%sourcespelltmaddmana
  put #var m%destspelltmtattoo $m%sourcespelltmtattoo
  put #var m%destdebil $m%sourcedebil
  put #var m%destdebilskill $m%sourcedebilskill
  put #var m%destspelldb $m%sourcespelldb
  put #var m%destspelldbtattoo $m%sourcespelldbtattoo
  put #var m%destspelldbprepmana $m%sourcespelldbprepmana
  put #var m%destspelldbaddmana $m%sourcespelldbaddmana
  put #var m%destmisdirection $m%sourcemisdirection
  put #var m%destmisdirectionprepmana $m%sourcemisdirectionprepmana
  put #var m%destmisdirectionaddmana $m%sourcemisdirectionaddmana
  put #var m%destsymbiosisbuff $m%sourcesymbiosisbuff
  put #var m%destsymbiosisspell $m%sourcesymbiosisspell
  put #var m%destsymbiosisprepmana $m%sourcesymbiosisprepmana
  put #var m%destsymbiosisaddmana $m%sourcesymbiosisaddmana
  put #var m%destsymbiosisprepwait $m%sourcesymbiosisprepwait
  put #var m%desttattoobuff $m%sourcetattoobuff
  put #var m%desttattootype $m%sourcetattootype
  put #var m%desttattoospell $m%sourcetattoospell
  put #var m%desttattooaddmana $m%sourcetattooaddmana
  put #var m%desttattooprepwait $m%sourcetattooprepwait
  put #var m%destwandbuff $m%sourcewandbuff
  put #var m%destwandstorage $m%sourcewandstorage
  put #var m%destwandbuffnum $m%sourcewandbuffnum
  put #var m%destwand1item $m%sourcewand1item
  put #var m%destwand1num $m%sourcewand1num
  put #var m%destwand1spell $m%sourcewand1spell
  put #var m%destwand2item $m%sourcewand2item
  put #var m%destwand2num $m%sourcewand2num
  put #var m%destwand2spell $m%sourcewand2spell
  put #var m%destwand3item $m%sourcewand3item
  put #var m%destwand3num $m%sourcewand3num
  put #var m%destwand3spell $m%sourcewand3spell
  put #var m%destwand4item $m%sourcewand4item
  put #var m%destwand4num $m%sourcewand4num
  put #var m%destwand4spell $m%sourcewand4spell
  
  put #var m%destcyclic $m%sourcecyclic
  put #var m%destcyclicbuff $m%sourcecyclicbuff
  put #var m%destspellcnum $m%sourcespellcnum
  put #var m%destspellc1 $m%sourcespellc1
  put #var m%destskillc1 $m%sourceskillc1
  put #var m%destspellc1skill $m%sourcespellc1skill
  put #var m%destspellc1prepmana $m%sourcespellc1prepmana
  put #var m%destspellc2 $m%sourcespellc2
  put #var m%destskillc2 $m%sourceskillc2
  put #var m%destspellc2skill $m%sourcespellc2skill
  put #var m%destspellc2prepmana $m%sourcespellc2prepmana
  put #var m%destspellc3 $m%sourcespellc3
  put #var m%destskillc3 $m%sourceskillc3
  put #var m%destspellc3skill $m%sourcespellc3skill
  put #var m%destspellc3prepmana $m%sourcespellc3prepmana
  put #var m%destdebilassist $m%sourcedebilassist
  put #var m%destdbanum $m%sourcedbanum
  put #var m%destdbalist $m%sourcedbalist
  put #var m%destdbaspell1 $m%sourcedbaspell1
  put #var m%destdbaspell1prepmana $m%sourcedbaspell1prepmana
  put #var m%destdbaspell1addmana $m%sourcedbaspell1addmana
  put #var m%destdbaspell2 $m%sourcedbaspell2
  put #var m%destdbaspell2prepmana $m%sourcedbaspell2prepmana
  put #var m%destdbaspell2addmana $m%sourcedbaspell2addmana
  put #var m%destdbaspell3 $m%sourcedbaspell3
  put #var m%destdbaspell3prepmana $m%sourcedbaspell3prepmana
  put #var m%destdbaspell3addmana $m%sourcedbaspell3addmana
  put #var m%destperformcyclic $m%sourceperformcyclic
  put #var m%destpspellcnum $m%sourcepspellcnum
  put #var m%destpspellc1 $m%sourcepspellc1
  put #var m%destpskillc1 $m%sourcepskillc1
  put #var m%destpspellc1pskill $m%sourcepspellc1pskill
  put #var m%destpspellc1prepmana $m%sourcepspellc1prepmana
  put #var m%destpspellc2 $m%sourcepspellc2
  put #var m%destpskillc2 $m%sourcepskillc2
  put #var m%destpspellc2pskill $m%sourcepspellc2pskill
  put #var m%destpspellc2prepmana $m%sourcepspellc2prepmana
  put #var m%destpspellc3 $m%sourcepspellc3
  put #var m%destpskillc3 $m%sourcepskillc3
  put #var m%destpspellc3pskill $m%sourcepspellc3pskill
  put #var m%destpspellc3prepmana $m%sourcepspellc3prepmana
  put #var m%destcyctm $m%sourcecyctm
  put #var m%destspellctm $m%sourcespellctm
  put #var m%destspellctmprepmana $m%sourcespellctmprepmana
  put #var m%destcycdebil $m%sourcecycdebil
  put #var m%destspellcdb $m%sourcespellcdb
  put #var m%destspellcdbprepmana $m%sourcespellcdbprepmana
  put #var save
  return
  
  if %cambitems < 1 then put #var m%destcambitems 1


VARCOPYGUILD:
  put #var m%destwarhorn $m%sourcewarhorn
  put #var m%destwarhornitem $m%sourcewarhornitem
  put #var m%destexpertise $m%sourceexpertise
  put #var m%destwhirlwind $m%sourcewhirlwind
  put #var m%destdualload $m%sourcedualload
  put #var m%destmininnerfire $m%sourcemininnerfire
  put #var m%destberserkava $m%sourceberserkava
  put #var m%destberserkdrought $m%sourceberserkdrought
  put #var m%destavafatigue $m%sourceavafatigue
  put #var m%destberserkfamine $m%sourceberserkfamine
  put #var m%destfaminevit $m%sourcefaminevit
  put #var m%destmeditatestaunch $m%sourcemeditatestaunch
  put #var m%destexpaccuracy $m%sourceexpaccuracy
  put #var m%destexpdamage $m%sourceexpdamage
  put #var m%destberserkblizzard $m%sourceberserkblizzard
  put #var m%destberserkcyclone $m%sourceberserkcyclone
  put #var m%destberserkearthquake $m%sourceberserkearthquake
  put #var m%destberserkflashflood $m%sourceberserkflashflood
  put #var m%destberserkhurricane $m%sourceberserkhurricane
  put #var m%destberserklandslide $m%sourceberserklandslide
  put #var m%destlandslidetraining $m%sourcelandslidetraining
  put #var m%destberserktornado $m%sourceberserktornado
  put #var m%desttornadotraining $m%sourcetornadotraining
  put #var m%destberserktsunami $m%sourceberserktsunami
  put #var m%desttsunamibackup $m%sourcetsunamibackup
  put #var m%destberserkvolcano $m%sourceberserkvolcano
  put #var m%destberserkwildfire $m%sourceberserkwildfire
  put #var m%destbearform $m%sourcebearform
  put #var m%destbuffaloform $m%sourcebuffaloform
  put #var m%destdragonform $m%sourcedragonform
  put #var m%desteagleform $m%sourceeagleform
  put #var m%destmonkeyform $m%sourcemonkeyform
  put #var m%destowlform $m%sourceowlform
  put #var m%destpantherform $m%sourcepantherform
  put #var m%destpiranhaform $m%sourcepiranhaform
  put #var m%destpythonform $m%sourcepythonform
  put #var m%destwolverineform $m%sourcewolverineform
  put #var m%destmeditatebastion $m%sourcemeditatebastion
  put #var m%destmeditatecontemplation $m%sourcemeditatecontemplation
  put #var m%destmeditateserenity $m%sourcemeditateserenity
  put #var m%destmeditatetenacity $m%sourcemeditatetenacity
  put #var m%destroaranger $m%sourceroaranger
  put #var m%destroarembrace $m%sourceroarembrace
  put #var m%destroarkuniyo $m%sourceroarkuniyo
  put #var m%destroarrage $m%sourceroarrage
  put #var m%destroarscreech $m%sourceroarscreech
  put #var m%destroarshriek $m%sourceroarshriek
  put #var m%destroarwail $m%sourceroarwail
  
  put #var m%destwhistlepiercing $m%sourcewhistlepiercing
  put #var m%desteilliescry $m%sourceeilliescry
  put #var m%desteilliescryprepmana $m%sourceeilliescryprepmana
  put #var m%desteilliescryaddmana $m%sourceeilliescryaddmana
  
  put #var m%destosrelmeraud $m%sourceosrelmeraud
  put #var m%destomprepmana $m%sourceomprepmana
  put #var m%destomaddmana $m%sourceomaddmana
  put #var m%destombuffnum $m%sourceombuffnum
  put #var m%destombuff1 $m%sourceombuff1
  put #var m%destombuff2 $m%sourceombuff2
  put #var m%destombuff3 $m%sourceombuff3
  put #var m%destombuff4 $m%sourceombuff4
  put #var m%destombuff5 $m%sourceombuff5
  put #var m%destombuff6 $m%sourceombuff6
  put #var m%destombuff7 $m%sourceombuff7
  put #var m%destombuff8 $m%sourceombuff8
  put #var m%desttheurgy $m%sourcetheurgy
  put #var m%destpray $m%sourcepray
  put #var m%destpraydeity $m%sourcepraydeity
  put #var m%destmeraudcommune $m%sourcemeraudcommune
  put #var m%destelunedcommune $m%sourceelunedcommune
  put #var m%desttamsinecommune $m%sourcetamsinecommune
  put #var m%destdance $m%sourcedance
  put #var m%destrecite $m%sourcerecite
  put #var m%destanloralpin $m%sourceanloralpin
  put #var m%destanloralpinitem $m%sourceanloralpinitem    
  put #var m%destpilgrimbadge $m%sourcepilgrimbadge
  put #var m%destpilgrimbadgeitem $m%sourcepilgrimbadgeitem
  put #var m%destprayermat $m%sourceprayermat
  put #var m%destprayermatitem $m%sourceprayermatitem
  put #var m%destdirtstacker $m%sourcedirtstacker
  put #var m%destdirtstackeritem $m%sourcedirtstackeritem
  put #var m%destlighter $m%sourcelighter
  put #var m%destlighteritem $m%sourcelighteritem
  put #var m%destwatercontainer $m%sourcewatercontainer
  put #var m%destblessdelay $m%sourceblessdelay
  put #var m%desthyhcast $m%sourcehyhcast
  
  put #var m%destavoidshock $m%sourceavoidshock
  put #var m%destperchealth $m%sourceperchealth
  put #var m%destmanipulate $m%sourcemanipulate
  put #var m%destparalysis $m%sourceparalysis
  put #var m%destparalysisprepmana $m%sourceparalysisprepmana
  put #var m%destparalysisaddmana $m%sourceparalysisaddmana
  put #var m%destvitheal $m%sourcevitheal
  put #var m%destvithealnum $m%sourcevithealnum
  put #var m%destvithealprepmana $m%sourcevithealprepmana
  put #var m%destvithealaddmana $m%sourcevithealaddmana
  put #var m%destheal $m%sourceheal
  put #var m%desthealprepmana $m%sourcehealprepmana
  put #var m%desthealaddmana $m%sourcehealaddmana
  put #var m%destcuredisease $m%sourcecuredisease
  put #var m%destcdprepmana $m%sourcecdprepmana
  put #var m%destcdaddmana $m%sourcecdaddmana
  put #var m%destadcheal $m%sourceadcheal
  put #var m%destadcdisease $m%sourceadcdisease
  put #var m%destadcpoison $m%sourceadcpoison
  put #var m%destabsolution $m%sourceabsolution
  put #var m%destabsolutionprepmana $m%sourceabsolutionprepmana
  put #var m%destiztouch $m%sourceiztouch
  put #var m%destizprepmana $m%sourceizprepmana
  put #var m%destiztimer $m%sourceiztimer
  
  put #var m%destastro $m%sourceastro
  put #var m%destastrotimer $m%sourceastrotimer
  put #var m%destpredictiontool $m%sourcepredictiontool
  put #var m%destpredictiontoolitem $m%sourcepredictiontoolitem
  put #var m%desttktitem $m%sourcetktitem
  put #var m%destshadowlingnoun $m%sourceshadowlingnoun
  put #var m%destpiercinggaze $m%sourcepiercinggaze
  put #var m%destpgprepmana $m%sourcepgprepmana
  put #var m%destpgaddmana $m%sourcepgaddmana
  put #var m%destmindshout $m%sourcemindshout
  put #var m%destmindshoutprepmana $m%sourcemindshoutprepmana
  put #var m%destmindshoutaddmana $m%sourcemindshoutaddmana
  put #var m%destburglerf $m%sourceburglerf
  put #var m%destburglerfdelay $m%sourceburglerfdelay
  
  put #var m%destnecrostate $m%sourcenecrostate
  put #var m%destnecrosafety $m%sourcenecrosafety
  put #var m%destnecrowhitelist $m%sourcenecrowhitelist
  put #var m%destriteofgrace $m%sourceriteofgrace
  put #var m%destrogprepmana $m%sourcerogprepmana
  put #var m%destrogcycle $m%sourcerogcycle
  put #var m%destdissect $m%sourcedissect
  put #var m%destpreserve $m%sourcepreserve
  put #var m%destharvest $m%sourceharvest
  put #var m%destharveststore $m%sourceharveststore
  put #var m%destharveststorenum $m%sourceharveststorenum
  put #var m%destdevour $m%sourcedevour
  put #var m%destdevourprepmana $m%sourcedevourprepmana
  put #var m%destdevouraddmana $m%sourcedevouraddmana
  put #var m%desteotbrel $m%sourceeotbrel
  put #var m%destsiphonvit $m%sourcesiphonvit
  put #var m%destsiphonvitprepmana $m%sourcesiphonvitprepmana
  put #var m%destsiphonvitaddmana $m%sourcesiphonvitaddmana
  put #var m%destsiphonvitnum $m%sourcesiphonvitnum
  
  put #var m%destsmite $m%sourcesmite
  put #var m%desttithe $m%sourcetithe
  
  put #var m%destpounce $m%sourcepounce
  put #var m%destsnipe $m%sourcesnipe
  put #var m%destdualload $m%sourcedualload
  put #var m%destritstype $m%sourceritstype
  
  put #var m%destsnipe $m%sourcesnipe
  put #var m%destbackstab $m%sourcebackstab
  put #var m%destkhrimax $m%sourcekhrimax
  put #var m%destkhriavoidance $m%sourcekhriavoidance
  put #var m%destkhricunning $m%sourcekhricunning
  put #var m%destkhridampen $m%sourcekhridampen
  put #var m%destkhridarken $m%sourcekhridarken
  put #var m%destkhriendure $m%sourcekhriendure
  put #var m%destkhrielusion $m%sourcekhrielusion
  put #var m%destkhriflight $m%sourcekhriflight
  put #var m%destkhrifright $m%sourcekhrifright
  put #var m%destkhrifocus $m%sourcekhrifocus
  put #var m%destkhriharrier $m%sourcekhriharrier
  put #var m%destkhrihasten $m%sourcekhrihasten
  put #var m%destkhriinsight $m%sourcekhriinsight
  put #var m%destkhriplunder $m%sourcekhriplunder
  put #var m%destkhrisagacity $m%sourcekhrisagacity
  put #var m%destkhrisensing $m%sourcekhrisensing
  put #var m%destkhriserenity $m%sourcekhriserenity
  put #var m%destkhrisight $m%sourcekhrisight
  put #var m%destkhristeady $m%sourcekhristeady
  put #var m%destkhristrike $m%sourcekhristrike
  put #var m%destkhriguile $m%sourcekhriguile
  put #var m%destkhriprowess $m%sourcekhriprowess
  put #var m%destkhriterrify $m%sourcekhriterrify
  put #var m%destkhridebil $m%sourcekhridebil
  put #var m%destkhridebiltype $m%sourcekhridebiltype
  
  put #var m%destburglethiefbin $m%sourceburglethiefbin
  put #var m%destburglekhrihasten $m%sourceburglekhrihasten
  put #var m%destburglekhriplunder $m%sourceburglekhriplunder
  put #var m%destburglekhrisilence $m%sourceburglekhrisilence
  put #var m%destburglekhrislight $m%sourceburglekhrislight
  put #var m%destboxpopkhrifocus $m%sourceboxpopkhrifocus
  put #var m%destboxpopkhrihasten $m%sourceboxpopkhrihasten
  put #var m%destboxpopkhriplunder $m%sourceboxpopkhriplunder
  put #var m%destboxpopkhrisafe $m%sourceboxpopkhrisafe
  put #var m%destboxpopkhrisight $m%sourceboxpopkhrisight
    
  put #var m%destinvest $m%sourceinvest
  put #var m%desttradingsell $m%sourcetradingsell
  put #var m%desttradingsellitem $m%sourcetradingsellitem
  put #var m%desttradingselltown $m%sourcetradingselltown
  put #var m%desttradingsellsource $m%sourcetradingsellsource
  put #var m%desttradingtasks $m%sourcetradingtasks
  
  put #var m%destignitebackup $m%sourceignitebackup
  put #var m%destsummoning $m%sourcesummoning
  put #var m%destsummonweapon $m%sourcesummonweapon
  put #var m%destsummonweapontimer $m%sourcesummonweapontimer
  put #var m%destpathway $m%sourcepathway
  put #var m%destpathwaytype $m%sourcepathwaytype
  put #var m%destdomain $m%sourcedomain
  put #var m%destdomaintype $m%sourcedomaintype
  put #var m%destchargeafterlock $m%sourcechargeafterlock
  put #var m%destcalspell $m%sourcecalspell
  put #var m%destcalprepmana $m%sourcecalprepmana
  put #var m%destcaladdmana $m%sourcecaladdmana
  put #var save
  return
  
  
END: