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
    if tolower("%1") = "multiarea" then goto YESNOSET
    if tolower("%1") = "multiareapriority" then goto TEXTSET
    if tolower("%1") = "multimindstep" then goto TEXTSET
    if tolower("%1") = "mode1list" then goto LISTSET
    if tolower("%1") = "mode1step" then goto TEXTSET
    if tolower("%1") = "mode2list" then goto LISTSET
    if tolower("%1") = "mode2step" then goto TEXTSET
    if tolower("%1") = "mode1priority" then goto YESNOSET
    if tolower("%1") = "mode2priority" then goto YESNOSET
    
    
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
    if (tolower("%1") = "arrestaction") then
    {
      if matchre("%2", "\b(logout|alert)\b") then
      {  
        var setvar arrestaction
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
    if tolower("%1") = "healthalerts" then goto YESNOSET
    if tolower("%1") = "healthalertnum" then goto TEXTSET
    if tolower("%1") = "speechalerts" then goto YESNOSET
    if tolower("%1") = "nervealerts" then goto YESNOSET
    if tolower("%1") = "backfirealerts" then goto YESNOSET
    if tolower("%1") = "sorceryalerts" then goto YESNOSET
    if tolower("%1") = "emotealerts" then goto YESNOSET
    if tolower("%1") = "arrivalalerts" then goto YESNOSET
    if tolower("%1") = "gmalerts" then goto YESNOSET
    if tolower("%1") = "paranoiaalerts" then goto YESNOSET
    if tolower("%1") = "tendarea" then goto YESNOSET
    if tolower("%1") = "tendobject" then goto YESNOSET
    if tolower("%1") = "bugout" then goto YESNOSET
    if tolower("%1") = "bugoutnum" then goto TEXTSET
    if tolower("%1") = "bugoutonbleed" then goto YESNOSET
    if tolower("%1") = "bugoutonsend" then goto YESNOSET
    if tolower("%1") = "pvpalerts" then goto YESNOSET
    if tolower("%1") = "pvpstealthalerts" then goto YESNOSET
    if tolower("%1") = "inventoryalerts" then goto YESNOSET
    if tolower("%1") = "movevanish" then goto YESNOSET
    if tolower("%1") = "burglethiefbin" then goto YESNOSET
    if tolower("%1") = "burglekhrihasten" then goto YESNOSET
    if tolower("%1") = "burglekhriplunder" then goto YESNOSET
    if tolower("%1") = "burglekhrisilence" then goto YESNOSET
    if tolower("%1") = "burglekhrislight" then goto YESNOSET
    if tolower("%1") = "boxpopkhrifocus" then goto YESNOSET
    if tolower("%1") = "boxpopkhrihasten" then goto YESNOSET
    if tolower("%1") = "boxpopkhriplunder" then goto YESNOSET
    if tolower("%1") = "boxpopkhrisafe" then goto YESNOSET
    if tolower("%1") = "boxpopkhrisight" then goto YESNOSET
   
    if tolower("%1") = "autoupkeep" then goto YESNOSET
    if tolower("%1") = "auonhealth" then goto YESNOSET
    if tolower("%1") = "auhealthnum" then goto TEXTSET
    if tolower("%1") = "auonbleed" then goto YESNOSET
    if tolower("%1") = "auonpoison" then goto YESNOSET
    if tolower("%1") = "auonfire" then goto YESNOSET
    if tolower("%1") = "auonnerves" then goto YESNOSET
    if tolower("%1") = "auonammo" then goto YESNOSET
    if tolower("%1") = "auonboxes" then goto YESNOSET
    if tolower("%1") = "auonburden" then goto YESNOSET
    if tolower("%1") = "auburdennum" then
    {
      if matchre("%2", "\b(1|2|3|4|5|6|7|8|9|10|11)\b") then
      {  
        var setvar auburdennum
        eval input tolower(%2)  
        put #var %setvar %input
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
        put #var %setvar %input
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
    if tolower("%1") = "vaulttown" then
    {
      if (matchre("%2", "\b(%townvaultpresetlist)\b")) then
      {  
        var setvar vaulttown
        eval input tolower(%2)  
        put #var %setvar %input
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
    if tolower("%1") = "bundlesell" then goto YESNOSET
    if tolower("%1") = "bundlevault" then goto YESNOSET
    if tolower("%1") = "bundlerope" then goto TEXTSET
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
        put #var %setvar %input
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
        put #var %setvar %input
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
    if tolower("%1") = "skeletonkey" then goto YESNOSET
    if tolower("%1") = "bucketitem" then goto TEXTSET
    if tolower("%1") = "dismantletype" then goto TEXTSET
    if tolower("%1") = "boxpopbuff" then
    {
      if matchre("%2", "\b(none|drum|hol|mt)\b") then
      {  
        var setvar boxpopbuff
        var input %2  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only set none|drum|hol|mt!
        goto END
      }
    }
    if tolower("%1") = "boxpopbuffprepmana" then goto TEXTSET
    if tolower("%1") = "boxpopbuffaddmana" then goto TEXTSET
    if tolower("%1") = "spiderfeed" then goto YESNOSET
    if tolower("%1") = "incense" then goto TEXTSET
    if tolower("%1") = "retreatdelay" then goto YESNOSET

    #COMBAT
    if tolower("%1") = "weapons" then goto YESNOSET
    if tolower("%1") = "weaponsm2" then goto YESNOSET
    if tolower("%1") = "weaponlist" then
    {
      gosub WEAPONLISTCHECK %0
      if (%weaponlistcheckresult = 1) then
      {  
        var setvar weaponlist
        var input %2  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You must make a list of the weapons you want, separated by |.  Example: se|le|the|sb|lb|thb|stave|pole|brawl|lt|ht|bow|xbow|sling!
        goto END
      }
    }
    if tolower("%1") = "weaponlistm2" then
    {
      gosub WEAPONLISTCHECK %0
      if (%weaponlistcheckresult = 1) then
      {  
        var setvar weaponlistm2
        var input %2  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You must make a list of the weapons you want, separated by |.  Example: se|le|the|sb|lb|thb|stave|pole|brawl|lt|ht|bow|xbow|sling!
        goto END
      }
    } 
    if tolower("%1") = "stancemain" then goto TEXTSET
    if tolower("%1") = "lowestfirst" then goto YESNOSET
    if tolower("%1") = "killafterlock" then goto YESNOSET
    if tolower("%1") = "offhand" then goto YESNOSET
    if tolower("%1") = "acms" then goto YESNOSET
    if tolower("%1") = "seweapon" then goto TEXTSET
    if tolower("%1") = "seoffhand" then goto YESNOSET
    if tolower("%1") = "secombo" then
    {
      if matchre("%2", "\b(slice|puncture)\b") then
      {  
        var setvar secombo
        eval input tolower(%2)  
        put #var %setvar %input
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
        put #var %setvar %input
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
    if tolower("%1") = "ltbond" then
        {
      if matchre("%2", "\b(yes|no|special)\b") then
      {  
        var setvar ltbond
        eval input toupper(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose yes, no, or special!
        goto END
      }
    }
    if tolower("%1") = "ltverb" then
    {
      if matchre("%2", "\b(throw|lob|hurl)\b") then
      {  
        var setvar ltverb
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only throw, hurl, or lob!
        goto END
      }
    }
    if tolower("%1") = "htweapon" then goto TEXTSET
    if tolower("%1") = "htoffhand" then goto YESNOSET
    if tolower("%1") = "htbond" then
    {
      if matchre("%2", "\b(yes|no|special)\b") then
      {  
        var setvar htbond
        eval input toupper(%2)  
        put #var %setvar %input
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
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only throw, hurl, or lob!
        goto END
      }
    }
    if tolower("%1") = "xbowweapon" then goto TEXTSET
    if tolower("%1") = "bowweapon" then goto TEXTSET
    if tolower("%1") = "xbowammo" then goto TEXTSET
    if tolower("%1") = "xbowworn" then goto YESNOSET
    if tolower("%1") = "bowammo" then goto TEXTSET
    if tolower("%1") = "bowworn" then goto YESNOSET
    if tolower("%1") = "slingweapon" then goto TEXTSET
    if tolower("%1") = "slingammo" then goto TEXTSET
    if tolower("%1") = "collectammo" then goto YESNOSET
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
        put #var %setvar %input
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
    
    if tolower("%1") = "appfocus" then goto YESNOSET
    if tolower("%1") = "appfocusitem" then goto TEXTSET
    if tolower("%1") = "necrostate" then
    {
      if matchre("%2", "\b(unsullied|forsaken|redeemed)\b") then
      {  
        var setvar necrostate
        eval input tolower(%2)  
        put #var %setvar %input
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
    if tolower("%1") = "devour" then goto YESNOSET
    if tolower("%1") = "devourmana" then goto TEXTSET
    if tolower("%1") = "siphonvit" then goto YESNOSET
    if tolower("%1") = "siphonvitmana" then goto TEXTSET
    if tolower("%1") = "siphonvitnum" then goto TEXTSET
    if tolower("%1") = "preserve" then goto YESNOSET
    if tolower("%1") = "harvest" then goto YESNOSET
    if tolower("%1") = "harveststore" then goto YESNOSET
    if tolower("%1") = "harveststorenum" then goto TEXTSET
    if tolower("%1") = "eotbrel" then goto YESNOSET
    if tolower("%1") = "burgleeotb" then goto YESNOSET
    if tolower("%1") = "burgleeotbdelay" then goto TEXTSET 
    if tolower("%1") = "appraise" then goto YESNOSET
    if tolower("%1") = "appraisetarget" then
    {
      if matchre("%2", "\b(bundle|creature)\b") then
      {  
        var setvar appraisetarget
        var input %2  
        put #var %setvar %input
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
        put #var %setvar %input
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
    if tolower("%1") = "collect" then goto YESNOSET
    if tolower("%1") = "collecttimer" then goto TEXTSET
    if tolower("%1") = "collectitem" then
    {
      if matchre("%2", "\b(rock|bunny)\b") then
      {  
        var setvar collectitem
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono Options are rock or bunny!
        goto END
      }
    }
    if tolower("%1") = "textbook" then goto YESNOSET
    if tolower("%1") = "textbooktimer" then goto TEXTSET
    if tolower("%1") = "textbookitem" then goto TEXTSET
    if tolower("%1") = "textbooklist" then goto LISTSET
    if tolower("%1") = "tomeoflore" then goto YESNOSET
    if tolower("%1") = "tomeofloreitem" then goto TEXTSET
    
    if tolower("%1") = "noncombat" then goto YESNOSET
    if tolower("%1") = "burgle" then goto YESNOSET
    if tolower("%1") = "perform" then goto YESNOSET
    if tolower("%1") = "crafting" then goto YESNOSET
    if tolower("%1") = "forging" then goto YESNOSET
    if tolower("%1") = "outfitting" then goto YESNOSET
    
    if tolower("%1") = "noncombatm2" then goto YESNOSET
    if tolower("%1") = "burglem2" then goto YESNOSET
    if tolower("%1") = "performm2" then goto YESNOSET
    if tolower("%1") = "craftingm2" then goto YESNOSET
    if tolower("%1") = "forgingm2" then goto YESNOSET
    if tolower("%1") = "outfittingm2" then goto YESNOSET
    
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
        put #var %setvar %input
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
    if tolower("%1") = "songtype" then goto TEXTSET
    if tolower("%1") = "instrument" then goto TEXTSET
    if tolower("%1") = "instrumentworn" then goto YESNOSET
    if tolower("%1") = "instrumenthands" then goto TEXTSET
    if tolower("%1") = "instrumentassess" then goto YESNOSET
    if tolower("%1") = "instclean" then goto YESNOSET
    if tolower("%1") = "instcleancloth" then goto TEXTSET
    if tolower("%1") = "climbingrope" then goto YESNOSET
    if tolower("%1") = "climbingropename" then goto TEXTSET
    if tolower("%1") = "climbingropehum" then goto YESNOSET
    if tolower("%1") = "studyart" then goto YESNOSET
    if tolower("%1") = "humsong" then goto TEXTSET
    if tolower("%1") = "noncomsanowret" then goto YESNOSET
    

    if tolower("%1") = "teaching" then goto YESNOSET
    if tolower("%1") = "teachtargets" then goto LISTSET
    if tolower("%1") = "teachskill" then
    {
      var setvar %1
      if_3 then var input %2 %3
      else var input %2
      if matchre("%input", "\b(Bows|Brawling|Crossbow|Heavy Thrown|Large Blunt|Large Edged|Light Thrown|Polearms|Slings|Small Blunt|Small Edged|Staves|Twohanded Blunt|Twohanded Edged|Targeted Magic|Debilitation|Warding|Evasion|Tactics|Light Armor|Chain Armor|Brigandine|Plate Armor|Defending)\b") then
      { 
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You may only set Bows|Brawling|Crossbow|Heavy Thrown|Large Blunt|Large Edged|Light Thrown|Polearms|Slings|Small Blunt|Small Edged|Staves|Twohanded Blunt|Twohanded Edged|Targeted Magic|Debilitation|Warding|Evasion|Tactics|Light Armor|Chain Armor|Brigandine|Plate Armor|Defending!  Capitalization is important!
        goto END
      }
    }
    
    if tolower("%1") = "expertise" then goto YESNOSET
    if tolower("%1") = "expaccuracy" then goto YESNOSET
    if tolower("%1") = "expdamage" then goto YESNOSET
    if tolower("%1") = "whirlwind" then goto YESNOSET
    if tolower("%1") = "dualload" then goto YESNOSET
    if tolower("%1") = "warhorn" then goto YESNOSET
    if tolower("%1") = "warhornitem" then goto TEXTSET
    if tolower("%1") = "pounce" then goto YESNOSET
    if tolower("%1") = "ritstype" then
    {
      if matchre("%2", "\b(any|low|mid|high)\b") then
      {  
        var setvar ritstype
        eval input tolower(%2)  
        put #var %setvar %input
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
    if tolower("%1") = "berserkfamine" then goto YESNOSET
    if tolower("%1") = "faminevit" then goto TEXTSET
    if tolower("%1") = "meditatestaunch" then goto YESNOSET

    if tolower("%1") = "berserkblizzard" then goto YESNOSET
    if tolower("%1") = "berserkcyclone" then goto YESNOSET
    if tolower("%1") = "berserkdrought" then goto YESNOSET
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
    if tolower("%1") = "movewhistle" then goto YESNOSET
    if tolower("%1") = "movescream" then goto YESNOSET
    if tolower("%1") = "eilliescry" then goto YESNOSET 
    if tolower("%1") = "eilliescrymana" then goto TEXTSET
    if tolower("%1") = "misdirection" then goto YESNOSET 
    if tolower("%1") = "misdirectionmana" then goto TEXTSET
    if tolower("%1") = "teacher" then goto TEXTSET
    if tolower("%1") = "attune" then goto REGESNOSET
    if tolower("%1") = "recall" then goto YESNOSET
    if tolower("%1") = "hunting" then goto YESNOSET
    if tolower("%1") = "huntingtimer" then goto TEXTSET
    if tolower("%1") = "stealth" then goto YESNOSET
    if tolower("%1") = "stealthm2" then goto YESNOSET
    if tolower("%1") = "tactics" then goto YESNOSET
    if tolower("%1") = "tacticsm2" then goto YESNOSET
    if tolower("%1") = "collectm2" then goto YESNOSET

    if tolower("%1") = "theurgy" then goto YESNOSET
    if tolower("%1") = "pray" then goto YESNOSET
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
        put #var %setvar %input
        put #var save
        goto REGVARDISPLAY
      }
      else
      {
        put #echo mono Only coz, male, male offense, and male defense are supported!
        goto REGEND
      }
    }
    if tolower("%1") = "osrelmeraud" then goto YESNOSET
    if tolower("%1") = "ommana" then goto TEXTSET
    if tolower("%1") = "ombuffnum" then goto 0THRU8SET
    if tolower("%1") = "ombuff1" then goto OMBUFFSET
    if tolower("%1") = "ombuff2" then goto OMBUFFSET
    if tolower("%1") = "ombuff3" then goto OMBUFFSET
    if tolower("%1") = "ombuff4" then goto OMBUFFSET
    if tolower("%1") = "ombuff5" then goto OMBUFFSET
    if tolower("%1") = "ombuff6" then goto OMBUFFSET
    if tolower("%1") = "ombuff7" then goto OMBUFFSET
    if tolower("%1") = "ombuff8" then goto OMBUFFSET

    if tolower("%1") = "astro" then goto YESNOSET
    if tolower("%1") = "astrotimer" then goto TEXTSET
    if tolower("%1") = "predictiontool" then
    {
      if matchre("%2", "\b(none|bones|mirror)\b") then
      {  
        var setvar predictiontool
        eval input tolower(%2)  
        put #var %setvar %input
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
    if tolower("%1") = "tktitem" then goto TEXTSET
    if tolower("%1") = "shadowlingnoun" then goto TEXTSET
    if tolower("%1") = "piercinggaze" then goto YESNOSET
    if tolower("%1") = "piercinggazemana" then goto TEXTSET 
    if tolower("%1") = "mindshout" then goto YESNOSET 
    if tolower("%1") = "mindshoutmana" then goto TEXTSET 
    if tolower("%1") = "burglerf" then goto YESNOSET
    if tolower("%1") = "burglerfdelay" then goto TEXTSET
    if tolower("%1") = "smite" then goto YESNOSET
    if tolower("%1") = "tithe" then goto YESNOSET
    if tolower("%1") = "invest" then goto YESNOSET
    if tolower("%1") = "tradingsell" then goto YESNOSET
    if tolower("%1") = "tradingselltown" then
    {
      if (matchre("%2", "\b(%townvaultpresetlist)\b")) then
      {  
        var setvar tradingselltown
        eval input tolower(%2)  
        put #var %setvar %input
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
          put #var %setvar %input
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
    if tolower("%1") = "ignitebackup" then goto TEXTSET
    if tolower("%1") = "platring" then goto YESNOSET
    if tolower("%1") = "platringitem" then goto TEXTSET
    
    
    if tolower("%1") = "minconcentration" then goto TEXTSET
    if tolower("%1") = "minmana" then goto TEXTSET
    if tolower("%1") = "straightcast" then goto YESNOSET
    if tolower("%1") = "difficulty1percent" then goto TEXTSET
    if tolower("%1") = "difficulty2percent" then goto TEXTSET
    if tolower("%1") = "difficulty3percent" then goto TEXTSET
    if tolower("%1") = "difficulty4percent" then goto TEXTSET
    if tolower("%1") = "difficulty5percent" then goto TEXTSET
    if tolower("%1") = "harnessing" then goto YESNOSET
    if tolower("%1") = "harnessmax" then goto TEXTSET
    if tolower("%1") = "cambrinth" then goto YESNOSET
    if tolower("%1") = "dedicatedcambrinth" then goto YESNOSET
    if tolower("%1") = "cambitems" then
    {
      if matchre("%2", "\b(0|1|2)\b") then
      {  
        var setvar cambitems
        eval input toupper(%2)  
        put #var %setvar %input
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
    if tolower("%1") = "tattoo" then goto YESNOSET
    if tolower("%1") = "tattootype" then
    {
      if matchre("%2", "\b(runic|heroic)\b") then
      {
        var setvar tattootype
        eval input tolower(%2)  
        put #var %setvar %input
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
    if tolower("%1") = "tattooprepmana" then goto TEXTSET
    if tolower("%1") = "combatsanowret" then goto YESNOSET
    if tolower("%1") = "sanowretitem" then goto TEXTSET
    if tolower("%1") = "craftingstorage" then goto TEXTSET
    if tolower("%1") = "craftingstoragelocation" then goto TEXTSET
    
    if tolower("%1") = "forgingdifficulty" then goto TEXTSET
    if tolower("%1") = "forgingdiscipline" then goto TEXTSET
    if tolower("%1") = "forgingmaterial" then goto TEXTSET
    if tolower("%1") = "forgingrepair" then goto YESNOSET
    if tolower("%1") = "forgingprivateroom" then goto YESNOSET
    if tolower("%1") = "forgingmaxvolumes" then goto TEXTSET
    if tolower("%1") = "forgingmaxquantity" then goto TEXTSET
    if tolower("%1") = "forgingsmelting" then goto YESNOSET
    
    if tolower("%1") = "outfittingdifficulty" then goto TEXTSET
    if tolower("%1") = "outfittingcloth" then goto TEXTSET
    if tolower("%1") = "outfittingleather" then goto TEXTSET
    if tolower("%1") = "outfittingrepair" then goto YESNOSET
    if tolower("%1") = "outfittingmaxyards" then goto TEXTSET
    if tolower("%1") = "outfittingmaxquantity" then goto YESNOSET
    if tolower("%1") = "awl" then goto TEXTSET
    if tolower("%1") = "bellows" then goto TEXTSET
    if tolower("%1") = "hammer" then goto TEXTSET
    if tolower("%1") = "knittingneedles" then goto TEXTSET
    if tolower("%1") = "scissors" then goto TEXTSET
    if tolower("%1") = "pliers" then goto TEXTSET
    if tolower("%1") = "sewingneedles" then goto TEXTSET
    if tolower("%1") = "shovel" then goto TEXTSET
    if tolower("%1") = "slickstone" then goto TEXTSET
    if tolower("%1") = "rod" then goto TEXTSET
    if tolower("%1") = "tongs" then goto TEXTSET
    if tolower("%1") = "yardstick" then goto TEXTSET
    
    if tolower("%1") = "research" then goto YESNOSET
    if tolower("%1") = "gafmana" then goto TEXTSET 
    if tolower("%1") = "researchnum" then goto REG1THRU5SET
    if tolower("%1") = "researchtype1" then goto TEXTSET
    if tolower("%1") = "researchtype2" then goto TEXTSET
    if tolower("%1") = "researchtype3" then goto TEXTSET
    if tolower("%1") = "researchtype4" then goto TEXTSET
    if tolower("%1") = "researchtype5" then goto TEXTSET
   
    if tolower("%1") = "storage" then goto TEXTSET
    if tolower("%1") = "boxstorage" then goto TEXTSET
    if tolower("%1") = "collectboxes" then goto YESNOSET
    if tolower("%1") = "collectcoin" then goto YESNOSET
    if tolower("%1") = "collectscroll" then goto YESNOSET
    if tolower("%1") = "collectmaps" then goto YESNOSET
    if tolower("%1") = "collectnuggets" then goto YESNOSET
    if tolower("%1") = "collectbars" then goto YESNOSET
    if tolower("%1") = "collectmaterials" then goto YESNOSET
    if tolower("%1") = "misckeeplist" then goto LISTSET
    if tolower("%1") = "collectgem" then goto YESNOSET
    if tolower("%1") = "savegwethstones" then goto YESNOSET
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
    if tolower("%1") = "locksmithbox" then goto YESNOSET
    if tolower("%1") = "locksmithboxtimer" then goto TEXTSET
    if tolower("%1") = "locksmithboxitem" then goto TEXTSET
    if tolower("%1") = "skinfatrainer" then goto YESNOSET
    if tolower("%1") = "skinfatrainertimer" then goto TEXTSET
    if tolower("%1") = "skinfatraineritem" then goto TEXTSET
    if tolower("%1") = "windboard" then goto YESNOSET
    if tolower("%1") = "windboardtimer" then goto TEXTSET
    if tolower("%1") = "windboardcharge" then goto REGTEXTSET
    if tolower("%1") = "windboardtrick" then goto TEXTSET
    
    if tolower("%1") = "killbeforemove" then goto YESNOSET
    if tolower("%1") = "sleepontravel" then goto YESNOSET
    if tolower("%1") = "movetimeout" then goto TEXTSET
    if tolower("%1") = "prefergroup" then goto YESNOSET
    if tolower("%1") = "huntingpremium" then
    {
      eval input toupper(%2) 
      if matchre("%input", "\b(YES|NO|ONLY)\b") then
      {  
        var setvar huntingpremium
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose YES, NO, or ONLY!
        goto END
      }
    }
    if tolower("%1") = "premiumring" then goto YESNOSET
    if tolower("%1") = "premiumringitem" then goto TEXTSET
    if tolower("%1") = "whitelist" then goto LISTSET
    if tolower("%1") = "blacklist" then goto LISTSET
    
    if tolower("%1") = "huntingarea" then
    {
      if matchre("%2", "\b(%combatpresetlist)\b") then
      {  
        var setvar huntingarea
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from: %combatpresetlist!
        goto END
      }
    }
    if tolower("%1") = "huntingaream2" then
    {
      if matchre("%2", "\b(%combatpresetlist)\b") then
      {  
        var setvar huntingaream2
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from: %combatpresetlist!
        goto END
      }
    }
    if tolower("%1") = "upkeeptown" then
    {
      if (matchre("%2", "\b(%townpresetlist)\b")) then
      {  
        var setvar upkeeptown
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %townpresetlist.
        goto END
      }
    }
    if tolower("%1") = "upkeeptownm2" then
    {
      if (matchre("%2", "\b(%townpresetlist)\b")) then
      {  
        var setvar upkeeptownm2
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %townpresetlist.
        goto END
      }
    }
    if tolower("%1") = "burgletown" then
    {
      if (matchre("%2", "\b(%burgletownlist)\b")) then
      {  
        var setvar burgletown
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %burgletownlist.
        goto END
      }
    }
    if tolower("%1") = "burgletownm2" then
    {
      if (matchre("%2", "\b(%burgletownlist)\b")) then
      {  
        var setvar burgletownm2
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %burgletownlist.
        goto END
      }
    }
    if tolower("%1") = "pawntown" then
    {
      if (matchre("%2", "\b(%pawntownlist)\b")) then
      {  
        var setvar pawntown
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %pawntownlist.
        goto END
      }
    }
    if tolower("%1") = "pawntownm2" then
    {
      if (matchre("%2", "\b(%pawntownlist)\b")) then
      {  
        var setvar pawntownm2
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %pawntownlist.
        goto END
      }
    }
    if tolower("%1") = "performtown" then
    {
      if (matchre("%2", "\b(%performtownlist)\b")) then
      {  
        var setvar performtown
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %performtownlist.
        goto END
      }
    }
    if tolower("%1") = "performtownm2" then
    {
      if (matchre("%2", "\b(%performtownlist)\b")) then
      {  
        var setvar performtownm2
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %performtownlist.
        goto END
      }
    }
    if (tolower("%1") = "forgingtown") then
    {
      if (matchre("%2", "\b(%forgingtownlist)\b")) then
      {  
        var setvar forgingtown
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %forgingtownlist.
        goto END
      }
    }
    if (tolower("%1") = "forgingtownm2") then
    {
      if (matchre("%2", "\b(%forgingtownlist)\b")) then
      {  
        var setvar forgingtownm2
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose from %forgingtownlist.
        goto END
      }
    }   
    if tolower("%1") = "lootalerts" then goto YESNOSET
    if tolower("%1") = "lootalldead" then goto YESNOSET
    if tolower("%1") = "skinafterlock" then goto YESNOSET
    if tolower("%1") = "dropskins" then goto YESNOSET
    
    if tolower("%1") = "loottype" then
    {
      if matchre("%2", "\b(treasure|boxes|equipment|goods|all)\b") then
      {  
        var setvar loottype
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose treasure, boxes, equipment, goods, or all!
        goto END
      }
    }
    if tolower("%1") = "skinning" then
    {
      eval input toupper(%2)
      if matchre("%input", "\b(YES|NO|AUTO)\b") then
      {  
        var setvar skinning
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose yes, no, or auto!
        goto END
      }
    }
    if tolower("%1") = "arrange" then
    {
      if matchre("%2", "\b(0|1|2|3|4|5)\b") then
      {  
        var setvar arrange
        eval input toupper(%2)  
        put #var %setvar %input
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
    if tolower("%1") = "dissect" then goto YESNOSET
    if tolower("%1") = "loottypem2" then
    {
      if matchre("%2", "\b(treasure|boxes|equipment|goods|all)\b") then
      {  
        var setvar loottype
        eval input tolower(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose treasure, boxes, equipment, goods, or all!
        goto END
      }
    }
    if tolower("%1") = "skinningm2" then
    {
      eval input toupper(%2)
      if matchre("%input", "\b(YES|NO|AUTO)\b") then
      {  
        var setvar skinningm2
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can only choose yes, no, or auto!
        goto END
      }
    }
    if tolower("%1") = "arrangem2" then
    {
      if matchre("%2", "\b(0|1|2|3|4|5)\b") then
      {  
        var setvar arrange
        eval input toupper(%2)  
        put #var %setvar %input
        put #var save
        goto VARDISPLAY
      }
      else
      {
        put #echo mono You can't arrange %2 times!
        goto END
      }
    }
    if tolower("%1") = "arrangeforpartm2" then goto YESNOSET
    if tolower("%1") = "dissectm2" then goto YESNOSET
    
    
    if tolower("%1") = "astralsafe" then goto YESNOSET 
    if tolower("%1") = "hundredth" then goto YESNOSET 
    
    if tolower("%1") = "maneuverlist" then goto LISTSET
    if tolower("%1") = "cleaveweapon" then goto TEXTSET
    if tolower("%1") = "crashweapon" then goto TEXTSET
    if tolower("%1") = "impaleweapon" then goto TEXTSET
    if tolower("%1") = "twirlweapon" then goto TEXTSET
    if tolower("%1") = "doublestrikeweapon" then goto TEXTSET
    if tolower("%1") = "doublestrikeweapon2" then goto TEXTSET
    if tolower("%1") = "powershotweapon" then goto TEXTSET
    if tolower("%1") = "powershotammo" then goto TEXTSET
    
    if tolower("%1") = "summonelement" then goto TEXTSET
    if tolower("%1") = "summoningot" then goto TEXTSET
    if tolower("%1") = "summonlist" then goto LISTSET
    if tolower("%1") = "summoncleave" then goto TEXTSET
    if tolower("%1") = "summoncrash" then goto TEXTSET
    if tolower("%1") = "summondoublestrike" then goto TEXTSET
    
    if tolower("%1") = "killdb" then goto YESNOSET
    if tolower("%1") = "killdbspell" then goto TEXTSET
    if tolower("%1") = "killdbprepmana" then goto TEXTSET
    if tolower("%1") = "killdbaddmana" then goto TEXTSET
    if tolower("%1") = "killloot" then goto YESNOSET
    if tolower("%1") = "killadvance" then goto YESNOSET
    if tolower("%1") = "killretreat" then goto YESNOSET
    if tolower("%1") = "killtmfocus" then goto YESNOSET
    if tolower("%1") = "killbuffing" then goto YESNOSET
    if tolower("%1") = "killtm" then goto YESNOSET
    if tolower("%1") = "killtmspell" then goto TEXTSET
    if tolower("%1") = "killtmprepmana" then goto TEXTSET
    if tolower("%1") = "killtmaddmana" then goto TEXTSET
    if tolower("%1") = "killcyclic" then goto YESNOSET
    if tolower("%1") = "killcycspell" then goto REGCYCLICSET
    if tolower("%1") = "killcycprepmana" then goto TEXTSET
    if tolower("%1") = "killweapon" then goto YESNOSET
    if tolower("%1") = "killweapontype" then
    {
      if matchre("%2", "\b(melee|brawl|aimed|thrown)\b") then
      {  
        var setvar killweapontype
        eval input tolower(%2)  
        put #var %setvar %input
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
    if tolower("%1") = "killthrownverb" then goto YESNOSET
    if tolower("%1") = "killweaponitem" then goto TEXTSET
    if tolower("%1") = "killammo" then goto TEXTSET
    if tolower("%1") = "beckonthenaga" then goto YESNOSET
    if tolower("%1") = "btnprepmana" then goto TEXTSET
    if tolower("%1") = "btnaddmana" then goto TEXTSET
    if tolower("%1") = "dragonsbreath" then goto YESNOSET
    if tolower("%1") = "dbprepmana" then goto TEXTSET
    if tolower("%1") = "dbaddmana" then goto TEXTSET
    if tolower("%1") = "blufmorgaraen" then goto YESNOSET
    if tolower("%1") = "bgprepmana" then goto TEXTSET
    if tolower("%1") = "bgaddmana" then goto TEXTSET
    if tolower("%1") = "magneticballista" then goto YESNOSET
    if tolower("%1") = "mabprepmana" then goto TEXTSET
    if tolower("%1") = "mabaddmana" then goto TEXTSET
    
    if tolower("%1") = "spell" then goto YESNOSET
    if tolower("%1") = "spellm2" then goto YESNOSET
    if tolower("%1") = "spellnum" then goto 1THRU4SET
    if tolower("%1") = "spellnumm2" then goto 1THRU4SET
    if tolower("%1") = "spell1" then goto TEXTSET
    if tolower("%1") = "spell1mana" then goto TEXTSET
    if tolower("%1") = "spell1symb" then goto YESNOSET
    if tolower("%1") = "spell2" then goto TEXTSET
    if tolower("%1") = "spell2mana" then goto TEXTSET
    if tolower("%1") = "spell2symb" then goto YESNOSET
    if tolower("%1") = "spell3" then goto TEXTSET
    if tolower("%1") = "spell3mana" then goto TEXTSET
    if tolower("%1") = "spell3symb" then goto YESNOSET
    if tolower("%1") = "spell4" then goto TEXTSET
    if tolower("%1") = "spell4mana" then goto TEXTSET
    if tolower("%1") = "spell4symb" then goto YESNOSET
    if tolower("%1") = "tmdbprior" then goto YESNOSET
    if tolower("%1") = "tm" then goto YESNOSET
    if tolower("%1") = "tmm2" then goto YESNOSET
    if tolower("%1") = "spelltm" then goto TEXTSET
    if tolower("%1") = "spelltmmana" then goto TEXTSET
    if tolower("%1") = "debil" then goto YESNOSET
    if tolower("%1") = "debilm2" then goto YESNOSET
    if tolower("%1") = "spelldebil" then goto TEXTSET
    if tolower("%1") = "spelldebilmana" then goto TEXTSET
    if tolower("%1") = "cyclic" then goto YESNOSET
    if tolower("%1") = "cyclicm2" then goto YESNOSET
    if tolower("%1") = "cyclicbuff" then goto YESNOSET
    if tolower("%1") = "spellcnumm2" then goto 1THRU3SET
    if tolower("%1") = "spellc1" then goto REGCYCLICSET
    if tolower("%1") = "spellc1prepmana" then goto TEXTSET 
    if tolower("%1") = "spellc2" then goto REGCYCLICSET
    if tolower("%1") = "spellc2prepmana" then goto TEXTSET 
    if tolower("%1") = "spellc3" then goto REGCYCLICSET
    if tolower("%1") = "spellc3prepmana" then goto TEXTSET
    if tolower("%1") = "cyctm" then goto YESNOSET
    if tolower("%1") = "cyctmm2" then goto YESNOSET
    if tolower("%1") = "spellcyctm" then goto CYCTMSET
    if tolower("%1") = "spellcyctmmana" then goto TEXTSET 
    if tolower("%1") = "cycdebil" then goto YESNOSET
    if tolower("%1") = "cycdebilm2" then goto YESNOSET
    if tolower("%1") = "spellcycdebil" then goto CYCDBSET
    if tolower("%1") = "spellcycdebilmana" then goto TEXTSET
    if tolower("%1") = "buff" then goto YESNOSET
    if tolower("%1") = "buffnum" then goto 0THRU16SET
    if tolower("%1") = "buff1" then goto BUFFSET  
    if tolower("%1") = "buff1mana" then goto TEXTSET
    if tolower("%1") = "buff2" then goto BUFFSET
    if tolower("%1") = "buff2mana" then goto TEXTSET
    if tolower("%1") = "buff3" then goto BUFFSET
    if tolower("%1") = "buff3mana" then goto TEXTSET
    if tolower("%1") = "buff4" then goto BUFFSET
    if tolower("%1") = "buff4mana" then goto TEXTSET
    if tolower("%1") = "buff5" then goto BUFFSET
    if tolower("%1") = "buff5mana" then goto TEXTSET
    if tolower("%1") = "buff6" then goto BUFFSET
    if tolower("%1") = "buff6mana" then goto TEXTSET
    if tolower("%1") = "buff7" then goto BUFFSET
    if tolower("%1") = "buff7mana" then goto TEXTSET
    if tolower("%1") = "buff8" then goto BUFFSET
    if tolower("%1") = "buff8mana" then goto TEXTSET
    if tolower("%1") = "buff9" then goto BUFFSET
    if tolower("%1") = "buff9mana" then goto TEXTSET
    if tolower("%1") = "buff10" then goto BUFFSET
    if tolower("%1") = "buff10mana" then goto TEXTSET
    if tolower("%1") = "buff11" then goto BUFFSET
    if tolower("%1") = "buff11mana" then goto TEXTSET
    if tolower("%1") = "buff12" then goto BUFFSET
    if tolower("%1") = "buff12mana" then goto TEXTSET
    if tolower("%1") = "buff13" then goto BUFFSET
    if tolower("%1") = "buff13mana" then goto TEXTSET
    if tolower("%1") = "buff14" then goto BUFFSET
    if tolower("%1") = "buff14mana" then goto TEXTSET
    if tolower("%1") = "buff15" then goto BUFFSET
    if tolower("%1") = "buff15mana" then goto TEXTSET
    if tolower("%1") = "buff16" then goto BUFFSET
    if tolower("%1") = "buff16mana" then goto TEXTSET
    
    
    
    
    if tolower("%1") = "avoidshock" then goto YESNOSET
    if tolower("%1") = "perchealth" then goto YESNOSET
    if tolower("%1") = "manipulate" then goto YESNOSET
    if tolower("%1") = "manipnum" then goto TEXTSET
    if tolower("%1") = "paralysis" then goto YESNOSET 
    if tolower("%1") = "paralysismana" then goto TEXTSET 
    if tolower("%1") = "vitheal" then goto YESNOSET 
    if tolower("%1") = "vithealmana" then goto TEXTSET
    if tolower("%1") = "heal" then goto YESNOSET 
    if tolower("%1") = "healmana" then goto TEXTSET
    if tolower("%1") = "curedisease" then goto YESNOSET 
    if tolower("%1") = "curediseasemana" then goto TEXTSET
    if tolower("%1") = "flushpoisons" then goto YESNOSET 
    if tolower("%1") = "flushpoisonsmana" then goto TEXTSET
    if tolower("%1") = "adcheal" then goto YESNOSET
    if tolower("%1") = "adcdisease" then goto YESNOSET
    if tolower("%1") = "adcpoison" then goto YESNOSET
    if tolower("%1") = "upkeepregen" then goto YESNOSET
    if tolower("%1") = "upkeepregenmana" then goto TEXTSET
    if tolower("%1") = "absolution" then goto YESNOSET
    if tolower("%1") = "absolutionmana" then goto TEXTSET
    if tolower("%1") = "iztouch" then goto YESNOSET
    if tolower("%1") = "izmana" then goto TEXTSET
    if tolower("%1") = "iztimer" then goto TEXTSET
    if tolower("%1") = "symbiosisbuff" then goto YESNOSET
    if tolower("%1") = "symbiosisspell" then goto TEXTSET
    if tolower("%1") = "symbiosismana" then goto TEXTSET
    if tolower("%1") = "tattoobuff" then goto YESNOSET
    if tolower("%1") = "tattooaddmana" then goto TEXTSET
    if tolower("%1") = "wandbuff" then goto YESNOSET
    if tolower("%1") = "wandbuffnum" then goto TEXTSET
    if tolower("%1") = "wandstorage" then goto TEXTSET
    if tolower("%1") = "wand1item" then goto TEXTSET
    if tolower("%1") = "wand1num" then goto TEXTSET
    if tolower("%1") = "wand1spell" then gosub WANDBUFFSET
    if tolower("%1") = "wand2item" then goto TEXTSET
    if tolower("%1") = "wand2num" then goto TEXTSET
    if tolower("%1") = "wand2spell" then goto WANDBUFFSET
    if tolower("%1") = "wand3item" then gosub TEXTSET
    if tolower("%1") = "wand3num" then goto TEXTSET
    if tolower("%1") = "wand3spell" then gosub WANDBUFFSET
    if tolower("%1") = "wand4item" then goto TEXTSET
    if tolower("%1") = "wand4num" then goto TEXTSET
    if tolower("%1") = "wand4spell" then gosub WANDBUFFSET
     
    if tolower("%1") = "debilassist" then goto YESNOSET
    if tolower("%1") = "dbanum" then goto TEXTSET
    if tolower("%1") = "dbalist" then goto LISTSET
    if tolower("%1") = "dbaspell1" then goto TEXTSET
    if tolower("%1") = "dbaspell1mana" then goto TEXTSET
    if tolower("%1") = "dbaspell2" then goto TEXTSET
    if tolower("%1") = "dbaspell2mana" then goto TEXTSET
    if tolower("%1") = "dbaspell3" then goto TEXTSET
    if tolower("%1") = "dbaspell3mana" then goto TEXTSET
    
    if tolower("%1") = "gbuff" then goto YESNOSET
    if tolower("%1") = "gbufftarget" then goto TEXTSET
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

     
    if tolower("%1") = "performcyclic" then goto YESNOSET
    if tolower("%1") = "pspellcnum" then goto REG1THRU3SET
    if tolower("%1") = "pspellc1" then goto REGCYCLICSET
    if tolower("%1") = "pspellc1prepmana" then goto TEXTSET 
    if tolower("%1") = "pspellc2" then goto REGCYCLICSET
    if tolower("%1") = "pspellc2prepmana" then goto TEXTSET 
    if tolower("%1") = "pspellc3" then goto REGCYCLICSET
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
	gosub TITLE
  put #echo mono Options:
  put #echo mono .SET <variable> <value> - changes variables
	put #echo mono  .SET DISPLAY ALL  - Displays all variables
	put #echo
  put #echo mono  .SET DISPLAY GENERAL - General variables.
  put #echo mono  .SET DISPLAY UPKEEP - In-town upkeep variables.
  put #echo mono  .SET DISPLAY HUNTING - Variables for where you train and how you loot.
  put #echo mono  .SET DISPLAY COMBAT - Variables for skills trained in combat.
  put #echo mono  .SET DISPLAY NONCOMBAT - Variables for skills trained out of combat.
  put #echo mono  .SET DISPLAY MAGIC - Magic and spell variables.
  put #echo mono  .SET DISPLAY GUILD - Guild-specific variables.
  put #echo mono  .SET DISPLAY MULTI - Multi-Area variables.
	put #echo
	put #echo mono  .SET DISPLAY KILL - Variables for Kill.cmd script.
	put #echo mono  .SET DISPLAY OTHER - Variables for scripts other than Train.cmd.
	put #echo 
	goto END


YESNOSET:
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
  put #var %setvar %input
  put #var save
  goto VARDISPLAY


0THRU8SET:
  if matchre("%2", "\b(0|1|2|3|4|5|6|7|8)\b") then
  {  
    eval setvar tolower(%1)
    eval input toupper(%2)  
    put #var %setvar %input
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
    put #var %setvar %input
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

REG1THRU3SET:
  if matchre("%2", "\b(1|2|3)\b") then
  {
    eval setvar tolower(%1)
    eval input1 tolower(%2) 
    var input %input1
    put #var %setvar %input
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
    put #var %setvar %input
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

REG1THRU5SET:
  if matchre("%2", "\b(1|2|3|4|5)\b") then
  {
    eval setvar tolower(%1)
    eval input1 tolower(%2) 
    var input %input1
    put #var %setvar %input
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
    put #var %setvar %input
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
    put #var %setvar %input
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

CYCTMSET:
  eval setvar tolower(%1)
  eval input1 tolower(%2)
  eval input2 tolower(%3)
  if 3 then var input %input1 %input2
  else var input %input1 
  if contains("%cyctms", "|%input|") then
  { 
    put #var %setvar %input
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
    put #var %setvar %input
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
      gosub TITLE
      gosub DISPLAYGENERAL
      gosub DISPLAYHUNTING
      gosub DISPLAYUPKEEP
      gosub DISPLAYNONCOMBAT
      gosub DISPLAYCOMBAT
      gosub DISPLAYMAGIC
      gosub DISPLAYGUILD
      #gosub DISPLAYKILL
      #gosub DISPLAYOTHER
      goto END
    }
        
    gosub TITLE
    if tolower("%2") = "general" then gosub DISPLAYGENERAL
    if tolower("%2") = "magic" then gosub DISPLAYMAGIC
    if tolower("%2") = "hunting" then gosub DISPLAYHUNTING
    if tolower("%2") = "multi" then gosub DISPLAYMULTI
    if tolower("%2") = "upkeep" then gosub DISPLAYUPKEEP
    if tolower("%2") = "combat" then gosub DISPLAYCOMBAT
    if tolower("%2") = "noncombat" then gosub DISPLAYNONCOMBAT
    if tolower("%2") = "guild" then
    {
      var buffloop 0
      gosub DISPLAYGUILD
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
  
	
DISPLAYGENERAL:
	var varmatch 1
	put #echo mono =================== General ====================
	put #echo
	gosub OUTPUT CharacterName
	gosub OUTPUT Guild
	gosub OUTPUT Circle
	put #echo
	put #echo mono DeathAction: $deathaction     (logout or alert)
	put #echo mono DisconnectAction: $disconnectaction     (reconnect or quit)
	put #echo mono ArrestAction: $arrestaction     (logout or alert)
	put #echo
	gosub OUTPUT AlertWindow
  gosub OUTPUT HealthAlerts HealthAlertNum
	gosub OUTPUT NerveAlerts
	gosub OUTPUT BackfireAlerts
	gosub OUTPUT SorceryAlerts
	gosub OUTPUT InventoryAlerts
	put #echo
	gosub OUTPUT SpeechAlerts
	gosub OUTPUT EmoteAlerts
	gosub OUTPUT GMAlerts
	gosub OUTPUT PvPAlerts
	gosub OUTPUT PvPStealthAlerts
	gosub OUTPUT ArrivalAlerts
  gosub OUTPUT ParanoiaAlerts
  put #echo
  gosub OUTPUT TendArea
  gosub OUTPUT TendObject
  put #echo
  gosub OUTPUT Whitelist
  gosub OUTPUT BlackList
  put #echo
  gosub OUTPUT Almanac AlmanacItem
	gosub OUTPUT AlmanacAlerts
	gosub OUTPUT EJournal EJournalItem
	gosub OUTPUT EJournalStates
	gosub OUTPUT LocksmithBox LocksmithBoxTimer
  gosub OUTPUT LocksmithBoxItem
	gosub OUTPUT SkinFATrainer SkinFATrainerTimer
  gosub OUTPUT SkinFATrainerItem
	gosub OUTPUT Tarantula TarantulaItem
	gosub OUTPUT TarantulaSkill1 TarantulaSkill2
	gosub OUTPUT Textbook TextbookTimer
	gosub OUTPUT TextbookItem TextbookList
	gosub OUTPUT TomeOfLore TomeOfLoreItem
  gosub OUTPUT Windboard WindboardTimer
  gosub OUTPUT WindboardTrick WindboardCharge
	put #echo
  return


DISPLAYMAGIC:
  var varmatch 1
	put #echo mono  =================== Magic ====================
	put #echo
  if (($guild != "Barbarian") && ($guild != "Thief")) then
  {
    gosub OUTPUT MinConcentration
    gosub OUTPUT MinMana
    gosub OUTPUT HarnessMax (The maximum amount that will be harnessed or charged into cambrinth in one go.)
    gosub OUTPUT Harnessing (Do you harness mana for casting.)
    gosub OUTPUT Cambrinth (Do you use cambrinth for casting.)
    gosub OUTPUT DedicatedCambrinth (Do you have the Dedicated Cambrinth feat.)
    gosub OUTPUT CambItems
    gosub OUTPUT CambItem1 CambItem1Mana
    gosub OUTPUT CambItem1Worn
    gosub OUTPUT CambItem2 CambItem2Mana
    gosub OUTPUT CambItem2Worn
    gosub OUTPUT RitualFocus
    gosub OUTPUT RitualFocusWorn
    gosub OUTPUT RitualFocusStorage RitualFocusContainer
    gosub OUTPUT TMFocus TMFocusItem
    gosub OUTPUT TMFocusStorage TMFocusContainer
    gosub OUTPUT Tattoo
    gosub OUTPUT TattooType (runic|heroic)
    gosub OUTPUT TattooSpell
    gosub OUTPUT TattooPrepMana TattooAddMana
    gosub OUTPUT TattooBuff (Tattoo is cast and maintained as a buff)
    put #echo
    gosub OUTPUT Spell
    gosub OUTPUT SpellNum
    gosub OUTPUT Spell1 Spell1Mana
    gosub OUTPUT Spell1Symb
    gosub OUTPUT Spell2 Spell2Mana
    gosub OUTPUT Spell2Symb
    gosub OUTPUT Spell3 Spell3Mana
    gosub OUTPUT Spell3Symb
    gosub OUTPUT Spell4 Spell4Mana
    gosub OUTPUT Spell4Symb
    put #echo
    gosub OUTPUT TMDBPrior (Gives priority to TM and Debil over other spell training.)
    gosub OUTPUT TM
    gosub OUTPUT SpellTM SpellTMMana
    gosub OUTPUT Debil
    gosub OUTPUT SpellDebil SpellDebilMana
    put #echo
    gosub OUTPUT Cyclic
    gosub OUTPUT CyclicBuff
    gosub OUTPUT SpellCNum
    gosub OUTPUT SpellC1 SpellC1PrepMana 
    gosub OUTPUT SpellC2 SpellC2PrepMana
    gosub OUTPUT SpellC3 SpellC3PrepMana
    put #echo
    gosub OUTPUT CycTM
    gosub OUTPUT SpellCycTM SpellCycTMMana
    gosub OUTPUT CycDebil
    gosub OUTPUT SpellCycDebil SpellCycDebilMana
    put #echo
    gosub OUTPUT Buff
    gosub OUTPUT BuffNum
    var buffloop 0
    gosub DISPLAYBUFFLOOP
    echo
    gosub OUTPUT SymbiosisBuff
    gosub OUTPUT SymbiosisSpell SymbiosisMana
    echo
    gosub OUTPUT Misdirection MisdirectionMana
    #put #echo
    #gosub OUTPUT GBuff
    #gosub OUTPUT GBuffNum
    #gosub OUTPUT GBuffTarget
    #var buffloop 0
    #gosub DISPLAYGBUFFLOOP
    #put #echo
    #gosub OUTPUT DebilAssist
    #gosub OUTPUT DBANum
    #put #echo mono DBAPause: $m$varsetdbapause     (the pause between casts of debilitation spells, in seconds)
    #gosub OUTPUT DBAList
    #gosub OUTPUT DBASpell1 DBASpell1Mana
    #gosub OUTPUT DBASpell2 DBASpell2Mana
    #gosub OUTPUT DBASpell3 DBASpell3Mana
  }
  else
  {
    gosub OUTPUT Tattoo
    gosub OUTPUT TattooType (runic|heroic)
    gosub OUTPUT TattooBuff (Tattoo is cast and maintained as a buff)
  }
  put #echo
  gosub OUTPUT WandBuff
  gosub OUTPUT WandStorage
  gosub OUTPUT WandBuffNum
  gosub OUTPUT Wand1Spell 
  gosub OUTPUT Wand1Item Wand1Num
  gosub OUTPUT Wand2Spell
  gosub OUTPUT Wand2Item Wand2num
  gosub OUTPUT Wand3Spell 
  gosub OUTPUT Wand3Item Wand3Num
  gosub OUTPUT Wand4Spell
  gosub OUTPUT Wand4Item Wand4num
  if (($guild != "Barbarian") && ($guild != "Thief")) then
  {
    put #echo
    put #echo Gray mono -----Advanced Options-----
    gosub OUTPUT StraightCast (Prep spells at your cap when Arcana and Attunement are locked.  For advanced casters.)
    gosub OUTPUT Difficulty1Percent (Percentage of full prep to wait for on intro spells.)
    gosub OUTPUT Difficulty2Percent (Percentage of full prep to wait for on basic spells.)
    gosub OUTPUT Difficulty3Percent (Percentage of full prep to wait for on intermediate spells.)
    gosub OUTPUT Difficulty4Percent (Percentage of full prep to wait for on advanced spells.)
    gosub OUTPUT Difficulty5Percent (Percentage of full prep to wait for on esoteric spells.)
  }
  return


DISPLAYUPKEEP:
  var varmatch 1
  put #echo mono  =================== Upkeep ====================
	put #echo
	gosub OUTPUT Bugout
  gosub OUTPUT BugoutNum
  gosub OUTPUT BugoutOnBleed
  gosub OUTPUT BugoutOnSend
  put #echo
	gosub OUTPUT AutoUpkeep
	gosub OUTPUT AUOnHealth AUHealthNum
  gosub OUTPUT AUOnBleed
  gosub OUTPUT AUOnPoison
  gosub OUTPUT AUOnFire
  gosub OUTPUT AUOnNerves
  gosub OUTPUT AUOnBurden AUBurdenNum
  gosub OUTPUT AUOnAmmo
  gosub OUTPUT AUOnBoxes
  put #echo
	gosub OUTPUT MinMoney
	gosub OUTPUT Exchange
	gosub OUTPUT AutoPath (yes|no|premium)
	gosub OUTPUT Repair
  gosub OUTPUT VaultTown
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
  gosub OUTPUT AmmoBuyTown (%ammopresetlist)
  gosub OUTPUT AmmoBuyList
  gosub OUTPUT AmmoContainer
  gosub OUTPUT AmmoMin
  if ($guild = "Cleric") then gosub OUTPUT Incense
  put #echo
  gosub OUTPUT LockpickBuy
  gosub OUTPUT LockpickBuyTown (%lockpickpresetlist)
  gosub OUTPUT LockpickStacker (Required to have one to use lockpicking.)
  gosub OUTPUT LockpickItem
  gosub OUTPUT BoxPopping
  gosub OUTPUT SkeletonKey
  gosub OUTPUT BucketItem
  gosub OUTPUT DismantleType
  if (("$guild" != "Barbarian") && ("$guild" != "Thief")) then
  {
    gosub OUTPUT BoxPopBuff (none|drum|hol|mt)
    gosub OUTPUT BoxPopBuffPrepMana
    gosub OUTPUT BoxPopBuffAddMana
  }
  put #echo
	gosub OUTPUT AppFocus
  gosub OUTPUT AppFocusItem
	gosub OUTPUT SpiderFeed
  return


DISPLAYCOMBAT:
	var varmatch 1
	put #echo mono  =================== Combat ====================
  put #echo
	gosub OUTPUT Weapons
	gosub OUTPUT WeaponList
	gosub OUTPUT StanceMain (a primary stance for combat that involves all 3 defenses)
  gosub OUTPUT LowestFirst
  gosub OUTPUT KillAfterLock (continues killing creatures after weapons are locked)
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
	gosub OUTPUT BastardSwordItem (Text should match exactly the weapon name in other variables, ristes should always be two words to prevent confusion between riste types).
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
  gosub OUTPUT ArmorCheck
  gosub OUTPUT ShieldItem
  gosub OUTPUT ParryStickItem
  gosub OUTPUT ArmorNum
  gosub OUTPUT Armor1Item Armor2Item
  gosub OUTPUT Armor3Item Armor4Item
  gosub OUTPUT Armor5Item Armor6Item 
  gosub OUTPUT KnucklesItem
  put #echo
  gosub OUTPUT Attune
  gosub OUTPUT Recall
  gosub OUTPUT Hunting HuntingTimer
  gosub OUTPUT Stealth
  gosub OUTPUT Tactics
  put #echo
  gosub OUTPUT RetreatDelay (delays actions that require retreating - appraise, collect - until after weapons have advanced sufficiently)
  gosub OUTPUT Appraise AppraiseTimer
  gosub OUTPUT AppraiseTarget (bundle, or creature)
  gosub OUTPUT AppSaveItem (none, tight, or lumpy, only relevant if AppraiseTarget is bundle.)
  gosub OUTPUT AppSaveItemStorage (must be different from main storage, only relevant if AppraiseTarget is bundle.)
  gosub OUTPUT Collect CollectTimer
  gosub OUTPUT CollectItem
  gosub OUTPUT CombatSanowret SanowretItem
  put #echo
  gosub OUTPUT Teaching TeachTargets
  gosub OUTPUT TeachSkill (must equal the full text of the skill)
	return
	

DISPLAYNONCOMBAT:
  var varmatch 1
	put #echo mono  =================== Noncombat ====================
  put #echo
  gosub OUTPUT NonCombat
	put #echo
  gosub OUTPUT Burgle
	gosub OUTPUT BurgleTool (pick, rope, or both, which chooses tool based on learningrates)  
  gosub OUTPUT BurglePickItem BurglePickWorn
  gosub OUTPUT BurgleRopeItem
  gosub OUTPUT BurgleMaxGrabs
  gosub OUTPUT BurgleLoot
  gosub OUTPUT BurgleStorage (Should be a large container that ideally contains no other items)
  gosub OUTPUT BurglePawn
  #gosub OUTPUT BurgleKeepList
  #if $guild = "Thief" then gosub OUTPUT BurgleThiefBin
  put #echo
  gosub OUTPUT Perform
  gosub OUTPUT PerformCyclic
	if tolower("$performcyclic") = "yes" then
  {
    gosub OUTPUT PSpellCNum
    gosub OUTPUT PSpellC1 PSpellC1PrepMana
    gosub OUTPUT PSpellC2 PSpellC2PrepMana
    gosub OUTPUT PSpellC3 PSpellC3PrepMana
    put #echo
  }
  gosub OUTPUT Instrument SongType
  gosub OUTPUT InstrumentWorn InstrumentHands
  gosub OUTPUT InstrumentAssess
  gosub OUTPUT InstClean InstCleanCloth
  gosub OUTPUT ClimbingRope ClimbingRopeName
  gosub OUTPUT ClimbingRopeHum HumSong
  put #echo
  gosub OUTPUT StudyArt (If enabled, will travel to Crossing)
  put #echo
  gosub OUTPUT NonComSanowret
  put #echo
  gosub OUTPUT Crafting
  gosub OUTPUT Forging
  gosub OUTPUT Outfitting
  gosub OUTPUT CraftingStorage (should have length at least 15 spans to accomodate all supplies)
  gosub OUTPUT CraftingStorageLocation (CraftingStorage container stored in portal|vault|none when not direclty in use)
  
  gosub OUTPUT ForgingDifficulty
  gosub OUTPUT ForgingDiscipline
  gosub OUTPUT ForgingMaterial
  gosub OUTPUT ForgingRepair
  gosub OUTPUT ForgingPrivateRoom
  gosub OUTPUT ForgingMaxVolumes
  gosub OUTPUT ForgingMaxQuantity
  gosub OUTPUT ForgingSmelting

  gosub OUTPUT OutfittingDifficulty
  gosub OUTPUT OutfittingCloth
  gosub OUTPUT OutfittingLeather
  gosub OUTPUT OutfittingRepair
  gosub OUTPUT OutfittingMaxYards
  gosub OUTPUT OutfittingMaxQuantity
  put #echo
	gosub OUTPUT awl bellows
	gosub OUTPUT hammer knittingneedles
	gosub OUTPUT pliers scissors
	gosub OUTPUT sewingneedles shovel
	gosub OUTPUT slickstone rod
	gosub OUTPUT tongs yardstick
	put #echo
	gosub OUTPUT Research
	gosub OUTPUT GAFMana
  gosub OUTPUT ResearchNum
  gosub OUTPUT ResearchType1 ResearchType2
  gosub OUTPUT ResearchType3 ResearchType4
  gosub OUTPUT ResearchType5
  put #echo
	return
	

DISPLAYBUFFLOOP:
  math buffloop add 1
  if %buffloop > $buffnum then return
  var displayvar Buff%buffloop
  eval lowervar tolower("%displayvar")
  var actualvar $%lowervar
  eval spacenum count("$0", " ")
  var displayvar2 Buff%buffloopMana
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
  goto DISPLAYBUFFLOOP

  
DISPLAYGBUFFLOOP:
  math buffloop add 1
  if %buffloop > $m$varsetgbuffnum then return
  put #echo mono GBuff%buffloop: $m$varsetgbuff%buffloop
  put #echo mono GBuff%buffloopPrepMana: $m$varsetgbuff%buffloopprepmana
  if contains("%rituals", "|$m$varsetgbuff%buffloop|") then
  else put #echo mono GBuff%buffloopAddMana: $m$varsetgbuff%buffloopaddmana
  goto DISPLAYGBUFFLOOP
 
 
DISPLAYGUILD:
  var varmatch 1
  if %buffloop = 0 then
  {
    put #echo
    put #echo mono  =================== Guild ====================
	  put #echo
    put #echo mono Guild: $guild
    if $guild = "Barbarian" then
    {
      gosub OUTPUT Expertise
      gosub OUTPUT ExpAccuracy
      gosub OUTPUT ExpDamage
      gosub OUTPUT Whirlwind
      gosub OUTPUT DualLoad
      gosub OUTPUT Warhorn WarhornItem
      put #echo
      gosub OUTPUT MinInnerFire (minimum inner fire to start a berserk or meditation.)
      put #echo
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
      put #echo
      gosub OUTPUT BerserkLandslide LandslideTraining
      gosub OUTPUT BerserkTornado TornadoTraining
      gosub OUTPUT BerserkTsunami
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
      gosub OUTPUT WhistlePiercing
      gosub OUTPUT MoveWhistle
      gosub OUTPUT MoveScream
      gosub OUTPUT EilliesCry
      gosub OUTPUT EilliesCryMana
      gosub OUTPUT Misdirection
      gosub OUTPUT MisdirectionMana
    }
    if $guild = "Cleric" then
    {
      gosub OUTPUT Theurgy
      gosub OUTPUT Pray PrayDeity
      gosub OUTPUT AnloralPin AnloralPinItem
      gosub OUTPUT PilgrimBadge PilgrimBadgeitem
      gosub OUTPUT MeraudCommune
      gosub OUTPUT ElunedCommune
      gosub OUTPUT TamsineCommune
      gosub OUTPUT Recite
      gosub OUTPUT Dance
      gosub OUTPUT PrayerMat PrayerMatItem
      gosub OUTPUT BlessDelay
      echo
      gosub OUTPUT DirtStacker DirtStackerItem
      gosub OUTPUT Lighter LighterItem
      gosub OUTPUT WaterContainer
      echo
      gosub OUTPUT HYHCast
      echo
      gosub OUTPUT OsrelMeraud OMMana
      gosub OUTPUT OMBuffNum
    }
    if $guild = "Empath" then
    {
      gosub OUTPUT AvoidShock
      gosub OUTPUT PercHealth
      gosub OUTPUT Manipulate ManipNum
      gosub OUTPUT Paralysis ParalysisMana
      gosub OUTPUT VitHeal VitHealMana
      gosub OUTPUT Heal HealMana
      gosub OUTPUT CureDisease CureDiseaseMana
      gosub OUTPUT FlushPoisons FlushPoisonsMana
      gosub OUTPUT ADCHeal
      gosub OUTPUT ADCDisease
      gosub OUTPUT ADCPoison
      gosub OUTPUT UpkeepRegen UpkeepRegenMana
      gosub OUTPUT Absolution AbsolutionMana
      gosub OUTPUT IZTouch IZMana
      gosub OUTPUT IZTimer (in seconds, minimum is 0)
    }
    if $guild = "Moon Mage" then
    {
      gosub OUTPUT Astro AstroTimer
      gosub OUTPUT PredictionTool PredictionToolItem
      gosub OUTPUT TKTItem
      gosub OUTPUT ShadowlingNoun
      gosub OUTPUT PiercingGaze PiercingGazeMana
      gosub OUTPUT MindShout MindShoutMana
      put #echo
      gosub OUTPUT BurgleRF BurgleRFDelay
    }
    if $guild = "Necromancer" then
    {
      gosub OUTPUT NecroState
      gosub OUTPUT NecroSafety
      gosub OUTPUT NecroWhitelist
      gosub OUTPUT RiteofGrace
      gosub OUTPUT ROGMana
      gosub OUTPUT ROGCycle
      gosub OUTPUT Devour DevourMana
      gosub OUTPUT SiphonVit SiphonVitMana
      if $necrostate != "redeemed" then gosub OUTPUT SiphonVitNum
      put #echo
      gosub OUTPUT Preserve
      gosub OUTPUT Dissect
      gosub OUTPUT Harvest
      gosub OUTPUT HarvestStore
      gosub OUTPUT HarvestStoreNum
      gosub OUTPUT EOTBRel
      put #echo
      gosub OUTPUT BurgleEOTB
      gosub OUTPUT BurgleEOTBDelay
    }
    if $guild = "Paladin" then
    {
      gosub OUTPUT Smite
      gosub OUTPUT Tithe
      gosub OUTPUT PilgrimBadge
      gosub OUTPUT PilgrimBadgeitem
      gosub OUTPUT AnloralPin
      gosub OUTPUT AnloralPinItem
      gosub OUTPUT WaterContainer
    }
    if $guild = "Ranger" then
    {
      gosub OUTPUT Pounce
      gosub OUTPUT Snipe
      gosub OUTPUT DualLoad
      gosub OUTPUT RITSType
    }
    if $guild = "Thief" then
    {
      gosub OUTPUT Backstab
      gosub OUTPUT Snipe
      gosub OUTPUT DualLoad
      put #echo
      gosub OUTPUT KhriMax
      gosub OUTPUT KhriAdaptation
      gosub OUTPUT KhriAvoidance
      gosub OUTPUT KhriCunning
      gosub OUTPUT KhriDampen
      gosub OUTPUT KhriDarken
      gosub OUTPUT KhriElusion
      gosub OUTPUT KhriEndure
      gosub OUTPUT KhriEvanescence
      gosub OUTPUT KhriFlight
      gosub OUTPUT KhriFright
      gosub OUTPUT KhriFocus
      gosub OUTPUT KhriHarrier
      gosub OUTPUT KhriHasten
      gosub OUTPUT KhriInsight
      gosub OUTPUT KhriPlunder
      gosub OUTPUT KhriSagacity
      gosub OUTPUT KhriSensing
      gosub OUTPUT KhriSerenity
      gosub OUTPUT KhriShadowstep
      gosub OUTPUT KhriSight
      gosub OUTPUT KhriSteady
      gosub OUTPUT KhriStrike
      put #echo
      gosub OUTPUT KhriGuile
      gosub OUTPUT KhriProwess
      gosub OUTPUT KhriTerrify
      put #echo
      gosub OUTPUT KhriDebil
      gosub OUTPUT KhriDebilType
      put #echo 
      gosub OUTPUT MoveVanish
      put #echo
      gosub OUTPUT BurgleKhriHasten
      gosub OUTPUT BurgleKhriPlunder
      gosub OUTPUT BurgleKhriSilence
      gosub OUTPUT BurgleKhriSlight
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
      #gosub OUTPUT TradingSellSource (vault or portal)
      gosub OUTPUT TradingSellTown
      gosub OUTPUT TradingTasks
    }
    if $guild = "Warrior Mage" then
    {
      gosub OUTPUT Summoning
      gosub OUTPUT SummonWeapon
      gosub OUTPUT SummonWeaponTimer (in seconds, minimum is 0)
      gosub OUTPUT Pathway PathwayType
      gosub OUTPUT Domain DomainType
      put #echo
      gosub OUTPUT ChargeAfterLock (Cast a spell to boost charge, even after magic is locked/capped)
      gosub OUTPUT CALSpell
      gosub OUTPUT CALPrepMana
      gosub OUTPUT CALAddMana
      put #echo
      gosub OUTPUT IgniteBackup
      put #echo
      gosub OUTPUT PlatRing
      gosub OUTPUT PlatRingItem
    }
    math buffloop add 1
  }
  if %buffloop >= 1 then
  {  
    if %buffloop > $ombuffnum then return
    put #echo mono OMBuff%buffloop: $ombuff%buffloop
    math buffloop add 1
    goto DISPLAYGUILD
  }
  return

DISPLAYOTHER:
  var varmatch 1
  #put #echo mono =================== P Script Variables ===================
  #echo
  #echo
  put #echo mono =================== Combo Script Variables ===================
  echo
  gosub OUTPUT ManeuverList
  gosub OUTPUT CleaveWeapon
  gosub OUTPUT CrashWeapon
  gosub OUTPUT ImpaleWeapon
  gosub OUTPUT TwirlWeapon
  gosub OUTPUT DoublestrikeWeapon
  gosub OUTPUT DoublestrikeWeapon2
  gosub OUTPUT PowershotWeapon
  gosub OUTPUT PowershotAmmo
  if ("$guild" = "Warrior Mage") then
  {
    echo
    put #echo mono =================== Slide Script Variables ===================
    echo
    gosub OUTPUT SummonElement
    gosub OUTPUT SummonIngot
    gosub OUTPUT SummonList
    gosub OUTPUT SummonCleave
    gosub OUTPUT SummonCrash
    gosub OUTPUT SummonDoublestrike
  }
  if $guild = "Moon Mage" then
  {
    echo
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
  }
  if ("$guild" = "Warrior Mage") then
  {
    put #echo mono DragonsBreath: $dragonsbreath
    put #echo mono DBPrepMana: $dbprepmana
    put #echo mono DBAddMana: $dbaddmana
    put #echo mono BlufmorGaraen: $blufmorgaraen
    put #echo mono BGPrepMana: $bgprepmana
    put #echo mono BGAddMana: $bgaddmana
    put #echo mono MagneticBallista: $magneticballista
    put #echo mono MABPrepMana: $mabprepmana
    put #echo mono MABAddMana: $mabaddmana
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

DISPLAYHUNTING:
  var varmatch 1
  put #echo
  put #echo mono ========== Movement Variables ==========
  put #echo
  gosub OUTPUT KillBeforeMove     (Finish your kill before leaving combat for other training.)
  gosub OUTPUT SleepOnTravel
  gosub OUTPUT MoveTimeout     (Timeout, in seconds, before the Travel or AutoMapper script will be restarted.)
  gosub OUTPUT PreferGroup     (Prefer hunting with people on your WhiteList to an empty room)
  gosub OUTPUT HuntingPremium (YES, NO, or ONLY if you wish to select only from Premium rooms.)
  gosub OUTPUT PremiumRing
	gosub OUTPUT PremiumRingItem
  put #echo
  gosub OUTPUT HuntingArea
  put #echo Gray mono Options: 
  put #echo Gray --P1: %combatpresetp1
  put #echo Gray --P2: %combatpresetp2
  put #echo Gray --P3: %combatpresetp3
  put #echo Gray --P4: %combatpresetp4
  put #echo Gray --P5: %combatpresetp5
  put #echo
	gosub OUTPUT UpkeepTown (%townpresetlist)
  gosub OUTPUT BurgleTown (%burgletownlist)
	gosub OUTPUT PawnTown (%pawntownlist)
  gosub OUTPUT PerformTown (%performtownlist)
  gosub OUTPUT ForgingTown (%forgingtownlist)
  put #echo
  gosub OUTPUT Storage
  gosub OUTPUT BoxStorage
  gosub OUTPUT LootAlerts
	gosub OUTPUT LootAllDead (not group-hunting friendly)  
	gosub OUTPUT CollectBoxes
	gosub OUTPUT CollectCoin	
	gosub OUTPUT CollectGem
	gosub OUTPUT SaveGwethStones
	gosub OUTPUT CollectMaps
	gosub OUTPUT CollectNuggets
	gosub OUTPUT CollectBars
	gosub OUTPUT CollectMaterials
	gosub OUTPUT CollectScroll
	gosub OUTPUT MiscKeepList (list of loot items to be kept, separated by the | character)
	gosub OUTPUT SkinAfterLock
  gosub OUTPUT DropSkins
	put #echo
	put #echo mono ========== Loot Variables ==========
  put #echo
	gosub OUTPUT LootType (treasure|boxes|equipment|goods|all)
  gosub OUTPUT Skinning (yes|no)
	gosub OUTPUT Arrange
  gosub OUTPUT ArrangeForPart
  gosub OUTPUT Dissect
  return

DISPLAYMULTI:
  var varmatch 1
  put #echo mono ========== Multi-Area Hunting Variables ==========
  put #echo mono ===============================================
  put #echo
  gosub OUTPUT MultiArea (Multi-area training is turned on or off.)
  gosub OUTPUT MultiAreaPriority (Which hunting area's skills take priority if both need training.)
  gosub OUTPUT MultiMindStep (The number of mindstates to step up by before moving to the other area.)
  put #echo
  put #echo mono Mode1List: $mode1list     (the list of skills checked, separated by |)
  #put #echo mono Mode1Step: $mode1step     (the number of mindstates to increase before moving to the other mode)
  #put #echo mono Mode1Priority: $mode1priority     (if YES, script will switch back to mode 1 if any skills hit 0)
  put #echo mono Mode2List: $mode2list     (the list of skills checked, separated by |)
  #put #echo mono Mode2Step: $mode2step     (the number of mindstates to increase before moving to the other mode)
  #put #echo mono Mode2Priority: $mode2priority     (if YES, script will switch back to mode 1 if any skills hit 0)
  put #echo Gray mono -----MultiTrain - Training different variable set sin multiple combat areas-----
  put #echo Gray mono Valid weapon skills to trigger off of: brawl, se, le, the, sb, lb, thb, stave, pole, lt, ht, bow, xbow, sling, parry
  put #echo Gray mono Valid magic skills to trigger off of: debil, tm, sorcery
  put #echo Gray mono Valid lore skills to trigger off of:  empathy, tactics
  put #echo Gray mono Valid survival skills to trigger off of: backstab, evasion, stealth, thanatology, skinning, firstaid
  put #echo Gray mono Valid armor skills to trigger off of: brigandine, chain, defending, light, plate, shield
  put #echo
  put #echo mono =================== Movement ===================
  gosub OUTPUT HuntingAreaM2
  gosub OUTPUT UpkeepTownM2 (%townpresetlist)
	gosub OUTPUT BurgleTownM2 (%burgletownlist)
	gosub OUTPUT PawnTownM2 (%pawntownlist)
  gosub OUTPUT PerformTownM2 (%performtownlist)
  gosub OUTPUT ForgingTownM2 (%forgingtownlist)
  put #echo
  put #echo mono =================== Loot ===================
  gosub OUTPUT LootTypeM2 (treasure|boxes|equipment|goods|all)
  gosub OUTPUT SkinningM2 (yes|no)
	gosub OUTPUT ArrangeM2
  gosub OUTPUT ArrangeForPartM2
  gosub OUTPUT DissectM2
  put #echo
  put #echo mono =================== Combat ===================
  gosub OUTPUT WeaponsM2
  gosub OUTPUT WeaponListM2
  gosub OUTPUT StealthM2
  gosub OUTPUT TacticsM2
  gosub OUTPUT CollectM2
  put #echo
  put #echo mono =================== NonCombat ===================
  gosub OUTPUT NonCombatM2
  gosub OUTPUT BurgleM2
  gosub OUTPUT PerformM2
  gosub OUTPUT CraftingM2
  gosub OUTPUT ForgingM2
  gosub OUTPUT OutfittingM2
  put #echo mono =================== Magic ===================
  gosub OUTPUT SpellM2
  gosub OUTPUT SpellNumM2
  gosub OUTPUT TMM2
  gosub OUTPUT DebilM2
  gosub OUTPUT CyclicM2
  gosub OUTPUT SpellCNumM2
  gosub OUTPUT CycTMM2
  gosub OUTPUT CycDebilM2
  return

OUTPUT:
  var displayvar $1
  eval lowervar tolower("%displayvar")
  var actualvar $%lowervar
  eval count2 length("$2")
  
  if %count2 > 0 then
  {
    eval parenthesesnum count("$2", "(")
    if (%parenthesesnum = 0) then
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
    else
    {
      var helpoutput $0
      #put #echo Yellow helpoutput: %helpoutput
      eval helpoutput replace("%helpoutput", "$1", "")
      #put #echo Yellow helpoutput: %helpoutput
      put #echo mono %displayvar: %actualvar     %helpoutput
    }
  }
  else put #echo mono %displayvar: %actualvar
  return
  
OUTPUTMULTI:
  var displayvar $1
  eval lowervar tolower("%displayvar")
  var actualvar $%lowervar
  eval count2 length("$2")
  
  if %count2 > 0 then
  {
    eval parenthesesnum count("$2", "(")
    if (%parenthesesnum = 0) then
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
      put #echo gray mono %displayvar: %actualvar%dotvar%displayvar2: %actualvar2
    }
    else
    {
      var helpoutput $0
      #put #echo Yellow helpoutput: %helpoutput
      eval helpoutput replace("%helpoutput", "$1", "")
      #put #echo Yellow helpoutput: %helpoutput
      put #echo gray mono %displayvar: %actualvar     %helpoutput
    }
  }
  else put #echo gray mono %displayvar: %actualvar
  return  

  
OUTPUTGRAY:
  var displayvar $1
  eval lowervar tolower("%displayvar")
  var actualvar $%lowervar
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
    
  
END: