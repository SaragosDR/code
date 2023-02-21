#ScriptMode -1 = Help
#ScriptMode 0 = NonCombat
#ScriptMode 1 = Combat
#ScriptMode 2 = BUffing
#ScriptMode 3 = Upkeep
#ScriptMode 4 = Burgle


#THIS IS THE PRAYER THAT YOUR CLERIC WILL RECITE DURING THEURGY TRAINING - CUSTOMIZE THIS!
var recitation Meraud, I give you your due with my passion and the power,\;Everild, I pay you tribute with the swing of my blade,\;As I defy the trials of Hodierna with my every breath.\;Faenella, I shall ever be tempered in your flames,\;Forged and reforged and reforged again,\;Until, one day, I am given Urrem'tier's mercy.\;Show me your strength, and I shall show you mine.

goto CUSTEND

CUSTOMSETS:
  #NONCOMBAT_EXAMPLE
  if tolower("%scriptmodename") = "astro" then
  {
    gosub TITLE
    echo
    echo ================Astrology Only===============
    echo
    var scriptmode 0
    var astro YES
    var cyclic NO
    var compendium NO
    var textbook NO
    var outdoor NO
    var spell NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var speechalerts NO
    var emotealerts NO
    var pvpstealthalerts NO
    var appfocus NO
    var noncomsanowret NO
    var teaching NO
    var research NO
    var almanac NO
    var tarantula NO
    var ejournal NO
    var windboard NO
    var locksmithbox NO
  }
  #COMBAT_EXAMPLES
  if tolower("%scriptmodename") = "empath" then
  {
    echo
    echo ================Empath Manipulate Training===============
    echo
    var scriptmode 1
    #var stealth NO
    var buff YES
    var cyclic NO
    var cyctm YES
    var spellctm gs
    var spellctmprepmana 5
    var tm YES
    var debil YES
    var nvtactics YES
  }
  if tolower("%scriptmodename") = "off" then
  {
    echo
    echo ================Off-Weapon Training===============
    echo
    var scriptmode 1
    var tm NO
    var debil NO
    var weaponnum 6
    var weapon1 THB
    var weapon2 LB
    var weapon3 SB
    var weapon4 LE
    var weapon5 SLING
    var weapon6 BOW
    var debilassist YES
    var dbanum 3
    var dbalist thb|lb|sb|le|sling|bow
  }
  if tolower("%scriptmodename") = "saroff" then
  {
    echo
    echo ================Saragos Off-Weapon Training===============
    echo
    var scriptmode 1
    var weaponnum 5
    var weapon1 THB
    var weapon2 BOW
    var weapon3 SLING
    var weapon4 SB
    var weapon5 LB
    #var weapon6 LE
    #var weapon7 THE
    var compendium NO
    var textbook NO
    var locksmithbox NO
    var skinfatrainer NO
    var windboard NO
    var outdoor NO
    var appraise NO
    var tactics NO
    var stealth NO
    var hunting NO
    var summon NO
    var summonweapon NO
    #var movetrain NO
    #var mttravel YES
    #var mttraveldest crossing
    #var mtmove YES
    #var mtmovelist 388
    #var mtreturntravel YES
    #var mtreturntraveldest dirge
    #var mtreturnmove YES
    #var mtreturnmovelist start
    var tm NO
    #var spell NO
    var cambrinth NO
    var harnessing NO
    var buff4 mof
    var abuffnum 1
    var arrange 2
    var debilassist NO
    var dbalist thb|bow|sling|sb|lb
    var attune NO
    var dbaspell2 vertigo
    var dbaspell2prepmana 33
    var findroomlist 572|573|574|575|576|577|578|579|580
  }
  
  if tolower("%scriptmodename") = "soroff" then
  {
    echo
    echo ================Sorhhn Off-Weapon Training===============
    echo
    var scriptmode 1
    var weaponnum 3
    var weapon1 BOW
    var weapon2 SLING
    var weapon3 THB
    var compendium NO
    var textbook NO
    var locksmithbox NO
    var skinfatrainer NO
    var windboard NO
    var outdoor NO
    var appraise NO
    var tactics NO
    var stealth NO
    var hunting NO
    var arrange 4
    var findroomlist 213|214|215|216|217|218|219|220
  }
  
  if tolower("%scriptmodename") = "vasrand" then
  {
    echo
    echo ================Vasrand Thanatology Training===============
    echo
    var scriptmode 1
    var compendium NO
    var textbook NO
    var locksmithbox NO
    var skinfatrainer NO
    var windboard NO
    var outdoor NO
    var appraise NO
    var tactics NO
    var stealth NO
    var hunting NO
    var spell NO
    var attune NO
    var recall NO
  }
  
  if tolower("%scriptmodename") = "sartm" then
  {
    echo
    echo ================Saragos TM Training===============
    echo
    var scriptmode 1
    var weaponnum 1
    var weapon1 HT
    var compendium NO
    var textbook NO
    var locksmithbox NO
    var skinfatrainer NO
    var windboard NO
    var outdoor NO
    var appraise NO
    var tactics NO
    var stealth NO
    var hunting NO
    var movetrain NO
    var tm YES
    var spell NO
    var buff4 mof
    var abuffnum 1
    var arrange 0
    var summoning NO
    var summonweapon NO
    var attune NO
  }
  if tolower("%scriptmodename") = "soff" then
  {
    echo
    echo ================Sorhhn Off-Weapon Training===============
    echo
    var scriptmode 1
    var weaponnum 3
    var weapon1 THB
    var weapon2 BOW
    var weapon3 SLING
    var compendium NO
    var textbook NO
    var locksmithbox NO
    var skinfatrainer NO
    var windboard NO
    var outdoor NO
    var appraise NO
    var tactics NO
    var stealth NO
    var hunting NO
    var movetrain NO
  }
  if tolower("%scriptmodename") = "ns" then
  {
    echo
    echo ================Navesi Staves Training===============
    echo
    var scriptmode 1
    var weaponnum 1
    var compendium NO
    var textbook NO
    var locksmithbox NO
    var skinfatrainer NO
    var windboard NO
    var outdoor NO
    var appraise NO
    var tactics NO
    var stealth NO
    var hunting NO
    var movetrain NO
    var tm NO
    var spell NO
  }
  if tolower("%scriptmodename") = "dl" then
  {
    echo
    echo ================Off-Weapon Training===============
    echo
    var scriptmode 1
    var tm NO
    var debil NO
    var weaponnum 1
    var weapon1 BOW
    var stealth NO
    var outdoor NO
    var appraise NO
    var almanac NO
    var tarantula NO
    var movetrain NO
    var autoupkeep NO
    var locksmithbox NO
  }
  #BUFFING_EXAMPLE
  if tolower("%scriptmodename") = "pvpbuff" then
  {
    gosub TITLE
    echo
    echo ================Full Buffing===============
    echo
    var scriptmode 2
    var buffingonly 1
    var cyclic NO
    var abuff NO
    var gbuff NO
    var summoning NO
    var compendium NO
    var textbook NO
    var combat NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var braid NO
    var astro NO
    #var harnessing YES
    var straightcast NO
    var perchealth NO
    var bugout NO
    var appfocus NO
    var noncomsanowret NO
    var teaching NO
    var research NO
    var almanac NO
    var windboard NO
    var locksmithbox NO
    var mbuff YES
    var buff YES
    var obuff YES
    var mbuff YES
    var obuffnum 4
    var obuff4 lw
    var obuff4prepmana 5
    var obuff4addmana 95
  }
  #BURGLE_EXAMPLE
  if tolower("%scriptmodename") = "burglepick" then
  {
    gosub TITLE
    echo
    echo ================Burgling with Lockpick===============
    echo
    var scriptmode 4
    var burgletoolitem lockpick
  }
  return
  if tolower("%scriptmodename") = "storm" then
  {
    gosub TITLE
    echo
    echo ================Astrology Only===============
    echo
    var scriptmode 1
    var autravel YES
    var autraveldest crossing
    var aureturntravel YES
    var aureturntraveldest ilaya
    var mttravel NO
    var mtmove YES
    var mtmovelist 32
    var mtreturntravel NO
  }
  #Sorhhn_PVP
  if tolower("%scriptmodename") = "pvpsor" then
  {
    gosub TITLE
    echo
    echo ================Full Buffing===============
    echo
    var scriptmode 2
    var buffingonly 1
    var khriAvoidance YES
    var khriCunning YES
    var khriDampen YES
    var khriDarken YES
    var khriElusion YES
    var khriEndure NO
    var khriFlight NO
    var khriFright NO
    var khriFocus YES
    var khriHarrier NO
    var khriHasten NO
    var khriInsight NO
    var khriPlunder NO
    var khriSagacity YES
    var khriSensing NO
    var khriSight NO
    var khriSteady NO
    var khriStrike YES

    var khriGuile YES
    var khriProwess YES
    var khriTerrify YES
  }
  #Sorhhn_PVM
  if tolower("%scriptmodename") = "pvmsor" then
  {
    gosub TITLE
    echo
    echo ================Full Buffing===============
    echo
    var scriptmode 2
    var buffingonly 1
    var khriAvoidance NO
    var khriCunning NO
    var khriDampen YES
    var khriDarken YES
    var khriElusion YES
    var khriEndure NO
    var khriFlight NO
    var khriFright NO
    var khriFocus YES
    var khriHarrier YES
    var khriHasten NO
    var khriInsight NO
    var khriPlunder NO
    var khriSagacity YES
    var khriSensing NO
    var khriSight NO
    var khriSteady YES
    var khriStrike YES

    var khriGuile YES
    var khriProwess YES
    var khriTerrify YES

  }
  
  
CUSTEND: