var buffs |aa|ab|aeg|ags|art|as|aus|auspice|awaken|bc|benediction|bloodthorns|blur|botf|bg|bs|bue|care|centering|ch|clarity|cv|col|cotc|courage|da|dc|db|dr|drum|echo|ease|ecry|eli|em|emc|enrichment|es|etc|ey|fin|fotf|gf|gg|gi|ghoulflesh|gol|harm|hes|hol|ic|inst|iots|ivm|ks|lgv|lw|maf|mapp|mef|meg|mis|mo|mof|mon|mpp|name|non|nou|oath|obfuscation|pfe|pg|phk|php|pom|pop|psy|rage|refresh|rei|repr|rits|rw|seer|shadowling|shadows|sk|sks|sol|solace|sos|sott|soul|sr|stw|substratum|suf|sw|tk|tksh|tranquility|trc|turi|tw|vigor|voi|will|ws|worm|wotp|ys|
var ombuffs |auspice|benediction|bless|centering|dr|gg|halo|mapp|mpp|mf|pfe|pom|sl|sol|
var abuffs |etf|nexus|rm|
var cyctms |aban|ars|fr|gs|iz|pyre|rim|ros|sa|sls|usol|
var cycdbs |alb|dalu|dema|ee|hyh|shw|
var cyclics |ac|ad|af|bes|botf|cs|eye|fae|ghs|gj|hodi|how|mg|mom|regenerate|rev|roc|rog|sanctuary|sov|tr|
var allcyclics %cyclics-%cyctms-%cycdbs
var rituals |abs|aeg|all|ag|bc|bloodthorns|cos|dc|echo|eli|mf|mof|mon|iots|mf|mon|pom|pop|rtr|soul|vos|will|word|
var heavytm ms
var transnecro |ivm|ks|bue|worm|ch|php|
var aimweapons bow|xbow|sling
var researches fundamental|stream|augmentation|utility|warding|sorcery|energy|field|plane|planes|road|spell|symbiosis strengthen|symbiosis endure|symbiosis avoid|symbiosis spring|symbiosis remember|symbiosis resolve|symbiosis impress|symbiosis discern|symbiosis explore|symbiosis watch|symbiosis harvest|symbiosis heal|symbiosis learn|symbiosis examine|symbiosis perform|symbiosis cast|symbiosis harness|symbiosis activate

var combatpresetp1 p1-shiprats|p1-muskhogs|p1-goblins|p1-fellhogs|p1-badgers|p1-origami|p1-pothanits|p1-giantwasps|p1-trollkin|p1-cougarsgrendels|p1-grasseels|p1-woodtrolls|p1-animateditems|p1-beisswurms|p1-cavebears|p1-copperheads|p1-rocktrolls|p1-endrusserpents|p1-snowbeasts|p1-crocodiles|p1-direbears|p1-vipers|p1-leucros|p1-guardians|p1-warklins|p1-scuttlers|p1-stormbulls|p1-lavadrakes
var combatpresetp2 p2-brocketdeeryoung|p2-marauders|p2-swamptrolls|p2-piruatiserpents|p2-brocketdeer|p2-brocketdeerelder|p2-gryphonsbaby|p2-gryphonsyoung|p2-seordmaors
var combatpresetp3 p3-snippets|p3-rocktrolls1|p3-snowbeasts|p3-rocktrolls2|p3-gargoyles|p3-eidolonsteeds|p3-crocodiles|p3-sylphs|p3-quartzgargoyles|p3-prereniyoung|p3-redleucros|p3-prereni|p3-windbags|p3-windbags2|p3-frostcrones|p3-prerenielder|p3-gryphons|p3-beltunumshi|p3-adanfblood|p3-cloudrats|p3-dragonpriests|p3-adanfspirit|p3-stormbulls|p3-wyvernsyoung|p3-wyvernsjuve|p3-wyvernsadult|p3-adanfsorcs|p3-adanfblades
var combatpresetp4 p4-merkreshcelpeze1|p4-merkreshcelpeze2|p4-merkreshcelpeze3|p4-merkreshcelpeze4|p4-armadillosjuve|p4-armadillosadult|p4-armadilloselder
var combatpresetp5 p5-maidenstress|p5-matronstress|p5-dryads|p5-nyads1|p5-blightogres1|p5-nyads2|p5-blightogres2|p5-iceadders|p5-dpcrones|p5-mountaingiants|p5-marblegargoyles|p5-shalswars|p5-stompers|p5-maulers|p5-blackapes|p5-fuliginmoths|p5-voidmoths|p5-shadowmoths
var combatpresetlist none|%combatpresetp1|%combatpresetp2|%combatpresetp3|%combatpresetp4|%combatpresetp5


var townpresetlist muspari|theren|rossman|riverhaven|dirge|kaerna|crossing|leth|ilaya|fangcove|shard|fangcove|hibarnhvidar|boarclan|ratha|merkresh
#|aesry|merkresh|jeihrem
var townvaultpresetlist muspari|theren|riverhaven|dirge|crossing|leth|shard|fangcove|hibarnhvidar|boarclan|ratha|aesry|merkresh|jeihrem
var townportalpresetlist muspari|therenborough|langenfirth|riverhaven|crossing|leth|shard|hibarnhvidar|ainghazal|ratha|mriss|aesry
var ammopresetlist crossing|shard|ratha
var lockpickpresetlist crossing|shard|riverhaven

var burgletownlist none|muspari|theren|rossman|riverhaven|dirge|crossing|leth|ilaya|shard|hibarnhvidar|boarclan|ratha|merkresh|mriss
var pawntownlist none|crossing|riverhaven|shard|hibarnhvidar
var performtownlist none|muspari|theren|rossman|riverhaven|dirge|crossing|leth|ilaya|fangcove|shard|hibarnhvidar|boarclan|ratha|merkresh|mriss
var forgingtownlist none|crossing|shard|merkresh|hibarnhvidar

var Ordinal none|first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelfth|thirteenth|fourteenth
var waitstring  ^\.\.\.wait|^Sorry\, you may only type ahead|^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|Between the ringing in your head|Strangely, you don't feel like fighting right now\.|Your desire to prepare this offensive spell suddenly slips away\.

#action (combo) var elapsed $gametime; math elapsed subtract %gametimestart; put #echo Yellow Elapsed: %elapsed; 10put #var %manenamelast $unixtime; put #var save; put #echo Yellow Maneuver %manename complete! when ^You take a step back and (heft|ready) your \w+ behind you\.|^Taking a full step back, you plant your feet and .*\.|^You lower your shoulders and .*\.|^You take a step back and ready an upraised palm\.|^You angle to the side and .*\.|^You crouch down and draw your weapons close\.|^You step to the side and adjust your stance\.|^You take a step back and .*\.|^You square up your feet and arch your back while searching for an engaged enemy to target\.|You raise .* before you and prepare to strike\.|^You brace your shoulder against the .* to increase the power of the next shot\.
action (combo) put #var %manenamelast $unixtime; put #var save; put #echo Yellow Maneuver %manename complete! when ^You take a step back and (heft|ready) your \w+ behind you\.|^Taking a full step back, you plant your feet and .*\.|^You lower your shoulders and .*\.|^You take a step back and ready an upraised palm\.|^You angle to the side and .*\.|^You crouch down and draw your weapons close\.|^You step to the side and adjust your stance\.|^You take a step back and .*\.|^You square up your feet and arch your back while searching for an engaged enemy to target\.|You raise .* before you and prepare to strike\.|^You brace your shoulder against the .* to increase the power of the next shot\.
action (combo) var barbmane $unixtime; math barbmane subtract 30; put #var %manenamelast %barbmane; put #var save;put #echo Yellow Barbarian Maneuver %manename cooldown reduction! when With expert skill you end the attack and maneuver into a better position\.
action (combo) var failtest $unixtime; math failtest subtract 80; put #var %manenamelast %failtest; send #echo Yellow ACM is still on cooldown! when You must rest a bit longer before attempting that maneuver again\.
action (combo) off

goto LIBEND


TITLE:
  put #echo
	put #echo mono ------------------------------------------------
	put #echo mono ------------------ TRAINING! -------------------
	put #echo mono ------------------------------------------------
	put #echo
  return

SETDEFAULTS:
  #MULTI_AND_VARFIX
  if !def(varset) then
  {
    put #var varset 1
  }
  if !matchre("$varset", "\b(1|2|3|4)\b") then put #var varset 1
  #MULTITRAIN
  if !def(mode1list) then put #var mode1list thb|bow|sling|sb|lb
  if $mode1step > 0 then
  else put #var mode1step 10 
  if !matchre("$mode1priority", "\b(YES|NO)\b") then put #var mode1priority NO
  if !def(mode2list) then put #var mode2list se|stave|brawl|xbow|lt|pole|ht|le|the
  if $mode2step > 0 then
  else put #var mode2step 10 
  if !matchre("$mode2priority", "\b(YES|NO)\b") then put #var mode2priority NO
  
  if (($mode1priority = "YES") && ($mode2priority = "YES")) then
  {
    put #var mode1priority NO
    put #var mode2priority NO
  }
  
  #GUILD
  if !def(guild) then
  {
    action (info) put #var guild $m1 when Guild:\s+(Barbarian|Bard|Cleric|Commoner|Empath|Moon Mage|Necromancer|Paladin|Ranger|Thief|Trader|Warrior Mage)$
    gosub INFOCHECK
    pause 2
  }
  if !matchre("$guild", "\b(Barbarian|Bard|Cleric|Commoner|Empath|Moon Mage|Necromancer|Paladin|Ranger|Thief|Trader|Warrior Mage)\b") then
  {
    action (info) put #var guild $1 when Guild:\s+(Barbarian|Bard|Cleric|Commoner|Empath|Moon Mage|Necromancer|Paladin|Ranger|Thief|Trader|Warrior Mage)$
    gosub INFOCHECK
    pause 2
  }
  var checkmode 1
  gosub VARCHECKS
  var checkmode 2
  gosub VARCHECKS
  var checkmode 3
  gosub VARCHECKS
  var checkmode 4
  gosub VARCHECKS
  gosub VARCHECKOTHER
  put #var save 
  return
  

VARCHECKS:
  #GENERAL 
  #DEATH_DISCO
  if !matchre("$deathaction", "\b(logout|alert)\b") then put #var deathaction logout
  if !matchre("$disconnectaction", "\b(reconnect|quit)\b") then put #var disconnectaction reconnect
  
  #ALERTS
  if !matchre("$alertwindow", "\b(Main|Log|Conversation)\b") then put #var alertwindow Log
  if !matchre("$healthalerts", "\b(YES|NO)\b") then put #var healthalerts YES
  if !matchre("$healthalertnum", "\b(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99)\b") then put #var healthalertnum 85
  if !matchre("$nervealerts", "\b(YES|NO)\b") then put #var nervealerts YES
  if !matchre("$sorceryalerts", "\b(YES|NO)\b") then put #var sorceryalerts YES
  if !matchre("$speechalerts", "\b(YES|NO)\b") then put #var speechalerts YES
  if !matchre("$arrivalalerts", "\b(YES|NO)\b") then put #var arrivalalerts NO
  if !matchre("$emotealerts", "\b(YES|NO)\b") then put #var emotealerts YES
  if !matchre("$gmalerts", "\b(YES|NO)\b") then put #var gmalerts YES
  if !matchre("$pvpalerts", "\b(YES|NO)\b") then put #var pvpalerts YES
  if !matchre("$pvpstealthalerts", "\b(YES|NO)\b") then put #var pvpstealthalerts NO
  if !matchre("$inventoryalerts", "\b(YES|NO)\b") then put #var inventoryalerts YES
  if !matchre("$paranoiaalerts", "\b(YES|NO)\b") then put #var paranoiaalerts NO
  if !matchre("$bugout", "\b(YES|NO)\b") then put #var bugout NO
  if $bugoutnum > 0 then
  else put #var bugoutnum 1
  if !matchre("$bugoutonbleed", "\b(YES|NO)\b") then put #var bugoutonbleed NO
  if !matchre("$bugoutonsend", "\b(YES|NO)\b") then put #var bugoutonsend YES
  
  if !matchre("$m%checkmodealmanac", "\b(YES|NO)\b") then put #var m%checkmodealmanac NO
  if !def(m%checkmodealmanacitem) then put #var m%checkmodealmanacitem almanac
  if !matchre("$m%checkmodealmanacalerts", "\b(YES|NO)\b") then put #var m%checkmodealmanacalerts NO
  if !matchre("$m%checkmodeejournal", "\b(YES|NO)\b") then put #var m%checkmodeejournal NO
  if !def(m%checkmodeejournalitem) then put #var m%checkmodeejournalitem journal
  if $m%checkmodeejournalstates > 0 then
  else put #var m%checkmodeejournalstates 600
  if !def(m%checkmodenextejournal) then put #var m%checkmodenextejournal 0
  if !matchre("$m%checkmodetarantula", "\b(YES|NO)\b") then put #var m%checkmodetarantula NO  
  if !def(m%checkmodetarantulaitem) then put #var m%checkmodetarantulaitem tarantula
  if !def(m%checkmodetarantulaskill1) then put #var m%checkmodetarantulaskill1 evasion
  if !def(m%checkmodetarantulaskill2) then put #var m%checkmodetarantulaskill2 shield
  
  #MOVEMENT
  #if !matchre("$m%checkmodeaumoveclenchshard", "\b(YES|NO)\b") then put #var m%checkmodeaumoveclenchshard NO
  if !matchre("$m%checkmodemovewhistle", "\b(YES|NO)\b") then put #var m%checkmodemovewhistle NO
  if !matchre("$m%checkmodemovescream", "\b(YES|NO)\b") then put #var m%checkmodemovescream NO
  if !matchre("$m%checkmodemovevanish", "\b(YES|NO)\b") then put #var m%checkmodemovevanish NO
  if $m%checkmodebugoutroom > 0 then
  else put #var m%checkmodebugoutroom 1
  
  if !matchre("$m%checkmodecustommovement", "\b(YES|NO)\b") then put #var m%checkmodecustommovement NO
  if !matchre("$m%checkmodekillbeforemove", "\b(YES|NO)\b") then put #var m%checkmodekillbeforemove YES
  if $m%checkmodemovetimeout > 0 then
  else put #var m%checkmodemovetimeout 300
  if !matchre("$m%checkmodecombatpreset", "%combatpresetlist") then put #var m%checkmodecombatpreset none
  if !matchre("$m%checkmodepresetpremium", "\b(YES|NO|ONLY)\b") then put #var m%checkmodepresetpremium NO
  if ("$m%checkmodecombatpreset" != "none") then
  {
    if ("$m%checkmodecombatpreset" = "p1-shiprats") then
    {
      put #var m%checkmodezone 1
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest crossing
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 238|239|240|245|243|244|765|241|242|246|247
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 237|238|239|240|245|243|244|765|241|242|246|247|441|442|443|444|445|446|447|448|449|450|451|452|453
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 441|442|443|444|445|446|447|448|449|450|451|452|453
      put #var m%checkmodebugoutroom 52
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-deathsquirrels") then
    {
      put #var m%checkmodezone 7
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest arthe
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534
      put #var m%checkmodebugoutroom 514
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-muskhogs") then
    {
      put #var m%checkmodezone 4
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wolf
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 18|43|44|45|46|47|73|74|75|76
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-goblins") then
    {
      put #var m%checkmodezone 4
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wolf
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 52|68|69|70|71|72|55|65|66|67|56|57|58|59
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-fellhogs") then
    {
      put #var m%checkmodezone 4
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wolf
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 60|61|62|63|64
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-badgers") then
    {
      put #var m%checkmodezone 6
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest crossing
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist north gate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 297|296|26|27|28|29|30|31|32|33|34|35|269
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 297|296|26|27|28|29|30|31|32|33|34|35|269|270|272|38|40
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 270|272|38|40
      put #var m%checkmodebugoutroom 247
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-origami") then
    {
      put #var m%checkmodezone 7
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest kaerna
      put #var m%checkmodemove NO
      put #var m%checkmodemovelist 0
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 258|257|259|260|261|262|263|264|265|266
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 258|257|259|260|261|262|263|264|265|266|788|789|790|791
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 788|789|790|791
      put #var m%checkmodebugoutroom 480
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-pothanits") then
    {
      put #var m%checkmodezone 6
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest crossing
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist north gate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 291|274|275|44|276|277|290|279
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 291|274|275|44|276|277|290|279|278|48|49
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 278|48|49
      put #var m%checkmodebugoutroom 247
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-giantwasps") then
    {
      put #var m%checkmodezone 4
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wolf
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 24|25|26|27|28|29|30|31|32
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-trollkin") then
    {
      put #var m%checkmodezone 6
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest crossing
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist north gate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 280|286|287|288|289|64|65|298|59|58|285|67|68|69
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 280|286|287|288|289|64|65|298|59|58|285|67|68|69|283|282|284|281
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 283|282|284|281
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-cougarsgrendels") then
    {
      put #var m%checkmodezone 7a
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest kaerna
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist vineyard
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 21|22|23|24|25|26|27|28|29
      put #var m%checkmodebugoutroom 4
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-woodtrolls") then
    {
      put #var m%checkmodezone 7a
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest kaerna
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist vineyard
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 30|31|32|33|34
      put #var m%checkmodebugoutroom 4
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-grasseels") then
    {
      put #var m%checkmodezone 4
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wolf
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 228|229|230|231|232|233
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 228|229|230|231|232|233|234|235|236|237
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 234|235|236|237
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-animateditems") then
    {
      put #var m%checkmodezone 7a
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest kaerna
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist baearholt
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 0
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 70|71|72|73|74|75|76|77|78|79|80|81|82
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 70|71|72|73|74|75|76|77|78|79|80|81|82
      put #var m%checkmodebugoutroom 62
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-beisswurms") then
    {
      put #var m%checkmodezone 10
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest stone
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 07
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 31|32|33|34|36|36|37
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-cavebears") then
    {
      put #var m%checkmodezone 10
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest stone
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 50|48|49|52|53|52|51|53|55|56|54|57|59|58
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-copperheads") then
    {
      put #var m%checkmodezone 9b
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest sorrow
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 131|132|133|134
      put #var m%checkmodebugoutroom 8
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-rocktrolls") then
    {
      put #var m%checkmodezone 7
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest kaerna
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 441|442|443|444|445|446|447|448|449|450|451|452|453|454|455|456|457|458|459|460
      put #var m%checkmodebugoutroom 480
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-endrusserpents") then
    {
      put #var m%checkmodezone 60
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest leth
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist str1
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 147|148|149|150|151|152|153|154|155
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-snowbeasts") then
    {
      put #var m%checkmodezone 62
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest leth
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist str2
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 15|16|17|18|19|20|32|31|34|30|33|29|28|24|23|25|26|27
      put #var m%checkmodebugoutroom 97
      put #var m%checkmodenearestportaltown leth
    }
    if ("$m%checkmodecombatpreset" = "p1-crocodiles") then
    {
      put #var m%checkmodezone 7
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest caravansary
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 52
      put #var m%checkmodebugoutroom 3
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-direbears") then
    {
      put #var m%checkmodezone 4
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wolf
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 317|316|315|324|314
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 317|316|315|324|314|321|322|323
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 321|322|323
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-vipers") then
    {
      put #var m%checkmodezone 11
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest vipers
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 42|43|44|45|46|47|48|49|55|56
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 42|43|44|45|46|47|48|49|55|56|149|150|151|152|153|154|155|156|157|158|159|160
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 149|150|151|152|153|154|155|156|157|158|159|160
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-leucros") then
    {
      put #var m%checkmodezone 11
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest vipers
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 6|7|8|9|10|11|20|19|16|11|12|15|18|21|22|17|14|13
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 6|7|8|9|10|11|20|19|16|11|12|15|18|21|22|17|14|13|50|51|52|53|54
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 50|51|52|53|54
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-guardians") then
    {
      put #var m%checkmodezone 11
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest vipers
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 66|67|68|69|70|78|77|76|75|74|73|72|71|65
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 66|67|68|69|70|78|77|76|75|74|73|72|71|65
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-warklins") then
    {
      put #var m%checkmodezone 10
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest stone
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 39|40|41|42|43|44|45|46|47
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 39|40|41|42|43|44|45|46|47|117|118|119|120|121
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 117|118|119|120|121
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p1-scuttlers") then
    {
      put #var m%checkmodezone 62
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest leth
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist str2
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 209|210|211|212|213
      put #var m%checkmodebugoutroom 97
      put #var m%checkmodenearestportaltown leth
    }
    if ("$m%checkmodecombatpreset" = "p1-stormbulls") then
    {
      put #var m%checkmodezone 112
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ilaya
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97
      put #var m%checkmodebugoutroom 32
      put #var m%checkmodenearestportaltown leth
    }
    if ("$m%checkmodecombatpreset" = "p1-lavadrakes") then
    {
      put #var m%checkmodezone 13
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest dirge
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 189|190|191|192|193|194|195
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 189|190|191|192|193|194|195|300|301|302|303|304|305
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 300|301|302|303|304|305
      put #var m%checkmodebugoutroom 49
      put #var m%checkmodenearestportaltown crossing
    }
    if ("$m%checkmodecombatpreset" = "p2-brocketdeeryoung") then
    {
      put #var m%checkmodezone 40a
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest langenfirth
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist siksraja
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 104|105|146|147
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown langenfirth
    }
    if ("$m%checkmodecombatpreset" = "p2-marauders") then
    {
      put #var m%checkmodezone 41
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fornsted
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 16|17|18|19|25|26|27|28|29
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown theren
    }
    #25
    if ("$m%checkmodecombatpreset" = "p2-swamptrolls") then
    {
      put #var m%checkmodezone 31
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest haven
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist egate 
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 39|108|109|110|111|80|82|83|84
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown langenfirth
    }
    if ("$m%checkmodecombatpreset" = "p2-piruatiserpents") then
    {
      put #var m%checkmodezone 31
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest haven
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist egate 
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 55|56|57|58|51|53|54|
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 55|56|57|58|51|53|54|131|132|133|134
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 131|132|133|134
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown riverhaven
    }
    if ("$m%checkmodecombatpreset" = "p2-brocketdeer") then
    {
      put #var m%checkmodezone 40a
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest langenfirth
      put #var m%checkmodemove NO
      put #var m%checkmodemovelist siksraja
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 148|149|150|151
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown langenfirth
    }
    if ("$m%checkmodecombatpreset" = "p2-brocketdeerelder") then
    {
      put #var m%checkmodezone 40a
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest langenfirth
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist siksraja
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 155|154|153|152
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown langenfirth
    }
    if ("$m%checkmodecombatpreset" = "p2-gryphonsbaby") then
    {
      put #var m%checkmodezone 34
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest rossman
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist gryphons|49
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 90|91|92
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown theren
    }
    if ("$m%checkmodecombatpreset" = "p2-gryphonsyoung") then
    {
      put #var m%checkmodezone 34
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest rossman
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist gryphons|49
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 93|116|117|118|119
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown theren
    }
    if ("$m%checkmodecombatpreset" = "p2-seordmaors") then
    {
      put #var m%checkmodezone 41
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fornsted
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 77|78|79|76|204
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown theren
    }
    if ("$m%checkmodecombatpreset" = "p3-snippets") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 711|712|713|714|715|716
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-rocktrolls1") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ylono
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist move out|sgate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 35|36|37|38|39|40|41|42|43|44|45|46|47
      put #var m%checkmodebugoutroom 28
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-snowbeasts") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 167|168|169|170|171
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-rocktrolls2") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ylono
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist move out|sgate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 8|9|10|11|12|13|14
      put #var m%checkmodebugoutroom 28
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-gargoyles") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 173|174|178|179|180|181|182|183|184|185|186|187|188|189|190
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-eidolonsteeds") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ylono
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist move out|sgate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 52|53|54|55|56|57|58|59|60|61|62|205|74|68|69|70|71|72
      put #var m%checkmodebugoutroom 28
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-crocodiles") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ylono
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist move out|sgate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 184|183|185|186|187
      put #var m%checkmodebugoutroom 28
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-sylphs") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 717|718|719|720|721
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-gryphons") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 234|235|236|237|238|239|240|241|242|243
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-quartzgargoyles") then
    {
      put #var m%checkmodezone 150
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fangcove
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 65|66|67|68|69|70|71|72|73|74|75
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 65|66|67|68|69|70|71|72|73|74|75
      put #var m%checkmodebugoutroom 1
      put #var m%checkmodenearestportaltown none
    }
    if ("$m%checkmodecombatpreset" = "p3-prereniyoung") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 656|657|658|659
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 656|657|658|659|660|662
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 660|662
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-redleucros") then
    {
      put #var m%checkmodezone 65
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist undergondola
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 5|6|7|8|9|10|11|12|13|14
      put #var m%checkmodebugoutroom 2
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-goldenpards") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 87|107|108|109|110|111|112|113|114|115|129|130|131|132
      #if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 656|657|658|659
      #if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 656|657|658|659|660|662
      #if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 660|662
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-prereni") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 664|665|666
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 664|665|666|661|663
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 661|663
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-windbags") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 722|723|724|725|726|727|728|729
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-windbags2") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 731|732|730|733|734|735|736
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-frostcrones") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 722|723|724|725|726|727|728|729
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-prerenielder") then
    {
      put #var m%checkmodezone 66
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest fayrin
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 667|668|669
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 667|668|669|679|680
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 679|680
      put #var m%checkmodebugoutroom 128
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-cloudrats") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 607|608|609|610|611|612
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-dragonpriests") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 154|155|156|157|158|159|160|161|162|163|164|165|166|167
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-beltunumshi") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 616|617|618|619|620|621|622|623|624|625|626|627|628
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-adanfblood") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ylono
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist move out|sgate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 139|140|141|142|143|144|210|209|145|146|147|148|149|150
      put #var m%checkmodebugoutroom 28
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-adanfspirit") then
    {
      put #var m%checkmodezone 68a
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ylono
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist move out|sgate|ice caves
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 16|15|14|13|12|27|11|10|28|9|8|26|17|18|19|20|21
      put #var m%checkmodebugoutroom 2
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-stormbulls") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 597
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 597|598|599|600|601|602
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 597|598|599|600|601|602|603|604|605
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 603|604|605
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-wyvernsjuve") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 454|455|456|457|458|459|460|461|462|463|465|467|466|453
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 454|455|456|457|458|459|460|461|462|463|465|467|466|453|575|576|577|578|579
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 575|576|577|578|579
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-wyvernsyoung") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 482|483|484|485|486|487|511|512|480|481
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 482|483|484|485|486|487|511|512|480|481|575|576|577|578|579
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 575|576|577|578|579
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-wyvernsadult") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 468|469|470|471|472|473|479|474|475|476|477|478
      put #var m%checkmodebugoutroom 382
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-adanfsorcs") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ylono
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist move out|sgate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 151|152|153|154|155|156|157|158|159|160
      put #var m%checkmodebugoutroom 28
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p3-adanfblades") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest ylono
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist move out|sgate
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 163|164|165|166|167|168|169|170|171|172|173|174|175|176
      put #var m%checkmodebugoutroom 28
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p4-merkreshcelpeze1") then
    {
      put #var m%checkmodezone 107
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest merkresh
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152
      put #var m%checkmodebugoutroom 16
      put #var m%checkmodenearestportaltown merkresh
    }
    if ("$m%checkmodecombatpreset" = "p4-merkreshcelpeze2") then
    {
      put #var m%checkmodezone 107
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest merkresh
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 156|157|158|159|160|161|162|163|164|165|166|167|168
      put #var m%checkmodebugoutroom 16
      put #var m%checkmodenearestportaltown merkresh
    }
    if ("$m%checkmodecombatpreset" = "p4-merkreshcelpeze3") then
    {
      put #var m%checkmodezone 107
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest merkresh
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 34|35|36|37
      put #var m%checkmodebugoutroom 16
      put #var m%checkmodenearestportaltown merkresh
    }
    if ("$m%checkmodecombatpreset" = "p4-merkreshcelpeze4") then
    {
      put #var m%checkmodezone 107
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest merkresh
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 103|104|105|106|107
      put #var m%checkmodebugoutroom 16
      put #var m%checkmodenearestportaltown merkresh
    }
    if ("$m%checkmodecombatpreset" = "p4-armadillosjuve") then
    {
      put #var m%checkmodezone 108
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest mriss
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 383|384|385|386|387|388|389
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 383|384|385|386|387|388|389|403|404|405|406|407|408
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 403|404|405|406|407|408
      put #var m%checkmodebugoutroom 150
      put #var m%checkmodenearestportaltown merkresh
    }
    if ("$m%checkmodecombatpreset" = "p4-armadillosadult") then
    {
      put #var m%checkmodezone 108
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest mriss
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 1|2|3|4|5|6|7|8|9|10|11
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 1|2|3|4|5|6|7|8|9|10|11|415|416|417|418
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 415|416|417|418
      put #var m%checkmodebugoutroom 150
      put #var m%checkmodenearestportaltown merkresh
    }
    if ("$m%checkmodecombatpreset" = "p4-armadilloselder") then
    {
      put #var m%checkmodezone 108
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest mriss
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 391|392|393|394|395|396|397|398|399|400|401|402
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 391|392|393|394|395|396|397|398|399|400|401|402|410|411|412|413|414
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 410|411|412|413|414
      put #var m%checkmodebugoutroom 150
      put #var m%checkmodenearestportaltown merkresh
    }
    if ("$m%checkmodecombatpreset" = "p5-fuliginmoths") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 637|638|639|640|641|642
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    #185
    if ("$m%checkmodecombatpreset" = "p5-voidmoths") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 643|644|645|646|647|648
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    #195
    if ("$m%checkmodecombatpreset" = "p5-shadowmoths") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 649|650|651|652|653|654
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-maidenstress") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 246|247|248|249|250|251|252|253|254
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-matronstress") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 255|256|257|258|259|260|261|262|263|264|265
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-dryads") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 283|284|285|286|287|288|289|290
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-nyads1") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 267|266|268|269|270|271|272|273
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-blightogres1") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 296|297|298|299
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-nyads2") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 274|277|281|276|275|279|280|278|282
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-blightogres2") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 312|311|308|305|309|310|307|306
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-iceadders") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 435|434|428|429|430|427|426|425|424|423|422|421|432|433|431|437|445|446|447|448|449|441|442|443|444
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-marblegargoyles") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 435|434|428|429|430|427|426|425|424|423|422|421|432|433|431|437|445|446|447|448|449|441|442|443|444
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-dpcrones") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 317|318|319|320|321|322
      put #var m%checkmodebugoutroom 265
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p5-mountaingiants") then
    {
      put #var m%checkmodezone 123
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest raven
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 317|318|319|320|321|322
      put #var m%checkmodebugoutroom 26
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p5-shalswars") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 435|434|428|429|430|427|426|425|424|423|422|421|432|433|431|437|445|446|447|448|449|441|442|443|444
      put #var m%checkmodebugoutroom 265
      put #var m%checkmodenearestportaltown shard
    }
    if ("$m%checkmodecombatpreset" = "p5-stompers") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 560|561|562|563|564|565
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-maulers") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 566|567|568|569|570|571
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
    if ("$m%checkmodecombatpreset" = "p5-blackapes") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210
      put #var m%checkmodebugoutroom 14
      put #var m%checkmodenearestportaltown hibarnhvidar
    }
  }
  if $m%checkmodezone > -1 then
  else put #var m%checkmodezone 0 
  if !matchre("$m%checkmodetravel", "\b(YES|NO)\b") then
  {
    if matchre("$mtreturntravel", "\b(YES|NO)\b") then put #var m%checkmodetravel $mtreturntravel
    else put #var m%checkmodetravel NO
  }
  if !def(m%checkmodetraveldest) then
  {
    if def(mtreturntraveldest) then put #var m%checkmodetraveldest $mtreturntraveldest
    else put #var m%checkmodetraveldest boar
  }
  if !matchre("$m%checkmodemove", "\b(YES|NO)\b") then
  {
    if matchre("$mtreturnmove", "\b(YES|NO)\b") then put #var m%checkmodemove $mtreturnmove
    else put #var m%checkmodemove NO
  }
  if !def(m%checkmodemovelist) then put #var m%checkmodemovelist 14|start
  if ($m%checkmodetargetroom > -1) then 
  else put #var m%checkmodetargetroom 0
  
  if !matchre("$m%checkmodefindroom", "\b(YES|NO)\b") then put #var m%checkmodefindroom NO
  if !def(m%checkmodefindroomlist) then put #var m%checkmodefindroomlist 300|301|302|303|304|305
  if !def(m%checkmodefrwhitelist) then put #var m%checkmodefrwhitelist Saragos|Navesi
  if !def(m%checkmodefrblacklist) then put #var m%checkmodefrblacklist Zehira|Agalea
  if !matchre("$m%checkmodefrprefergroup", "\b(YES|NO)\b") then put #var m%checkmodefrprefergroup NO
  
  if !matchre("$m%checkmodepremiumring", "\b(YES|NO)\b") then put #var m%checkmodepremiumring NO
  if !def(m%checkmodepremiumringitem) then put #var m%checkmodepremiumringitem band
  if !matchre("$m%checkmodenearestportaltown", "\b(%townportalpresetlist)\b") then put #var m%checkmodenearestportaltown none
  
  if !def(m%checkmodeupkeeptown) then
  {
    if def(m%checkmodeupkeeppreset) then
    {
      put #var m%checkmodeupkeeptown $m%checkmodeupkeeppreset
    }
  }
  if !matchre("$m%checkmodeupkeeptown", "\b(%townpresetlist)\b") then put #var m%checkmodeupkeeptown crossing
  
  if !matchre("$m%checkmodevaulttown", "\b(%townvaultpresetlist)\b") then put #var m%checkmodevaulttown crossing
  if !matchre("$m%checkmodeammobuytown", "\b(%ammopresetlist)\b") then put #var m%checkmodeammobuytown crossing
  if !matchre("$m%checkmodelockpickbuytown", "\b(%lockpickpresetlist)\b") then put #var m%checkmodelockpickbuytown crossing
  if !matchre("$m%checkmodeburgletown", "\b(%burgletownlist)\b") then put #var m%checkmodeburgletown crossing
  if !matchre("$m%checkmodepawntown", "\b(%pawntownlist)\b") then put #var m%checkmodepawntown crossing
  if !matchre("$m%checkmodeperformtown", "\b(%performtownlist)\b") then put #var m%checkmodeperformtown crossing
  if !matchre("$m%checkmodeforgingtown", "\b(%forgingtownlist)\b") then put #var m%checkmodeforgingtown crossing
  
  #UPKEEP
  if !matchre("$m%checkmodeautoupkeep", "\b(YES|NO)\b") then put #var m%checkmodeautoupkeep NO
  if !matchre("$m%checkmodeauonhealth", "\b(YES|NO)\b") then put #var m%checkmodeauonhealth NO
  if $m%checkmodeauhealthnum >= 0 then
  else put #var m%checkmodeauhealthnum 80
  if !matchre("$m%checkmodeauonbleed", "\b(YES|NO)\b") then put #var m%checkmodeauonbleed YES
  if !matchre("$m%checkmodeauonpoison", "\b(YES|NO)\b") then put #var m%checkmodeauonpoison YES
  if !matchre("$m%checkmodeauonfire", "\b(YES|NO)\b") then put #var m%checkmodeauonfire YES
  if !matchre("$m%checkmodeauonnerves", "\b(YES|NO)\b") then put #var m%checkmodeauonnerves YES
  if !matchre("$m%checkmodeauonburden", "\b(YES|NO)\b") then put #var m%checkmodeauonburden NO
  if $m%checkmodeauburdennum >= 0 then
  else put #var m%checkmodeauburdennum 3
  if !matchre("$m%checkmodeauonammo", "\b(YES|NO)\b") then put #var m%checkmodeauonammo NO
  if !matchre("$m%checkmodeauonboxes", "\b(YES|NO)\b") then put #var m%checkmodeauonboxes NO
  if $m%checkmodeminmoney >= 0 then
  else put #var m%checkmodeminmoney 0
  if !matchre("$m%checkmodeexchange", "\b(YES|NO)\b") then put #var m%checkmodeexchange NO
  if !def(m%checkmodeautopath) then
  {
    if (("$m%checkmodepremiumheal" = "YES") && ("$m%checkmodenonpremheal" = "YES")) then put #var m%checkmodeautopath YES
    if (("$m%checkmodepremiumheal" = "YES") && ("$m%checkmodenonpremheal" = "NO")) then put #var m%checkmodeautopath PREMIUM
    if (("$m%checkmodepremiumheal" = "NO") && ("$m%checkmodenonpremheal" = "YES")) then put #var m%checkmodeautopath YES
    if (("$m%checkmodepremiumheal" = "NO") && ("$m%checkmodenonpremheal" = "NO")) then put #var m%checkmodeautopath YES
  }
  if !matchre("$m%checkmodeautopath", "\b(YES|NO|PREMIUM)\b") then put #var m%checkmodeautopath YES
  if !matchre("$m%checkmoderepair", "\b(YES|NO)\b") then put #var m%checkmoderepair NO
  if !matchre("$m%checkmodebundlesell", "\b(YES|NO)\b") then put #var m%checkmodebundlesell NO
  if !matchre("$m%checkmodebundlevault", "\b(YES|NO)\b") then put #var m%checkmodebundlevault NO
  if (($m%checkmodebundlevault = "YES") && ($m%checkmodebundlesell = "YES")) then put #var m%checkmodebundlesell NO
  if !matchre("$m%checkmodevaultmove", "\b(YES|NO)\b") then put #var m%checkmodevaultmove NO
  if $m%checkmodebundlerope >= 0 then
  else put #var m%checkmodebundlerope 0
  if !matchre("$m%checkmodegemsell", "\b(YES|NO)\b") then put #var m%checkmodegemsell NO
  if !matchre("$m%checkmodegemvault", "\b(YES|NO)\b") then put #var m%checkmodegemvault NO
  if $m%checkmodegempouches >= 0 then
  else put #var m%checkmodegempouches 0
  if !matchre("$m%checkmodenuggetsell", "\b(YES|NO)\b") then put #var m%checkmodenuggetsell YES
  if !matchre("$m%checkmodebarsell", "\b(YES|NO)\b") then put #var m%checkmodebarsell YES
  if !matchre("$m%checkmodeammobuy", "\b(YES|NO)\b") then put #var m%checkmodeammobuy NO
  if !def(m%checkmodeammobuylist) then put #var m%checkmodeammobuylist bow|xbow|sling
  if !def(m%checkmodeammocontainer) then put #var m%checkmodeammocontainer backpack
  if $m%checkmodeammomin >= 0 then
  else put #var m%checkmodeammomin 100
  if !matchre("$m%checkmodelockpickbuy", "\b(YES|NO)\b") then put #var m%checkmodelockpickbuy NO
  if !def(m%checkmodelockpickstacker) then put #var m%checkmodelockpickstacker lockpick ring
  if !def(m%checkmodelockpickitem) then put #var m%checkmodelockpickitem stout lockpick
  if !matchre("$m%checkmodeboxpopping", "\b(YES|NO)\b") then put #var m%checkmodeboxpopping NO
  if !matchre("$m%checkmodedismantletype", "\b(none|bash|bunny|caravan|chomp|claw|crush|fire|focus|jump|pray|press|roar|salvage|shriek|slam|slip|stomp|thump|tinker|whistle)\b") then put #var m%checkmodedismantletype none
  if !matchre("$m%checkmodeboxpopbuff", "\b(none|drum|hol|mt)\b") then put #var m%checkmodeboxpopbuff none
  if $m%checkmodeboxpopbuffprepmana >= 0 then
  else put #var m%checkmodeboxpopbuffprepmana 1
  if $m%checkmodeboxpopbuffaddmana >= 0 then
  else put #var m%checkmodeboxpopbuffaddmana 0
  
  
  if !matchre("$m%checkmodeappfocus", "\b(YES|NO)\b") then put #var m%checkmodeappfocus NO
  if !def(m%checkmodeappfocusitem) then put #var m%checkmodeappfocusitem shark
  if !matchre("$m%checkmodespiderfeed", "\b(YES|NO)\b") then put #var m%checkmodespiderfeed NO
  if $m%checkmodeincense >= 0 then
  else put #var m%checkmodeincense 0

  #LOOT
  if !def(m%checkmodestorage) then put #var m%checkmodestorage backpack
  if !matchre("$m%checkmodelootalerts", "\b(YES|NO)\b") then put #var m%checkmodelootalerts YES
  if !matchre("$m%checkmodeloottype", "\b(treasure|boxes|equipment|goods|all)\b") then put #var m%checkmodeloottype treasure
  if !matchre("$m%checkmodelootalldead", "\b(YES|NO)\b") then put #var m%checkmodelootalldead NO
  if !matchre("$m%checkmodecollectcoin", "\b(YES|NO)\b") then put #var m%checkmodecollectcoin YES
  if !matchre("$m%checkmodecollectscroll", "\b(YES|NO)\b") then put #var m%checkmodecollectscroll YES
  if !matchre("$m%checkmodecollectmaps", "\b(YES|NO)\b") then put #var m%checkmodecollectmaps YES
  if !matchre("$m%checkmodecollectnuggets", "\b(YES|NO)\b") then put #var m%checkmodecollectnuggets YES
  if !matchre("$m%checkmodecollectbars", "\b(YES|NO)\b") then put #var m%checkmodecollectbars YES
  if !matchre("$m%checkmodecollectmaterials", "\b(YES|NO)\b") then put #var m%checkmodecollectmaterials YES
  if !matchre("$m%checkmodecollectgem", "\b(YES|NO)\b") then put #var m%checkmodecollectgem YES
  if !matchre("$m%checkmodesavegwethstones", "\b(YES|NO)\b") then put #var m%checkmodesavegwethstones NO
  if !matchre("$m%checkmodecollectboxes", "\b(YES|NO)\b") then put #var m%checkmodecollectboxes NO
  if !matchre("$m%checkmodeboxstorage", "\b(YES|NO)\b") then put #var m%checkmodeboxstorage portal
  if !def(m%checkmodemisckeeplist) then put #var m%checkmodemisckeeplist none

  if !matchre("$m%checkmodeskinning", "\b(YES|NO)\b") then put #var m%checkmodeskinning YES
  if !matchre("$m%checkmodearrange", "\b(0|1|2|3|4|5)\b") then put #var m%checkmodearrange 0
  if !matchre("$m%checkmodearrangeforpart", "\b(YES|NO)\b") then put #var m%checkmodearrangeforpart NO
  if !matchre("$m%checkmodeskinafterlock", "\b(YES|NO)\b") then put #var m%checkmodeskinafterlock YES
  if !matchre("$m%checkmodedropskins", "\b(YES|NO)\b") then put #var m%checkmodedropskins NO
  if !matchre("$m%checkmodedissect", "\b(YES|NO)\b") then put #var m%checkmodedissect NO

  #COMBAT
  if !matchre("$m%checkmodeweapons", "\b(YES|NO)\b") then put #var m%checkmodeweapons YES
  #if !def(m%checkmodestanceset) then put #var m%checkmodestanceset custom
  if !def(m%checkmodestancemain) then
  {
    if !def(m%checkmodestanceset) then put #var m%checkmodestancemain custom
    else put #var m%checkmodestancemain $m%checkmodestanceset
  }
  if !matchre("$m%checkmodelowestfirst", "\b(YES|NO)\b") then put #var m%checkmodelowestfirst YES
  if (($m%checkmodeweaponnum >= 1) && ($m%checkmodeweaponnum <= 14)) then
  else put #var m%checkmodeweaponnum 14
  if !matchre("$m%checkmodekillafterlock", "\b(YES|NO)\b") then put #var m%checkmodekillafterlock NO
  if !matchre("$m%checkmodeweapon1", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon1 SE
  if !matchre("$m%checkmodeweapon2", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon2 LE
  if !matchre("$m%checkmodeweapon3", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon3 THE
  if !matchre("$m%checkmodeweapon4", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon4 SB
  if !matchre("$m%checkmodeweapon5", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon5 LB
  if !matchre("$m%checkmodeweapon6", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon6 THB
  if !matchre("$m%checkmodeweapon7", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon7 BOW
  if !matchre("$m%checkmodeweapon8", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon8 XBOW
  if !matchre("$m%checkmodeweapon9", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon9 SLING
  if !matchre("$m%checkmodeweapon10", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon10 LT
  if !matchre("$m%checkmodeweapon11", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon11 HT
  if !matchre("$m%checkmodeweapon12", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon12 STAVE
  if !matchre("$m%checkmodeweapon13", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon13 POLE
  if !matchre("$m%checkmodeweapon14", "\b(SE|LE|THE|SB|LB|THB|BOW|XBOW|SLING|LT|HT|STAVE|POLE|BRAWL)\b") then put #var m%checkmodeweapon14 BRAWL
  if !matchre("$m%checkmodeoffhand", "\b(YES|NO)\b") then put #var m%checkmodeoffhand YES
  if !matchre("$m%checkmodeacms", "\b(YES|NO)\b") then put #var m%checkmodeacms NO
  
  if !def(m%checkmodeseweapon) then put #var m%checkmodeseweapon scimitar
  if !matchre("$m%checkmodeseoffhand", "\b(YES|NO)\b") then put #var m%checkmodeseoffhand YES
  if !matchre("$m%checkmodesecombo", "\b(slice|puncture)\b") then put #var m%checkmodesecombo slice
  if !def(m%checkmodeleweapon) then put #var m%checkmodeleweapon broadsword
  if !matchre("$m%checkmodeleoffhand", "\b(YES|NO)\b") then put #var m%checkmodeleoffhand NO
  if !def(m%checkmodetheweapon) then put #var m%checkmodetheweapon claymore
  if !def(m%checkmodesbweapon) then put #var m%checkmodesbweapon mace
  if !matchre("$m%checkmodesboffhand", "\b(YES|NO)\b") then put #var m%checkmodesboffhand YES
  if !def(m%checkmodelbweapon) then put #var m%checkmodelbweapon hammer
  if !matchre("$m%checkmodelboffhand", "\b(YES|NO)\b") then put #var m%checkmodelboffhand NO
  if !def(m%checkmodethbweapon) then put #var m%checkmodethbweapon maul
  if !def(m%checkmodestaveweapon) then put #var m%checkmodestaveweapon nightstick
  if !matchre("$m%checkmodestaveoffhand", "\b(YES|NO)\b") then put #var m%checkmodestaveoffhand NO
  if !matchre("$m%checkmodestaveworn", "\b(YES|NO)\b") then put #var m%checkmodestaveworn NO
  if !matchre("$m%checkmodestavetied", "\b(YES|NO)\b") then put #var m%checkmodestavetied NO
  if !def(m%checkmodepoleweapon) then put #var m%checkmodepoleweapon spear
  if !matchre("$m%checkmodepoleworn", "\b(YES|NO)\b") then put #var m%checkmodepoleworn NO
  if !matchre("$m%checkmodepoletied", "\b(YES|NO)\b") then put #var m%checkmodepoletied NO
  if !matchre("$m%checkmodepolecombo", "\b(slice|puncture)\b") then put #var m%checkmodepolecombo puncture
  if $m%checkmodebastardsworditem = "$bastardsworditem" then put #var m%checkmodebastardsworditem bastard sword
  if !def(m%checkmodebastardsworditem) then put #var m%checkmodebastardsworditem bastard sword
  if $m%checkmodebarmaceitem = "$barmaceitem" then put #var m%checkmodebarmaceitem bar mace
  if !def(m%checkmodebarmaceitem) then put #var m%checkmodebarmaceitem bar mace
  if $m%checkmodeholyiconitem = "$holyiconitem" then put #var m%checkmodeholyiconitem icon
  if !def(m%checkmodeholyiconitem) then put #var m%checkmodeholyiconitem icon
  if $m%checkmoderisteitem = "$risteitem" then put #var m%checkmoderisteitem darkstone riste
  if !def(m%checkmoderisteitem) then put #var m%checkmoderisteitem darkstone riste
  if $m%checkmodehhristeitem = "$hhristeitem" then put #var m%checkmodehhristeitem half-handled riste
  if !def(m%checkmodehhristeitem) then put #var m%checkmodehhristeitem half-handled riste
  if !def(m%checkmodeltweapon) then put #var m%checkmodeltweapon bola
  if !matchre("$m%checkmodeltoffhand", "\b(YES|NO)\b") then put #var m%checkmodeltoffhand NO
  if !matchre("$m%checkmodeltbond", "\b(YES|NO)\b") then put #var m%checkmodeltbond NO
  if !matchre("$m%checkmodeltverb", "\b(lob|throw|hurl)\b") then put #var m%checkmodeltverb lob
  if !def(m%checkmodehtweapon) then put #var m%checkmodehtweapon spear
  if !matchre("$m%checkmodehtoffhand", "\b(YES|NO)\b") then put #var m%checkmodehtoffhand NO
  if !matchre("$m%checkmodehtbond", "\b(YES|NO|SPECIAL)\b") then put #var m%checkmodehtbond NO
  if !matchre("$m%checkmodehtverb", "\b(lob|throw|hurl)\b") then put #var m%checkmodehtverb lob
  if !def(m%checkmodexbowweapon) then put #var m%checkmodexbowweapon crossbow
  if !def(m%checkmodexbowammo) then put #var m%checkmodexbowammo crossbow bolt
  if !matchre("$m%checkmodexbowworn", "\b(YES|NO)\b") then put #var m%checkmodexbowworn NO
  if !def(m%checkmodebowweapon) then put #var m%checkmodebowweapon bow
  if !def(m%checkmodebowammo) then put #var m%checkmodebowammo boar-tusk arrow
  if !matchre("$m%checkmodebowworn", "\b(YES|NO)\b") then put #var m%checkmodebowworn NO
  if !def(m%checkmodeslingweapon) then put #var m%checkmodeslingweapon sling
  if !def(m%checkmodeslingammo) then put #var m%checkmodeslingammo small rock
  if !matchre("$m%checkmodecollectammo", "\b(YES|NO)\b") then put #var m%checkmodecollectammo YES
  if !matchre("$m%checkmodeplatring", "\b(YES|NO)\b") then put #var m%checkmodeplatring NO
  if !def(m%checkmodeplatringitem) then put #var m%checkmodeplatringitem scimitar
  if !matchre("$m%checkmodearmorcheck", "\b(YES|NO)\b") then put #var m%checkmodearmorcheck NO
  if !def(m%checkmodeshielditem) then put #var m%checkmodeshielditem round sipar
  if !def(m%checkmodeparrystickitem) then put #var m%checkmodeparrystickitem parry stick
  if !matchre("$m%checkmodearmornum", "\b(1|2|3|4|5|6)\b") then put #var m%checkmodearmornum 4
  if !def(m%checkmodearmor1item) then put #var m%checkmodearmor1item quilted hauberk
  if !def(m%checkmodearmor2item) then put #var m%checkmodearmor2item scale gloves
  if !def(m%checkmodearmor3item) then put #var m%checkmodearmor3item ring helm
  if !def(m%checkmodearmor4item) then put #var m%checkmodearmor4item plate mask
  if !def(m%checkmodearmor5item) then put #var m%checkmodearmor5item none
  if !def(m%checkmodearmor6item) then put #var m%checkmodearmor6item none
  if !def(m%checkmodeknucklesitem) then put #var m%checkmodeknucklesitem knuckles
  
  #NONCOMBAT
  if !matchre("$m%checkmodenoncomdelay", "\b(YES|NO)\b") then put #var m%checkmodenoncomdelay NO
  if !matchre("$m%checkmodeappraise", "\b(YES|NO)\b") then put #var m%checkmodeappraise YES
  if !matchre("$m%checkmodeappraisetarget", "\b(bundle|creature)\b") then put #var m%checkmodeappraisetarget creature
  if $m%checkmodeappraisetimer >= 75 then
  else put #var m%checkmodeappraisetimer 75
  if !matchre("$m%checkmodeappsaveitem", "\b(none|tight|lumpy)\b") then put #var m%checkmodeappsaveitem none
  if !def(m%checkmodeappsaveitemstorage) then put #var m%checkmodeappsaveitemstorage haversack
  if !matchre("$m%checkmodehunting", "\b(YES|NO)\b") then put #var m%checkmodehunting YES
  if $m%checkmodehuntingtimer >=75 then
  else put #var m%checkmodehuntingtimer 75
  if !matchre("$m%checkmodeoutdoor", "\b(YES|NO)\b") then put #var m%checkmodeoutdoor YES
  if $m%checkmodeoutdoortimer >= 0 then
  else put #var m%checkmodeoutdoortimer 90
  if !matchre("$m%checkmodecollectitem", "\b(rock|bunny)\b") then put #var m%checkmodecollectitem rock
  if !matchre("$m%checkmodestealth", "\b(YES|NO)\b") then put #var m%checkmodestealth NO
  if !matchre("$m%checkmodetactics", "\b(YES|NO)\b") then put #var m%checkmodetactics YES
  if $m%checkmodetacticsweapons = "YESweapons" then put #var m%checkmodetacticsweapons sb|lb|thb|se|le|the|brawl|pole|stave
  if !def(m%checkmodetacticsweapons) then put #var m%checkmodetacticsweapons sb|lb|thb|se|le|the|brawl|pole|stave
  if !matchre("$m%checkmoderecall", "\b(YES|NO)\b") then put #var m%checkmoderecall YES
  if !matchre("$m%checkmodecompendium", "\b(YES|NO)\b") then put #var m%checkmodecompendium NO
  if $m%checkmodecompendiumtimer >= 0 then
  else put #var m%checkmodecompendiumtimer 60
  if !matchre("$m%checkmodetextbook", "\b(YES|NO)\b") then put #var m%checkmodetextbook NO
  if $m%checkmodetextbooktimer >= 0 then
  else put #var m%checkmodetextbooktimer 60
  if !def(m%checkmodetextbookitem) then put #var m%checkmodetextbookitem tome
  if !def(m%checkmodetextbooklist) then put #var m%checkmodetextbooklist human|elf|elothean
  if !matchre("$m%checkmodeteaching", "\b(YES|NO)\b") then put #var m%checkmodeteaching NO
  if !def(m%checkmodeteachskill) then put #var m%checkmodeteachskill skinning
  if $m%checkmodeteachtargets = "$teachtargets" then put #var m%checkmodeteachtargets Saragos|Navesi
  if !def(m%checkmodeteachtargets) then put #var m%checkmodeteachtargets Saragos|Navesi
  if !matchre("$m%checkmodewindboard", "\b(YES|NO)\b") then put #var m%checkmodewindboard NO
  if $m%checkmodewindboardtimer >= 0 then
  else put #var m%checkmodewindboardtimer 120
  if $windboardcharge >= 0 then
  else put #var windboardcharge 50
  if !def(m%checkmodewindboardtrick) then put #var m%checkmodewindboardtrick tilt
  if !matchre("$m%checkmodelocksmithbox", "\b(YES|NO)\b") then put #var m%checkmodelocksmithbox NO
  if $m%checkmodelocksmithboxtimer >= 0 then
  else put #var m%checkmodelocksmithboxtimer 120
  if !def(m%checkmodelocksmithboxitem) then put #var m%checkmodelocksmithboxitem training box
  if !matchre("$m%checkmodeskinfatrainer", "\b(YES|NO)\b") then put #var m%checkmodeskinfatrainer NO
  if $m%checkmodeskinfatrainertimer >= 0 then
  else put #var m%checkmodeskinfatrainertimer 120
  if !def(m%checkmodeskinfatraineritem) then put #var m%checkmodeskinfatraineritem blue-belly crocodile
  if !matchre("$m%checkmodeclimbingrope", "\b(YES|NO)\b") then put #var m%checkmodeclimbingrope NO
  if !def(m%checkmodeclimbingropename) then put #var m%checkmodeclimbingropename rope
  if !matchre("$m%checkmodeclimbingropehum", "\b(YES|NO)\b") then put #var m%checkmodeclimbingropehum YES
  if !def(m%checkmodehumsong) then put #var m%checkmodehumsong scales
  
  #NONCOMBAT
  if !matchre("$m%checkmodenoncombat", "\b(YES|NO)\b") then put #var m%checkmodenoncombat NO
  if !matchre("$m%checkmodeburgle", "\b(YES|NO)\b") then put #var m%checkmodeburgle NO
  if !def(m%checkmodeburglestorage) then put #var m%checkmodeburglestorage haversack
  if !matchre("$m%checkmodeburgletool", "\b(pick|rope|both)\b") then put #var m%checkmodeburgletool both
  if !def(m%checkmodeburglepickitem) then put #var m%checkmodeburglepickitem lockpick
  if !matchre("$m%checkmodeburglepickworn", "\b(YES|NO)\b") then put #var m%checkmodeburglepickworn NO
  if !def(m%checkmodeburgleropeitem) then put #var m%checkmodeburgleropeitem heavy rope
  if !matchre("$m%checkmodeburglemaxgrabs", "\b(0|1|2|3|4|5|6)\b") then put #var m%checkmodeburglemaxgrabs 6
  if !matchre("$m%checkmodeburgleloot", "\b(YES|NO)\b") then put #var m%checkmodeburgleloot NO
  if $m%checkmodeburglekeeplist = "%burglekeeplist" then put #var m%checkmodeburglekeeplist none
  if !def(m%checkmodeburglekeeplist) then put #var m%checkmodeburglekeeplist none
  if !matchre("$m%checkmodeburglepawn", "\b(YES|NO)\b") then put #var m%checkmodeburglepawn NO
  
  if !matchre("$m%checkmodeburglethiefbin", "\b(YES|NO)\b") then put #var m%checkmodeburglethiefbin NO
  if !matchre("$m%checkmodeburglekhrihasten", "\b(YES|NO)\b") then put #var m%checkmodeburglekhrihasten NO
  if !matchre("$m%checkmodeburglekhriplunder", "\b(YES|NO)\b") then put #var m%checkmodeburglekhriplunder NO
  if !matchre("$m%checkmodeburglekhrisilence", "\b(YES|NO)\b") then put #var m%checkmodeburglekhrisilence NO
  if !matchre("$m%checkmodeburglekhrislight", "\b(YES|NO)\b") then put #var m%checkmodeburglekhrislight NO
  
  if !matchre("$m%checkmodeboxpopkhrifocus", "\b(YES|NO)\b") then put #var m%checkmodeboxpopkhrifocus NO
  if !matchre("$m%checkmodeboxpopkhrihasten", "\b(YES|NO)\b") then put #var m%checkmodeboxpopkhrihasten NO
  if !matchre("$m%checkmodeboxpopkhriplunder", "\b(YES|NO)\b") then put #var m%checkmodeboxpopkhriplunder NO
  if !matchre("$m%checkmodeboxpopkhrisafe", "\b(YES|NO)\b") then put #var m%checkmodeboxpopkhrisafe NO
  if !matchre("$m%checkmodeboxpopkhrisight", "\b(YES|NO)\b") then put #var m%checkmodeboxpopkhrisight NO
  
  if !matchre("$m%checkmodeburglerf", "\b(YES|NO)\b") then put #var m%checkmodeburglerf NO
  if $m%checkmodeburglerfdelay >= 0 then
  else put #var m%checkmodeburglerfdelay 10 
  if !matchre("$m%checkmodeburgleeotb", "\b(YES|NO)\b") then put #var m%checkmodeburgleeotb NO
  if $m%checkmodeburgleeotbdelay >= 0 then
  else put #var m%checkmodeburgleeotbdelay 10
  
  if !matchre("$m%checkmodeperform", "\b(YES|NO)\b") then put #var m%checkmodeperform NO
  if !matchre("$m%checkmodeperformcyclic", "\b(YES|NO)\b") then put #var m%checkmodeperformcyclic NO
  if !def(m%checkmodeinstrument) then put #var m%checkmodeinstrument zills
  if !matchre("$m%checkmodeinstrumentworn", "\b(YES|NO)\b") then put #var m%checkmodeinstrumentworn NO
  if (($m%checkmodeinstrumenthands >= 1) && ($m%checkmodeinstrumenthands < 3)) then
  else put #var m%checkmodeinstrumenthands 2
  if !matchre("$m%checkmodeinstruments", "\b(YES|NO)\b") then put #var m%checkmodeinstrumentassess YES
  if !matchre("$m%checkmodeinstclean", "\b(YES|NO)\b") then put #var m%checkmodeinstclean NO
  if !def(m%checkmodeinstcleancloth) then put #var m%checkmodeinstcleancloth cloth
  if !def(m%checkmodesongtype) then put #var m%checkmodesongtype scales
  
  if !matchre("$m%checkmodecrafting", "\b(YES|NO)\b") then put #var m%checkmodecrafting NO
  if !def(m%checkmodecraftingstorage) then put #var m%checkmodecraftingstorage crafting satchel
  if !matchre("$m%checkmodecraftingstoragelocation", "\b(none|portal|vault)\b") then put #var m%checkmodecraftingstoragelocation none
  if !matchre("$m%checkmodeforging", "\b(YES|NO)\b") then put #var m%checkmodeforging NO
  if !matchre("$m%checkmodeforgingdifficulty", "\b(easy|challenging|hard)\b") then put #var m%checkmodeforgingdifficulty challenging
  if !matchre("$m%checkmodeforgingdiscipline", "\b(weaponsmithing|armorsmithing|blacksmithing)\b") then put #var m%checkmodeforgingdiscipline weaponsmithing
  if !def(m%checkmodeforgingmaterial) then put #var m%checkmodeforgingmaterial bronze
  if !matchre("$m%checkmodeforgingrepair", "\b(YES|NO)\b") then put #var m%checkmodeforgingrepair YES
  if !matchre("$m%checkmodeforgingprivateroom", "\b(YES|NO)\b") then put #var m%checkmodeforgingprivateroom NO
  if $m%checkmodeforgingmaxvolumes >= 0 then
  else put #var m%checkmodeforgingmaxvolumes 200
  if $m%checkmodeforgingmaxquantity >= 0 then
  else put #var m%checkmodeforgingmaxquantity 4
  if !matchre("$m%checkmodeforgingsmelting", "\b(YES|NO)\b") then put #var m%checkmodeforgingsmelting YES
  if !matchre("$m%checkmodeoutfitting", "\b(YES|NO)\b") then put #var m%checkmodeoutfitting NO
  if !matchre("$m%checkmodeoutfittingdifficulty", "\b(easy|challenging|hard)\b") then put #var m%checkmodeoutfittingdifficulty challenging
  if !def(m%checkmodeoutfittingcloth) then put #var m%checkmodeoutfittingcloth burlap
  if !def(m%checkmodeoutfittingleather) then put #var m%checkmodeoutfittingleather cougar-pelt
  if !matchre("$m%checkmodeoutfittingrepair", "\b(YES|NO)\b") then put #var m%checkmodeoutfittingrepair YES
  if $m%checkmodeoutfittingmaxyards >= 0 then
  else put #var m%checkmodeoutfittingmaxyards 100
  if $m%checkmodeoutfittingmaxquantity >= 0 then
  else put #var m%checkmodeoutfittingmaxquantity 4  
  if !def(m%checkmodeawl) then put #var m%checkmodeawl awl
  if !def(m%checkmodebellows) then put #var m%checkmodebellows leather bellows
  if !def(m%checkmodehammer) then put #var m%checkmodehammer diagonal-peen hammer
  if !def(m%checkmodeknittingneedles) then put #var m%checkmodeknittingneedles knitting needles
  if !def(m%checkmodepliers) then put #var m%checkmodepliers pliers
  if !def(m%checkmodescissors) then put #var m%checkmodescissors scissors
  if !def(m%checkmodesewingneedles) then put #var m%checkmodesewingneedles sewing needles
  if !def(m%checkmodeshovel) then put #var m%checkmodeshovel curved shovel
  if !def(m%checkmodeslickstone) then put #var m%checkmodeslickstone slickstone
  if !def(m%checkmoderod) then put #var m%checkmoderod stirring rod
  if !def(m%checkmodetongs) then put #var m%checkmodetongs tongs
  if !def(m%checkmodeyardstick) then put #var m%checkmodeyardstick yardstick

  
  #MAGIC
  if !matchre("$m%checkmodeattune", "\b(YES|NO)\b") then put #var m%checkmodeattune YES
  if $m%checkmodeminconcentration >= 0 then
  else put #var m%checkmodeminconcentration 80
  if $m%checkmodeminmana >= 10 then
  else put #var m%checkmodeminmana 30
  if $m%checkmodecastingthrottle >= 0 then
  else put #var m%checkmodecastingthrottle 1
  if !matchre("$m%checkmodestraightcast", "\b(YES|NO)\b") then put #var m%checkmodestraightcast NO
  if !matchre("$m%checkmodeharnessing", "\b(YES|NO)\b") then put #var m%checkmodeharnessing YES
  if $m%checkmodeharnessmax >= 5 then
  else put #var m%checkmodeharnessmax 20
  if !matchre("$m%checkmodecambrinth", "\b(YES|NO)\b") then put #var m%checkmodecambrinth NO
  if $m%checkmodechargemax >= 5 then
  else put #var m%checkmodechargemax 20
  if !matchre("$m%checkmodededicatedcambrinth", "\b(YES|NO)\b") then put #var m%checkmodededicatedcambrinth NO
  if (($m%checkmodecambitems >= 0) && ($m%checkmodecambitems < 3)) then
  else put #var m%checkmodecambitems 1
  if !def(m%checkmodecambitem1) then put #var m%checkmodecambitem1 armband
  if $m%checkmodecambitem1mana >= 1 then
  else put #var m%checkmodecambitem1mana 1
  if !matchre("$m%checkmodecambitem1worn", "\b(YES|NO)\b") then put #var m%checkmodecambitem1worn YES
  if !def(m%checkmodecambitem2) then put #var m%checkmodecambitem2 armband
  if $m%checkmodecambitem2mana >= 1 then
  else put #var m%checkmodecambitem2mana 1
  if !matchre("$m%checkmodecambitem2worn", "\b(YES|NO)\b") then put #var m%checkmodecambitem2worn YES
  if !def(m%checkmoderitualfocus) then put #var m%checkmoderitualfocus rod
  if !matchre("$m%checkmoderitualfocusworn", "\b(YES|NO)\b") then put #var m%checkmoderitualfocusworn NO
  if !matchre("$m%checkmoderitualfocusstorage", "\b(YES|NO)\b") then put #var m%checkmoderitualfocusstorage NO
  if !def(m%checkmoderitualfocuscontainer) then put #var m%checkmoderitualfocuscontainer backpack
  if !matchre("$m%checkmodetmfocus", "\b(YES|NO)\b") then put #var m%checkmodetmfocus NO
  if !def(m%checkmodetmfocusitem) then put #var m%checkmodetmfocusitem wand
  if !matchre("$m%checkmodetmfocusstorage", "\b(YES|NO)\b") then put #var m%checkmodetmfocusstorage NO
  if !matchre("$m%checkmodetmfocusworn", "\b(YES|NO)\b") then put #var m%checkmodetmfocusworn NO
  if !matchre("$m%checkmodetmdbprior", "\b(YES|NO)\b") then put #var m%checkmodetmdbprior NO
  if !matchre("$m%checkmodecombatsanowret", "\b(YES|NO)\b") then put #var m%checkmodecombatsanowret NO
  if !matchre("$m%checkmodenoncomsanowret", "\b(YES|NO)\b") then put #var m%checkmodenoncomsanowret NO
  if !def(m%checkmodesanowretitem) then put #var m%checkmodesanowretitem crystal
  
  #BUFFS
  if !matchre("$m%checkmodebuff", "\b(YES|NO)\b") then put #var m%checkmodebuff NO
  if $m%checkmodebuffbuffer >= 1 then
  else put #var m%checkmodebuffbuffer 2
  if (($m%checkmodebuffnum >= 0) && ($m%checkmodebuffnum <= 16)) then
  else put #var m%checkmodebuffnum 0
  if !def(m%checkmodebuff1) then put #var m%checkmodebuff1 maf
  if $m%checkmodebuff1prepmana >= 0 then
  else put #var m%checkmodebuff1prepmana 1
  if $m%checkmodebuff1addmana >= 0 then
  else put #var m%checkmodebuff1addmana 0
  if !def(m%checkmodebuff2) then put #var m%checkmodebuff2 maf
  if $m%checkmodebuff1prepwait > 0 then
  else put #var m%checkmodebuff1prepwait 0
  if $m%checkmodebuff2prepmana >= 0 then
  else put #var m%checkmodebuff2prepmana 1
  if $m%checkmodebuff2addmana >= 0 then
  else put #var m%checkmodebuff2addmana 0
  if $m%checkmodebuff2prepwait > 0 then
  else put #var m%checkmodebuff2prepwait 0
  if !def(m%checkmodebuff3) then put #var m%checkmodebuff3 maf
  if $m%checkmodebuff3prepmana >= 0 then
  else put #var m%checkmodebuff3prepmana 1
  if $m%checkmodebuff3addmana >= 0 then
  else put #var m%checkmodebuff3addmana 0
  if $m%checkmodebuff3prepwait > 0 then
  else put #var m%checkmodebuff3prepwait 0
  if !def(m%checkmodebuff4) then put #var m%checkmodebuff4 maf
  if $m%checkmodebuff4prepmana >= 0 then
  else put #var m%checkmodebuff4prepmana 1
  if $m%checkmodebuff4addmana >= 0 then
  else put #var m%checkmodebuff4addmana 0
  if $m%checkmodebuff4prepwait > 0 then
  else put #var m%checkmodebuff4prepwait 0
  if !def(m%checkmodebuff5) then put #var m%checkmodebuff5 maf
  if $m%checkmodebuff5prepmana >= 0 then
  else put #var m%checkmodebuff5prepmana 1
  if $m%checkmodebuff5addmana >= 0 then
  else put #var m%checkmodebuff5addmana 0
  if $m%checkmodebuff5prepwait > 0 then
  else put #var m%checkmodebuff5prepwait 0
  if !def(m%checkmodebuff6) then put #var m%checkmodebuff6 maf
  if $m%checkmodebuff6prepmana >= 0 then
  else put #var m%checkmodebuff6prepmana 1
  if $m%checkmodebuff6addmana >= 0 then
  else put #var m%checkmodebuff6addmana 0
  if $m%checkmodebuff6prepwait > 0 then
  else put #var m%checkmodebuff6prepwait 0
  if !def(m%checkmodebuff7) then put #var m%checkmodebuff7 maf
  if $m%checkmodebuff7prepmana >= 0 then
  else put #var m%checkmodebuff7prepmana 1
  if $m%checkmodebuff7addmana >= 0 then
  else put #var m%checkmodebuff7addmana 0
  if $m%checkmodebuff7prepwait > 0 then
  else put #var m%checkmodebuff7prepwait 0
  if !def(m%checkmodebuff8) then put #var m%checkmodebuff8 maf
  if $m%checkmodebuff8prepmana >= 0 then
  else put #var m%checkmodebuff8prepmana 1
  if $m%checkmodebuff8addmana >= 0 then
  else put #var m%checkmodebuff8addmana 0
  if $m%checkmodebuff8prepwait > 0 then
  else put #var m%checkmodebuff8prepwait 0
  if !def(m%checkmodebuff9) then put #var m%checkmodebuff9 maf
  if $m%checkmodebuff9prepmana >= 0 then
  else put #var m%checkmodebuff9prepmana 1
  if $m%checkmodebuff9addmana >= 0 then
  else put #var m%checkmodebuff9addmana 0
  if $m%checkmodebuff9prepwait > 0 then
  else put #var m%checkmodebuff9prepwait 0
  if !def(m%checkmodebuff10) then put #var m%checkmodebuff10 maf
  if $m%checkmodebuff10prepmana >= 0 then
  else put #var m%checkmodebuff10prepmana 1
  if $m%checkmodebuff10addmana >= 0 then
  else put #var m%checkmodebuff10addmana 0
  if $m%checkmodebuff10prepwait > 0 then
  else put #var m%checkmodebuff10prepwait 0
  if !def(m%checkmodebuff11) then put #var m%checkmodebuff11 maf
  if $m%checkmodebuff11prepmana >= 0 then
  else put #var m%checkmodebuff11prepmana 1
  if $m%checkmodebuff11addmana >= 0 then
  else put #var m%checkmodebuff11addmana 0
  if $m%checkmodebuff11prepwait > 0 then
  else put #var m%checkmodebuff11prepwait 0
  if !def(m%checkmodebuff12) then put #var m%checkmodebuff12 maf
  if $m%checkmodebuff12prepmana >= 0 then
  else put #var m%checkmodebuff12prepmana 1
  if $m%checkmodebuff12addmana >= 0 then
  else put #var m%checkmodebuff12addmana 0
  if $m%checkmodebuff12prepwait > 0 then
  else put #var m%checkmodebuff12prepwait 0
  if !def(m%checkmodebuff13) then put #var m%checkmodebuff13 maf
  if $m%checkmodebuff13prepmana >= 0 then
  else put #var m%checkmodebuff13prepmana 1
  if $m%checkmodebuff13addmana >= 0 then
  else put #var m%checkmodebuff13addmana 0
  if $m%checkmodebuff13prepwait > 0 then
  else put #var m%checkmodebuff13prepwait 0
  if !def(m%checkmodebuff14) then put #var m%checkmodebuff14 maf
  if $m%checkmodebuff14prepmana >= 0 then
  else put #var m%checkmodebuff14prepmana 1
  if $m%checkmodebuff14addmana >= 0 then
  else put #var m%checkmodebuff14addmana 0
  if $m%checkmodebuff14prepwait > 0 then
  else put #var m%checkmodebuff14prepwait 0
  if !def(m%checkmodebuff15) then put #var m%checkmodebuff15 maf
  if $m%checkmodebuff15prepmana >= 0 then
  else put #var m%checkmodebuff15prepmana 1
  if $m%checkmodebuff15addmana >= 0 then
  else put #var m%checkmodebuff15addmana 0
  if $m%checkmodebuff15prepwait > 0 then
  else put #var m%checkmodebuff15prepwait 0
  if !def(m%checkmodebuff16) then put #var m%checkmodebuff16 maf
  if $m%checkmodebuff16prepmana >= 0 then
  else put #var m%checkmodebuff16prepmana 1
  if $m%checkmodebuff16addmana >= 0 then
  else put #var m%checkmodebuff16addmana 0
  if $m%checkmodebuff16prepwait > 0 then
  else put #var m%checkmodebuff16prepwait 0
  if !matchre("$m%checkmodesymbiosisbuff", "\b(YES|NO)\b") then put #var m%checkmodesymbiosisbuff NO
  if !def(m%checkmodesymbiosisspell) then put #var m%checkmodesymbiosisspell ab
  if $m%checkmodesymbiosisprepmana >= 0 then
  else put #var m%checkmodesymbiosisprepmana 1
  if $m%checkmodesymbiosisaddmana >= 0 then
  else put #var m%checkmodesymbiosisaddmana 0
  if $m%checkmodesymbiosisprepwait >= 0 then
  else put #var m%checkmodesymbiosisprepwait 0
  if !matchre("$m%checkmodetattoobuff", "\b(YES|NO)\b") then put #var m%checkmodetattoobuff NO
  if !matchre("$m%checkmodetattootype", "\b(runic|heroic)\b") then
  {
    echo changing tattoo type
    put #var m%checkmodetattootype runic
  }
  if !def(m%checkmodetattoospell) then put #var m%checkmodetattoospell will
  if $m%checkmodetattooaddmana >= 0 then
  else put #var m%checkmodetattooaddmana 0
  if $m%checkmodetattooprepwait >= 0 then
  else put #var m%checkmodetattooprepwait 0
  if !matchre("$m%checkmodewandbuff", "\b(YES|NO)\b") then put #var m%checkmodewandbuff NO
  if !matchre("$m%checkmodewandbuffnum", "\b(1|2|3|4)\b") then put #var m%checkmodewandbuffnum 1
  if !def(m%checkmodewandstorage) then put #var m%checkmodewandstorage backpack
  
  if !def(m%checkmodewand1spell) then put #var m%checkmodewand1spell rage 
  if !def(m%checkmodewand1item) then put #var m%checkmodewand1item indurium phoenix
  if $m%checkmodewand1num > 0 then
  else put #var m%checkmodewand1num 2
  
  if !def(m%checkmodewand2spell) then put #var m%checkmodewand2spell mef
  if !def(m%checkmodewand2item) then put #var m%checkmodewand2item bloodwood branch
  if $m%checkmodewand2num > 0 then
  else put #var m%checkmodewand2num 2
  
  if !def(m%checkmodewand3spell) then put #var m%checkmodewand3spell hes
  if !def(m%checkmodewand3item) then put #var m%checkmodewand3item ironwood wand
  if $m%checkmodewand3num > 0 then
  else put #var m%checkmodewand3num 2
  
  
  if !def(m%checkmodewand4spell) then put #var m%checkmodewand4spell will
  if !def(m%checkmodewand4item) then put #var m%checkmodewand4item crystal
  if $m%checkmodewand4num > 0 then
  else put #var m%checkmodewand4num 2
  
  if !def(m%checkmodewand1next) then put #var m%checkmodewand1next 0
  if !def(m%checkmodewand2next) then put #var m%checkmodewand2next 0
  if !matchre("$m%checkmodewand1spell", "\b(hes|mef|rage|rw|will|wotp)\b") then put #var m%checkmodewand1spell mef
  if !matchre("$m%checkmodewand2spell", "\b(hes|mef|rage|rw|will|wotp)\b") then put #var m%checkmodewand2spell rage
  if !matchre("$m%checkmodeabuff", "\b(YES|NO)\b") then put #var m%checkmodeabuff NO
  if (($m%checkmodeabuffnum >= 0) && ($m%checkmodeabuffnum <= 8)) then
  else put #var m%checkmodeabuffnum 0
  if !def(m%checkmodeabuff1) then put #var m%checkmodeabuff1 maf
  if $m%checkmodeabuff1prepmana >= 0 then
  else put #var m%checkmodeabuff1prepmana 1
  if $m%checkmodeabuff1addmana >= 0 then
  else put #var m%checkmodeabuff1addmana 0
  if !def(m%checkmodeabuff2) then put #var m%checkmodeabuff2 maf
  if $m%checkmodeabuff2prepmana >= 0 then
  else put #var m%checkmodeabuff2prepmana 1
  if $m%checkmodeabuff2addmana >= 0 then
  else put #var m%checkmodeabuff2addmana 0
  if !def(m%checkmodeabuff3) then put #var m%checkmodeabuff3 maf
  if $m%checkmodeabuff3prepmana >= 0 then
  else put #var m%checkmodeabuff3prepmana 1
  if $m%checkmodeabuff3addmana >= 0 then
  else put #var m%checkmodeabuff3addmana 0
  if !def(m%checkmodeabuff4) then put #var m%checkmodeabuff4 maf
  if $m%checkmodeabuff4prepmana >= 0 then
  else put #var m%checkmodeabuff4prepmana 1
  if $m%checkmodeabuff4addmana >= 0 then
  else put #var m%checkmodeabuff4addmana 0
  if !def(m%checkmodeabuff5) then put #var m%checkmodeabuff5 maf
  if $m%checkmodeabuff5prepmana >= 0 then
  else put #var m%checkmodeabuff5prepmana 1
  if $m%checkmodeabuff5addmana >= 0 then
  else put #var m%checkmodeabuff5addmana 0
  if !def(m%checkmodeabuff6) then put #var m%checkmodeabuff6 maf
  if $m%checkmodeabuff6prepmana >= 0 then
  else put #var m%checkmodeabuff6prepmana 1
  if $m%checkmodeabuff6addmana >= 0 then
  else put #var m%checkmodeabuff6addmana 0
  if !def(m%checkmodeabuff7) then put #var m%checkmodeabuff7 maf
  if $m%checkmodeabuff7prepmana >= 0 then
  else put #var m%checkmodeabuff7prepmana 1
  if $m%checkmodeabuff7addmana >= 0 then
  else put #var m%checkmodeabuff7addmana 0
  if !def(m%checkmodeabuff8) then put #var m%checkmodeabuff8 maf
  if $m%checkmodeabuff8prepmana >= 0 then
  else put #var m%checkmodeabuff8prepmana 1
  if $m%checkmodeabuff8addmana >= 0 then
  else put #var m%checkmodeabuff8addmana 0
  if !matchre("$m%checkmodegbuff", "\b(YES|NO)\b") then put #var m%checkmodegbuff NO
  if (($m%checkmodegbuffnum >= 0) && ($m%checkmodegbuffnum <= 8)) then
  else put #var m%checkmodegbuffnum 0
  if !def(m%checkmodegbuff1) then put #var m%checkmodegbuff1 maf
  if $m%checkmodegbuff1prepmana >= 0 then
  else put #var m%checkmodegbuff1prepmana 1
  if $m%checkmodegbuff1addmana >= 0 then
  else put #var m%checkmodegbuff1addmana 0
  if !def(m%checkmodegbuff2) then put #var m%checkmodegbuff2 maf
  if $m%checkmodegbuff2prepmana >= 0 then
  else put #var m%checkmodegbuff2prepmana 1
  if $m%checkmodegbuff2addmana >= 0 then
  else put #var m%checkmodegbuff2addmana 0
  if !def(m%checkmodegbuff3) then put #var m%checkmodegbuff3 maf
  if $m%checkmodegbuff3prepmana >= 0 then
  else put #var m%checkmodegbuff3prepmana 1
  if $m%checkmodegbuff3addmana >= 0 then
  else put #var m%checkmodegbuff3addmana 0
  if !def(m%checkmodegbuff4) then put #var m%checkmodegbuff4 maf
  if $m%checkmodegbuff4prepmana >= 0 then
  else put #var m%checkmodegbuff4prepmana 1
  if $m%checkmodegbuff4addmana >= 0 then
  else put #var m%checkmodegbuff4addmana 0
  if !def(m%checkmodegbuff5) then put #var m%checkmodegbuff5 maf
  if $m%checkmodegbuff5prepmana >= 0 then
  else put #var m%checkmodegbuff5prepmana 1
  if $m%checkmodegbuff5addmana >= 0 then
  else put #var m%checkmodegbuff5addmana 0
  if !def(m%checkmodegbuff6) then put #var m%checkmodegbuff6 maf
  if $m%checkmodegbuff6prepmana >= 0 then
  else put #var m%checkmodegbuff6prepmana 1
  if $m%checkmodegbuff6addmana >= 0 then
  else put #var m%checkmodegbuff6addmana 0
  if !def(m%checkmodegbuff7) then put #var m%checkmodegbuff7 maf
  if $m%checkmodegbuff7prepmana >= 0 then
  else put #var m%checkmodegbuff7prepmana 1
  if $m%checkmodegbuff7addmana >= 0 then
  else put #var m%checkmodegbuff7addmana 0
  if !def(m%checkmodegbuff8) then put #var m%checkmodegbuff8 maf
  if $m%checkmodegbuff8prepmana >= 0 then
  else put #var m%checkmodegbuff8prepmana 1
  if $m%checkmodegbuff8addmana >= 0 then
  else put #var m%checkmodegbuff8addmana 0
  
  #SPELL
  if !matchre("$m%checkmodespell", "\b(YES|NO)\b") then put #var m%checkmodespell YES
  if !matchre("$m%checkmodespellnum", "\b(1|2|3|4)\b") then put #var m%checkmodespellnum 1
  if !def(m%checkmodespell1) then put #var m%checkmodespell1 ys
  if !def(m%checkmodeskill1) then put #var m%checkmodeskill1 augmentation
  if $m%checkmodespell1prepmana >= 0 then
  else put #var m%checkmodespell1prepmana 1
  if $m%checkmodespell1addmana >= 0 then
  else put #var m%checkmodespell1addmana 0
  if $m%checkmodespell1prepwait > 0 then
  else put #var m%checkmodespell1prepwait 0
  if !matchre("$m%checkmodespell1symb", "\b(YES|NO)\b") then put #var m%checkmodespell1symb NO
  if !matchre("$m%checkmodespell1tattoo", "\b(YES|NO)\b") then put #var m%checkmodespell1tattoo NO
  if !def(m%checkmodespell2) then put #var m%checkmodespell2 ab
  if !def(m%checkmodeskill2) then put #var m%checkmodeskill2 utility
  if $m%checkmodespell2prepmana >= 0 then
  else put #var m%checkmodespell2prepmana 2
  if $m%checkmodespell2addmana >= 0 then
  else put #var m%checkmodespell2addmana 0
  if $m%checkmodespell2prepwait > 0 then
  else put #var m%checkmodespell2prepwait 0
  if !matchre("$m%checkmodespell2symb", "\b(YES|NO)\b") then put #var m%checkmodespell2symb NO
  if !matchre("$m%checkmodespell2tattoo", "\b(YES|NO)\b") then put #var m%checkmodespell2tattoo NO
  if !def(m%checkmodespell3) then put #var m%checkmodespell3 maf
  if !def(m%checkmodeskill3) then put #var m%checkmodeskill3 warding
  if $m%checkmodespell3prepmana >= 0 then
  else put #var m%checkmodespell3prepmana 3
  if $m%checkmodespell3addmana >= 0 then
  else put #var m%checkmodespell3addmana 0
  if $m%checkmodespell3prepwait > 0 then
  else put #var m%checkmodespell3prepwait 0
  if !matchre("$m%checkmodespell3symb", "\b(YES|NO)\b") then put #var m%checkmodespell3symb NO
  if !matchre("$m%checkmodespell3tattoo", "\b(YES|NO)\b") then put #var m%checkmodespell3tattoo NO
  if !def(m%checkmodespell4) then put #var m%checkmodespell4 bless
  if !def(m%checkmodeskill4) then put #var m%checkmodeskill4 sorcery
  if $m%checkmodespell4prepmana >= 0 then
  else put #var m%checkmodespell4prepmana 4
  if $m%checkmodespell4addmana >= 0 then
  else put #var m%checkmodespell4addmana 0
  if $m%checkmodespell4prepwait > 0 then
  else put #var m%checkmodespell4prepwait 0
  if !matchre("$m%checkmodespell4symb", "\b(YES|NO)\b") then put #var m%checkmodespell4symb NO
  if !matchre("$m%checkmodespell4tattoo", "\b(YES|NO)\b") then put #var m%checkmodespell4tattoo NO
  if !matchre("$m%checkmodetm", "\b(YES|NO)\b") then put #var m%checkmodetm NO
  if !matchre("$m%checkmodetmskill", "\b(tm|sorcery)\b") then put #var m%checkmodetmskill tm
  if !def(m%checkmodespelltm) then put #var m%checkmodespelltm fb
  if $m%checkmodespelltmprepmana >= 1 then
  else put #var m%checkmodespelltmprepmana 1
  if $m%checkmodespelltmaddmana >= 0 then
  else put #var m%checkmodespelltmaddmana 0
  if $m%checkmodespelltmprepwait > 0 then
  else put #var m%checkmodespelltmprepwait 0
  if !matchre("$m%checkmodespelltmtattoo", "\b(YES|NO)\b") then put #var m%checkmodespelltmtattoo NO
  if !matchre("$m%checkmodedebil", "\b(YES|NO)\b") then put #var m%checkmodedebil NO
  if !matchre("$m%checkmodedebilskill", "\b(debil|sorcery)\b") then put #var m%checkmodedebilskill debil
  if !def(m%checkmodespelldb) then put #var m%checkmodespelldb frb
  if $m%checkmodespelldbprepmana >= 1 then
  else put #var m%checkmodespelldbprepmana 1
  if $m%checkmodespelldbaddmana >= 0 then
  else put #var m%checkmodespelldbaddmana 0
  if $m%checkmodespelldbprepwait > 0 then
  else put #var m%checkmodespelldbprepwait 0
  if !matchre("$m%checkmodespelldbtattoo", "\b(YES|NO)\b") then put #var m%checkmodespelldbtattoo NO
  if !matchre("$m%checkmodecyclic", "\b(YES|NO)\b") then put #var m%checkmodecyclic NO
  if !matchre("$m%checkmodecyclicbuff", "\b(YES|NO)\b") then put #var m%checkmodecyclicbuff NO
  if !matchre("$m%checkmodespellcnum", "\b(1|2|3)\b") then put #var m%checkmodespellcnum 1
  if !def(m%checkmodespellc1) then put #var m%checkmodespellc1 ac
  if !def(m%checkmodeskillc1) then put #var m%checkmodeskillc1 warding
  if $m%checkmodespellc1prepmana >= 1 then
  else put #var m%checkmodespellc1prepmana 1
  if !def(m%checkmodespellc2) then put #var m%checkmodespellc2 sov
  if !def(m%checkmodeskillc2) then put #var m%checkmodeskillc2 utility
  if $m%checkmodespellc2prepmana >= 1 then
  else put #var m%checkmodespellc2prepmana 1
  if !def(m%checkmodespellc3) then put #var m%checkmodespellc3 how
  if !def(m%checkmodeskillc3) then put #var m%checkmodeskillc3 augmentation
  if $m%checkmodespellc3prepmana >= 1 then
  else put #var m%checkmodespellc3prepmana 1
  if !matchre("$m%checkmodecyctm", "\b(YES|NO)\b") then put #var m%checkmodecyctm NO
  if !def(m%checkmodespellctm) then put #var m%checkmodespellctm rim
  if $m%checkmodespellctmprepmana >= 1 then
  else put #var m%checkmodespellctmprepmana 1
  if !matchre("$m%checkmodecycdebil", "\b(YES|NO)\b") then put #var m%checkmodecycdebil NO
  if !def(m%checkmodespellcdb) then put #var m%checkmodespellcdb ee
  if $m%checkmodespellcdbprepmana >= 1 then
  else put #var m%checkmodespellcdbprepmana 1
  if !matchre("$m%checkmodedebilassist", "\b(YES|NO)\b") then put #var m%checkmodedebilassist NO
  if !matchre("$m%checkmodedbanum", "\b(0|1|2|3)\b") then put #var m%checkmodedbanum 0
  if !def(m%checkmodedbalist) then put #var m%checkmodedbalist xbow|se
  if !def(m%checkmodedbaspell1) then put #var m%checkmodedbaspell1 anc
  if $m%checkmodedbaspell1prepmana > -1 then
  else put #var m%checkmodedbaspell1prepmana 0
  if $m%checkmodedbaspell1addmana > -1 then
  else put #var m%checkmodedbaspell1addmana 0
  if !def(m%checkmodedbaspell2) then put #var m%checkmodedbaspell2 vertigo
  if $m%checkmodedbaspell2prepmana > -1 then
  else put #var m%checkmodedbaspell2prepmana 0
  if $m%checkmodedbaspell2addmana > -1 then
  else put #var m%checkmodedbaspell2addmana 0
  if !def(m%checkmodedbaspell3) then put #var m%checkmodedbaspell3 tremor
  if $m%checkmodedbaspell3prepmana > -1 then
  else put #var m%checkmodedbaspell3prepmana 0
  if $m%checkmodedbaspell3addmana > -1 then
  else put #var m%checkmodedbaspell3addmana 0
  
  if !matchre("$m%checkmoderesearch", "\b(YES|NO)\b") then put #var m%checkmoderesearch NO
  if $m%checkmodegafprepmana >= 5 then
  else put #var m%checkmodegafprepmana 5
  if $m%checkmodegafaddmana >= 0 then
  else put #var m%checkmodegafaddmana 0
  if !matchre("$m%checkmoderesearchnum", "\b(1|2|3|4|5)\b") then put #var m%checkmoderesearchnum 1
  #if !matchre("$m%checkmoderesearchtype1", "\b(fundamental|augmentation|stream|sorcery|utility|warding|energy|field|plane|spell)\b") then put #var m%checkmoderesearchtype1 fundamental
  #if !matchre("$m%checkmoderesearchtype2", "\b(fundamental|augmentation|stream|sorcery|utility|warding|energy|field|plane|spell)\b") then put #var m%checkmoderesearchtype2 fundamental
  #if !matchre("$m%checkmoderesearchtype3", "\b(fundamental|augmentation|stream|sorcery|utility|warding|energy|field|plane|spell)\b") then put #var m%checkmoderesearchtype3 fundamental
  #if !matchre("$m%checkmoderesearchtype4", "\b(fundamental|augmentation|stream|sorcery|utility|warding|energy|field|plane|spell)\b") then put #var m%checkmoderesearchtype4 fundamental
  #if !matchre("$m%checkmoderesearchtype5", "\b(fundamental|augmentation|stream|sorcery|utility|warding|energy|field|plane|spell)\b") then put #var m%checkmoderesearchtype5 fundamental
  
  
  #GUILD-BARBARIAN
  if !matchre("$m%checkmodewarhorn", "\b(YES|NO)\b") then put #var m%checkmodewarhorn NO
  if !def(m%checkmodewarhornitem) then put #var m%checkmodewarhornitem warhorn
  if !matchre("$m%checkmodeexpertise", "\b(YES|NO)\b") then put #var m%checkmodeexpertise NO
  if !matchre("$m%checkmodewhirlwind", "\b(YES|NO)\b") then put #var m%checkmodewhirlwind NO
  if !matchre("$m%checkmodedualload", "\b(YES|NO)\b") then put #var m%checkmodedualload NO
  if $m%checkmodemininnerfire >= 0 then
  else put #var m%checkmodemininnerfire 20
  if !matchre("$m%checkmodeberserkava", "\b(YES|NO)\b") then put #var m%checkmodeberserkava NO
  if $m%checkmodeavafatigue >= 0 then
  else put #var m%checkmodeavafatigue 90
  if !matchre("$m%checkmodeberserkdrought", "\b(YES|NO)\b") then put #var m%checkmodeberserkdrought NO
  if !matchre("$m%checkmodeberserkfamine", "\b(YES|NO)\b") then put #var m%checkmodeberserkfamine NO
  if $m%checkmodefaminevit >= 0 then
  else put #var m%checkmodefaminevit 90
  if !matchre("$m%checkmodemeditatestaunch", "\b(YES|NO)\b") then put #var m%checkmodemeditatestaunch NO
  if !matchre("$m%checkmodeexpaccuracy", "\b(YES|NO)\b") then put #var m%checkmodeexpaccuracy NO
  if !matchre("$m%checkmodeexpdamage", "\b(YES|NO)\b") then put #var m%checkmodeexpdamage NO
  if !matchre("$m%checkmodeberserkblizzard", "\b(YES|NO)\b") then put #var m%checkmodeberserkblizzard NO
  if !matchre("$m%checkmodeberserkcyclone", "\b(YES|NO)\b") then put #var m%checkmodeberserkcyclone NO
  if !matchre("$m%checkmodeberserkearthquake", "\b(YES|NO)\b") then put #var m%checkmodeberserkearthquake NO
  if !matchre("$m%checkmodeberserkflashflood", "\b(YES|NO)\b") then put #var m%checkmodeberserkflashflood NO
  if !matchre("$m%checkmodeberserkhurricane", "\b(YES|NO)\b") then put #var m%checkmodeberserkhurricane NO
  if !matchre("$m%checkmodeberserklandslide", "\b(YES|NO)\b") then put #var m%checkmodeberserklandslide NO
  if !matchre("$m%checkmodelandslidetraining", "\b(YES|NO)\b") then put #var m%checkmodelandslidetraining NO
  if !matchre("$m%checkmodeberserktornado", "\b(YES|NO)\b") then put #var m%checkmodeberserktornado NO
  if !matchre("$m%checkmodetornadotraining", "\b(YES|NO)\b") then put #var m%checkmodetornadotraining NO
  if !matchre("$m%checkmodeberserktsunami", "\b(YES|NO)\b") then put #var m%checkmodeberserktsunami NO
  if !matchre("$m%checkmodeberserkvolcano", "\b(YES|NO)\b") then put #var m%checkmodeberserkvolcano NO
  if !matchre("$m%checkmodeberserkwildfire", "\b(YES|NO)\b") then put #var m%checkmodeberserkwildfire NO
  if !matchre("$m%checkmodebearform", "\b(YES|NO)\b") then put #var m%checkmodebearform NO
  if !matchre("$m%checkmodebuffaloform", "\b(YES|NO)\b") then put #var m%checkmodebuffaloform NO
  if !matchre("$m%checkmodedragonform", "\b(YES|NO)\b") then put #var m%checkmodedragonform NO
  if !matchre("$m%checkmodeeagleform", "\b(YES|NO)\b") then put #var m%checkmodeeagleform NO
  if !matchre("$m%checkmodemonkeyform", "\b(YES|NO)\b") then put #var m%checkmodemonkeyform NO
  if !matchre("$m%checkmodeowlform", "\b(YES|NO)\b") then put #var m%checkmodeowlform NO
  if !matchre("$m%checkmodepantherform", "\b(YES|NO)\b") then put #var m%checkmodepantherform NO
  if !matchre("$m%checkmodepiranhaform", "\b(YES|NO)\b") then put #var m%checkmodepiranhaform NO
  if !matchre("$m%checkmodepythonform", "\b(YES|NO)\b") then put #var m%checkmodepythonform NO
  if !matchre("$m%checkmodewolverineform", "\b(YES|NO)\b") then put #var m%checkmodewolverineform NO
  if !matchre("$m%checkmodemeditatebastion", "\b(YES|NO)\b") then put #var m%checkmodemeditatebastion NO
  if !matchre("$m%checkmodemeditatecontemplation", "\b(YES|NO)\b") then put #var m%checkmodemeditatecontemplation NO
  if !matchre("$m%checkmodemeditateserenity", "\b(YES|NO)\b") then put #var m%checkmodemeditateserenity NO
  if !matchre("$m%checkmodemeditatetenacity", "\b(YES|NO)\b") then put #var m%checkmodemeditatetenacity NO
  if !matchre("$m%checkmoderoaranger", "\b(YES|NO)\b") then put #var m%checkmoderoaranger NO
  if !matchre("$m%checkmoderoarembrace", "\b(YES|NO)\b") then put #var m%checkmoderoarembrace NO
  if !matchre("$m%checkmoderoarkuniyo", "\b(YES|NO)\b") then put #var m%checkmoderoarkuniyo NO
  if !matchre("$m%checkmoderoarrage", "\b(YES|NO)\b") then put #var m%checkmoderoarrage NO
  if !matchre("$m%checkmoderoarscreech", "\b(YES|NO)\b") then put #var m%checkmoderoarscreech NO
  if !matchre("$m%checkmoderoarshriek", "\b(YES|NO)\b") then put #var m%checkmoderoarshriek NO
  if !matchre("$m%checkmoderoarwail", "\b(YES|NO)\b") then put #var m%checkmoderoarwail NO
  
  #GUILD-BARD
  if !matchre("$m%checkmodewhistlepiercing", "\b(YES|NO)\b") then put #var m%checkmodewhistlepiercing NO
  if !matchre("$m%checkmodeeilliescry", "\b(YES|NO)\b") then put #var m%checkmodeeilliescry NO
  if $m%checkmodeeilliescryprepmana >= 1 then
  else put #var m%checkmodeeilliescryprepmana 1
  if $m%checkmodeeilliescryaddmana >= 0 then
  else put #var m%checkmodeeilliescryaddmana 0
  if !matchre("$m%checkmodemisdirection", "\b(YES|NO)\b") then put #var m%checkmodemisdirection NO
  if $m%checkmodemisdirectionprepmana >= 10 then
  else put #var m%checkmodemisdirectionprepmana 10
  if $m%checkmodemisdirectionaddmana >= 0 then
  else put #var m%checkmodemisdirectionaddmana 0
  #GUILD-CLERIC
  if !matchre("$m%checkmodetheurgy", "\b(YES|NO)\b") then put #var m%checkmodetheurgy NO
  if !matchre("$m%checkmodepray", "\b(YES|NO)\b") then put #var m%checkmodepray NO
  if !def(m%checkmodepraydeity) then put #var m%checkmodepraydeity meraud
  if !matchre("$m%checkmodeanloralpin", "\b(YES|NO)\b") then put #var m%checkmodeanloralpin NO
  if !def(m%checkmodeanloralpinitem) then put #var m%checkmodeanloralpinitem pin
  if !matchre("$m%checkmodepilgrimbadge", "\b(YES|NO)\b") then put #var m%checkmodepilgrimbadge NO
  if !def(m%checkmodepilgrimbadgeitem) then put #var m%checkmodepilgrimbadgeitem badge
  if !matchre("$m%checkmodemeraudcommune", "\b(YES|NO)\b") then put #var m%checkmodemeraudcommune NO
  if !matchre("$m%checkmodeelunedcommune", "\b(YES|NO)\b") then put #var m%checkmodeelunedcommune NO
  if !matchre("$m%checkmodetamsinecommune", "\b(YES|NO)\b") then put #var m%checkmodetamsinecommune NO
  if $m%checkmodeblessdelay >= 0 then
  else put #var m%checkmodeblessdelay 2
  if !matchre("$m%checkmodedirtstacker", "\b(YES|NO)\b") then put #var m%checkmodedirtstacker NO
  if !def(m%checkmodedirtstackeritem) then put #var m%checkmodedirtstackeritem pouch
  if !matchre("$m%checkmodelighter", "\b(YES|NO)\b") then put #var m%checkmodelighter NO
  if !def(m%checkmodelighteritem) then put #var m%checkmodelighteritem dragon
  if !def(m%checkmodewatercontainer) then put #var m%checkmodewatercontainer chalice
  if !matchre("$m%checkmoderecite", "\b(YES|NO)\b") then put #var m%checkmoderecite NO
  if !matchre("$m%checkmodedance", "\b(YES|NO)\b") then put #var m%checkmodedance NO
  if !matchre("$m%checkmodeprayermat", "\b(YES|NO)\b") then put #var m%checkmodeprayermat NO
  if !def(m%checkmodeprayermatitem) then put #var m%checkmodeprayermatitem mat
  if !matchre("$m%checkmodehyhcast", "\b(coz|male|male offense|male defense)\b") then put #var m%checkmodehyhcast male
  if !matchre("$m%checkmodeosrelmeraud", "\b(YES|NO)\b") then put #var m%checkmodeosrelmeraud NO
  if $m%checkmodeomprepmana >= 30 then
  else put #var m%checkmodeomprepmana 30
  if $m%checkmodeomaddmana >= 0 then
  else put #var m%checkmodeomaddmana 0
  if $m%checkmodeombuffnum >= 0 then
  else put #var m%checkmodeombuffnum 0
  #GUILD-EMPATH
  if !matchre("$m%checkmodeavoidshock", "\b(YES|NO)\b") then put #var m%checkmodeavoidshock NO
  if !matchre("$m%checkmodeperchealth", "\b(YES|NO)\b") then put #var m%checkmodeperchealth NO
  if !matchre("$m%checkmodemanipulate", "\b(YES|NO)\b") then put #var m%checkmodemanipulate NO
  if !matchre("$m%checkmodemanipnum", "\b(1|2)\b") then put #var m%checkmodemanipnum 2
  if !matchre("$m%checkmodeparalysis", "\b(YES|NO)\b") then put #var m%checkmodeparalysis NO
  if $m%checkmodeparalysisprepmana >= 10 then
  else put #var m%checkmodeparalysisprepmana 2
  if $m%checkmodeparalysisaddmana >= 0 then
  else put #var m%checkmodeparalysisaddmana 0
  if !matchre("$m%checkmodevitheal", "\b(YES|NO)\b") then put #var m%checkmodevitheal NO
  if $m%checkmodevithealprepmana >= 5 then
  else put #var m%checkmodevithealprepmana 5
  if $m%checkmodevithealaddmana >= 0 then
  else put #var m%checkmodevithealaddmana 0
  if $m%checkmodevithealnum >= 0 then
  else put #var m%checkmodevithealnum 80
  if !matchre("$m%checkmodeheal", "\b(YES|NO)\b") then put #var m%checkmodeheal NO
  if $m%checkmodehealprepmana >= 15 then
  else put #var m%checkmodehealprepmana 15
  if $m%checkmodehealaddmana >= 0 then
  else put #var m%checkmodehealaddmana 0
  if !matchre("$m%checkmodecuredisease", "\b(YES|NO)\b") then put #var m%checkmodecuredisease NO
  if $m%checkmodecdprepmana >= 15 then
  else put #var m%checkmodecdprepmana 15
  if $m%checkmodecdaddmana >= 0 then
  else put #var m%checkmodecdaddmana 0
  if !matchre("$m%checkmodeadcheal", "\b(YES|NO)\b") then put #var m%checkmodeadcheal NO
  if !matchre("$m%checkmodeadcdisease", "\b(YES|NO)\b") then put #var m%checkmodeadcdisease NO
  if !matchre("$m%checkmodeadcpoison", "\b(YES|NO)\b") then put #var m%checkmodeadcpoison NO
  if !matchre("$m%checkmodeabsolution", "\b(YES|NO)\b") then put #var m%checkmodeabsolution NO
  if $m%checkmodeabsolutionprepmana >= 150 then
  else put #var m%checkmodeabsolutionprepmana 150
  if !matchre("$m%checkmodeiztouch", "\b(YES|NO)\b") then put #var m%checkmodeiztouch NO
  if $m%checkmodeizprepmana >= 0 then
  else put #var m%checkmodeizprepmana 15
  if $m%checkmodeiztimer >= 0 then
  else put #var m%checkmodeiztimer 30
  #GUILD-MM
  if !matchre("$m%checkmodeastro", "\b(YES|NO)\b") then put #var m%checkmodeastro NO
  if $m%checkmodeastrotimer >= 0 then
  else put #var m%checkmodeastrotimer 0
  if !def(m%checkmodetktitem) then put #var m%checkmodetktitem dagger
  if !def(m%checkmodeshadowlingnoun) then put #var m%checkmodeshadowlingnoun shadowling
  if !matchre("$m%checkmodepredictiontool", "\b(none|bones|mirror)\b") then put #var m%checkmodepredictiontool none
  if !def(m%checkmodepredictiontoolitem) then put #var m%checkmodepredictiontoolitem bones
  if !matchre("$m%checkmodepiercinggaze", "\b(YES|NO)\b") then put #var m%checkmodepiercinggaze YES
  if $m%checkmodepgprepmana >= 5 then
  else put #var m%checkmodepgprepmana 5
  if $m%checkmodepgaddmana >= 0 then
  else put #var m%checkmodepgaddmana 0
  if !matchre("$m%checkmodemindshout", "\b(YES|NO)\b") then put #var m%checkmodemindshout NO
  if $m%checkmodemindshoutprepmana >= 5 then
  else put #var m%checkmodemindshoutprepmana 20
  if $m%checkmodemindshoutaddmana >= 0 then
  else put #var m%checkmodemindshoutaddmana 0
  #GUILD-NECRO
  if !matchre("$m%checkmodenecrostate", "\b(unsullied|forsaken|redeemed)\b") then put #var m%checkmodenecrostate unsullied
  if !matchre("$m%checkmodenecrosafety", "\b(YES|NO)\b") then put #var m%checkmodenecrosafety NO
  if !def(m%checkmodenecrowhitelist) then put #var m%checkmodenecrowhitelist person1|person2
  if !matchre("$m%checkmoderiteofgrace", "\b(YES|NO)\b") then put #var m%checkmoderiteofgrace NO
  if $m%checkmoderogprepmana > 4 then
  else put #var m%checkmoderogprepmana 5
  if !matchre("$m%checkmoderogcycle", "\b(YES|NO)\b") then put #var m%checkmoderogcycle NO
  if !matchre("$m%checkmodedevour", "\b(YES|NO)\b") then put #var m%checkmodedevour NO
  if $m%checkmodedevourprepmana >= 30 then
  else put #var m%checkmodedevourprepmana 30
  if $m%checkmodedevouraddmana >= 0 then
  else put #var m%checkmodedevouraddmana 0
  if !matchre("$m%checkmodesiphonvit", "\b(YES|NO)\b") then put #var m%checkmodesiphonvit NO
  if $m%checkmodesiphonvitprepmana >= 30 then
  else put #var m%checkmodesiphonvitprepmana 10
  if $m%checkmodesiphonvitaddmana >= 0 then
  else put #var m%checkmodesiphonvitaddmana 0
  if $m%checkmodesiphonvitnum >= 0 then
  else put #var m%checkmodesiphonvitnum 80
  
  if !matchre("$m%checkmodepreserve", "\b(YES|NO)\b") then put #var m%checkmodepreserve NO
  if !matchre("$m%checkmodeharvest", "\b(YES|NO)\b") then put #var m%checkmodeharvest NO
  if !matchre("$m%checkmodeharveststore", "\b(YES|NO)\b") then put #var m%checkmodeharveststore NO
  if $m%checkmodeharveststorenum >= 0 then
  else put #var m%checkmodeharveststorenum 5
  if !matchre("$m%checkmodeeotbrel", "\b(YES|NO)\b") then put #var m%checkmodeeotbrel NO
  #GUILD-PALADIN
  if !matchre("$m%checkmodesmite", "\b(YES|NO)\b") then put #var m%checkmodesmite NO
  if !matchre("$m%checkmodetithe", "\b(YES|NO)\b") then put #var m%checkmodetithe NO
  #GUILD-RANGER
  if !matchre("$m%checkmodepounce", "\b(YES|NO)\b") then put #var m%checkmodepounce NO
  if !matchre("$m%checkmoderitstype", "\b(any|low|mid|high)\b") then put #var m%checkmoderitstype mid
  #GUILD-THIEF
  if !matchre("$m%checkmodebackstab", "\b(YES|NO)\b") then put #var m%checkmodebackstab NO
  if !matchre("$m%checkmodesnipe", "\b(YES|NO)\b") then put #var m%checkmodesnipe NO
  if (($m%checkmodekhrimax >= 1) && ($m%checkmodekhrimax <= 8)) then
  else put #var m%checkmodekhrimax 1
  if !matchre("$m%checkmodekhriadaptation", "\b(YES|NO)\b") then put #var m%checkmodekhriadaptation NO
  if !matchre("$m%checkmodekhriavoidance", "\b(YES|NO)\b") then put #var m%checkmodekhriavoidance NO
  if !matchre("$m%checkmodekhricunning", "\b(YES|NO)\b") then put #var m%checkmodekhricunning NO
  if !matchre("$m%checkmodekhridampen", "\b(YES|NO)\b") then put #var m%checkmodekhridampen NO
  if !matchre("$m%checkmodekhridarken", "\b(YES|NO)\b") then put #var m%checkmodekhridarken NO
  if !matchre("$m%checkmodekhrielusion", "\b(YES|NO)\b") then put #var m%checkmodekhrielusion NO
  if !matchre("$m%checkmodekhriendure", "\b(YES|NO)\b") then put #var m%checkmodekhriendure NO
  if !matchre("$m%checkmodekhrievanescence", "\b(YES|NO)\b") then put #var m%checkmodekhrievanescence NO
  if !matchre("$m%checkmodekhriflight", "\b(YES|NO)\b") then put #var m%checkmodekhriflight NO
  if !matchre("$m%checkmodekhrifright", "\b(YES|NO)\b") then put #var m%checkmodekhrifright NO
  if !matchre("$m%checkmodekhrifocus", "\b(YES|NO)\b") then put #var m%checkmodekhrifocus NO
  if !matchre("$m%checkmodekhriharrier", "\b(YES|NO)\b") then put #var m%checkmodekhriharrier NO
  if !matchre("$m%checkmodekhrihasten", "\b(YES|NO)\b") then put #var m%checkmodekhrihasten NO
  if !matchre("$m%checkmodekhriinsight", "\b(YES|NO)\b") then put #var m%checkmodekhriinsight NO
  if !matchre("$m%checkmodekhriplunder", "\b(YES|NO)\b") then put #var m%checkmodekhriplunder NO
  if !matchre("$m%checkmodekhrisagacity", "\b(YES|NO)\b") then put #var m%checkmodekhrisagacity NO
  if !matchre("$m%checkmodekhrisensing", "\b(YES|NO)\b") then put #var m%checkmodekhrisensing NO
  if !matchre("$m%checkmodekhriserenity", "\b(YES|NO)\b") then put #var m%checkmodekhriserenity NO
  if !matchre("$m%checkmodekhrishadowstep", "\b(YES|NO)\b") then put #var m%checkmodekhrishadowstep NO
  if !matchre("$m%checkmodekhrisight", "\b(YES|NO)\b") then put #var m%checkmodekhrisight NO
  if !matchre("$m%checkmodekhristeady", "\b(YES|NO)\b") then put #var m%checkmodekhristeady NO
  if !matchre("$m%checkmodekhristrike", "\b(YES|NO)\b") then put #var m%checkmodekhristrike NO
  if !matchre("$m%checkmodekhriguile", "\b(YES|NO)\b") then put #var m%checkmodekhriguile NO
  if !matchre("$m%checkmodekhriprowess", "\b(YES|NO)\b") then put #var m%checkmodekhriprowess NO
  if !matchre("$m%checkmodekhriterrify", "\b(YES|NO)\b") then put #var m%checkmodekhriterrify NO
  if !matchre("$m%checkmodekhridebil", "\b(YES|NO)\b") then put #var m%checkmodekhridebil NO
  if !matchre("$m%checkmodekhridebiltype", "\b(prowess|guile|credence|terrify|intimidate|eliminate)\b") then put #var m%checkmodekhridebiltype prowess
  if !matchre("$m%checkmodemovevanish", "\b(YES|NO)\b") then put #var m%checkmodemovevanish NO
  #GUILD-TRADER
  if !matchre("$m%checkmodeinvest", "\b(YES|NO)\b") then put #var m%checkmodeinvest NO
  if !matchre("$m%checkmodetradingsell", "\b(YES|NO)\b") then put #var m%checkmodetradingsell NO
  if !matchre("$m%checkmodetradingselltown", "\b(%townvaultpresetlist)\b") then put #var m%checkmodetradingselltown none
  if !matchre("$m%checkmodetradingsellsource", "\b(vault|portal)\b") then put #var m%checkmodetradingsellsource vault
  if !matchre("$m%checkmodetradingtasks", "\b(YES|NO)\b") then put #var m%checkmodetradingtasks NO
  #GUILD-WM
  if !matchre("$m%checkmodesummoning", "\b(YES|NO)\b") then put #var m%checkmodesummoning NO
  if !matchre("$m%checkmodesummonweapon", "\b(YES|NO)\b") then put #var m%checkmodesummonweapon NO
  if $m%checkmodesummonweapontimer >= 0 then
  else put #var m%checkmodesummonweapontimer 120
  if !matchre("$m%checkmodepathway", "\b(YES|NO)\b") then put #var m%checkmodepathway NO
  if !def(m%checkmodepathwaytype) then put #var m%checkmodepathwaytype precise
  if !matchre("$m%checkmodedomain", "\b(YES|NO)\b") then put #var m%checkmodedomain NO
  if !matchre("$m%checkmodedomaintype", "\b(fire|air|earth|water|electricity|aether|metal)\b") then put #var m%checkmodedomaintype fire
  if !matchre("$m%checkmodechargeafterlock", "\b(YES|NO)\b") then put #var m%checkmodechargeafterlock NO
  if !def(m%checkmodecalspell) then put #var m%checkmodecalspell ab
  if $m%checkmodecalprepmana >= 1 then
  else put #var m%checkmodecalprepmana 100
  if $m%checkmodecaladdmana >= 1 then
  else put #var m%checkmodecaladdmana 0
  if !def(m%checkmodeignitebackup) then put #var m%checkmodeignitebackup scimitar
  
  
  #CONDITIONAL_VARIABLE_SWITCHES
  if $m%checkmodepremiumring = "YES" then put #var m%checkmodeupkeeptown fangcove
  if (($m%checkmodebugoutonbleed = "YES") && ($m%checkmodeauonbleed = "YES") && ($m%checkmodeautoupkeep = "YES")) then put #var m%checkmodebugoutonbleed NO
  if $m%checkmodeharvest = "YES" then put #var m%checkmodepreserve YES
  if $m%checkmodetmfocus = "YES" then put #var m%checkmodetmdbprior YES
  if %necrostate = "forsaken" then
  {
    put #var m%checkmodeautopath NO
  }
  if (($m%checkmodenecrosafety = "YES") && ($m%checkmoderiteofgrace = "YES")) then
  {
    put #var m%checkmodecyctm NO
    put #var m%checkmodecycdebil NO
    put #var m%checkmodecyclic NO
  }
  if %iztouch = "YES" then
  {
    put #var m%checkmodecyclic NO
    put #var m%checkmodecyctm NO
    put #var m%checkmodecycdebil NO
  }
  if (($m%checkmodetmfocusworn = "YES") && ($m%checkmodetmfocusstorage = "YES")) then put #var m%checkmodetmfocusstorage NO
  if (($m%checkmoderitualfocusworn = "YES") && ($m%checkmoderitualfocusstorage = "YES")) then put #var m%checkmoderitualfocusstorage NO
  if (($m%checkmodeexpertise = "YES") && ($m%checkmodeacms = "YES")) then 
  {
    put #var m%checkmodeexpertise NO
    put #var m%checkmodeexpaccuracy NO
    put #var m%checkmodeexpdamage NO
  }
  if (($guild = "Barbarian") || ($guild = "Thief")) then
  {
    put #var m%checkmodeattune NO
    put #var m%checkmodespellprepping NO
    put #var m%checkmodecyclic NO
    put #var m%checkmodecycdebil NO
    put #var m%checkmodecyctm NO
    put #var m%checkmodebuff NO
    put #var m%checkmodeabuff NO
    put #var m%checkmodegbuff NO
    if !def(m%checkmodegbufftarget) then put #var m%checkmodegbufftarget Saragos
  }
  return
  
  
  
  
VARCHECKOTHER:
  #KILL_SCRIPT_CONDITIONALS
  if $m%checkmodekilltmfocus = "YES" then put #var m%checkmodekillweapon NO
  if $m%checkmodebgdbcombo = "YES" then
  {
    put #var m%checkmodekilltm YES
    put #var m%checkmodekilltmspell bg
    if $m%checkmodekilltmprepmana < 30 then put #var m%checkmodekilltmprepmana 30
    if $m%checkmodekilltmaddmana > 70 then put #var m%checkmodekilltmaddmana 70 
  }
  
  
  
  #OTHER-PREPTIMER
  if !matchre("$fastertargeting", "\b(YES|NO)\b") then put #var fastertargeting NO
  if !matchre("$fasterbattleprep", "\b(YES|NO)\b") then put #var fasterbattleprep NO
  if !matchre("$fastermatrices", "\b(YES|NO)\b") then put #var fastermatrices NO
  if !matchre("$silentprep", "\b(YES|NO)\b") then put #var silentprep NO
  if !matchre("$hideprep", "\b(YES|NO)\b") then put #var hideprep NO
  #OTHER-P
  if !matchre("$pscriptmode", "\b(1|2|3|4)\b") then put #var pscriptmode 1
  
  #OTHER-ASTRAL
  if !matchre("$astralsafe", "\b(YES|NO)\b") then put #var astralsafe YES
  if !matchre("$hundredth", "\b(YES|NO)\b") then put #var hundredth NO
  #OTHER-COMBO
  if !def(maneuverlist) then put #var maneuverlist cleave|crash|twirl|impale|palmstrike|doublestrike|powershot
  if !def(cleaveweapon) then put #var cleaveweapon zweihander
  if !def(crashweapon) then put #var crashweapon dragonwood mallet
  if !def(twirlweapon) then put #var twirlweapon spiritwood staff
  if !def(impaleweapon) then put #var impaleweapon senci spear
  if !def(doublestrikeweapon) then put #var doublestrikeweapon broadsword
  if !def(doublestrikeweapon2) then put #var doublestrikeweapon2 scimitar
  if !def(powershotammo) then put #var powershotammo crossbow bolt
  if !def(powershotweapon) then put #var powershotweapon latchbow  
  #OTHER-SLIDE
  if !matchre("$summonelement", "\b(electric|cold|fire)\b") then put #var summonelement electric
  if !def(summoningot) then put #var summoningot none
  if !def(summonlist) then put #var summonlist cleave|crash|twirl|impale|doublestrike|palmstrike
  if !def(summoncleave) then put #var summoncleave 2he
  if !def(summoncrash then put #var summoncrash 2hb
  if !def(summondoublestrike) then put #var summondoublestrike se
    
  #OTHER-KILL
  #if !matchre("$killtype", "\b(TMFOCUS)\b") then put #var killtype TMFOCUS
  if !matchre("$killloot", "\b(YES|NO)\b") then put #var killloot YES
  if !matchre("$killadvance", "\b(YES|NO)\b") then put #var killadvance YES
  if !matchre("$killretreat", "\b(YES|NO)\b") then put #var killretreat NO
  if !matchre("$killtmfocus", "\b(YES|NO)\b") then put #var killtmfocus NO
  if !matchre("$killbuffing", "\b(YES|NO)\b") then put #var killbuffing NO
  if !matchre("$killcyclic", "\b(YES|NO)\b") then put #var killcyclic NO
  if !def(killcycspell) then put #var killcycspell rim
  if $killcycprepmana >= 0 then
  else put #var killcycprepmana 0
  if !matchre("$killdb", "\b(YES|NO)\b") then put #var killdb NO
  if !def(killdbspell) then put #var killdbspell ip
  if $killdbprepmana >= 0 then
  else put #var killdbprepmana 0
  if $killdbaddmana >= 0 then
  else put #var killdbaddmana 0
  if !matchre("$killtm", "\b(YES|NO)\b") then put #var killtm NO
  if !def(killtmspell) then put #var killtmspell cl
  if $killtmprepmana >= 0 then
  else put #var killtmprepmana 0
  if $killtmaddmana >= 0 then
  else put #var killtmaddmana 0
  
  if !matchre("$beckonthenaga", "\b(YES|NO)\b") then put #var beckonthenaga NO
  if $btnprepmana >= 30 then
  else put #var btnprepmana 30
  if $btnaddmana >= 0 then
  else put #var btnaddmana 0
  if $btnprepwait >= 0 then
  else put #var btnprepwait 0
  if !matchre("$dragonsbreath", "\b(YES|NO)\b") then put #var dragonsbreath NO
  if $dbprepmana >= 30 then
  else put #var dbprepmana 15
  if $dbaddmana >= 0 then
  else put #var dbaddmana 0
  if $dbprepwait >= 0 then
  else put #var dbprepwait 0
  if !matchre("$blufmorgaraen", "\b(YES|NO)\b") then put #var blufmorgaraen NO
  if $bgprepmana >= 30 then
  else put #var bgprepmana 15
  if $bgaddmana >= 0 then
  else put #var bgaddmana 0
  if $bgprepwait >= 0 then
  else put #var bgprepwait 0
  if !matchre("$magneticballista", "\b(YES|NO)\b") then put #var magneticballista NO
  if $mabprepmana >= 30 then
  else put #var mabprepmana 15
  if $mabaddmana >= 0 then
  else put #var mabaddmana 0
  if $mabprepwait >= 0 then
  else put #var mabprepwait 0
  
  if !matchre("$killweapon", "\b(YES|NO)\b") then put #var killweapon NO
  if !matchre("$killweapontype", "\b(melee|brawl|thrown|aimed)\b") then put #var killweapontype brawl
  if !def(killweaponitem) then put #var killweaponitem scimitar
  if !def(killweaponammo) then put #var killweaponammo bolt
  if !matchre("$killweaponcombo", "\b(edged|blunt|piercing)\b") then put #var killweaponcombo edged
  if !matchre("$killthrownverb", "\b(lob|throw|hurl)\b") then put #var killthrownverb lob
  if !matchre("$killthrownbond", "\b(YES|NO)\b") then put #var killthrownbond NO
  return


NEWTOWNPRESET:
  var towncheck $1
  var towntype $2
  put #echo Yellow towncheck: %towncheck
  put #echo Yellow towntype: %towntype
  var rttargetroom 0
  if ("%towncheck" = "muspari") then
	{
		var rtzone 47
		var rttravel YES
		var rttraveldest muspari
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 47
		if (%towntype = "burgle") then var rttargetroom 0
		if (%towntype = "perform") then var rttargetroom 0
		if (%towntype = "forging") then var rttargetroom 0
		if (%towntype = "pawn") then var rttargetroom 0
	}
  if ("%towncheck" = "theren") then
	{
		var rtzone 42
		var rttravel YES
		var rttraveldest theren
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 42
		if (%towntype = "burgle") then var rttargetroom 239
		if (%towntype = "perform") then var rttargetroom 242
	}
	if ("%towncheck" = "rossman") then
	{
		var rtzone 34a
		var rttravel YES
		var rttraveldest rossman
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 34a
		if (%towntype = "burgle") then var rttargetroom 128
		if (%towntype = "perform") then var rttargetroom 95
	}
  if ("%towncheck" = "riverhaven") then
	{
		var rtzone 30
		var rttravel YES
		var rttraveldest riverhaven
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 47
		if (%towntype = "burgle") then var rttargetroom 250
		if (%towntype = "perform") then var rttargetroom 219
		if (%towntype = "pawn") then var rttargetroom Ioun
	}
	if ("%towncheck" = "dirge") then
	{
		var rtzone 13
		var rttravel YES
		var rttraveldest dirge
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 13
		if (%towntype = "burgle") then var rttargetroom 0
		if (%towntype = "perform") then var rttargetroom 55
	}
	if ("%towncheck" = "kaerna") then
	{
		var rtzone 7
		var rttravel YES
		var rttraveldest caravansary
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 7
		if (%towntype = "burgle") then var rttargetroom 480
		if (%towntype = "perform") then var rttargetroom 511
	}
	if ("%towncheck" = "crossing") then
	{
		var rtzone 1
		var rttravel YES
		var rttraveldest crossing
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 1
		if (%towntype = "burgle") then var rttargetroom 388
		if (%towntype = "perform") then var rttargetroom 227
		if (%towntype = "pawn") then var rttargetroom Cormyn
	}
	if ("%towncheck" = "leth") then
	{
		var rtzone 61
		var rttravel YES
		var rttraveldest leth
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 61
		if (%towntype = "burgle") then var rttargetroom 206
		if (%towntype = "perform") then var rttargetroom 207
	}
	if ("%towncheck" = "ilaya") then
	{
		var rtzone 112
		var rttravel YES
		var rttraveldest ilaya
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 112
		if (%towntype = "burgle") then var rttargetroom 190
		if (%towntype = "perform") then var rttargetroom 185
	}
	if ("%towncheck" = "fangcove") then
	{
		var rtzone 150
		var rttravel YES
		var rttraveldest fangcove
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 150
		if (%towntype = "burgle") then var rttargetroom 0
		if (%towntype = "perform") then var rttargetroom 189
		if (%towntype = "pawn") then var rttargetroom Ioun
	}
	if ("%towncheck" = "shard") then
	{
		var rtzone 67
		var rttravel YES
		var rttraveldest shard
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 67
		if (%towntype = "burgle") then var rttargetroom 194
		if (%towntype = "pawn") then var rttargetroom Aelik
		if (%towntype = "perform") then var rttargetroom 180
		if (%towntype = "forging") then var rttargetroom forging
	}
	if ("%towncheck" = "hibarnhvidar") then
	{
		var rtzone 116
		var rttravel YES
		var rttraveldest hib
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 116
		if (%towntype = "burgle") then var rttargetroom 439
		if (%towntype = "perform") then var rttargetroom 442
		if (%towntype = "pawn") then var rttargetroom Relf
		if (%towntype = "forging") then var rttargetroom forging
	}
	if ("%towncheck" = "boarclan") then
	{
		var rtzone 127
		var rttravel YES
		var rttraveldest boar
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 127
		if (%towntype = "burgle") then var rttargetroom 29
		if (%towntype = "perform") then var rttargetroom 233
	}
  if ("%towncheck" = "ratha") then
	{
		var rtzone 90
		var rttravel YES
		var rttraveldest ratha
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 90
		if (%towntype = "burgle") then var rttargetroom 579
		if (%towntype = "perform") then var rttargetroom 578
		if (%towntype = "pawn") then var rttargetroom Paedraig
	}
	if ("%towncheck" = "aesry") then
	{
		var rtzone 99
		var rttravel YES
		var rttraveldest aesry
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 99
		if (%towntype = "burgle") then var rttargetroom 144
		if (%towntype = "perform") then var rttargetroom 130
	}
	if ("%towncheck" = "merkresh") then
	{
		var rtzone 107
		var rttravel YES
		var rttraveldest merkresh
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 107
		if (%towntype = "burgle") then var rttargetroom 19
		if (%towntype = "perform") then var rttargetroom 300
	}
  if ("%towncheck" = "mriss") then
	{
		var rtzone 108
		var rttravel YES
		var rttraveldest mriss
		var rtmove NO
		#if (%towntype = "upkeep") then var upkeepzone 107
		if (%towntype = "burgle") then var rttargetroom 309
		if (%towntype = "perform") then var rttargetroom 310
	}
  if ("%towncheck" = "jeihrem") then
	{
		var rtzone 90f
		var rttravel YES
		var rttraveldest jeihrem
		var rtmove NO
		if (%towntype = "upkeep") then var upkeepzone 90f
		if (%towntype = "burgle") then var rttargetroom 0
		if (%towntype = "perform") then var rttargetroom 0
	}
	var rtfindroom NO
  return









#==============STATUS_CHECKS==============  



STATUSCHECK:
  #DEATH_AND_CONNECTION_CHECKING
  if ($dead = 1) then goto DEADLOGIC
  if ($connected = 0) then gosub CONNECTEDLOGIC
  #MAELDRYTH
  if matchre("$roomobjs", "a maeldryth") then
  {
    put #echo %alertwindow Yellow [GM]: Maeldryth in the area.
    pause .5
    put #play Evil
    pause .5
    put #flash
  }
  #ROOMID_CHECKING
  if %scriptmode = 1 then
  {
    if ((%autoupkeep = "YES") || (%bugout = "YES")) then
    {
      if $roomid = 0 then
      {
        put #mapper reset
        pause 2
        if $roomid = 0 then
        {
          put #flash
          put #play JustArrived
          put #echo %alertwindow Yellow [Upkeep]: Genie has lost track of your room number!
        }
      }
    }
  }
  #STANDING
  if (%scriptmode = 1) then
  {
    if ($sitting = 1) then gosub STAND
    if ($kneeling = 1) then gosub STAND
    if ($prone = 1) then gosub STAND
  }
  #AUTOUPKEEP
  if ((%autoupkeep = "YES") && (%buffingonly != 1) && (%scriptmode = 1)) then
  {
    gosub AUTOUPKEEPCHECKS
    #echo goupkeep: %goupkeep
    if (%goupkeep = 1) then
    {
      if ((%upkeepactive != 1) && (%movetrainactive != 1)) then gosub AUTOUPKEEPLOGIC
    }
  }
  #COLLECTAMMO
  if ((%scriptmode = 1) && (%buffingonly != 1) then
  {
    gosub COLLECTINGAMMO
    if %feetcheck = 1 then
    {
      var feetcheck 0
      gosub STOWFEET
    }
  }
  #DEAD_MONSTER
  if ((%scriptmode = 1) && (%buffingonly != 1)) then
  {
    gosub MONTEST
    if %tmdead = 1 then
    {
      if %casting = 1 then
      {
        if %tmcast = 1 then gosub RETARGET
      }
      var tmdead 0
    }
    if %eotbrel = "YES" then
    {
      if $SpellTimer.EyesoftheBlind.active = 1 then
      {
        if %t > %nexteotbrel then
        {
          gosub RELINVIS
          var nexteotbrel %t
          math nexteotbrel add 30
        }
      }
    }
    if %aimready = 1 then gosub FIRE
  }
  #TARGET_SELECTION
  if ((%scriptmode = 1) && (%buffingonly != 1) && (%upkeepactive != 1) && (%movetrainactive != 1)) then
  {
    if (%goodtarget = 0) then
    {
      if ("%avoidshock" = "YES") then gosub TARGETSELECT
      else gosub FACE
    }
  }
  #BUFFING_COMBAT_ONLY
  if (%scriptmode = 1) then 
  {
    if (%buffingonly != 1) then
    {
      #BARBARIAN
      if ("$guild" = "Barbarian") then
      {
        gosub BARBBUFFLOGIC
        gosub BARBROARLOGIC
      }
      #KHRI
      if ("$guild" = "Thief") then
      {
        gosub KHRILOGIC
      }
      #DEVICE_BUFFS       
      gosub DEVICEBUFFLOGIC
    }
  }
  #ALFAR_COMMAND
  if (%alfarcommand = 1) then
  {
    var warriorcommand behavior aggressive
    gosub COMMANDWARRIOR
    var alfarcommand 0
  }
  #TMFOCUS
  if ((%tmfocus = "YES") && (%scriptmode = 1)) then
  {
    if %tmfocusinuse = 1 then
    {
      if (matchre("$righthand", "%tmfocusitem")) then
      else
      {
        gosub STOW right
        gosub GETITEM %tmfocusitem
        gosub TMFOCUSINVOKE
      }
    }
  }
  #SPELL_WAIT_CHECK
  if (%preptimewait > 0) then
  {
    if (%preptime > 0) then
    {
      #echo preptime: %preptime
      #echo preptimewait: %preptimewait
      #echo t: %t
      #echo
      var preptimewaittest %preptime
      math preptimewaittest add %preptimewait
      #echo preptimewaittest: %preptimewaittest
      #echo t: %t
      if (%t >= %preptimewaittest) then
      {
        #put #echo Yellow Past!
        var ready 1
      }
    }
  }
  #SPELL_CANCEL
  if (%scancel = 1) then
  { 
    gosub SPELLCANCEL
  }
  #SPELL_PREPPING
  if (%scriptmode = 1) then gosub MAINSPELLLOGIC
  #CASTING
  if (%casting = 1) then gosub CASTINGLOGIC
  return

AUTOUPKEEPCHECKS:
  #put #echo Yellow auonhealth: %auonhealth
  if ("%auonhealth" = "YES") then
  {
    #put #echo Yellow health: $health <= auhealthnum: %auhealthnum
    if ($health <= %auhealthnum) then
    {
      var goupkeep 1
      var autype health
    }
  }
  #BLEEDING
  if ("%auonbleed" = "YES") then
  {
    if ($bleeding = 1) then
    {
      var autype bleed
      var goupkeep 1
    }
    if (%t > %nextbleed) then gosub BLEEDCHECK
  }
  #BURDEN
  if (%auonburden = "YES") then
  {
    #echo t: %t
    #echo nextburdencheck: %nextburdencheck
    if (%t > %nextburdencheck) then
    {
      gosub BURDENCHECK
      pause 1
      #put #echo Yellow encumbrance: %encumbrance
      #put #echo Yellow auburdennum: %auburdennum
      if (%encumbrance >= %auburdennum) then
      {
        var goupkeep 1
        var autype burden
      }
      var nextburdencheck %t
      math nextburdencheck add 120
    }
  }
  #NERVES_POISON
  if (("%auonnerves" = "YES") || ("%auonpoison" = "YES") || ("%auonfire" = "YES")) then
  {
    if (%t > %nexthealthcheck) then
    {
      var badnerves 0
      var poisoned 0
      var onfire 0
      action (nerves) on
      action (poison) on
      action (onfire) on
      gosub HEALTHCHECK
      pause 1
      action (nerves) off
      action (poison) off
      action (onfire) off
      var nexthealthcheck %t
      math nexthealthcheck add 120
    }
    if ("%auonnerves" = "YES") then
    {
      if (%badnerves = 1) then
      {
        var goupkeep 1
        var autype nerves
        var badnerves 0
      }
    }
    if ("%auonpoison" = "YES") then
    {
      if (%poisoned = 1) then
      {
        var goupkeep 1
        var autype poison
        var poisoned 0
      }
    }
    if ("%auonfire" = "YES") then
    {
      if (%onfire = 1) then
      {
        var goupkeep 1
        var autype fire
        var poisoned 0
      }
    }   
  }
  return

#==============GENERAL_SUBS==============  


EXIT:
  exit


RPLAYERSCRUB:
  eval roomplayers replace("%roomplayers", " who has coalesced into a battle of light and shadow, each warring for dominance", "") 
  eval roomplayers replace("%roomplayers", " and ", ", ")
  eval roomplayers replace("%roomplayers", ", ", "|")
  eval roomplayers replace("%roomplayers", "Also here: ", "")
  eval roomplayers replace("%roomplayers", ".", "")
  eval roomplayers replace("%roomplayers", "a webbed ", "")
  eval roomplayers replace("%roomplayers", " who is hiding", "")
  eval roomplayers replace("%roomplayers", " who is sitting", "")
  eval roomplayers replace("%roomplayers", " who is kneeling", "")
  eval roomplayers replace("%roomplayers", " who is lying down", "")
  eval roomplayers replace("%roomplayers", " who is stunned", "")
  eval roomplayers replace("%roomplayers", " who is immobilized", "")
  eval roomplayers replace("%roomplayers", " who is webbed", "")
  eval roomplayers replace("%roomplayers", " (sitting)", "")
  eval roomplayers replace("%roomplayers", " (kneeling)", "")
  eval roomplayers replace("%roomplayers", " (prone)", "")
  eval roomplayers replace("%roomplayers", " who has a stony visage", "")
  eval roomplayers replace("%roomplayers", " who has a fiery visage", "")
  eval roomplayers replace("%roomplayers", " is surrounded by swirling flames", "")
  eval roomplayers replace("%roomplayers", " who is surrounded by a shimmering shield", "")
  eval roomplayers replace("%roomplayers", " who is darkened by an unnatural shadow", "")
  eval roomplayers replace("%roomplayers", " who is shining with a dark golden glow", "")
  eval roomplayers replace("%roomplayers", " who is shrouded in ghostly flames", "")
  eval roomplayers replace("%roomplayers", " who is shrouded by swirling grey fog", "")
  eval roomplayers replace("%roomplayers", " the body of", "")
  
  #echo roomplayers: %roomplayers

  #POSTFIX_REMOVAL
  eval roomplayers replacere("%roomplayers", " who (is|has) [A-Za-z\s-]+", "")
  #PRETITLE_REMOVAL
  eval roomplayers replace("%roomplayers", "'", ""
  eval roomplayers replacere("%roomplayers", "([A-Za-z]+) ([A-Za-z]+) ([A-Za-z]+) ([A-Z][a-z]+)", "\$4")
  eval roomplayers replacere("%roomplayers", "([A-Za-z]+) ([A-Z][a-z]+)", "\$2")
  eval roomplayers replacere("%roomplayers", "([A-Za-z]+) ([A-Za-z]+) ([A-Z][a-z]+)", "\$3")
  eval roomplayers replacere("%roomplayers", "([A-Za-z]+) ([A-Z][a-z]+)", "\$2")
  #eval roomplayers replacere("%roomplayers", "([A-Z][A-Za-z\s]+) ([A-Za-z]+)", "\$2")
  #eval roomplayers replacere("%roomplayers", "([A-Z][a-z]+) ([A-Z][a-z]+) ([A-Z][a-z]+)", "\$3")
  #eval roomplayers replacere("%roomplayers", "([A-Z][a-z]+) ([A-Z][a-z]+)", "\$2")
  return
	
RPLAYERSORT:
  if %rcounter > %nsafenum then return
  if %rplayernum > 0 then eval roomplayers replace("%roomplayers", "%necrowhitelist(%rcounter)|", "")
  else eval roomplayers replace("%roomplayers", "%necrowhitelist(%rcounter)", "")
  math rcounter add 1
  goto RPLAYERSORT

RETURN:
  delay 0.001
  pause 0.001
  var timeoutcount 0
  return

TIMEOUT:
  if ($dead = 1) then goto DEADLOGIC
  if ($connected = 0) then gosub CONNECTEDLOGIC
  math timeoutcount add 1
  if %timeoutcount >= 1 then 
  {
    var timeouttext %timeoutsub has timed out!  Trying again.  If you see this repeatedly, there is a problem with the script that needs to be addressed.  Input text was "%timeoutcommand".
    if !def(alertwindow) then put #echo Yellow %timeouttext
    else put #echo >$alertwindow Yellow %timeouttext
    put #flash
    put #play JustArrived
    if %timeoutcount >= 10 then
    {
      if ("%bugout" = "YES") then
      {
        goto BUGOUT
      }
    }
	}
	goto %timeoutsub

DEADLOGIC:
  if ("%deathaction" = "logout") then
  {
    put #echo %alertwindow Yellow You are dead!  Logging out!
    put quit
    exit
  }
  else goto DEADWAIT
  
DEADWAIT:
  put #flash
  put #play JustArrived
  pause 4
  goto DEADWAIT

CONNECTEDLOGIC:
  if ("%disconnectaction" = "quit") then
  {
    put #echo %alertwindow Yellow Disconnected!  Quitting.
    put #flash
    put #play JustArrived
    exit
  }
  else goto RECONNECTLOOP
  
RECONNECTLOOP:
  put #connect $characternamedr
  pause 4 
  if ($connected = 1) then return
  pause 30
  goto RECONNECTLOOP


####THIEVERY_SUBS####

BURGLEP:
  pause
BURGLE:
  if (($invisible = 0) && ($hidden = 0)) then gosub HIDE
  matchre BURGLEP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match BURGLEPICKRETURN You make short work of the lock on the window and slip inside.
  match BURGLEATHRETURN You scale up the side of a wall, quickly slipping inside.
  match RETURN With aid from your group, you scale up the side of a wall, quickly disabling the lock on the window and slip inside, leaving a rope for your group to follow.
  match RETURN Before you really realize what's going on, your hands are firmly bound behind you and you are marched off.
  match BURGLENOTOOL And how were you planning to get in?
  match BURGLEBAD You don't see any likely marks in the area.
  put burgle
  matchwait 5
  var timeoutsub BURGLE
  var timeoutcommand burgle
	goto TIMEOUT

BURGLEATHRETURN:
  if ("%burgletoolchosen" = "pick") then
  {
    put #echo %alertwindow Yellow Climbed to burgle when you were meant to use a pick!  Please investigate!
  }
  return
  
BURGLEPICKRETURN:
  if ("%burgletoolchosen" = "rope") then
  {
    put #echo %alertwindow Yellow Picked to burgle when you were meant to use a rope!  Please investigate!
  }
  return

BURGLENOTOOL:
  if (("%burgletoolchosen" = "rope") || ("%burgletoolchosen" = "pick")) then
  {
    put #echo %alertwindow Yellow Failed to burgle because you had no tool!  Turning off burgling.  Please investigate.
    var burgle NO
    put #var burgle NO
  }
  return

BURGLEBAD:
  var justice 0
  return


BURGLESTEALP:
  pause
BURGLESTEAL:
  matchre BURGLESTEALP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match RETURN Roundtime
  matchre RETURN I could not find what you were referring to\.|You've already picked the counter clean\.
  put search %surface
  matchwait


BURGLERECALLP:
  pause
BURGLERECALL:
  matchre BURGLERECALLP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match BURGLERECALLGOOD The heat has died down from your last caper.
  matchre RETURN You should wait at least \d* roisaen for the heat to die down\.
  put burgle recall
  matchwait

BURGLERECALLGOOD:
  if (($Athletics.Ranks >= 1750) && ($Locksmithing.Ranks >= 1750) && ($Thievery.Ranks >= 1750) && ($Stealth.Ranks >= 1750)) then var burgleready 0
  else var burgleready 1
  return


BURGLEEXITP:
  pause
BURGLEEXIT:
  matchre BURGLEEXITP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match RETURN You take a moment to reflect on the caper you just pulled as you slip out the kitchen window...
  match RETURN Just as you get clear of the window, you see a guard approaching.  Too late now.
  put go window
  matchwait


MARKP:
  pause
MARK:
  matchre MARKP %waitstring
  matchre RETURN Roundtime
  put mark %stealitem
  matchwait 5
	var timeoutsub DEPOSITCOIN
  var timeoutcommand mark %stealitem
	goto TIMEOUT


STEALP:
	pause
STEAL:
  matchre STEALP %waitstring
	matchre RETURN Roundtime 
	put steal %stealitem
	matchwait 5
	var timeoutsub DEPOSITCOIN
  var timeoutcommand steal %stealitem
	goto TIMEOUT



#####ITEM_HANDLING_SUBS#####
ACTIVEWEAPONS:
  var activeweaponlist
  var activeweaponscount 1
  goto ACTIVEWEAPONSLOOP
  
ACTIVEWEAPONSLOOP:
  if %weaponnum < %activeweaponscount then return
  if %activeweaponscount =  1 then
  {
    eval tempawl tolower(%weapon1)
    var activeweaponslist |%tempawl|
  }
  else 
  {
    eval tempawl tolower(%weapon%activeweaponscount)
    var activeweaponslist %activeweaponslist%tempawl|
  }
  math activeweaponscount add 1
  goto ACTIVEWEAPONSLOOP

AMMOGET:
  var ammogetstring $0
  goto AMMOGETMAIN

AMMOGETMAINP:
	pause
AMMOGETMAIN:
  #put #echo roomobjs: $roomobjs
  #put #echo ubowammo: %ubowammo
  if matchre ("$roomobjs", "\b%ubowammo\b") then
  {
	  matchre AMMOGETMAINP %waitstring
	  matchre AMMOGETMAIN You pick up|You pull a|out of the pile of rubble.|You pull a small rock out|You fade in|You put your
	  matchre RETURN You must unload|You stop as you realize the|Stow what?|You stop as|What were you referring to?
	  matchre AMMOGETBAD You need a free hand to pick that up.
	  put stow %ammogetstring
	  matchwait 5
	  var timeoutsub AMMOGETMAIN
	  var timeoutcommand stow %ammogetstring
	  goto TIMEOUT
	}
	else return

AMMOGETBAD:
  gosub STOW left
  goto AMMOGETMAIN


BUYAMMOLOOP:
  var buyammo $0
  goto BUYAMMOLOOPMAIN
BUYAMMOLOOPMAIN:
  gosub BUY %buyammo
  gosub STOWALL
  gosub COUNTITEM my %buyammo
  #echo %countitemtotal %buyammos.
  if (%countitemtotal >= %ammomin) then return
  goto BUYAMMOLOOPMAIN

BUYAMMOLOOP2:
  var buyammotype $0
  goto BUYAMMOLOOP2MAIN
BUYAMMOLOOP2MAIN:
  echo buyammotype: %buyammotype
  echo %%buyammotypetotalcount >= %ammomin
  if (%%buyammotypetotalcount >= %ammomin) then return
  gosub BUY %%buyammotypeammo
  var boughtammo 1
  gosub STOWALL
  gosub AMMOCOUNTTOTAL
  

  goto BUYAMMOLOOP2MAIN

BUY:
  var buytarget $0
  goto BUYMAIN
BUYP:
  pause
BUYMAIN:
  matchre BUYP %waitstring
  match BUYP Ragge exclaims, "Slow down!  Slow down!  Do you see any Halfling assistants in the shop?  I can only process one order at a time."
  matchre RETURN Brother Durantine nods slowly|Friar Othorp grins broadly|Sister Nongwen smiles and nods|Sister Imadrail smiles and nods|The sales clerk hands you your
  matchre BUYOFFER Ragge sighs.  "Despite the rarity of this lockpick, I'm prepared to offer it to you for (\d+) kronars\."
  matchre BUYOFFER Kilam says, "I'll give that to you for (\d+) dokoras\."
  matchre BUYOFFER Ss'Thran smiles, baring his fangs. "Ahh, the lockpick\.  That'll cost you (\d+) lirums\."
  match RETURN You realize you don't have that much.
  put order %buytarget
  matchwait 5
	var timeoutsub BUY
  var timeoutcommand order %buytarget
	goto TIMEOUT

BUYOFFER:
  var offeramount $1
  goto BUYOFFERMAIN
  
  
BUYOFFERMAINP:
  pause
BUYOFFERMAIN:
  matchre BUYOFFERMAINP %waitstring
  match RETURN Ragge hands over your lockpick.
  match RETURN Kilam hands over your purchase.
  match RETURN Ss'Thran hands you
  matchre RETURN ^(\w+) hands over your .*\.
  put offer $1
  matchwait
  return

BUNDLEPULLP:
  pause
BUNDLEPULL:
  matchre BUNDLEPULLP %waitstring
  matchre WEARITEM You adjust the ropes of your
  put pull my bundle
  matchwait 5
  var timeoutsub BUNDLEPULL
  var timeoutcommand pull my bundle
	goto TIMEOUT


CLOSEITEM:
  var openitemstring $0
  goto CLOSEITEMMAIN
CLOSEITEMP:
  pause
CLOSEITEMMAIN:
  matchre CLOSEITEMP %waitstring
  matchre RETURN What were you referring to?|You close your|That is already closed\.
  put close %closeitemstring
  matchwait 5
	var timeoutsub OPENITEMMAIN
	var timeoutcommand close %closeitemstring
	goto TIMEOUT


COILROPEP:
  pause
COILROPE:
  matchre COILROPEP %waitstring
  match RETURN You can't do that.
  match RETURN You coil up your rope.
  match RETURN What were you referring to?
  put coil heavy rope
  matchwait 5
  var timeoutsub COILROPE
  var timeoutcommand coil heavy rope
	goto TIMEOUT

COLLECTINGAMMO:
  #put #echo Yellow activeweaponslist: %activeweaponslist
  if %collectammo = "YES" then
  {
    if contains("%activeweaponslist", "|bow|") then
    {
      if matchre ("$roomobjs", "%bowammo") then
      {
        gosub AMMOGET %bowammo
      }
    }
    if contains("%activeweaponslist", "|xbow|") then
    {
      if matchre ("$roomobjs", "%xbowammo") then
      {
        gosub AMMOGET %xbowammo
      }
    }
    if contains("%activeweaponslist", "|sling|") then
    {
      if matchre ("$roomobjs", "%slingammo") then
      {
        gosub AMMOGET %slingammo
      }
    }
  }
  if contains("%activeweaponslist", "|ht|") then
  {
    if matchre ("$roomobjs", "%htweapon") then
    {
      if %htbond = "YES" then put invoke bond
      else
      {
        gosub GETITEM %htweapon 
      }
    }
  }
  if contains("%activeweaponslist", "|lt|") then
  {
    if matchre ("$roomobjs", "%ltweapon") then
    {  
      if %ltbond = "YES" then put invoke bond
      else
      {
        gosub GETITEM %ltweapon 
      }
    }
  }
  return

COINWITHDRAWP:
	pause
COINWITHDRAW:
	matchre COINWITHDRAWP %waitstring
	matchre RETURN ^The clerk counts out
	put withdraw $0
	matchwait 5
	var timeoutsub COINWITHDRAW
  var timeoutcommand withdraw $0
	goto TIMEOUT
	

DEPOSITCOINP:
	pause
DEPOSITCOIN:
	matchre DEPOSITCOINP %waitstring
	matchre RETURN You find your jar with little effort, thankfully, and drop your coins inside
	put deposit %depositamount
	matchwait 5
	var timeoutsub DEPOSITCOIN
  var timeoutcommand deposit %depositamount
	goto TIMEOUT
	

DROPITEM:
  var dropitemstring $0
  goto DROPITEMMAIN
DROPITEMP:
	pause
DROPITEMMAIN:
	matchre DROPITEMP %waitstring
	match DROPLOWER Trying to go unnoticed, are you?
	match DROPLOWER Doing that would give away your hiding place!
  match DROPITEMMAIN Whoah!
	matchre RETURN What were you referring to?|You drop|You wince as the|You spread|You drop your
	put drop my %dropitemstring
	matchwait 5
	var timeoutsub DROPITEMMAIN
	var timeoutcommand drop my %dropitemstring
	goto TIMEOUT
	
DROPUNHIDE:
  gosub UNHIDE
  goto DROPITEMMAIN

DROPLOWER:
	gosub LOWERITEM %dropitemstring
	gosub EMPTYFEET
	return

DUMPITEM:
  var dumpitemstring $0
  goto DUMPITEMMAIN
DUMPITEMMAIN:
	if matchre ("$roomobjs", "(bucket|large stone turtle|disposal bin|waste bin|tree hollow|oak crate|firewood bin|ivory urn|pit|trash receptacle|marble statue)") then
	{
	  gosub PUTITEM %dumpitemstring in $1
	}
	else gosub DROPITEM %dumpitemstring
  return

EMPTYFEETP:
  pause
EMPTYFEET:
  matchre EMPTYFEETP %waitstring
  match EMPTYFEET You consider kicking the contents at your feet onto the ground.
	matchre RETURN You kick .* onto the ground in front of you\.|But there's nothing at your feet\!
	put empty feet
	matchwait 5
	var timeoutsub EMPTYFEET
	var timeoutcommand empty feet
	goto TIMEOUT

GETITEM:
  var getitemstring $0
  goto GETITEMMAIN
GETITEMP:
  pause
GETITEMMAIN:
  matchre GETITEMP %waitstring|You don't seem to be able to moveYou grab hold|You try to grab your
  matchre GETUNTIE You pull at it, but the ties prevent you.  Maybe if you untie it, first?|You should untie the
  matchre RETURN You get|You're already holding|You are already holding that.|You pick up|What were you referring to?|You stop as you realize|You must unload|You fade in for a moment|You remove|You pull|What were you referring to?|You try to grab your|Please rephrase that command\.|You are already holding that\.
  match RETURN Get what?
  matchre GETINJURED ^You can't pick that up with your hand that damaged\.
  matchre GETITEMBAD You need a free hand to pick that up.
  matchre GETCLIMBPRACBAD You should stop practicing 
  matchre GETITEMADV Sheesh, it's still alive! 
  match GETITEMREM But that is already in your inventory.
  matchre GETITEMPLAYSTOP You should stop playing before you do that\.|You are a bit too busy performing to do that\.
  put get %getitemstring
  matchwait 5
  var timeoutsub GETITEMMAIN
	var timeoutcommand get %getitemstring
	goto TIMEOUT

GETINJURED:
  put #echo >$alertwindow Yellow Tried to stow %stowhandstring hand, but it's too heavy or unable to fit!  Please address!
  put #flash
  put #play Advance
  if ("%autoupkeep" = "YES") then
  {
    var goupkeep 1
    var autype wounds
  }
  else
  {
    if ("%bugout" = "YES") then goto BUGOUT
    else goto GETINJURED2
  }
  return

GETINJURED2:
  put #echo Yellow ===FAILED TO GET %getitemstring DUE TO WOUNDS!===
  put #flash
  put #play Advance
  pause 5
  goto GETINJURED2
 
GETUNTIE:
  gosub UNTIEITEM %getitemstring
  return

GETITEMREM:
  gosub REMITEM %getitemstring
  return
 
GETITEMPLAYSTOP:
  gosub PLAYSTOP
  goto GETITEMMAIN

GETCLIMBPRACBAD:
  pause 10
  goto GETITEM
  
GETITEMADV:  
  gosub ADV
  goto GETITEMMAIN

GETITEMBAD:
  gosub STOW left
  goto GETITEMMAIN

LOWERITEM:
  var loweritemstring $0
  goto LOWERITEMMAIN
LOWERITEMP:
  pause
LOWERITEMMAIN:
  matchre LOWERITEMP %waitstring
  matchre RETURN What did you want to lower\?|You lower the .* and place it on the ground at your feet\.
  put lower %loweritemstring ground
  matchwait 5
	var timeoutsub LOWERITEMMAIN
	var timeoutcommand lower %loweritemstring ground
	goto TIMEOUT

OPENITEM:
  var openitemstring $0
  goto OPENITEMMAIN
OPENITEMP:
  pause
OPENITEMMAIN:
  matchre OPENITEMP %waitstring
  matchre RETURN That is already open\.|You open|The green sack feels momentarily heavier as you open it\.
  put open %openitemstring
  matchwait 5
	var timeoutsub OPENITEMMAIN
	var timeoutcommand open %openitemstring
	goto TIMEOUT

PLATRINGP:
  pause
PLATRING:
  matchre PLATRINGP %waitstring
  matchre RETURN You touch your platinum ring
  match PLATRINGLP The magical energy within your platinum ring
  put touch platinum ring
  matchwait 5
  var timeoutsub PLATRING
  var timeoutcommand touch platinum ring
	goto TIMEOUT

PLATRINGLP:
  pause 10
  goto PLATRING  

PUTITEM:
  var putitemstring $0
  var putsucceed 0
  goto PUTITEMMAIN
PUTITEMP:
	pause
PUTITEMMAIN:
	matchre PUTITEMP %waitstring
	matchre RETURN What were you referring to?|Perhaps you should be holding that first.|There doesn't seem to be any more room left|is too long, even after stuffing it, to fit in the|There isn't any more room in|But that's closed\.|You just can't get the .* to fit in the \w*, no matter how you arrange it\.|Perhaps you should be holding that first\.|is too long to fit in the|already has as many lockpicks in it as you can get to fit\.|That is far too hot to touch\!
	matchre PUTRETURN You put|You drop|You briefly twist the top off of|Raffle Attendant Tizzeg examines your ticket and exclaims|A bored-looking Human boy says
	match PUTITEMSTOW There's no room in the
	match RETURN That's too heavy to go in there!
	matchre RETURN You just can't get the .* to fit in the .*\, no matter how you arrange it\.
  matchre PUTITEMSTOW A bored-looking Human boy raises an eyebrow in your direction.
  matchre RETURN The anvil already has a \w+ ingot on it\.
	put put %putitemstring
	matchwait 5
	var timeoutsub PUTITEMMAIN
  var timeoutcommand put %putitemstring
	goto TIMEOUT

PUTRETURN:
  var putsucceed 1
  return

PUTITEMSTOW:
  gosub STOWITEM %remitemstring
  return
  
REMITEM:
  var remitemstring $0
  goto REMITEMMAIN
REMITEMP:
  pause
REMITEMMAIN:
  matchre REMITEMP %waitstring
  matchre RETURN You sling|You remove|You pull off|You work your way|You loosen|Remove what?|You slide|You take|You aren't wearing that\.|You detach
  match REMOVESTOW You need a free hand for that.
  put remove %remitemstring
  matchwait 5
  var timeoutsub REMITEMMAIN
  var timeoutcommand remove %remitemstring
  goto TIMEOUT

REMOVESTOW:
  gosub STOWALL
  goto REMITEMMAIN

RUMMAGEP:
  pause
RUMMAGE:
  matchre RUMMAGEP %waitstring
  matchre RETURN I don't know what you are referring to.|You rummage|While it's closed?
  put rummage %storage
	matchwait 5
	var timeoutsub RUMMAGE
  var timeoutcommand rummage %storage
	goto TIMEOUT

SHEATHEHAND:
  var sheathehandstring $0
  goto SHEATHEHANDMAIN
SHEATHEHANDP:
  pause
SHEATHEHANDMAIN:
  matchre SHEATHEHANDP %waitstring
  matchre SHEATHEBAD ^Sheathe your .* where\?$|There's no room in the
  matchre RETURN Sheathe what?|You sheathe|You hang|You secure|You easily strap|Sheathing a
  if ("%sheathehandstring" = "right") then var sheatheitemstring $righthandnoun
  else var sheatheitemstring $lefthandnoun
  put sheathe %sheatheitemstring
  matchwait 5
  var timeoutsub SHEATHEHANDMAIN
  var timeoutcommand %sheatheitemstring
	goto TIMEOUT

SHEATHEBAD:
  var cleanstow 1
  if ("%stowhand" = "right") then gosub STOWITEM $righthandnoun
  else gosub STOWITEM $lefthandnoun
  gosub STOWITEM
  return

SLIPITEMP:
	pause
SLIPITEM:
	matchre SLIPITEMP %waitstring
	matchre RETURN You silently slip|You put
	put slip my %putitemname in %putlocation
	matchwait 5
	var timeoutsub SLIPITEM
	var timeoutcommand slip my %putitemname in %putlocation
	goto TIMEOUT


STOREDEFAULT:
  var storedefaultsuccess 0
  var storedefaultitemstring $0
  goto STOREDEFAULTMAIN
STOREDEFAULTP:
  pause
STOREDEFAULTMAIN:
  matchre STOREDEFAULTP %waitstring
  matchre STOREDEFAULTGOOD You will now use your .* to store any items you haven't categorized\.
  match RETURN I could not find that container.
  put store default %storedefaultitemstring
  matchwait 5
	var timeoutsub STOREDEFAULT
	var timeoutcommand store default %storedefaultitemstring
	goto TIMEOUT

STOREDEFAULTGOOD:
  var storedefaultsuccess 1
  return

STORE:
  var storestring $0
  goto STOREMAIN
STOREP:
  pause
STOREMAIN:
	matchre STOREP %waitstring
	match RETURN You will now store gems in your gem pouch.
  match RETURN I could not find that container.
  put store %storestring
  matchwait 5
  var timeoutsub STOREMAIN
  var timeoutcommand store %storestring
	goto TIMEOUT

STOW:
  var stowsucceed 0
  var stowhandstring $0
  goto STOWMAIN
STOWP:
  pause
STOWMAIN:
  if ("%stowhandstring" = "left") then
  {
    if ("$lefthand" = "Empty") then return
  }
  if ("%stowhandstring" = "right") then
  {
    if ("$righthand" = "Empty") then return
  }
  if (%cleanstow != 1) then
  {
    var stowcustomsuccess 0
    gosub STOWCUSTOM $%stowhandstringhand
    if %stowcustomsuccess = 1 then return
  }
  var cleanstow 0
  matchre STOWP %waitstring
  matchre STOWFAIL ^That's too heavy to go in there\!|^There isn't any more room in the \w+ for that\.|^There's no room in the \w+\.
  matchre STOWSKINBAD You try to stuff your
  matchre STOWGEMBAD You think the .* pouch is too full to fit another gem into\.
  matchre STOWUNLOAD ^You need to unload|^You should unload the .* first\.$
  match STOWSTOPPLAY You should stop playing before you do that.
  matchre STOWCOIL The \S+ rope is too long, even after stuffing it, to fit in the
  matchre RETURN You put your|Stow what\?|You open your pouch|You stop as|What were you referring to?|You think the gem pouch|You stop as you realize|You easily strap your
  put stow %stowhandstring
  matchwait 5
  var timeoutsub STOWMAIN
  var timeoutcommand stow %stowhandstring
	goto TIMEOUT

STOWFAIL:
  gosub DEEPSLEEP
  put #echo >$alertwindow Yellow Tried to stow %stowhandstring hand, but it's too heavy or unable to fit!  Please address!
  put #flash
  put #play Advance
  if ("%bugout" = "YES") then
  {
    if (%buggingout = 1) then return
    var bugoutnostow 1
    goto BUGOUT
  }
  else goto STOWFAIL2

STOWFAIL2:
  put #echo Yellow ===FAILED TO STOW %stowhandstring HAND!===
  put #flash
  put #play Advance
  pause 5
  goto STOWFAIL2

STOWUNLOADP:
  pause
STOWUNLOAD:
  if ("%stowhandstring" = "left") then
  {
    gosub SWAP
  }
  if ("$lefthand" != "Empty") then
  {
		gosub STOW left
  }
  gosub UNLOAD
  gosub STOWALL
  return

STOWCOIL:
  gosub COILROPE
  goto STOW

STOWGEMBAD:
  if (%stowhandstring = "right") then gosub DUMPITEM $righthandnoun
  else gosub DUMPITEM $lefthandnoun
  return

STOWSKINBAD:
  if (%stowhandstring = "right") then gosub DUMPITEM $righthandnoun
  else gosub DUMPITEM $lefthandnoun
  return

STOWSTOPPLAY:
  gosub PLAYSTOP
  goto STOWMAIN

STOWFEETP:
  pause
STOWFEET:
  matchre STOWFEETP %waitstring
  match STOWFEET You pick up
  match RETURN Stow what?
  match STOWFEETFULL You need a free hand to pick that up.
  put stow feet  
  matchwait 5
  var timeoutsub STOWFEET
  var timeoutcommand stow feet
	goto TIMEOUT
  
STOWFEETFULL:
  gosub STOWALL
  goto STOWFEET
  
STOWCUSTOM:
  var stowcustomstring $0
  if %platring = "YES" then
  {
    if matchre ("%stowcustomstring", "%platringitem") then
    {
      if %stowhandstring = "left" then gosub SWAP
      gosub PLATRING
      var stowcustomsuccess 1
      return
    }
  }
  if matchre ("%stowcustomstring", "%cambitem1") then
  {
    if %cambitem1worn = "YES" then
    {
      gosub WEARITEM %cambitem1
      var stowcustomsuccess 1
      return
    }
  }
  if matchre ("%stowcustomstring", "%cambitem2") then
  {
    if %cambitem2worn = "YES" then
    {
      gosub WEARITEM %cambitem2
      var stowcustomsuccess 1
      return
    }
  }
  if matchre ("%stowcustomstring", "%bowweapon") then 
  {
    if %bowworn = "YES" then
    {
      gosub WEARITEM %bowweapon
      var stowcustomsuccess 1
      return
    }
  }
  if matchre ("%stowcustomstring", "%xbowweapon") then
  {
    if %xbowworn = "YES" then
    {
      gosub WEARITEM %xbowweapon
      var stowcustomsuccess 1
      return
    }
    return
  }
  if matchre ("%stowcustomstring", "%poleweapon") then
  {
    if %poleworn = "YES" then
    {
      gosub WEARITEM %poleweapon
      var stowcustomsuccess 1
      return
    }
    if %poletied = "YES" then
    {
      var wearitemname %poleweapon
      gosub TIEITEM
      var stowcustomsuccess 1
      return
    }
  }
  if matchre ("%stowcustomstring", "%staveweapon") then
  {
    if %staveworn = "YES" then
    {
      gosub WEARITEM %staveweapon
      var stowcustomsuccess 1
      return
    }
    if %stavetied = "YES" then
    {
      var wearitemname %staveweapon
      gosub TIEITEM
      var stowcustomsuccess 1
      return
    }
  }
  if %ritualfocusstorage = "YES" then
  {
    if matchre ("%stowcustomstring", "%ritualfocus") then
    {
      gosub PUTITEM my %ritualfocus in my %ritualfocuscontainer
      var stowcustomsuccess 1
      return
    }
  }
  if %ritualfocusworn = "YES" then
  {
    if matchre ("%stowcustomstring", "%ritualfocus") then
    {
      gosub WEARITEM %ritualfocus
      var stowcustomsuccess 1
      return
    }
  }
  if %tmfocusstorage = "YES" then
  {
    if matchre ("%stowcustomstring", "%tmfocusitem") then
    {
      gosub PUTITEM my %tmfocusitem in my %tmfocuscontainer
      var stowcustomsuccess 1
      return
    }
  }
  if %tmfocusworn = "YES" then
  {
    if matchre ("%stowcustomstring", "%tmfocus") then
    {
      gosub WEARITEM %tmfocusitem
      var stowcustomsuccess 1
      return     
    }
  }
  if matchre ("%stowcustomstring", "%wand1item") then
  {
    gosub PUTITEM my %wand1item in my %wandstorage
    var stowcustomsuccess 1
    return
  }
  if matchre ("%stowcustomstring", "%wand2item") then
  {
    gosub PUTITEM my %wand2item in my %wandstorage
    var stowcustomsuccess 1
    return
  }
  if matchre ("%stowcustomstring", "%nonwornweapons") then
  {
    gosub SHEATHEHAND %stowhandstring
    var stowcustomsuccess 1
    return
  }
  return
  
STOWALL:
  #echo lefthand: $lefthand
  if ("$lefthand" != "Empty") then
  {
    gosub STOW left
  }
  #echo righthand: $righthand
  if ("$righthand" != "Empty") then
  {
    gosub STOW right
  }
  return

STOWITEM:
  var stowsucceed 0
  var stowitemstring $0
  goto STOWITEMMAIN
STOWITEMP:
  pause
STOWITEMMAIN:
  if (%cleanstow != 1) then
  {
    var stowcustomsuccess 0
    gosub STOWCUSTOM %stowitemstring
    if (%stowcustomsuccess = 1) then return
  }
  var cleanstow 0
  matchre STOWITEMP %waitstring
  match STOWITEMSTOPPLAY You should stop playing before you do that.
  matchre STOWITEMFAIL ^That's too heavy to go in there\!|^There isn't any more room in the \w+ for that\.|^There's no room in the \w+\.
  matchre STOWRETURN You put your|You sling|You attach|You open your pouch|You stop as
  match RETURN Stow what?  Type 'STOW HELP' for details.
  matchre STOWITEMUNLOAD ^You should unload the .* first\.$
  match STOWITEMMAINFULL You need a free hand to pick that up.
  put stow %stowitemstring
  matchwait 5
  var timeoutsub STOWITEMMAIN
  var timeoutcommand stow %stowitemstring
	goto TIMEOUT

STOWRETURN:
  var stowsucceed 1
  return

STOWITEMSTOPPLAY:
  gosub PLAYSTOP
  goto STOWITEMMAIN

STOWITEMFAIL:
  gosub DEEPSLEEP
  put #echo >$alertwindow Yellow Tried to stow %stowitemstring, but failed because it's too heavy or won't fit!  Please address!
  put #flash
  put #play Advance
  if ("%bugout" = "YES") then
  {
    if (%buggingout = 1) then return
    var bugoutnostow 1
    goto BUGOUT
  }
  else goto STOWITEMFAIL2

STOWITEMFAIL2:
  put #echo Yellow ===FAILED TO STOW %stowitemstring!===
  put #flash
  put #play Advance
  pause 5
  goto STOWITEMFAIL2

STOWITEMUNLOAD:
  if ("$lefthand" != "Empty") then
  {
		gosub STOW left
  }
  gosub UNLOAD
  gosub STOWALL
  return


STOWITEMMAINFULL:
  gosub STOW left
  goto STOWITEMMAIN

SWAPP:
  pause
SWAP:
  matchre SWAPP %waitstring
  match RETURN You move
  match You have nothing to swap!
  matchre SWAPINJURED Your (right|left) hand is too injured to do that\.
  matchre SWAPNERVES Will alone cannot conquer the paralysis that has wracked your body\.
  put swap
  matchwait 5
  var timeoutsub SWAP
  var timeoutcommand swap
	goto TIMEOUT

SWAPINJURED:
  if ("%autoupkeep" = "YES") then
  {
    var goupkeep 1
    var autype wounds
  }
  else
  {
    if ("%bugout" = "YES") then goto BUGOUT
    else goto SWAPTOOINJURED
  }
  return

SWAPNERVES:
  if ("%autoupkeep" = "YES") then
  {
    var goupkeep 1
    var autype nerves
  }
  else
  {
    if ("%bugout" = "YES") then
    {
      put #echo >$alertwindow Yellow Tried to swap weapons, but you're too injured!  Please address!
      goto BUGOUT
    }
    else goto SWAPTOOINJURED
  }

SWAPTOOINJURED:
  echo ===TOO INJURED TO SWAP WEAPON===
  put #flash
  put #play Advance
  pause 5
  goto SWAPTOOINJURED
  return

FINDITEM:
  var finditemitem $0
  var finditemfound 0
  goto FINDITEMMAIN
FINDITEMP:
  pause
FINDITEMMAIN:
  matchre FINDITEMP %waitstring
  matchre FINDITEMGOOD ^You tap .* that you are wearing\.|^A faltering wisp of light dances around you, bubbling out a token amount of water\.  The .* needs more time to build up a charge\.|^A ribbon of light darts around you, leaving a trail of elemental water in its wake\.  It quckly forms a pressurized sphere of water that explodes outward\!
  matchre RETURN ^I could not find what you were referring to\.|^You tap .* that you are holding\.|^You tap .* inside your .*\.|^I don't think that's such a good idea\.|^Tap what\?|I could not find that container\.
  put tap my %finditemitem
  matchwait 5
  var timeoutsub FINDITEM
  var timeoutcommand tap my %finditemitem
	goto TIMEOUT

FINDITEMGOOD:
  var finditemfound 1
  return

WEARARMOR:
  var weararmoritem $0
  var weararmorworn 0
  goto WEARARMORMAIN
WEARARMORP:
  pause
WEARARMORMAIN:
  if ("%weararmoritem" = "none") then goto WEARARMORGOOD
  matchre WEARARMORP %waitstring
  matchre WEARARMORGOOD ^You slide|^You put|^You slip|^You work
  match WEARARMORGOOD You are already wearing that.
  matchre RETURN ^I could not find what you were referring to\.|^Wear what\?
  put wear my %weararmoritem
  matchwait 5
  var timeoutsub WEARARMOR
  var timeoutcommand wear my %weararmoritem
	goto TIMEOUT

WEARARMORGOOD:
  var weararmorworn 1
  return
  

TIEITEMP:
  pause
TIEITEM:
  matchre TIEITEMP %waitstring
  matchre STUDYCONTAINER There's no more room on
  matchre TIEUNHIDE That would give away your hiding place!
  matchre RETURN Sheathing a|You attach
  put tie %wearitemname to my %storage
  matchwait 5
  var timeoutsub TIEITEM
  var timeoutcommand tie %wearitemname to my %storage
	goto TIMEOUT
  
TIEUNHIDE:
  gosub UNHIDE
  goto TIEITEM

STUDYCONTAINER:
  put study %storage
  goto TIEITEM

SELLITEM:
  var sellstring $0
  goto SELLITEMMAIN
SELLITEMP:
  pause
SELLITEMMAIN:
  matchre SELLITEMP %waitstring
  matchre RETURN You ask|You hold up your|There is no merchant here to buy that\.|Sell what?|^.* takes your|Cormyn whistles and says|Relf briefly glances at|\S+ shakes his head and says|Tanner Falken waggles his eyebrows and looks puzzled\.
  #|Please rephrase that command\.
  match SELLITEMWAIT There doesn't seem to be anyone around.
  match SELLITEMDUMP Aelik whistles and says, "There's folk around 
  matchre SELLITEMDUMP ^\S+ glances at your \S+\.  "Looks like you've got stuff in there," he says\.  "I only deal in one item at a time\."
  match SELLITEMDUMP Aelik scowls and says, "You'll want to empty that first.  For all I know you've put some curse on the contents or stuffed it full of stolen goods!"
  match SELLITEMDUMP "Of all the idiots... EMPTY it first, dolt!"  He takes a deep breath, then adds, in a sweet tone, "Please."
  match SELLITEMDUMP Cormyn scowls and says, "You'll want to empty that first.  For all I know you've put some curse on the contents or stuffed it full of stolen goods!"
  put sell my %sellstring
  matchwait 5
  var timeoutsub SELLITEMMAIN
  var timeoutcommand sell my %sellstring
	goto TIMEOUT

SELLITEMWAIT:
  pause 10
  goto SELLITEM

SELLITEMDUMP:
  gosub DUMPITEM %sellstring
  return


SWAPSWORD:
  var swapstring $0
  goto SWAPSWORDMAIN
SWAPSWORDP:
  pause
SWAPSWORDMAIN:
  if tolower("%weapon%currentweapon") = "le" then
  {
    if %bastardsword = 1 then return
  }
  if tolower("%weapon%currentweapon") = "the" then
  {
    if %bastardsword = 2 then return
  }
  match SWAPSWORDSTOW You must have two free hands
  matchre SSWAPLE as a heavy edged weapon|to a heavy edged grip
  matchre SSWAPTHE as a two-handed edged weapon|to a two-handed edged grip
  matchre SWAPSWORDP %waitstring
  match SWAPSWORDNOTHELD You must hold the
  match RETURN Will alone cannot conquer the paralysis that has wracked your body.
  put swap %swapstring
  matchwait 5
  var timeoutsub SWAPSWORDMAIN
  var timeoutcommand swap %swapstring
	goto TIMEOUT
  

SSWAPLE:
  var bastardsword 1
  goto SWAPSWORDMAIN

SSWAPTHE:
  var bastardsword 2
  GOTO SWAPSWORDMAIN
  
SWAPSWORDSTOW:
  if %getitemhand = "right" then
  {
    gosub STOW left
  }
  else
  {
    gosub STOW right
  }
  goto SWAPSWORDMAIN

SWAPSWORDNOTHELD:
  return

SWAPBARMACE:
  var swapbarstring $0
  goto SWAPBARMACEMAIN
SWAPBARMACEP:
  pause
SWAPBARMACEMAIN:
  if tolower("%weapon%currentweapon") = "lb" then
  {
    if %barmace = 1 then return
  }
  if tolower("%weapon%currentweapon") = "thb" then
  {
    if %barmace = 2 then return
  }
  matchre SWAPBARMACEP %waitstring
  match SWAPBMSTOW You must have two free hands
  match SWAPBARMACEGET You must hold
  matchre SWAPBMLB to a heavy blunt grip|as a heavy blunt weapon
  matchre SWAPBMTHB to a two-handed blunt grip|as a two-handed blunt weapon
  match SWAPBARMACENOTHELD You must hold the
  match RETURN Will alone cannot conquer the paralysis that has wracked your body.
  put swap %swapbarstring
  matchwait 5
  var timeoutsub SWAPBARMACEMAIN
  var timeoutcommand swap %swapbarstring
	goto TIMEOUT

SWAPBARMACEGET:
  gosub STOWALL
  gosub WIELD %hand %weaponname
  goto SWAPBARMACEMAIN

SWAPBMSTOW:
  if %hand = "right" then
  {
    gosub STOW left
  }
  else
  {
    gosub STOW right
  }
  goto SWAPBARMACEMAIN

SWAPBMLB:
  var barmace 1
  goto SWAPBARMACEMAIN

SWAPBMTHB:
  var barmace 2
  goto SWAPBARMACEMAIN

SWAPBARMACENOTHELD:
  return
  

SWAPRISTE:
  var swapristestring $0
  goto SWAPRISTEMAIN
SWAPRISTEP:
  pause
SWAPRISTEMAIN:
  if tolower("%weapon%currentweapon") = "lb" then
  {
    if %nriste = 1 then return
  }
  if tolower("%weapon%currentweapon") = "le" then
  {
    if %nriste = 2 then return
  }
  if tolower("%weapon%currentweapon") = "thb" then
  {
    if %nriste = 3 then return
  }
  match SWAPRSTOW You must have two free hands
  matchre SWAPRLB as a heavy blunt weapon|to a heavy blunt grip
  matchre SWAPRTHB as a two-handed blunt weapon|to a two-handed blunt grip
  matchre SWAPRLE as a heavy edged weapon|to a heavy edged grip
  match SWAPRISTENOTHELD You must hold the
  matchre SWAPRISTEP %waitstring
  put swap %swapristestring
  matchwait 5
  var timeoutsub SWAPRISTEMAIN
  var timeoutcommand swap %swapristestring
	goto TIMEOUT
	
SWAPRSTOW:
  if %getitemhand = "right" then
  {
    gosub STOW left
  }
  else
  {
    gosub STOW right
  }
  goto SWAPRISTEMAIN
	
SWAPRLB:
  var nriste 1
  goto SWAPRISTEMAIN

SWAPRLE:
  var nriste 2
  goto SWAPRISTEMAIN

SWAPRTHB:
  var nriste 3
  goto SWAPRISTEMAIN

SWAPRISTENOTHELD:
  return

SWAPHHRISTE:
  var swaphhstring $0
  goto SWAPHHRISTEMAIN
SWAPHHRISTEP:
  pause
SWAPHHRISTEMAIN:
  #echo weapon%currentweapon: %weapon%currentweapon
  #echo hhriste: %hhriste
  if tolower("%weapon%currentweapon") = "sb" then
  {
    if %hhriste = 1 then return
  }
  if tolower("%weapon%currentweapon") = "se" then
  {
    if %hhriste = 2 then return
  }
  if tolower("%weapon%currentweapon") = "thb" then
  {
    if %hhriste = 3 then return
  }
  match SWAPHHSTOW You must have two free hands
  matchre SWAPHHRTHB as a two-handed blunt weapon|to a two-handed blunt grip
  matchre SWAPHHRSB as a medium blunt weapon|to a medium blunt grip
  matchre SWAPHHRSE as a medium edged weapon|to a medium edged grip
  match SWAPHHRISTENOTHELD You must hold the
  matchre SWAPHHRISTEP %waitstring
  put swap %swaphhstring
  matchwait 5
  var timeoutsub SWAPHHRISTEMAIN
  var timeoutcommand swap %swaphhstring
	goto TIMEOUT

SWAPHHRSB:
  var hhriste 1
  goto SWAPHHRISTEMAIN
  
SWAPHHRSE:
  var hhriste 2
  goto SWAPHHRISTEMAIN

SWAPHHRTHB:
  var hhriste 3
  goto SWAPHHRISTEMAIN

SWAPHHSTOW:
  if %getitemhand = "right" then
  {
    gosub STOW left
  }
  else
  {
    gosub STOW right
  }
  goto SWAPHHRISTEMAIN

SWAPHHRISTENOTHELD:
  return


SWAPICON:
  var swapiconstring $0
  goto SWAPICONMAIN
SWAPICONP:
  pause
SWAPICONMAIN:
  if tolower("%weapon%currentweapon") = "the" then
  {
    if %waricon = 1 then return
  }
    if tolower("%weapon%currentweapon") = "thb" then
  {
    if %waricon = 2 then return
  }
  match SWAPISTOW You must have two free hands
  matchre SWAPITHE as a two-handed edged weapon|to a two-handed edged grip
  matchre SWAPITHB as a two-handed blunt weapon|to a two-handed blunt grip
  match SWAPICONNOTHELD You must hold the
  matchre SWAPICONP %waitstring
  put swap %swapiconstring
  matchwait 5
  var timeoutsub SWAPICONMAIN
  var timeoutcommand swap %swapiconstring
	goto TIMEOUT

SWAPITHE:
  var waricon 1
  goto SWAPICONMAIN
  
SWAPITHB:
  var waricon 2
  goto SWAPICONMAIN

SWAPISTOW:
  if %getitemhand = "right" then
  {
    gosub STOW left
  }
  else
  {
    gosub STOW right
  }
  goto SWAPICONMAIN
  
SWAPICONNOTHELD:
  return
  

UNCOILROPEP:
  pause
UNCOILROPE:
  matchre UNCOILROPEP %waitstring
  matchre RETURN You can't do that\.|You uncoil your rope\.
  put uncoil heavy rope
  matchwait 5
  var timeoutsub UNCOILROPE
  var timeoutcommand uncoil heavy rope
	goto TIMEOUT

UNLOADP:
  pause
UNLOAD:
  matchre UNLOADP %waitstring
  matchre RETURN You unload|isn't loaded!|You remain concealed by your surroundings|You don't have a ranged weapon to unload\.
  put unload
  matchwait 5
  var timeoutsub UNLOAD
  var timeoutcommand unload
	goto TIMEOUT

UNTIEITEM:
  var untieitemstring $0
  goto UNTIEITEMMAIN
UNTIEITEMP:
  pause
UNTIEITEMMAIN:
  matchre UNTIEITEMP %waitstring
  matchre RETURN You untie|Please rephrase that command.|Untie what?
  put untie %untieitemstring
  matchwait 5
  var timeoutsub UNTIEITEM
  var timeoutcommand untie %untieitemstring
	goto TIMEOUT

WEARITEM:
  var wearstring $0
  goto WEARITEMMAIN
WEARITEMP:
  pause
WEARITEMMAIN:
  matchre WEARITEMP %waitstring
  matchre RETURN You put|You slip|You sling|You work your way into|You attach|You slide your|You hang|You are already wearing that.|You slide|You drape
  matchre WEARCANT You can't wear any more items like that.
  matchre WEARUNLOAD You need to unload|You should unload
  match RETURN But that is already in your inventory.
  put wear %wearstring
  matchwait 5
  var timeoutsub WEARITEMMAIN
  var timeoutcommand untie %wearstring
	goto TIMEOUT

WEARCANT:
  if (%wearitemname = "bundle") then goto BUNDLEPULL
  else return

WEARUNLOADP:
  pause
WEARUNLOAD:
  if ($lefthand != "Empty") then gosub STOW left
  gosub UNLOAD
  gosub STOWALL
  return

WIELD:
  var wieldhandstring $1
  var wielditemstring $2 $3 $4
  #echo wieldhandstring: %wieldhandstring
  #echo wielditemstring: %wielditemstring
  goto WIELDMAIN
WIELDP:
  pause
WIELDMAIN:
  matchre WIELDP %waitstring
  matchre RETURN You draw out your|You're already holding|You draw your
  matchre WIELDGET You can't seem|You find it difficult to wield|Your (right|left) hand is too injured to draw
  #match WIELDBOND Wield what?
  match RETURN Wield what?
  match WIELDSTOW You need to have your
  matchre WIELDREM You'll need to remove it first!|You're wearing
  put wield %wieldhandstring %wielditemstring
  matchwait 5
  var timeoutsub WIELD
  var timeoutcommand wield %wieldhandstring %wielditemstring
	goto TIMEOUT

WIELDGET:
  gosub GETITEM %wielditemstring
  return

WIELDBOND:
  if matchre ("%wielditemstring", "%ltweapon") then
  {
    if %ltbond = "YES" then goto THROWBOND
  }
  if matchre ("%wielditemstring", "%htweapon") then
  {
    if %htbond = "YES" then goto THROWBOND
  }
  return

WIELDSTOW:
  gosub STOWALL
  goto WIELDMAIN
  
WIELDREM:
  gosub REMITEM %wielditemstring
  return


##########

#####COMBAT_LOGIC#####

BRAWLCOMBO:
  var lowfatattack punch
  var lowattack bob
  var medattack punch
  var highattack kick
  return
  	
BLUNTCOMBO:
  var lowfatattack swing
  var lowattack feint
  var medattack draw
  var highattack chop
	return
	
EDGEDCOMBO:
  var lowfatattack slice
  var lowattack feint
  var medattack draw
  var highattack chop
  return
  
PIERCECOMBO:
  var lowfatattack thrust
  var lowattack jab
  var medattack draw
  var highattack lunge
  return


BOWLOADLOGIC:
  var usingdualload 0
	#BARBARIAN_DL
	if ($guild = "Barbarian") then
	{
		if ((%dualload = "YES") && ($SpellTimer.Eagle.active = 1) && (%weapontype = "bow")) then var usingdualload 1
	}
	#RANGER_DL
	if ($guild = "Ranger") then
	{
		if ((%dualload = "YES") && ($SpellTimer.SeetheWind.active = 1) && (%weapontype = "bow")) then var usingdualload 1
	}
	#THIEF_DL
	if ($guild = "Thief") then
	{
		if ((%dualload = "YES") && ($SpellTimer.KhriSteady.active = 1) && (%weapontype = "bow")) then var usingdualload 1
	}
  if %usingacm = 1 then var usingdualload 0
  #echo usingdualload: %usingdualload
  if %usingdualload != 1 then
  {
    gosub GETITEM my %ubowammo
    if matchre ("$righthand", "(%ubowammo)") then gosub SWAP
    if matchre ("$lefthand", "(%ubowammo)") then
    {
      gosub BOWLOAD %ubowammo
      if (%goupkeep = 1) then return
      gosub STOW left
      if %usingacm = 1 then goto ATTACKACM
      else goto BOWAIM
    }
    else goto BOWNOAMMO
  }
  else
  {
		gosub BOWLOAD %ubowammo
		if (%goupkeep = 1) then return
		if ("$lefthand" != "Empty") then gosub STOW left
		goto BOWAIM
  }
  return


#####COMBAT_SUBS#####

ADVP:
	pause
ADV:
  if %avoidshock = "YES" then gosub TARGETSELECT
  matchre FACE You stop advancing|You have lost sight|advance towards?
  matchre ADVRETURN to melee range|already at melee|You are already advancing|You begin to|^The .* is already quite dead\.$
  matchre ADVP %waitstring
  match ADVSTAND You had better stand up first.
  put advance
  matchwait 5
	var timeoutsub ADV
  var timeoutcommand advance
	goto TIMEOUT
  
ADVRETURN:
  pause 2
  return

ADVSTAND:
  gosub STAND
  goto ADV


ANALYZEP:
  pause
ANALYZE:
  var lasthit 1
  matchre ANALYZEP %waitstring
  matchre ANAADV ^You must be closer
  match ANAFACE There is nothing else to face!
  match ANAFACENEXT Analyze what?
  matchre ANAFLYING is flying too high for you to attack.|is flying far too high to hit with your fists\.
  matchre ANAPRONE You should stand up first.
  matchre RETURN Face what?  
  
  matchre ANALYZEAGAIN You fail to find any holes|Your analysis reveals a slight|You reveal a tiny weakness|You reveal a small|Your analysis reveals a small|Your analysis reveals a moderate|Your analysis reveals a good|Your analysis reveals a substantial|Your analysis reveals a large|Your analysis reveals a great|Your analysis reveals an exceptional|You reveal a moderate|You reveal a slight
	matchre ANALYZEAGAIN ^You fail to find any
  matchre RETURN Your analysis reveals a massive
  put analyze
  matchwait 5
	var timeoutsub ANALYZE
  var timeoutcommand analyze
	goto TIMEOUT

ANALYZEAGAIN:
  gosub AUTOUPKEEPCHECKS
  if (%goupkeep = 1) then return
  goto ANALYZE

ANAPRONE:
  gosub STAND
  goto ANALYZE

ANAFLYING:
  gosub FACE
  if (%badface = 1) then
  {
    var badface 0
    return
  }
  goto ANALYZE

ANAFACE:
  if $monstercount < 1 then RETURN
  gosub FACE
  if %badface = 1 then
  {
    var badface 0
    return
  }
  goto ANALYZE
 
ANAFACENEXT:
  if $monstercount < 1 then RETURN
  gosub FACENEXT
  if %badface = 1 then
  {
    var badface 0
    return
  }
  goto ANALYZE
 
ANAADV:
  gosub ADV
  goto ANALYZE


ATTACKACMP:
  pause
ATTACKACM:
  matchre ATTACKACMP %waitstring
  match ATTACKACMSUCCESS Roundtime:
  match ATTACKACMSUCCESS With a loud twang, you let fly your
  match ATTACKACMBARBSUCCESS With expert skill you end the attack and maneuver into a better position.
  match ATTACKACMSTOW You must free up your left hand first.
  matchre ATTACKACMSTAND ^You'll need to stand up first\.|^You must be standing to perform that maneuver\.
	matchre ADV You aren't close enough to attack\.
  #match BOWLOADLOGIC You prepare the shot, but stop when you realize the
  matchre ATTACKACMWRONG With your fist\?  That might hurt\.|This weapon lacks the edge necessary to cleave your enemy with\.|Your hands must be empty to deliver such a blow\.|A pike or halberd weapon is necessary to impale your enemy with\.|Only a staff is suitable for the complex motions of the twirl maneuver\.|This works best when you use a suitable ranged weapon\.|This works best when you use a suitable weapon\.|This works best when you are dual wielding suitable weapons\.
  matchre BOWLOADLOGIC You prepare the shot, but stop when you realize the .* is unloaded\.
  matchre ATTACKACMFACE What are you trying to attack\?
  matchre ATTACKACMFAIL You must rest a bit longer before attempting that maneuver again\.
  match ATTACKACMBADNAME You cannot figure out how to do that.
  put maneuver %acmtype
  matchwait 5
	var timeoutsub ATTACKACM
  var timeoutcommand maneuver %acmtype
	goto TIMEOUT

ATTACKACMSTOW:
  gosub STOW left
  goto ATTACKACM

ATTACKACMWRONG:
  put #echo %alertwindow Yellow Tried to use ACM %acmtype with the wrong weapon!  righthand: $righthand  lefthand: $lefthand  weapontype: %weapontype  weaponname: %weaponname  offhand: %%offhandlowestweapon
  return
  
ATTACKACMSTAND:
  gosub STAND
  goto ATTACKACM

ATTACKACMLOAD:
  gosub GETITEM my %ubowammo
  if matchre ("$righthand", "(%ubowammo)") then gosub SWAP
  gosub BOWLOAD %ubowammo
  if (%goupkeep = 1) then return
  if matchre ("$lefthand", "(%ubowammo)") then gosub STOW left
  goto ATTACKACM

ATTACKACMSUCCESS:
  #put #echo %alertwindow Yellow Used ACM %acmtype!
  var nextacm%acmtype %t
  math nextacm%acmtype add 90
  if %acmtype = "doublestrike" then
  {
    if (%hand = "right") then gosub STOW left
    else gosub STOW right
  }
  return

ATTACKACMBARBSUCCESS:
  #put #echo %alertwindow Yellow Used ACM %acmtype with Barbarian success!
  var nextacm%acmtype %t
  math nextacm%acmtype add 55
  if %acmtype = "doublestrike" then
  {
    if (%hand = "right") then gosub STOW left
    else gosub STOW right
  }
  return

ATTACKACMFAIL:
  #put #echo %alertwindow Yellow Guessed wrong on timer for ACM %acmtype.  t: %t  nextacm%acmtype: %nextacm%acmtype
  var nextacm%acmtype %t
  math nextacm%acmtype add 20
  return

ATTACKACMBADNAME:
  put #echo %alertwindow Yellow Tried to use ACM %acmtype, but it's an invalid type.
  return

ATTACKACMFACE:
  gosub FACE
  if %badface = 1 then
  {
    var badface 0
    return
  }
  else goto ATTACKACM


ATTACKMELEEP:
	pause
ATTACKMELEE:
  #ACM's 
  if (%usingacm = 1) then goto ATTACKACM
  if (%usingwhirlwind = 1) then goto ATTACKWHIRLWIND
  if ((%usingstealth = 1) && ($guild != "Paladin")) then 
  { 
    gosub HIDELOGIC
  }
	var lasthit 0
	matchre ATTACKMELEEP %waitstring
	matchre ATTACKSTAND You'll need to stand up first.
	matchre ATTACKFACE nothing else|at what are you|You lean back and kick your feet|Face what?|Backstab what?
  matchre ADV aren't close enough|You must be closer|It would help if you were closer
	matchre ATTACKBRAWLFAIL You can not slam with that|Please rephrase that command\.|Wouldn't it be better if you used a melee weapon\?
	match ATTACKTWOHANDSTOW You need two hands to wield this weapon!
	match ATTACKGOODHIT lands a
  matchre RETURN already in a position|But you are already dodging|pointlessly hack|There is nothing else to face!|Blindsiding is much more effective when you use a melee weapon.
  matchre ATTACKRETURN You move into a position to|Roundtime|You slip out of concealment
  matchre ATTMELEEFLYING is flying too high for you to attack\.|is flying far too high to hit with your
	matchre ATTACKBADBACKSTAB You can't backstab that.
	matchre ATTACKBACKSTABHIDE You must be hidden to blindside.
  #HAND
	if (%hand = "left") then var attackcommand %att left
  else var attackcommand %att
  #BACKSTAB
	if (($hidden = 1) && (%usingbackstab = 1)) then
	{
	  if (%hand = "left") then var attackcommand backstab left
	  else var attackcommand backstab
  }
  put %attackcommand
	matchwait 5
	var timeoutsub ATTACKMELEE
  var timeoutcommand %attackcommand
	goto TIMEOUT

ATTACKSTAND:
  gosub STAND
  goto ATTACKMELEE

ATTACKBACKSTABHIDE:
  gosub HIDELOGIC
  goto ATTACKMELEE

ATTACKRETURN:
  math weapon%currentweaponcount add 1
  return

ATTACKBADBACKSTAB:
  var usingbackstab 0
  goto ATTACKMELEE

ATTACKFACE:
  gosub FACE
  if %badface = 1 then
  {
    var badface 0
    return
  }
  else goto ATTACKMELEE

ATTACKBRAWLFAIL:
  if %usingtactics = 1 then var tacticsdone 1
  if %usingexpert = 1 then
  {
    var expertdone 1
    var expertpause 1
  }
  if %avoidshock = "YES" then var facebrawlfail 1
  gosub FACENEXT
  if %badface = 1 then
  {
    var badface 0
    return
  }
  return

ATTMELEEFLYING:
  if $hidden = 1 then gosub UNHIDE
  gosub FACE
  if %badface = 1 then
  {
    var badface 0
    return
  }
  goto ATTACKMELEE

ATTACKGOODHIT:
  var lasthit 1
  math weapon%currentweaponcount add 1
  return

ATTACKTWOHANDSTOW:
  if matchre ("$righthand", "%cambitem1") then put wear %cambitem1
  if matchre ("$lefthand", "%cambitem1") then put wear %cambitem1
  gosub STOW left
  goto ATTACKMELEE

ATTACKTHROWNKNIVESP:
	pause
ATTACKTHROWNKNIVES:
	matchre FACE at what are you
	matchre RETURN There is nothing else to face!
	matchre ATTACKTHROWNKNIVESP %waitstring
	matchre RETURN Roundtime|What are you trying to|You must hold the
	matchre THROWSTOW You need a free hand to
  put hurl
  matchwait 5
	var timeoutsub ATTACKTHROWNKNIVES
  var timeoutcommand hurl
	goto TIMEOUT
	
	
ATTACKTHROWNP:
	pause
ATTACKTHROWN:
	matchre FACE at what are you
	matchre RETURN There is nothing else to face!
	matchre ATTACKTHROWNP %waitstring
	matchre THROWGET Roundtime|What are you trying to|You must hold the
	match THROWGET What are you trying to lob?
	matchre THROWSTOW You need a free hand to
	#matchre ATTACKTHROWNSWAP You must hold the
  if %hand = "left" then var attackcommand %att left
  else var attackcommand %att
  put %attackcommand
  matchwait 5
	var timeoutsub ATTACKTHROWN
  var timeoutcommand %attackcommand
	goto TIMEOUT

THROWSTOW:
  if %hand = "left" then gosub STOW right
  else gosub STOW left
  goto ATTACKTHROWN

ATTACKTHROWNSWAP:
  gosub SWAP
  goto ATTACKTHROWN


ATTACKWHIRLWINDP:
  pause
ATTACKWHIRLWIND:
	matchre ATTACKWHIRLWINDP %waitstring
  match ATTACKWHIRLWINDRETURN Roundtime:
  match ATTACKWHIRLBAD Only skilled Barbarians can utilize this technique!
  match RETURN With your fist?  That might hurt.
  match ATTACKWHIRLWINDSTOW You must free up your left hand first.
  put whirlwind
  matchwait 5
	var timeoutsub ATTACKWHIRLWIND
  var timeoutcommand whirlwind
	goto TIMEOUT

ATTACKWHIRLWINDRETURN:
  if (%goodoffhand = 1) then
  {
    if ((%offhand = "right") || (%offhand = "left")) then gosub STOW %offhand
  }
  return

ATTACKWHIRLBAD:
  put #echo %alertwindow Yellow Attempted to whirlwind when the character is not able to!  Turning whirlwind off.
  var whirlwind NO
  put #var whirlwind NO
  return

ATTACKWHIRLWINDSTOW:
  gosub STOWHAND left
  goto ATTACKWHIRLWIND


BOWAIMP:
	pause
BOWAIM:
  if %aiming = 1 then return
	#ACM_POWERSHOT
	if ((%acms = "YES") && (%powershot = "YES") && (%usingstealth != 1) && (%t >= %nextacmpowershot)) then
  {
    if (%usingdualload != 1) then
    {
			var usingacm 1
			var acmtype powershot
			goto ATTACKACM
	  }
  }
	matchre BOWAIMP %waitstring
	matchre BOWLOADLOGIC isn't loaded!
	match BOWAIMSTOW You need both hands in order to aim.
	matchre FACE at what are you|I could not find what you were referring to.
	matchre BOWAIMSUCCESS You begin to target|You are already targetting|You shift your target to 
	matchre RETURN Face what?|There is nothing else to face!|You don't have a ranged weapon to aim with!
	put aim
	matchwait 5
	var timeoutsub BOWAIM
	var timeoutcommand aim
	goto TIMEOUT
	gosub STATUSCHECK
	return

BOWAIMSUCCESS:
  var aiming 1
  RETURN

BOWAIMSTOW:
  gosub STOW left
  goto BOWAIM

BOWLOAD:
  var bowloadammo $0
  goto BOWLOADMAIN
BOWLOADP:
	pause
BOWLOADMAIN:
	matchre BOWLOADP %waitstring
	matchre BOWLOADSTOW is already loaded|to load the|You load|You reach into your|You can not load the
	matchre BOWLOADGETITEM You don't have the proper ammunition
	match BOWDLBAD You are not skilled enough to dual-load
	match BOWNOEAGLE You focus on the image of an eagle but are unable to draw upon its majesty.
	match BOWNOSTW Such a feat would be impossible without the winds to guide you\.
	match BOWNOSTEADY Such a feat would be impossible without steadier hands.
	match BOWNOAMMO What weapon are you trying to load?
	if %usingdualload = 1 then put load my %bowloadammos
	else put load my %bowloadammo
	matchwait 5
	var timeoutsub BOWLOADMAIN
  if %usingdualload = 1 then var timeoutcommand load my %bowloadammos
  else var timeoutcommand load my %bowloadammo
	goto TIMEOUT

BOWLOADSTOW:
  if matchre ("$lefthand", "%ubowammo") then gosub STOWITEM %bowloadammo
  return

BOWLOADGETITEM:
  if %usingdualload = 1 then goto BOWNOAMMO
  gosub STOW left
  gosub GETITEM %bowloadammo
  goto BOWLOADMAIN

BOWDLBAD:
  var usingdualload 0
  var dualload NO
  put #var dualload NO
  put #echo Yellow Not skilled enough to dual-load!  Turning variable off.
  return

BOWNOEAGLE:
  var usingdualload 0
  goto BOWLOADMAIN
  
BOWNOSTW:
  var usingdualload 0
  goto BOWLOADMAIN
  
BOWNOSTEADY:
  var usingdualload 0
  goto BOWLOADMAIN

BOWNOAMMO:
  gosub DEEPSLEEP
  put #echo >$alertwindow Yellow Out of ammo for %weapontype!  Please address!
  put #flash
  put #play Advance
  if ("%auonammo" = "YES") then
  {
    var goupkeep 1
    var autype ammo
    return
  }
  else
  {
    if ("%bugout" = "YES") then goto BUGOUT
    else goto BOWNOAMMO2
  }

BOWNOAMMO2:
  echo ===OUT OF AMMO===
  put #flash
  put #play Advance
  pause 5
  goto BOWNOAMMO2


DEFSTANCEP:
  pause  
DEFSTANCE:
  matchre DEFSTANCEP %waitstring|You don't seem to be able to move|It's all a blur!
  matchre RETURN Viewing current combat stance...|Setting your Evasion stance to 100%, 
  put stance set 100 0 100 0
  matchwait 5
	var timeoutsub DEFSTANCE
  var timeoutcommand stance set 100 0 100 0
	goto TIMEOUT


EANALYZEP:
  pause
EANALYZE:
  var lasthit 1
  matchre RETURN Roundtime:|With a keen eye you study the battlefield
	matchre EANALYZEP %waitstring
  matchre EANAADV Analyze what?
  put analyze %eanalyzetype
  matchwait 5
	var timeoutsub EANALYZE
  var timeoutcommand analyze %analyzetype
	goto TIMEOUT
  
EANAADV:
  gosub ADV
  goto EANALYZE


FACENEXTP:
	pause
FACENEXT:
	if %avoidshock = "YES" then
	{
	  gosub TARGETSELECT
	  var facebrawlfail 0
	  return
	}
	else
	{
	  var badface 0
	  matchre FACENEXTP %waitstring
	  matchre RETURN You turn
	  matchre FACEINVALID Face what?|nothing else to face|There isn't anything like that here to face\!
	  match FACEDEAD What's the point in facing
	  put face next
	  matchwait 5
	  var timeoutsub FACE
    var timeoutcommand face next
	  goto TIMEOUT
	}
	
FACEP:
	pause
FACE:
	if ("%avoidshock" = "YES") then
	{
	  gosub TARGETSELECT
	  var facebrawlfail 0
	  return
	}
	else
	{
	  var badface 0
	  var mob 0
	  var mobnum 0
	  var mobpos 0
	  gosub FACEASSESS
	  if (%mob = 0) then
	  {
	    var goodtarget 0
	    var badface 1
	    return
	  }
	  if ("%mobpos" = "Facing") then return
    if contains("flanking|behind|advancing","%mobpos") then
    {
      gosub FACETARGET %Ordinal(%mobnum) %mob
      var goodtarget 1 
    }
	  if contains("%mobpos","moving") then
    {
      #gosub block stop
      gosub FACETARGET %Ordinal(%mobnum) %mob
      var goodtarget 1
    }
    if contains("%mobpos","facing") then var goodtarget 1
    return
	
	
FACEASSESSP:
  pause
FACEASSESS:
	if ($monstercount < 1) then return
  matchre FACEASSESSP %waitstring
	matchre FACEVALUES ^An? .*(\b\w+(?:\S+)?\b) \((\d+):.*\) is (facing|flanking|behind|advancing on|moving to flank|moving behind) you at
	matchre FACEVALUES ^.*(\b\w+(?:\S+)?\b) \((\d+):.*\) is (facing|flanking|behind|advancing on|moving to flank|moving behind) you at
	match FACEASSESSRETURN A good positive attitude never hurts.
	put assess
	put yes
	matchwait 5
	var timeoutsub FACEASSESS
  var timeoutcommand assess
	goto TIMEOUT

FACEASSESSRETURN:
  #put #echo Yellow No match!
  gosub FACENEXT
  return

FACEVALUES:
	var mob $1
	var mobnum $2
	var mobpos $3
	#echo %mob %mobnum %mobpos
	return

FACETARGET:
  var facetargetstring $0
  goto FACETARGETMAIN
FACETARGETP:
	pause
FACETARGETMAIN:
  var badface 0
	matchre FACETARGETP %waitstring
	matchre RETURN nothing else to face|You are already facing|You turn
	match FACEDEAD What's the point in facing
	matchre FACEINVALID Face what\?|There isn't anything like that here to face\!
	matchre FACETARGETRET You are too closely engaged
	put face %facetargetstring
	matchwait 5
	var timeoutsub FACETARGET
  var timeoutcommand face %facetargetstring
	goto TIMEOUT

FACEINVALID:
  var badface 1
  var goodtarget 0
  if %avoidshock = "YES" then
  {
    var shockcritter 1
    var currentcritter 0
  }
  return
	
FACEDEAD:
  if (%avoidshock = "YES") then
  {
    put look
    pause 1
    gosub MONTEST
    var currentcritter 0
    var shockcritter 1
  }
  var goodtarget 0
  var badface 1
  var deadcheck 1
  #gosub MONTEST
  put look
  pause .5
  return

FACETARGETRET:
  gosub RETREAT
  goto FACETARGETMAIN


FIREP:
  pause
FIRE:
  if ((%usingstealth = 1) && ($guild != "Paladin")) then gosub HIDELOGIC
  var aiming 0
  var aimready 0
  math weapon%currentweaponcount add 2
  matchre FIREP %waitstring
  matchre FIREP Strangely, you don't feel like fighting right now\.|That weapon must be in your right hand to fire\!
  matchre BOWLOADLOGIC isn't loaded\!
  matchre AMMOGET lands nearby|falls to the ground\!|falls to the floor\!
  matchre RETURN Roundtime|There is nothing else to face!|What are you trying to attack?|But you don't have a ranged|You can't fire|How can you poach|You remain concealed by your surroundings,|Face what?|How can you snipe if you are not hidden?|I could not find what you were referring to\.
  if ((%usingstealth = 1) && ($hidden = 1)) then 
  {
    if (($guild = "Thief") || ($guild = "Ranger")) then
    {
      if $snipe = "YES" then put snipe
      else put poach
    }
    else put poach
  }
  else put fire
  matchwait 5
	var timeoutsub FIRE
  var timeoutcommand fire
	goto TIMEOUT
	
FIREAMMOGET:
  gosub AMMOGET %ubowammo
  return


HIDELOGIC:
  if matchre ("%abufflist", "rm") then
  {
    if %mist != 1 then return
  }
  if %misdirection = "YES" then
  {
    if $SpellTimer.Misdirection.active != 1 then return
  }
  if %pantherform = "YES" then
  {
    if $SpellTimer.Panther.active != 1 then return
  }
  if matchre ("%bufflist", "shadows") then
  {
    if $SpellTimer.Shadows.active != 1 then return
  }
  if matchre ("%bufflist", "obfuscation") then 
  {
    if $SpellTimer.Obfuscation.active != 1 then return
  }
  if matchre ("%bufflist", "mis") then
  {
    if $SpellTimer.Misdirection.active != 1 then return
  }
  var hideattempts 0
  goto HIDE
  return


FLEERETREAT:
  var retreatcount 0
  goto FLEERETREATMAIN
FLEERETREATMAINP:
  pause
FLEERETREATMAIN:
  if %retreatcount > 6 then
  {
    var fleegood 0
    goto FLEE
  }
  matchre FLEERETREATCONT You retreat back to pole range.|You try to back away from|You stop advancing on|You sneak back out|You try to back out of combat but are unable to get away!|You try to sneak out of combat,
  matchre RETURN You retreat from combat.|You are already as far away as you can get!
  match STAND You must stand first.
  matchre FLEERETREATMAINP %waitstring
  put retreat
  matchwait 5
	var timeoutsub FLEERETREATMAIN
  var timeoutcommand retreat
  goto TIMEOUT


FLEERETREATCONT:
  math retreatcount add 1
  goto FLEERETREATMAIN

FLEEP:
  pause
FLEE:
  matchre FLEEP %waitstring
  matchre FLEECONT You foresee the situation deteriorating rapidly.|You realize you're out of your element!|Either you're looking really tasty|You feel the wrenching pain of dejection as you|Hoping the gods will come to your rescue, you mutter|You suddenly realize that you may be completely outclassed in this match.|You suddenly realize that the hunter may be the hunted\.|For some inexplicable reason, you can't flee from this area\.  You frantically attempt to disengage from combat\.|Scanning the area for an escape route, you turn
  match RETURN You assess your combat situation and realize you don't see anything engaged with you.
  put flee
  matchwait 5
	var timeoutsub FLEE
  var timeoutcommand flee
  goto TIMEOUT
  
FLEECONT:
  if %fleegood = 1 then return
  pause .1
  goto FLEECONT


HIDEP:
	pause
HIDE:
  if %hideattempts >= 2 then return
  if $hidden != 0 then RETURN
  matchre RETURN You melt into the background,|But you're already hidden!|You blend in with your surroundings
	matchre HIDEP %waitstring
	matchre HIDEBAD notices your attempt to hide!|discovers you, ruining your hiding place!
	put hide
	matchwait 5
	var timeoutsub HIDE
  var timeoutcommand hide
  goto TIMEOUT

HIDEBAD:
  math hideattempts add 1
  goto HIDE


NVTACTICSP:
  pause
NVTACTICS:
  matchre NVTACTICSP %waitstring
  matchre RETURN Roundtime|What are you trying to attack?
  matchre NVTACTICSADV You must be closer to 
  put %tmaneuver
  matchwait 5
	var timeoutsub NVTACTICS
  var timeoutcommand %tmaneuver
	goto TIMEOUT

NVTACTICSADV:
  gosub ADV
  goto NVTACTICS


RETREATP:
  pause
RETREAT:
  matchre RETREAT You retreat back to pole range.|You try to back away from|You stop advancing on|You sneak back out|You try to back out of combat but are unable to get away!|You try to sneak out of combat,|discovers you trying to sneak out of combat, revealing your hiding place!|You stop advancing.
  matchre RETURN You retreat from combat.|You are already as far away as you can get!
  match STAND You must stand first.
  matchre RETREATP %waitstring
  put retreat
  matchwait 5
  var timeoutsub RETREAT
  var timeoutcommand retreat
	goto TIMEOUT


SMITETESTP:
  pause
SMITETEST:
  matchre SMITETESTP %waitstring
  matchre SMITEGOOD Your conviction is enough to deliver
  matchre SMITEBAD Your conviction is shaken and spent.
  put smite check
  matchwait 5
  var timeoutsub SMITETEST
  var timeoutcommand smite check
	goto TIMEOUT

SMITEGOOD:
  var smitesleft 1
  return
  
SMITEBAD:
  var smitesleft 0
  return


STANCECHANGEP:
  pause
STANCECHANGE:
  matchre STANCECHANGEP %waitstring
  matchre RETURN You are now set|Setting your
  put stance %stance
  matchwait 5
  var timeoutsub STANCECHANGE
  var timeoutcommand stance %stance
	goto TIMEOUT


THROWBONDP:
  pause
THROWBOND:
  if %weapontype = "lt" then
  {
    if %ltbond != "YES" then return
  }
  else
  {
    if %weapontype = "ht" then
    {
      if %htbond != "YES" then return
    }
  }
  matchre RETURN and flies toward you!|suddenly leaps toward you!|You don't have any bonds to invoke!|Strong magic shields the bonded item from your grasp.|Are you sure you want to do that?|Roundtime
  matchre THROWBONDP %waitstring
	put invoke bond
	matchwait 5
	var timeoutsub THROWBOND
  var timeoutcommand invoke bond
  goto TIMEOUT


THROWGETP:
	pause
THROWGET:
  math weapon%currentweaponcount add 1
  if ((%weapontype = "lt") && (%ltbond = "SPECIAL")) then return
  if ((%weapontype = "ht") && (%htbond = "SPECIAL")) then return
  matchre THROWGETP %waitstring
  matchre RETURN You pick up|You fade in for a moment as you pick up|You are already holding that.|You pull|You get
  matchre RETURN ^But that is already in your inventory\.|^You should untie the
  matchre THROWBOND What were you|Sheesh, it's still alive!
	put get %weaponname
	matchwait 5
	var timeoutsub THROWGET
  var timeoutcommand get %weaponname
	goto TIMEOUT
	

UNHIDEP:
	pause
UNHIDE:
  if $hidden != 1 then return
  matchre RETURN You come out of hiding.|But you are not hidden|You slip out of hiding, although you remain invisible.
  matchre UNHIDEP %waitstring
  match UNHIDESTAND You try to creep out of hiding but your injuries cause you to stumble and crash to the ground!
  put unhide
  matchwait 5
	var timeoutsub UNHIDE
  var timeoutcommand unhide
	goto TIMEOUT

UNHIDESTAND:
  gosub STAND
  return
  


#####MOVEMENT_SUBS#####

KNEELP:
  pause
KNEEL:
  matchre KNEELP %waitstring
  matchre RETURN Subservient type, eh?|You kneel down upon the ground.|You rise to a kneeling position.|You kneel.
  put kneel
  matchwait 5
	var timeoutsub KNEEL
  var timeoutcommand kneel
	goto TIMEOUT


LOOKROOMP:
  pause
LOOKROOM:
  matchre LOOKROOMP %waitstring
  matchre RETURN ^Obvious exits\:|^Obvious paths\:
  put look
  matchwait 5
	var timeoutsub LOOKROOM
  var timeoutcommand look
	goto TIMEOUT

MOVE:
  var roomtarget $0
MOVEMAIN:
  put #echo Yellow AutoMove Target: %roomtarget
  pause 0.1
  match RETURN YOU HAVE ARRIVED!
  match MOVEMAIN AUTOMAPPER MOVEMENT FAILED!
  match MOVEMAIN SHOP CLOSED
  match MOVEMAIN THROWN IN JAIL
  put #goto %roomtarget
  matchwait 120
  goto MOVEMAIN

TRAVEL:
  var traveltarget $0
TRAVELMAIN:
  put #echo Yellow Travel Target: %traveltarget
  pause 0.1
  match RETURN REACHED YOUR DESTINATION
  put .travel %traveltarget
  matchwait %movetimeout
  goto TRAVELMAIN

OLDMOVE:
  var roomtarget $0
  delay 0.0001
  var move.skip 0
  var move.retry 0
  var move.fail 0
  var move.room $0
  if $roomid = 0 then
  {
    put #mapper reset
    pause 1
    if $roomid = 0 then
    {
      put #flash
      put #play JustArrived
      if !def(alertwindow) then  put #echo Yellow Genie has lost track of your room number and cannot move!
      else put #echo >$alertwindow Yellow Genie has lost track of your room number and cannot move!
    }
  }
  goto MOVE.GOTO

MOVE.RETRY:
  math move.retry add 1
  if %move.retry > 3 then goto move.fail
  echo ***
  echo *** Retrying move to $1 $2 in %move.retry second(s).
  echo ***
  pause %move.retry
  goto MOVE.GOTO

MOVE.GOTO:
  #gosub retreat
  matchre MOVE.GOTO ^\.\.\.wait|^Sorry\,
  matchre MOVE.RETURN ^YOU HAVE ARRIVED
  matchre MOVE.RETURN ^Darkness settles like a thick cloak 
  matchre MOVE.SKIP ^SHOP CLOSED
  matchre MOVE.RETRY ^MOVE FAILED
  matchre MOVE.FAIL ^DESTINATION NOT FOUND
  matchre MOVE.RETRY ^You can't go
  matchre MOVE.RETRY ^You're still recovering from your recent attack\.
  matchre MOVE.RETREAT ^You are engaged
  matchre MOVE.RETREAT ^You can't do that while engaged\!
  put #goto %roomtarget
  matchwait 120
	var timeoutsub MOVE.GOTO
  var timeoutcommand #goto %roomtarget
	goto TIMEOUT

MOVE.FAIL:
  var move.fail 1
  goto MOVE.RETURN

MOVE.RETREAT:
  pause 0.1
  gosub RETREAT
  pause 0.1
  goto MOVE.RETRY

MOVE.SKIP:
  var move.skip 1

MOVE.RETURN:
  pause 0.001
  pause 0.1
  pause 0.1
  #put #mapper reset
  return

MOVEANYROOM:
  var moveroomlist n|ne|e|se|s|sw|w|nw|out|up|down
  var moveroomcount 0
  goto MOVEANYROOMMAIN
MOVEANYROOMMAINP:
  pause
MOVEANYROOMMAIN:
  eval roomtry element("%moveroomlist", %moveroomcount)
  matchre MOVEANYROOMMAINP %waitstring
  match MOVEANYROOMFAIL You can't go there.
  match MOVEANYROOMMAINP You're still recovering from your recent attack.
  matchre RETURN ^Obvious
  matchre MOVEANYROOMRET You are engaged to
  put %roomtry
  matchwait 5
	var timeoutsub MOVEANYROOMMAIN
  var timeoutcommand %roomtry
	goto TIMEOUT

MOVEANYROOMFAIL:
  math moveroomcount add 1
  goto MOVEANYROOMMAIN

MOVEANYROOMRET:
  gosub RETREAT
  goto MOVEANYROOMMAIN
  

MOVELOOP:
  if %mlmovetarget > %mlcount then return
  if %roomtarget = "galley" then
  {
    action (speech) off
    var galleydone 0
    gosub GALLEYTRAVEL
    action (speech) on
  }
  else
  {
    if %mlstring(%mlmovetarget) = "start" then
    {
      if %startingroom != 0 then
      {
        gosub MOVE %startingroom
      }
    }
    else
    {
      if matchre("%mlstring(%mlmovetarget)", "move .*") then gosub MOVEROOMS %mlstring(%mlmovetarget)
      else
      {
        if matchre("%mlstring(%mlmovetarget)", "go .*") then gosub MOVEROOMS %mlstring(%mlmovetarget)
        else
        {
          gosub MOVE %mlstring(%mlmovetarget)
        }
      }
    }
  }
  math mlmovetarget add 1
  goto MOVELOOP


GALLEYTRAVEL:
  action (galley) on
  put #echo %alertwindow [UPKEEP] Starting galley travel from Zone: $zoneid, Room: $roomid.
  if $zoneid = "107a" then echo Waiting to arrive.
  else
  {
    if $zoneid = 107 then
    {
      var startingzone 107
      if $roomid != "113" then
      {
        gosub MOVE 113
        put go galley
      }
      if $zoneid != "107a" then echo Waiting for the galley.
    }
    if $zoneid = 108 then
    {
      var startingzone 108
      if $roomid != "151" then
      {
        gosub MOVE 151
        put go galley
      }
      if $zoneid != "107a" then echo Waiting for the galley.
    }
  }
  goto GALLEYLOOP

GALLEYLOOP:
  if %galleydone = 1 then goto GALLEYEND
  pause 1
  goto GALLEYLOOP
  
GALLEYEND:
  echo galleyend.  Startingzone: %startingzone
  put look
  pause 1
  if matchre("$roomexits", "southwest" then put sw
  if matchre("$roomexits", "north" then put n
  pause 1
  put #echo %alertwindow [UPKEEP] Completed galley travel in Zone: $zoneid.
  action (galley) off
  return



MOVEROOMS:
  pause .1
  pause .01
  if ("$1" = "move") then var movement $2
  else var movement $0
  goto MOVEROOMSMAIN
MOVEROOMSMAINP:
  pause
MOVEROOMSMAIN:
  matchre MOVEROOMSMAINP %waitstring
  matchre RETURN ^Obvious
  matchre RETURN ^You can't
  match RETURN Please rephrase that command.
  matchre MOVEROOMSRET You are engaged to
  put %movement
  matchwait 10
	var timeoutsub MOVEROOMS
  var timeoutcommand %movement
	goto TIMEOUT

MOVEROOMSRET:
  gosub RETREAT
  goto MOVEROOMSMAIN
  

SITP:
  pause
SIT:
  matchre SITP %waitstring
  matchre RETURN You sit down\.|You sit up\.|You are already sitting\.
  put sit  
  matchwait 5
	var timeoutsub SIT
  var timeoutcommand sit
	goto TIMEOUT


SNEAKROOMS:
  pause .1
  pause .01
  var movement $0
  goto SNEAKROOMSMAIN
SNEAKROOMSMAINP:
  pause
SNEAKROOMSMAIN:
  matchre SNEAKROOMSMAINP %waitstring
  matchre RETURN ^Obvious
  matchre RETURN ^You can't|
  match SNEAKROOMSATFEET You find yourself unable to sneak with items at your feet.
  put sneak %movement
  put stand
  matchwait 5
	var timeoutsub SNEAKROOMS
  var timeoutcommand stand
	goto TIMEOUT

SNEAKROOMSATFEET:
  gosub STOWALL
  gosub STOWFEET
  goto SNEAKROOMSMAIN
  

STANDP:
  pause
STAND:
  if (($prone = 1) || ($sitting = 1) || ($kneeling = 1)) then
  {
		matchre RETURN You are already standing.|You stand back up.|You stand up in the water.
		matchre STAND ^The weight of all your possessions prevents you from standing\.$|^You are so unbalanced you cannot manage to stand\.$|^You are overburdened and cannot manage to stand\.$
		match RETURN You're unconscious!
		matchre STANDP %waitstring
		put stand
		matchwait 5
		var timeoutsub STAND
		var timeoutcommand stand
		goto TIMEOUT
  }
  else return


#####THIEF_SUBS#####


KHRI:
  var khristring $0
  goto KHRIMAIN
KHRIP:
  pause
KHRIMAIN:
  matchre KHRIP %waitstring
  matchre KHRIRETURN Roundtime|You're already using the|You have not recovered from your previous use|Your body is willing, but you can't seem to concentrate
  matchre KHRIKNEEL Your mind and body are willing, but you feel you lack the skill to begin that khri.
  put khri %khristring
  matchwait 5
	var timeoutsub KHRI
  var timeoutcommand khri %khristring
	goto TIMEOUT

KHRIKNEEL:
  gosub KNEEL
  goto KHRIMAIN
  
KHRIRETURN:
  if $sitting = 1 then gosub STAND
  if $kneeling = 1 then gosub STAND
  if $prone = 1 then gosub STAND
  return


KHRISTOP:
  var khristopstring $0
  goto KHRISTOPMAIN
KHRISTOPP:
  pause
KHRISTOPMAIN:
  matchre KHRISTOPP %waitstring
  matchre RETURN You attempt to relax your mind from
  put khri stop %khristopstring
  matchwait 5
	var timeoutsub KHRISTOP
  var timeoutcommand khri stop %khristopstring
	goto TIMEOUT


#####BARBARIAN_SUBS#####

BERSERK:
  var berserktype $0
  goto BERSERKMAIN
BERSERKP:
  pause
BERSERKMAIN:
  if (%t < %nextberserk) then return
  var tsunamistow 0
  if %berserktype = "Tsunami" then
  {
    if ("$righthand" != "Empty") then var irighthandnoun $righthandnoun
    else var irighthandnoun ----
    if ("$lefthand" != "Empty") then var ilefthandnoun $lefthandnoun
    else var ilefthandnoun ----
    if ((matchre ("%tsunamiweapon", "%irighthandnoun")) || (matchre ("%tsunamiweapon", "%ilefthandnoun"))) then
    else 
    {
      var tsunamistow 1
      gosub GETITEM %tsunamibackup
    }
  }
  matchre BERSERKP %waitstring
  match BERSERKWRONG You have no idea how to do that.
  match BERSERKTRAIN You have not been trained in that manner of berserking.
  matchre BERSERKRETURN Roundtime|The momentus rage of the avalanche replenishes your energy\!|A ravenous energy fills your limbs and you feel yourself growing healthier\!|You struggle\, but find yourself lacking the inner fire to enact such a rage\!|A vortex of malice springs into being\, expanding your focus and steadying your shield arm\!|Fury storming forth\, your pulse whips itself up to a furious tempo\!|You sense the rage within you well up and explode in a wild rage of dangerous power\.|You form the epicenter of a violent rage bent on crumbling your enemies\!|The momentus eruption of the volcano hardens you against damage\!|Careful control and timing of rage can provide reflexes capable of weathering even a landslide\.|In a flash your body fills with a flood of resilient rage\!|A supernatural strength and need to lash out at your foes inhabits you\.|A supernatural timing pulses through your veins, steadying your reaction against reflex based contests\!|The .* in your hands suddenly feels easier to wield, and more capable of powerful attacks\.|Unleashing a blizzard of hate, its raging violence amplifies the damage of your attacks\!|Fury wells up from within and swirls into a raging hurricane that leaves you in the calm eye of its center, supremely focused\.
  match BERSERKRETURN Your hands shake in anticipation of releasing the fury of the tsunami down upon your foes!
  matchre BERSERKRETURN But you are already enraged with that berserk\.
  match BERSERKPAUSE Your inner fire lacks the strength to fuel such a rage at this time.
  put berserk %berserktype
  matchwait 5
	var timeoutsub BERSERKMAIN
  var timeoutcommand berserk %berserktype
	goto TIMEOUT
	
BERSERKALREADY:
  put #echo %alertwindow Yellow Attempted to start a berserk that was already up!
  goto BERSERKRETURN

BERSERKPAUSE:
  var nextberserk %t
  math nextberserk add 120
  return

BERSERKRETURN:
  if (%tsunamistow = 1) then gosub STOWITEM %tsunamibackup
  gosub MEDITATEPOWER
  return

BERSERKWRONG:
  put #echo >$alertwindow Yellow Tried to start %berserktype berserk, but that is not a valid form!  Please investigate.
  put #flash
  put #play JustArrived
  return

BERSERKTRAIN:
  put #echo >$alertwindow Yellow Tried to start %berserktype berserk, but you are not trained in that yet!  Please investigate.
  put #flash
  put #play JustArrived
  return

BERSERKSTOPALLP:
  pause
BERSERKSTOPALL:
  matchre BERSERKP %waitstring
  match BARBRETURN A good positive attitude never hurts.
  match BARBRETURN Maybe try berserking first?
  put berserk stop all
  put yes
  matchwait 5
	var timeoutsub BERSERKSTOPALL
  var timeoutcommand berserk stop all
	goto TIMEOUT


FORM:
  var formtype $0
  goto FORMMAIN
FORMP:
  pause
FORMMAIN:
  matchre FORMP %waitstring
  match FORMBAD You find yourself unable to focus on an additional form.  Perhaps try stopping one first?
  match FORMWRONG You have no idea how to do that.
  match FORMTRAIN You have not been trained in that form.
  matchre BARBRETURN But you are already practicing that form!|Roundtime
  put form start %formtype
  matchwait 5
	var timeoutsub FORMMAIN
  var timeoutcommand form start %formtype
	goto TIMEOUT

FORMBAD:
  put #echo >$alertwindow Yellow Tried to start %formtype form, but there were already 5 forms up!  Please investigate.
  put #flash
  put #play JustArrived
  return

FORMWRONG:
  put #echo >$alertwindow Yellow Tried to start %formtype form, but that is not a valid form!  Please investigate.
  put #flash
  put #play JustArrived
  return

FORMTRAIN:
  put #echo >$alertwindow Yellow Tried to start %formtype form, but you are not trained in that yet!  Please investigate.
  put #flash
  put #play JustArrived
  return
  
BARBRETURN:
  gosub MEDITATEPOWER
  return

FORMSTOPP:
  pause
FORMSTOP:
  matchre FORMSTOPP %waitstring
  matchre BARBRETURN But you are not practicing that form!|You feel your inner fire cool as you finish practicing the Form|The powerful gait of the Buffalo form
  put form stop %formtype
  matchwait 5
	var timeoutsub FORMSTOP
  var timeoutcommand form stop %formtype
	goto TIMEOUT

FORMSTOPALLP:
  pause
FORMSTOPALL:
  matchre FORMSTOPALLP %waitstring
  matchre BARBRETURN You relax your body and cease practicing all form types\.|You feel your inner fire cool as you finish practicing the Form|You have to be practicing a form to be able to stop it\.
  put form stop all
  matchwait 5
	var timeoutsub FORMSTOPALL
  var timeoutcommand form stop all
	goto TIMEOUT


MEDITATEPOWERP:
  pause
MEDITATEPOWER:
  matchre MEDITATEPOWERP %waitstring
  match RETURN You feel a jolt as your vision snaps shut.
  match MEDITATEPOWERP But you are currently starting a meditation, and cannot focus your mind on another.
  put meditate power
 	matchwait 5
	var timeoutsub MEDITATEPOWER
	var timeoutcommand meditate power
	goto TIMEOUT
	
	
MEDITATIONP:
  pause
MEDITATION:
  matchre MEDITATIONP %waitstring
  match MEDITATIONBAD You find yourself unable to focus on an additional meditation.  Perhaps try stopping one first?
  match MEDITATIONWRONG You have no idea how to do that.
  match MEDITATIONTRAIN You have not been trained in that type of meditation.
  match MEDITATIONRETURN Roundtime
  match RETURN Your inner fire lacks the strength to empower such a potent mental activity.
  put meditate %meditationtype
  matchwait 5
  var timeoutsub MEDITATION
  var timeoutcommand meditate %meditationtype
	goto TIMEOUT

MEDITATIONRETURN:
  gosub STAND
  gosub MEDITATEPOWER
  return

MEDITATIONBAD:
  #put #echo >$alertwindow Yellow Tried to start %meditationtype meditation, but there were already 3 meditations up!  Please investigate.
  #put #flash
  #put #play JustArrived
  gosub MEDITATEPOWER
  return

MEDITATIONWRONG:
  put #echo >$alertwindow Yellow Tried to start %meditationtype meditation, but that is not a valid form!  Please investigate.
  put #flash
  put #play JustArrived
  return
  
MEDITATIONTRAIN:
  put #echo >$alertwindow Yellow Tried to start %meditationtype meditation, but you are not trained in that yet!  Please investigate.
  put #flash
  put #play JustArrived
  return

MEDITATIONSTOPP:
  pause
MEDITATIONSTOP:
  matchre MEDITATIONSTOPP %waitstring
  match RETURN You take a deep breath and exhale, releasing the beneficial flames burning deep within your mind.
  put meditation stop %medittype
  matchwait 5
  var timeoutsub MEDITATIONSTOP
  var timeoutcommand meditation stop %medittype
	goto TIMEOUT

ROARP:
  pause
ROAR:
  var nextroar%roartype %t
  math nextroar%roartype add 120
  matchre ROARP %waitstring
  matchre ROARFACE You are not facing an enemy to roar at!
  matchre RETURN Roundtime|Strain though you might, you cannot muster|You have not been trained in that roar.
  match RETURN You strain but are unable to muster the voice necessary to intimidate your foe!
  put roar quiet %roartype
  matchwait 5
  var timeoutsub ROAR
  var timeoutcommand roar quiet %roartype
	goto TIMEOUT

ROARFACE:
  gosub FACE
  if %badface = 1 then
  {
    var badface 0
    return
  }
  goto ROAR

WARHORNP:
  pause
WARHORN:
  matchre WARHORNP %waitstring
  matchre RETURN Roundtime
  put exhale warhorn lure
  matchwait 5
  var timeoutsub WARHORN
  var timeoutcommand exhale %warhornitem lure
	goto TIMEOUT



#####MAGIC_LOGIC#####
  
CASTRESET:
	var cambcharge 0
  var cambcharge1 0
  var cambcharge2 0
  var ready 0
  var prepped 0
  var charged 0
  var invoked 0
  var harnessed 0
  var spellprepping
  var prepmana 0
  var cambmana 0
  var harnmana 0
  var harntapped 0
  var cambmana1 0
  var cambmana2 0
  var tattoocast 0
  var tmcast 0
  var debilcast 0
  var cycliccast 0
  var casting 0
  var spellsymb 0
  var cambtapped 0
  var cambsplitting 0
  var splittingmana 0
  var splitcount 0
  var multicast 0
  var scancel 0
  var ctoverride 0
  var omcast 0
  var preptime 0
  var preptimewait 0
  return

CASTINGLOGIC:
  if ("%necrosafety" = "YES") then
  {
    gosub NSAFETYCHECK
    if %necrogood != 1 then return
  }
  if (%prepped != 1) then
  {
    gosub ARRANGEMANA
    if ($concentration >= %minconcentration) then gosub PREP
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
    if (%charged != 1) then
    {
      if %cambtapped > 0 then
      {
        if %t > %cambtapped then gosub CHARGE
      }
      else
      {
        #gosub ARRANGEMANA
        gosub CHARGE
      }
    }
  }
  if (%ready = 1) then 
  {
    if (%cambtapped != 1) then
    {
      #echo spellsymb: %spellsymb
      if %spellsymb = 1 then
      {
        #echo symbiosis: %symbiosis
        if %symbiosis = 0 then gosub PREPSYMBIOSIS
        gosub PREPSYMBIOSIS
      }
      else
      {
        if %symbiosis = 1 then gosub RELSYMBIOSIS
      }
      gosub CAST
    }
  }
  else
  {
    var preptimetest %t
    math preptimetest subtract %preptime
    if %preptimetest > 300 then gosub SPELLCANCEL
  }
  return

ARRANGEMANA:
  var harnmana 0
  var cambmana 0
  #Lock_checking
  if %buffingonly != 1 then
  #if %buffingonly = poopooi then
  {
    if $Arcana.LearningRate < 20 then var arcanalock 0
    if $Arcana.LearningRate > 31 then var arcanalock 1
    if $Arcana.Ranks >= 1750 then var arcanalock 1
    if $Attunement.LearningRate < 20 then var attunelock 0
    if $Attunement.LearningRate > 31 then var attunelock 1
    if $Attunement.Ranks >= 1750 then var attunelock 1
  }
  else
  {
    var attunelock 0
    var arcanalock 0
  }
  if %straightcast = "YES" then
  {
    if ((%attunelock = 1) && (%arcanalock = 1)) then
    {
      math prepmana add %addmana
      var addmana 0
      return
    }
  }
  #Arrange_logic
  if %harnessing = "YES" then
  {
    if %cambrinth = "NO" then var harnmana %addmana
    else
    {  
      if %arcanalock = 1 then var harnmana %addmana
      else
      {
        if %addmana > %totalcamb then
        {
          var cambmana %totalcamb
          var harnmana %addmana
          math harnmana subtract %totalcamb
          #echo harnmana: %harnmana
          #echo cambmana: %cambmana
        }  
        else var cambmana %addmana 
      }
    }
  }
  else
  {
    if %cambrinth = "YES" then
    {
      if %addmana <= %totalcamb then var cambmana %addmana
      else var cambmana %totalcamb
    }
    else
    {
      math prepmana add %addmana
      var addmana 0
      #echo prepmana: %prepmana
      #echo addmana: %addmana
    }
  }
  return


CASTCLEANUP:
  if ((%pcast = 1) || (%kcast = 1)) then goto CASTCLEANUPSIMPLE
  goto CASTCLEANUPMAIN

CASTCLEANUPSIMPLE:
  if %spellprepping = "shadowling" then gosub INVOKESHADOW
  if %spellprepping = "iots" then put invoke circle
  if %spellprepping = "bg" then
  {
    gosub PERCSELF
    var bgdone 0
	}
	if %spellprepping = "mab" then
	{
	  send prep cantrip r s
	  send gesture ballista
	  pause 1
	  gosub BALLISTARUB
	}
	if %pcast = 1 then put #parse PCASTING COMPLETE!
	if %astralcast = 1 then return
  if %kcast = 1 then
  {
    if (%buffing = 1) then gosub PERCSELF
    gosub CASTRESET
    return
  }
  if %multicast = 1 then goto MULTICASTRESET
  exit
  
CASTCLEANUPMAIN:
  if (%scancel = 1) then
  {
    gosub SPELLCANCEL
  }
  if (%symbiosis = 1) then
  {
    gosub PREPSYMBIOSIS
    gosub RELSYMBIOSIS
  }
  if ($Attunement.LearningRate > 33) then var attunelock 1
  if ($Arcana.LearningRate > 33) then var arcanalock 1
  if ("%spellprepping" = "db") then var dbready 1
	if ("%spellprepping" = "ignite") then
	{
	  if (%buffing != 1) then gosub RELNSPELL ignite
	  if (%ignitestow = 1) then
	  {
	    var ignitestow 0
	    var stowitem %ignitebackup
	    gosub STOWITEM
	  }
	}
  if ("%spellprepping" = "mab") then
	{
	  send prep cantrip r s
	  send gesture ballista
	  pause 1
	  gosub BALLISTARUB
	}
	if ("%spellprepping" = "iots") then put invoke circle
  if ("%spellprepping" = "shadowling") then gosub INVOKESHADOW
	if (("%spellprepping" = "tkt") || ("%spellprepping" = "tks")) then
	{
  	gosub GETITEM %tktitem
    gosub STOWITEM %tktitem
	}
	gosub CASTRESET
	if %buffing = 1 then gosub PERCSELF
	var nextcast %t
	math nextcast add %castingthrottle
	return



SPELLCANCEL:
  var scancel 0
  if (%harnmana > 0) then gosub RELMANA
  if ("$preparedspell" != "None") then gosub RELSPELL
  gosub CASTRESET
  return


SPELLVARSLOOP:
  math spellvarscount add 1
  if %spellvarscount > %buffnum then return
  var spellname %buff%spellvarscount
  gosub SPELLIDENT
  var buff%spellvarscountvar %spellvar
  #echo buff%spellvarscountvar: %buff%spellvarscountvar
  goto SPELLVARSLOOP

OMSPELLVARSLOOP:
  math spellvarscount add 1
  if %spellvarscount > %ombuffnum then return
  var spellname %ombuff%spellvarscount
  gosub SPELLIDENT
  var ombuff%spellvarscountvar %spellvar
  #echo ombuff%spellvarscountvar: %ombuff%spellvarscountvar
  goto OMSPELLVARSLOOP

SPELLIDENT:
  if %spellname = "aa" then var spellvar SpellTimer.AspirantsAegis
  if %spellname = "ab" then var spellvar SpellTimer.AirBubble
  if %spellname = "abs" then var spellvar SpellTimer.Absolution
  if %spellname = "aeg" then var spellvar SpellTimer.AegisofGranite 
  if %spellname = "ags" then var spellvar SpellTimer.AggressiveStance
  if %spellname = "art" then var spellvar SpellTimer.ArtificersEye
  if %spellname = "as" then var spellvar SpellTimer.AntiStun
  if %spellname = "aus" then var spellvar SpellTimer.AuraSight
  if %spellname = "auspice" then var spellvar SpellTimer.Auspice
  if %spellname = "ava" then var spellvar SpellTimer.AvrenAevareae
  if %spellname = "awaken" then var spellvar SpellTimer.Awaken
  if %spellname = "bc" then var spellvar SpellTimer.BraunsConjecture
  if %spellname = "benediction" then var spellvar SpellTimer.Benediction
  if %spellname = "bless" then var spellvar SpellTimer.Bless
  if %spellname = "bloodthorns" then var spellvar SpellTimer.Bloodthorns
  if %spellname = "bs" then var spellvar SpellTimer.BloodStaunching
  if %spellname = "bg" then var spellvar SpellTimer.BlufmorGaraen
  if %spellname = "blur" then var spellvar SpellTimer.Blur
  if %spellname = "bue" then var spellvar SpellTimer.ButchersEye
  if %spellname = "care" then var spellvar SpellTimer.CaressoftheSun
  if %spellname = "centering" then var spellvar SpellTimer.Centering
  if %spellname = "ch" then var spellvar SpellTimer.CalcifiedHide
  if %spellname = "clarity" then var spellvar SpellTimer.Clarity
  if %spellname = "col" then var spellvar SpellTimer.CageofLight
  if %spellname = "cotc" then var spellvar SpellTimer.ClawsoftheCougar
  if %spellname = "courage" then var spellvar SpellTimer.Courage
  if %spellname = "cv" then var spellvar SpellTimer.ClearVision
  if %spellname = "da" then var spellvar SpellTimer.DivineArmor
  if %spellname = "dc" then var spellvar SpellTimer.DestinyCipher
  if %spellname = "db" then var spellvar SpellTimer.DragonsBreath
  if %spellname = "dema" then var spellvar SpellTimer.DesertsMaelstrom
  if %spellname = "dr" then var spellvar SpellTimer.DivineRadiance
  if %spellname = "drum" then var spellvar SpellTimer.DrumsoftheSnake
  if %spellname = "ease" then var spellvar SpellTimer.EaseBurden
  if %spellname = "echo" then var spellvar SpellTimer.EchoesofAether
  if %spellname = "ecry" then var spellvar SpellTimer.EilliesCry
  if %spellname = "eli" then var spellvar SpellTimer.Elision
  if %spellname = "em" then var spellvar SpellTimer.EarthMeld
  if %spellname = "emc" then var spellvar SpellTimer.EmuinsCandlelight
  if %spellname = "enrichment" then var spellvar SpellTimer.Enrichment
  if %spellname = "es" then var spellvar SpellTimer.EtherealShield
  if %spellname = "etc" then var spellvar SpellTimer.EmbedtheCycle
  if %spellname = "ey" then var spellvar SpellTimer.EssenceofYew
  if %spellname = "fin" then var spellvar SpellTimer.Finesse
  if %spellname = "fotf" then var spellvar SpellTimer.FailureoftheForge
  if %spellname = "gf" then var spellvar SpellTimer.GroundingField
  if %spellname = "gg" then var spellvar SpellTimer.GlythtidesGift
  if %spellname = "ghoulflesh" then var spellvar SpellTimer.Ghoulflesh
  if %spellname = "gi" then var spellvar SpellTimer.GamIrnan
  if %spellname = "gol" then var spellvar SpellTimer.GiftofLife
  if %spellname = "halo" then var spellvar SpellTimer.Halo
  if %spellname = "harm" then var spellvar SpellTimer.Harmony
  if %spellname = "hes" then var spellvar SpellTimer.HeroicStrength
  if %spellname = "hol" then var spellvar SpellTimer.HandsofLirisa
  if %spellname = "ignite" then var spellvar SpellTimer.Ignite
  if %spellname = "ic" then var spellvar SpellTimer.IronConstitution
  if %spellname = "inst" then var spellvar SpellTimer.Instinct
  if %spellname = "iots" then var spellvar SpellTimer.InvocationoftheSpheres
  if %spellname = "ivm" then var spellvar SpellTimer.IvoryMask
  if %spellname = "ks" then var spellvar SpellTimer.KuraSilma
  if %spellname = "lw" then var spellvar SpellTimer.LayWard
  if %spellname = "lgv" then var spellvar SpellTimer.LastGiftofVithwokIV
  if %spellname = "maf" then var spellvar SpellTimer.ManifestForce
  if %spellname = "mapp" then var spellvar SpellTimer.MajorPhysicalProtection
  if %spellname = "mef" then var spellvar SpellTimer.MentalFocus
  if %spellname = "meg" then var spellvar SpellTimer.MembrachsGreed
  if %spellname = "mis" then var spellvar SpellTimer.Misdirection
  if %spellname = "mpp" then var spellvar SpellTimer.MinorPhysicalProtection
  if %spellname = "mf" then var spellvar SpellTimer.MurrulasFlames
  if %spellname = "mo" then var spellvar SpellTimer.MarshalOrder
  if %spellname = "mof" then var spellvar SpellTimer.MantleofFlame
  if %spellname = "mon" then var spellvar SpellTimer.MemoryofNature
  if %spellname = "name" then var spellvar SpellTimer.NamingofTears
  if %spellname = "non" then var spellvar SpellTimer.Nonchalance
  if %spellname = "nou" then var spellvar SpellTimer.Noumena
  if %spellname = "oath" then var spellvar SpellTimer.OathoftheFirstborn
  if %spellname = "obfuscation" then var spellvar SpellTimer.Obfuscation
  if %spellname = "phk" then var spellvar SpellTimer.PlatinumHandsofKertigen
  if %spellname = "php" then var spellvar SpellTimer.PhilosophersPreservation
  if %spellname = "pg" then var spellvar SpellTimer.PiercingGaze
  if %spellname = "pom" then var spellvar SpellTimer.PersistenceofMana
  if %spellname = "pop" then var spellvar SpellTimer.PerseveranceofPeriel
  if %spellname = "pfe" then var spellvar SpellTimer.ProtectionfromEvil
  if %spellname = "psy" then var spellvar SpellTimer.PsychicShield
  if %spellname = "rage" then var spellvar SpellTimer.RageoftheClans
  if %spellname = "repr" then var spellvar SpellTimer.RedeemersPride
  if %spellname = "refresh" then var spellvar SpellTimer.Refresh
  if %spellname = "rei" then var spellvar SpellTimer.ResearchersInsight
  if %spellname = "rits" then var spellvar SpellTimer.RiverintheSky
  if %spellname = "rw" then var spellvar SpellTimer.RighteousWrath
  if %spellname = "sl" then var spellvar SpellTimer.SanyuLyba
  if %spellname = "seer" then var spellvar SpellTimer.SeersSense
  if %spellname = "shadowling" then var spellvar SpellTimer.Shadowling
  if %spellname = "shadows" then var spellvar SpellTimer.Shadows
  if %spellname = "sk" then var spellvar SpellTimer.SyamelyoKuniyo
  if %spellname = "sks" then var spellvar SpellTimer.SkeinofShadows
  if %spellname = "sol" then var spellvar SpellTimer.ShieldofLight
  if %spellname = "solace" then var spellvar SpellTimer.Solace
  if %spellname = "sos" then var spellvar SpellTimer.SoulShield
  if %spellname = "sott" then var spellvar SpellTimer.SensesoftheTiger
  if %spellname = "soul" then var spellvar SpellTimer.SoulAblaze
  if %spellname = "sr" then var spellvar SpellTimer.SentinelsResolve
  if %spellname = "stc" then var spellvar SpellTimer.StellarCollector
  if %spellname = "stw" then var spellvar SpellTimer.SeetheWind
  if %spellname = "substratum" then var spellvar SpellTimer.Substratum
  if %spellname = "suf" then var spellvar SpellTimer.SureFooting
  if %spellname = "sw" then var spellvar SpellTimer.SwirlingWinds
  if %spellname = "tk" then var spellvar SpellTimer.TamsinesKiss
  if %spellname = "tksh" then var spellvar SpellTimer.TelekineticShield
  if %spellname = "tranquility" then var spellvar SpellTimer.Tranquility
  if %spellname = "trc" then var spellvar SpellTimer.TrabeChalice
  if %spellname = "turi" then var spellvar SpellTimer.TurmarIllumination
  if %spellname = "tw" then var spellvar SpellTimer.Tailwind
  if %spellname = "voi" then var spellvar SpellTimer.VeilofIce
  if %spellname = "vigor" then var spellvar SpellTimer.Vigor
  if %spellname = "will" then var spellvar SpellTimer.WillofWinter
  if %spellname = "ws" then var spellvar SpellTimer.WolfScent
  if %spellname = "wotp" then var spellvar SpellTimer.WisdomofthePack
  if %spellname = "worm" then var spellvar SpellTimer.WormsMist
  if %spellname = "ys" then var spellvar SpellTimer.YntrelSechra
  return  


KHRIVARS:
  if %khridebiltype = prowess then var khridebilvar SpellTimer.KhriProwess
  if %khridebiltype = guile then var khridebilvar SpellTimer.KhriGuile
  if %khridebiltype = credence then var khridebilvar SpellTimer.KhriCredence
  if %khridebiltype = terrify then var khridebilvar SpellTimer.KhriTerrify
  if %khridebiltype = intimidate then var khridebilvar SpellTimer.KhriIntimidate
  if %khridebiltype = eliminate then var khridebilvar SpellTimer.KhriEliminate
  return



CYCSPELLVARSLOOP:
  math spellvarscount add 1
  if %spellvarscount > 3 then return
  if %spellc%spellvarscount = "ac" then var spellc%spellvarscountvar SpellTimer.AetherCloak
  if %spellc%spellvarscount = "ad" then var spellc%spellvarscountvar SpellTimer.AesandryDarlaeth
  if %spellc%spellvarscount = "af" then var spellc%spellvarscountvar SpellTimer.AwakenForest
  if %spellc%spellvarscount = "bes" then var spellc%spellvarscountvar SpellTimer.BearStrength
  if %spellc%spellvarscount = "botf" then var spellc%spellvarscountvar SpellTimer.BlessingoftheFae
  if %spellc%spellvarscount = "care" then var spellc%spellvarscountvar SpellTimer.CaressoftheSun
  if %spellc%spellvarscount = "cs" then var spellc%spellvarscountvar SpellTimer.CheetahSwiftness
  if %spellc%spellvarscount = "eye" then var spellc%spellvarscountvar SpellTimer.EyeofKertigen
  if %spellc%spellvarscount = "fae" then var spellc%spellvarscountvar SpellTimer.FaenellasGrace
  if %spellc%spellvarscount = "ghs" then var spellc%spellvarscountvar SpellTimer.GhostShroud
  if %spellc%spellvarscount = "ghs" then var spellc%spellvarscountvar SpellTimer.GhostShroud
  if %spellc%spellvarscount = "gj" then var spellc%spellvarscountvar SpellTimer.GlythtidesJoy
  if %spellc%spellvarscount = "hodi" then var spellc%spellvarscountvar SpellTimer.HodiernasLilt
  if %spellc%spellvarscount = "how" then var spellc%spellvarscountvar SpellTimer.HolyWarrior
  if %spellc%spellvarscount = "mom" then var spellc%spellvarscountvar SpellTimer.MaskoftheMoons
  if %spellc%spellvarscount = "regenerate" then var spellc%spellvarscountvar SpellTimer.Regenerate
  if %spellc%spellvarscount = "rev" then var spellc%spellvarscountvar SpellTimer.Revelation
  if %spellc%spellvarscount = "roc" then var spellc%spellvarscountvar SpellTimer.RiteofContrition
  if %spellc%spellvarscount = "rog" then var spellc%spellvarscountvar SpellTimer.RiteofGrace
  if %spellc%spellvarscount = "sanctuary" then var spellc%spellvarscountvar SpellTimer.Sanctuary
  if %spellc%spellvarscount = "sov" then var spellc%spellvarscountvar SpellTimer.StepsofVuan
  if %spellc%spellvarscount = "tr" then var spellc%spellvarscountvar SpellTimer.TruffenyisRally  
  goto CYCSPELLVARSLOOP

CYCTMDBVARS:
  if %spellctm = "aban" then var spellc4var SpellTimer.AbandonedHeart
  if %spellctm = "ars" then var spellc4var SpellTimer.ArbitersStylus
  if %spellctm = "fr" then var spellc4var SpellTimer.FireRain
  if %spellctm = "gs" then var spellc4var SpellTimer.GuardianSpirit
  if %spellctm = "iz" then var spellc4var SpellTimer.IcutuZaharenela
  if %spellctm = "pyre" then var spellc4var SpellTimer.Pyre
  if %spellctm = "rim" then var spellc4var SpellTimer.Rimefang
  if %spellctm = "ros" then var spellc4var SpellTimer.RingofSpears
  if %spellctm = "sa" then var spellc4var SpellTimer.SoulAttrition
  if %spellctm = "sls" then var spellc4var SpellTimer.StarlightSphere
  if %spellctm = "usol" then var spellc4var SpellTimer.UniversalSolvent
  if %spellcdb = "alb" then var spellc5var SpellTimer.AlbredasBalm
  if %spellcdb = "dalu" then var spellc5var SpellTimer.DamarisLullaby
  if %spellcdb = "dema" then var spellc5var SpellTimer.DesertsMaelstrom
  if %spellcdb = "ee" then var spellc5var SpellTimer.ElectrostaticEddy
  if %spellcdb = "hyh" then var spellc5var SpellTimer.HydraHex
  if %spellcdb = "shw" then var spellc5var SpellTimer.ShadowWeb
  return


#####MAGIC_SUBS#####


CASTP:
	pause
CAST:
  if %harnmana > 0 then
  {
    if %harnessed = 0 then
    {
      gosub HARNESS
      pause
    }
  }
  var casttarget
  if %spellprepping = "aeg" then
  {
    if $SpellTimer.MantleofFlame.active = 1 then gosub RELNSPELL mof
  }
  if %spellprepping = "mof" then
  {
    if $SpellTimer.AegisofGranite.active = 1 then gosub RELNSPELL aeg
  }
  if %spellprepping = "sap" then var casttarget augmentation
  if %spellprepping = "bless" then
  {
    if ("$righthandnoun" = "wine") then var casttarget wine
  }
  if %spellprepping = "devour" then
  {
    if matchre ("$roomobjs", "(\w+) ((which|that) appears dead|\(dead\))") then
	  {
	    var monster $1
	    gosub CONSUME
	  }
	  else
	  {
      if ((matchre("$righthandnoun", "material")) || (matchre("$lefthandnoun", "material"))) then 
      else
      {
        if (("$righthand" != "Empty") && ("$lefthand" != "Empty")) then
        {
          gosub STOW right
        }
        gosub GETITEM material
        if ((matchre("$righthandnoun", "material")) || (matchre("$lefthandnoun", "material"))) then 
        else
        {
          gosub SPELLCANCEL
          return
        }
      }
	  }
  }
  if %spellprepping = "ignite" then
  {
    if %ctoverride != 1 then
    {
      if ("$righthand" != "Empty") then var irighthandnoun $righthandnoun
      else var irighthandnoun ----
      if ("$lefthand" != "Empty") then var ilefthandnoun $lefthandnoun
      else var ilefthandnoun ----
      #echo IgniteWeapons: %igniteweapon
      #echo Righthand: %irighthandnoun
      #echo Lefthand: %ilefthandnoun
      if ((matchre ("%igniteweapon", "%irighthandnoun")) || (matchre ("%igniteweapon", "%ilefthandnoun"))) then
      {
        if (matchre ("%igniteweapon", "%irighthandnoun")) then
        {
          #echo Right hand!
          var casttarget $righthand
        }
        else
        {
          #echo Left hand!
          var casttarget $lefthand
        }
      }
      else
      {
        #echo Ignite: Grabbing a weapon to cast on.
        var ignitestow 1
        gosub GETITEM %ignitebackup
        var casttarget %ignitebackup
      }
      if $SpellTimer.Ignite.active = 1 then
      {
        gosub RELNSPELL ignite
        #if %lastignite != %casttarget then waitfor The flames dancing
        #var lastignite %casttarget
      }
    }
    else if $SpellTimer.Ignite.active = 1 then gosub RELNSPELL ignite
  }
  if %spellprepping = "hyh" then var casttarget male offense
  if %spellprepping = "om" then var casttarget orb
  if %spellprepping = "rits" then var casttarget %ritstype
  #if %spellprepping = "shadowling" then put release shadowling
  if %spellprepping = "tks" then
	{
	  if matchre ("$roomobjs", "%tktitem") then
    {
    }
    else
    {
      gosub GETITEM %tktitem
      gosub DROPITEM %tktitem
    }
  }
  if %spellprepping = "tkt" then
	{
    if matchre ("$roomobjs", "%tktitem") then
    {
    }
    else
    {
      gosub GETITEM %tktitem
      gosub DROPITEM %tktitem
    }
  }
  if %cycliccast = 1 then
	{
	  var nextcyc %t
    math nextcyc add 300
	}
	if %debilcast = 1 then
	{
	  var casttarget creature  
	  if %spellprepping = "pv" then var casttarget
		if %spellprepping = "rend" then var casttarget %rendtarget
	}
  if %tmcast = 1 then
 	{
 	  var casttarget
 	  if $SpellTimer.AetherCloak.active = 1 then
	  {
	    var currentcyc 0
	    var nextcyc 0
	    put rel ac
	  }
	  if %spellprepping = "acs" then var casttarget
	  var deadcheck 1
	}
 	if %spellprepping = "etf" then var casttarget electricity
  if %spellprepping = "col" then
  {
    if $Time.isKatambaUp = 1 then var casttarget katamba
	  else
	  {
	    if $Time.isXibarUp = 1 then var casttarget xibar
	    else
	    {
	      if $Time.isYavashUp = 1 then var casttarget yavash
	      else var casttarget ambient
      }
    }
  }
  if %spellprepping = "hyh" then var casttarget %hyhcast
	if %spellprepping = "hw" then var casttarget chest  
	if %spellprepping = "iots" then
	{
	  gosub RELNSPELL iots
	  #echo %verena|%szeldia|%dawgolesh|%merewalda
	  if %verena = 1 then
	  {
	    var casttarget verena
	  }
	  else
	  {
	    if %szeldia = 1 then
	    {
	      var casttarget szeldia
	    }
	    else
	    {
	      if %dawgolesh = 1 then
	      {
	        var casttarget dawgolesh
	      }
	      else
	      {
	        if %merewalda = 1 then
	        {
	          var casttarget merewalda
	        }
	      }
	    }
	  }
	}
  matchre CASTP %waitstring
	matchre CASTCLEANUP You gesture.|You gesture at|You wave your hand|With a wave of your hand|You roll your hands in an elliptical|You clasp your hands together|You cup your hand before|You clap your hands once|Your spell|You press your fist|You reach with your fist toward the ground.|You speak a few words of righteousness|You whisper|Tendrils of flame|You make a holy gesture|You close your eyes and take several slow|You clench your hands into fists and grit your teeth|You don't think you can manage to ignite another weapon at the moment.|The flames dancing along your fingertips|Mentally steeling yourself in preparation for|You shudder involuntarily|You release an accompaniment of elemental|You thrust your (right|left) arm before you, fingers splayed\.|With a wave of your hand, your vitality is fully restored\.|You strike your heel against the ground|A sense of calm focus|Roundtime|Your heart skips a beat as your spell|You clench your fists, pressing your fingernails painfully into your flesh\.|You place your hands on your temples\.|You raise your fist toward the sun\.|You raise your hand in an imaginary toast to Glythtide\.|You drop briefly to one knee as you firmly press your palms into the ground\.|You steeple your fingers together to channel the spell's energies\.|You close your eyes and focus on the old hero, Lirisa\.|You swear|With a chirurgeon's care, you press your fingertips against the side of your neck\.
	matchre CASTBAD Currently lacking the skill|You don't have a spell prepared!|Your target pattern dissipates because|You can't cast that on anyone else!|You strain, but are too|The spell pattern resists the influx|I could not find what you were referring to.|You must specify one of the thirteen planets\.|The spell pattern resists the influx of .* mana and fails completely\.|You attempt to quiet your mind, focusing on your planar link\.|Steadying your breath, you briefly point one arm up and the other towards the ground, forming a conduit through your body\.
	#match CASTFACE You can't cast that at yourself!
	#matchre CASTLOOT is already dead, so that's a bit pointless.
	match CASTCLEANUP You can't cast that at yourself!
	matchre CASTCLEANUP is already dead, so that's a bit pointless.
	if %ctoverride = 1 then var casttarget %ctoverridevar
	if %omcast = 1 then put touch orb
	else put cast %casttarget
	matchwait 5
	var timeoutsub CAST
	if %omcast = 1 then var timeoutcommand touch orb
	else var timeoutcommand cast %casttarget
	goto TIMEOUT


CASTLOOT:
  gosub LOOT
  goto CAST
	
CASTBAD:
	if $preparedspell != "None" then gosub RELSPELL
  if (%harnmana > 0) then gosub RELMANA
	goto CASTRESET

CASTFACE:
  var castfacecheck 1
  gosub FACE
  if %badface = 1 then
  {
    var badface 0
    return
  }
  var castfacecheck 0
  goto CAST


CHARGE:
  if %cambmana = 0 then
  {
    var charged 1
    return
  }
  if %cambtapped > 0 then
  {
    if %t > %cambtapped then
    {
      goto CHARGELOOP
    }
    else return
  }
  #CAMBRINTH_DEVICE_SPLITTING
  if %cambmana > %totalcamb then var cambmana %totalcamb
  if %cambmana > %cambitem1mana then
  {
    var cambnumber 2
    var cambmodulus %cambmana
    math cambmodulus modulus 2
    var cambmana1 %cambmana
    math cambmana1 subtract %cambmodulus
    math cambmana1 divide 2
    var cambmana2 %cambmana1
    math cambmana1 add %cambmodulus
    var cambnumber 2
    if %cambmana1 > %cambitem1mana then
    {
      var cambmana1 %cambitem1mana
      var cambmana2 %cambmana
      math cambmana2 subtract %cambmana1
    }
    if %cambmana2 > %cambitem2mana then
    {
      var cambmana2 %cambitem2mana
      var cambmana1 %cambmana
      math cambmana1 subtract %cambmana2
    }  
  }
  else
  {
    var cambnumber 1
    var cambmana1 %cambmana
    var cambmana2 0
  }
  #echo cambmana1: %cambmana1
  #echo cambmana2: %cambmana2
  var cambnumbercount 1
  #echo cambnumber: %cambnumber
  gosub CHARGESPLIT
  var cambcount 1
  var splitcount 1
  var invokecount 1
  goto CHARGELOOP
  
CHARGESPLITLOOP:
  var cambsplitting %cambmana%cambnumbercount
  math cambsplitting divide %splitcounter
  if %cambsplitting <= %chargemax then
  {
    var cambitem%cambnumbercountsplit %splitcounter
    var cambitem%cambnumbercountmod %cambmana%cambnumbercount
    math cambitem%cambnumbercountmod modulus %splitcounter
    var camb%cambnumbercountsplit1 %cambmana%cambnumbercount
    math camb%cambnumbercountsplit1 subtract %cambitem%cambnumbercountmod
    math camb%cambnumbercountsplit1 divide %splitcounter
    #echo cambitem%cambnumbercountsplit: %cambitem%cambnumbercountsplit
    var splitcounter2 2
    var ctotal%cambnumbercount 0
    gosub CHARGESPLITLOOP2
    return
  }
  else
  {
    math splitcounter add 1
    goto CHARGESPLITLOOP
  }

CHARGESPLITLOOP2:
  if %splitcounter2 > %splitcounter then
  { 
    math camb%cambnumbercountsplit1 add %cambitem%cambnumbercountmod
    math ctotal%cambnumbercount add %camb%cambnumbercountsplit1
    #echo camb%cambnumbercountsplit1: %camb%cambnumbercountsplit1
    return
  }
  var camb%cambnumbercountsplit%splitcounter2 %camb%cambnumbercountsplit1
  math ctotal%cambnumbercount add %camb%cambnumbercountsplit%splitcounter2
  #echo camb%cambnumbercountsplit%splitcounter2: %camb%cambnumbercountsplit%splitcounter2
  math splitcounter2 add 1
  goto CHARGESPLITLOOP2
  

CHARGESPLIT:
  if %cambnumbercount > %cambnumber then return
  var cambitems %cambnumbercount
  if %cambmana%cambnumbercount > %chargemax then
  {
    var splitcounter 2
    gosub CHARGESPLITLOOP
  }
  else
  {
    var ctotal%cambnumbercount %cambmana%cambnumbercount
    var cambitem%cambnumbercountsplit 0
  }
  math cambnumbercount add 1
  goto CHARGESPLIT


CHARGELOOPP:
  pause
CHARGELOOP:
  if %cambcount > %cambitems then goto INVOKECAMB
  if %cambitem%cambcountsplit > 1 then
  {
    if %splitcount > %cambitem%cambcountsplit then
    {
      math cambcount add 1
      var splitcount 1
      goto CHARGELOOP
    }
  }
  if %cambitem%cambcountworn = "NO" then
  {
    if ((matchre ("$righthandnoun", "%cambitem%cambcount")) || (matchre ("$lefthandnoun", "%cambitem%cambcount"))) then
    else
    {
      gosub GETITEM %cambitem%cambcount
    }
  }
  var cambtapped 0
  matchre CHARGELOOPP %waitstring
  matchre CHARGESUCC You are able to channel|How much do you want to charge
  matchre CHARGEFAIL You fail to channel
  matchre CHARGEREM Try though you may|You'll have to hold it, set it
  matchre CHARGETAP You strain
  match CHARGEGET You'll have to hold it, set it on the ground, or put it on something first.
  #echo cambcount: %cambcount
  #echo splitcount: %splitcount
  if %cambitem%cambcountsplit > 1 then put charge my %cambitem%cambcount %camb%cambcountsplit%splitcount
  else put charge my %cambitem%cambcount %cambmana%cambcount
  matchwait 5
	var timeoutsub CHARGELOOP
	if %cambitem%cambcountsplit > 1 then var timeoutcommand charge my %cambitem%cambcount %camb%cambcountsplit%splitcount
  else var timeoutcommand charge my %cambitem%cambcount %cambmana%cambcount
	goto TIMEOUT

CHARGEGET:
  gosub GETITEM %cambitem%cambcount
  goto CHARGELOOP

CHARGEFAIL:
  put #echo Yellow Alarm: Attention Needed - Cambrinth amount is more than your skill can support!
  put #flash
  put #play Advance
  pause 5
  goto CHARGEFAIL

CHARGESUCC:
  if %cambitem%cambcountsplit > 1 then
  {
    math cambcharge add %camb%cambcount%splitcount
    math cambcharge%cambcount add %camb%cambcount%splitcount
    if %splitcount > %cambitem%cambcountsplit then
    {
      math cambcount add 1
      var splitcount 1
      if ((matchre ("$righthand", "%cambitem%cambcount")) || (matchre ("$lefthand", "%cambitem%cambcount"))) then
	    {
		    gosub STOWITEM %cambitem%cambcount
	    }
      #if %cambitem%cambcountworn = "NO" then
      #{
      #  gosub STOWITEM %cambitem%cambcount
      #}
    }
    else
    {
      math splitcount add 1
      goto CHARGELOOP
    }
  }
  else
  {
    if ((matchre ("$righthand", "%cambitem%cambcount")) || (matchre ("$lefthand", "%cambitem%cambcount"))) then
		{
			gosub STOWITEM %cambitem%cambcount
		}
    math cambcharge add %cambmana%cambcount
    math cambcharge%cambcount add %cambmana%cambcount
    math cambcount add 1
    var splitcount 1
  }
  goto CHARGELOOP

CHARGEREM:
  gosub REMITEM %cambitem%cambcount
  goto CHARGELOOP

CHARGESTOW:
  gosub STOWALL
  goto CAMBREM

CHARGETAP:
  var cambtapped %t
  math cambtapped add 5
  return


INVOKECAMBP:
  pause
INVOKECAMB:
	if %cambitem%invokecountworn = "NO" then
  {
    if ((matchre ("$righthandnoun", "%cambitem%invokecount")) || (matchre ("$lefthandnoun", "%cambitem%invokecount"))) then
    else
    {
      gosub GETITEM %cambitem%invokecount
    }
  }
	matchre INVOKECAMBP %waitstring
	matchre INVOKESUCC You reach for its center|Your link to|dim, almost magically null.
	matchre INVOKEREM Try though you may
	#echo ctotal%invokecount: %ctotal%invokecount
	if %dedicatedcambrinth != "YES" then put invoke %cambitem%invokecount %ctotal%invokecount
	else put invoke %cambitem%invokecount %ctotal%invokecount spell
	matchwait 5
	var timeoutsub INVOKECAMB
  if %dedicatedcambrinth != "YES" then var timeoutcommand invoke %cambitem%invokecount %ctotal%invokecount
	else var timeoutcommand invoke %cambitem%invokecount %ctotal%invokecount spell
	goto TIMEOUT

INVOKESUCC:
	if ((matchre ("$righthand", "%cambitem%invokecount")) || (matchre ("$lefthand", "%cambitem%invokecount"))) then
	{
		gosub STOWITEM %cambitem%invokecount
	}
  if %cambnumber > %invokecount then
  {
    math invokecount add 1
    goto INVOKECAMB
  }
  else
  {
    var charged 1
    RETURN
  }

INVOKEREM:
  gosub REMITEM %cambitem%invokecount
  goto INVOKECAMB


HARNESS:
  if %harnmana = 0 then
  {
    var harnessed 1
    return
  }
  if %harntapped > 0 then
  {
    if %t > %harntapped then
    {
      goto HARNLOOP
    }
    else return
  }
  if %harnmana > %harnessmax then
  {
    var hsplitcounter 1
    gosub HARNSPLITLOOP
  }
  else
  {
    var harnnumber 1
    var harnmana1 %harnmana
  }
  var harncount 1
  goto HARNLOOP

HARNSPLITLOOP:
  var harnsplitting %harnmana
  math harnsplitting divide %hsplitcounter
  if %harnsplitting <= %harnessmax then
  {
    var harnnumber %hsplitcounter
    var harnmanamod %harnmana
    math harnmanamod modulus %hsplitcounter
    var harnmana1 %harnmana
    math harnmana1 subtract %harnmanamod
    math harnmana1 divide %hsplitcounter
    var hsplitcounter2 2
    gosub HARNSPLITLOOP2
    return
  }
  else
  {
    math hsplitcounter add 1
    goto HARNSPLITLOOP
  }

HARNSPLITLOOP2:
  if %hsplitcounter2 > %hsplitcounter then
  { 
    math harnmana1 add %harnmanamod
    #echo Harnmana1: %harnmana1
    return
  }
  var harnmana%hsplitcounter2 %harnmana1
  #echo harnmana%hsplitcounter2: %harnmana%hsplitcounter2
  math hsplitcounter2 add 1
  goto HARNSPLITLOOP2

HARNLOOPP:
  pause 1
HARNLOOP:
  var harntapped 0
  if %harncount > %harnnumber then return
  matchre HARNLOOP %waitstring
  match HARNSUCC You tap into the mana
  match HARNTAP Strain though you may
  put harness %harnmana%harncount
  matchwait 5
	var timeoutsub HARNLOOP
  var timeoutcommand harness %harnmana%harncount
	goto TIMEOUT

HARNSUCC:
  var harnessed 1
  math harncount add 1
  goto HARNLOOP

HARNTAP:
  if %harnnumber >  1 then
  {
    if %harncount = 2 then 
    {
      #echo harnmana%harncount: %harnmana%harncount
      math harnmana subtract %harnmana%harncount
    }
    else var harnmana 0
    var harnessed 1
  }
  else
  {
    var harntapped %t
    math harntapped add 5
  }
  return


HARNESSSIMPLEP:
  pause
HARNESSSIMPLE:
  matchre HARNESSSIMPLEP %waitstring
  matchre RETURN Roundtime
  put harness %harnessamount
  matchwait


PERCP:
	pause
PERC:
	if (($guild = "Barbarian") || ($guild = "Thief")) then return
  matchre PERCP %waitstring
  matchre RETURN Roundtime:|You are a bit too busy performing to do that.|You aren't trained in the ways of magic.|Something in the area is interfering with your ability to perceive power\.
  put perceive
  matchwait 5
	var timeoutsub PERC
  var timeoutcommand perceive
	goto TIMEOUT

PERCMM:
	if (($guild = "Barbarian") || ($guild = "Thief")) then return
  matchre RETURN Roundtime:|You are a bit too busy performing to do that.
  matchre PERCP %waitstring
  put perceive mana 
	matchwait 5
	var timeoutsub PERCMM
  var timeoutcommand perceive mana
	goto TIMEOUT


PERCSELFP:
	pause
PERCSELF:
	if (($guild = "Barbarian") || ($guild = "Thief")) then return
  matchre PERCSELFP %waitstring
  matchre RETURN Roundtime:|You are a bit too busy performing to do that\.|You aren't trained in the ways of magic\.|A good positive attitude never hurts\.
  put perceive self
  put yes
  matchwait 5
	var timeoutsub PERCSELF
  var timeoutcommand perceive self
	goto TIMEOUT


PREPP:
	pause
PREP:
	var preptime %t
  var prepped 1
	var casting 1
	if %tattoocast = 1 then 
	{
	  gosub PREPTATTOO
	  if %tmcast = 1 then gosub RETARGET
    return
  }
  if %tmcast = 1 then
  {
    gosub PREPTAR
    return
  }
  gosub PREPSPELL
  return

PREPSPELLP:
  pause
PREPSPELL:
  matchre PREPSPELLP %waitstring
	matchre PREPBADHEAVYTM You are still too fatigued from your previous efforts to manifest another major feat of offensive magic.
	matchre RETURN You trace a|You raise your|You raise an|You begin chanting|With rigid|With meditative|With calm|With tense|You mutter|You briskly utter a few sharp words|Darkly gleaming motes of
	match RETURN As you attempt to prepare the spell, a sense of overwhelming peace washes over you.
	matchre RETURN You begin to hum|You begin your enchante|The first gentle notes|With a sharp cut to your voice|Low, hummed tones form|You begin to chant a mesmerizing|With a resounding "POP"|You begin to sing, a gentle|Wrapped in winter|You weave a soft|Slow, rich tones|Though softly humming|In a low tone you|The wailing of lost souls|Turning your focus solemnly inward|You hear the slow, rich tones of|as you trace your finger along mana|Images of streaking stars falling from the heavens flash across your vision|With great force, you slap your hands together|You direct your attention toward the heavens|You whistle an intricate sequence|A radiant glow wreathes your hands|A strong wind swirls around you|Glowing geometric patterns arc between|Light withdraws from around you|Calmly reaching out with one hand,|In one fluid motion, you bring your palms|You start frantically flailing your hands|Shadow and light collide wildly around|You gaze skyward and trace the planetary|You spin about wildly, whirling around with a feral|Throwing your head back, you release a savage roar|You gaze at your hands, touching your thumb to each|Accompanied with a flash of light, you clap your hands|Droplets of water coalesce around your fingertips|Turning your head slightly and gazing directly|Inhaling deeply, you adopt a cyclical rhythm in your breaths|You clasp your silvery-white flame shrouded hands together|Focusing intently, you slice seven straight lines through|You exhale softly, your breath flowing into a shimmering cloud|You inhale sharply, invoking the
	matchre SPELLCANCEL you're already preparing|You have already fully prepared|You are already preparing
	match SPELLCANCEL Something in the area interferes with your spell preparations.
	match PREPPLAYING You should stop playing before you do that.
	match PREPBADUNKNOWN You have no idea how to cast that spell.
	if %prepmana != 0 then var prepstring %spellprepping %prepmana
	else var prepstring %spellprepping
	put prep %prepstring
	matchwait 5
	var timeoutsub PREPSPELL
  var timeoutcommand prep %prepstring
	goto TIMEOUT

PREPREL:
  gosub RELSPELL
  goto PREP

PREPPLAYING:
  gosub PLAYSTOP
  goto PREP

PREPBADHEAVYTM:
  gosub RELSPELL
  gosub CASTRESET
  return

PREPBADUNKNOWN:
  if ("%bugout" = "YES") then
  {
    put #echo %alertwindow [Magic] Tried to prep a spell you don't know!  Bugging out.
    put #flash
    put #play JustArrived
    goto BUGOUT
  }
  else
  {
    put #echo %alertwindow [Magic] Tried to prep a spell you don't know!
    put #flash
    put #play JustArrived
    goto PREPBADUNKNOWN2
  }

PREPBADUNKNOWN2:
  echo ===PREPPING A SPELL YOU DON'T KNOW===
  put #flash
  put #play Advance
  pause 5
  goto PREPBADUNKNOWN2
  

INVOKETATTOOP:
  pause
INVOKETATTOO:
  matchre INVOKETATTOOP %waitstring
  match RETURN You brace yourself as you activate your tattoo and feel empowered, as its magic washes over you.
  match RETURN You brace yourself as you activate your tattoo, but nothing happens.  Its magic appears depleted.
  match return You brace yourself as you activate your tattoo, but nothing happens as you're already under a heroic effect.
  put invoke tattoo
  matchwait 5
	var timeoutsub INVOKETATTOO
  var timeoutcommand invoke tattoo
	goto TIMEOUT


PREPTATTOOP:
  pause
PREPTATTOO:
  matchre PREPTATTOOP %waitstring
  matchre RETURN Closing your eyes, you carefully bend some mana streams
  matchre PREPTATTOOBAD Invoke what?
  matchre PREPTATTOOUNHIDE You cannot use the tattoo while maintaining the effort to stay hidden.
  put invoke tattoo
	matchwait 5
	var timeoutsub PREPTATTOO
  var timeoutcommand invoke tattoo
	goto TIMEOUT
  
PREPTATTOOUNHIDE:
  gosub UNHIDE
  goto PREPTATTOO

PREPTATTOOBAD:
  put #echo %alertwindow [Magic] Tried to invoke a tattoo, but did not have one!  Turning off variable.
  var tattoobuff NO
  put #var tattoobuff NO
  return


PREPTARP:
	pause
PREPTAR:
	#var cambcharge 0
  matchre SPELLCANCEL You are not engaged to anything, so you must specify a target to focus on!|You cannot target
	matchre RETURN You begin to weave mana lines into
	matchre PREPTARREL you're already preparing|You have already fully prepared|You are already preparing
	matchre SPELLCANCEL Something in the area interferes with your spell preparations.
	matchre PREPTARP %waitstring
  if %ctoverride = 1 then var targetstring %spellprepping %prepmana %ctoverridevar
  else var targetstring %spellprepping %prepmana
	put target %targetstring
	matchwait 5
	var timeoutsub PREPTAR
  var timeoutcommand target
	goto TIMEOUT

PREPTARREL:
  gosub RELSPELL
  goto PREPTAR


RESEARCHSTATUSP:
  pause
RESEARCHSTATUS:
  matchre RESEARCHSTATUSP ...wait|type ahead|stunned|while entangled in a web.
  matchre RETURN You're not researching anything!|You believe that|You have completed
  put research status
  matchwait 5
  var timeoutsub RESEARCHSTATUS
  var timeoutcommand research status
	goto TIMEOUT



RESEARCH:
  var researchstring $1
  goto RESEARCHMAIN
RESEARCHP:
  pause
RESEARCHMAIN:
  var researching 1
  var rprojectactive 1
  matchre RESEARCHP ...wait|type ahead|stunned|while entangled in a web.
	matchre RESEARCHMAIN there is still more to learn
	match RESEARCHREL You realize that your prepared spell would interfere with your magical research.
	matchre RETURN You tentatively reach out and begin|You are already busy at research!|You confidently begin|You require some special means of|You begin to bend the mana streams|With some trepidation, you begin to push the mana streams
	put research %researchstring 300
	matchwait 5
  var timeoutsub RESEARCHMAIN
  var timeoutcommand research %researchstring 300
	goto TIMEOUT

RESEARCHREL:
  gosub RELSPELL
  goto RESEARCHMAIN


RETARGETP:
  pause
RETARGET:
  matchre RETARGETP %waitstring
  matchre RETARGETP Your desire to prepare this offensive spell suddenly slips away.
  matchre SPELLCANCEL You are not engaged to anything, so you must specify a target to focus on!|You must be preparing a spell in order to target it!
  matchre RETURN You begin to weave mana lines into|Your target pattern is already around|You cannot target|You are already preparing an area target pattern!
  put target
  matchwait 5
	var timeoutsub RETARGET
  var timeoutcommand target
	goto TIMEOUT


PREPSYMBIOSISP:
  pause
PREPSYMBIOSIS:
  matchre PREPSYMBIOSISP %waitstring
  matchre RETURN But you've already prepared the|You recall the exact details of the 
  put prepare symbiosis
  matchwait 5
	var timeoutsub PREPSYMBIOSIS
  var timeoutcommand preparesymbiosis
	goto TIMEOUT


RELALLP:
	pause
RELALL:
  if (($guild = "Barbarian") || ($guild = "Thief")) then return
	var nextcyc 0
	var currentcyc 0
	gosub CASTRESET
	matchre RELALLP %waitstring
	matchre RETURN You let your concentration|You aren't preparing a spell.|You aren't harnessing any mana.|You have no cyclic spell active to release.
	put release all
	matchwait 5
	var timeoutsub RELALL
  var timeoutcommand release all
	goto TIMEOUT


RELINVIS:
  if $SpellTimer.KhriSilence.active = 1 then gosub KHRISTOP silence
  if $SpellTimer.KhriVanish.active = 1 then gosub KHRISTOP vanish
  if $SpellTimer.StepsofVuan.active = 1 then gosub RELNSPELL sov
  if $SpellTimer.RefractiveField.active = 1 then gosub RELNSPELL rf
  if $SpellTimer.EyesoftheBlind.active = 1 then gosub RELNSPELL eotb
  return


RELMANAP:
	pause
RELMANA:
	matchre RELMANAP %waitstring
	matchre RETURN You release all the streams|You aren't harnessing any mana\.|You release your connection
	put release mana
  matchwait 5
	var timeoutsub RELMANA
  var timeoutcommand release mana
	goto TIMEOUT


RELNSPELL:
  var relnspellstring $0
  goto RELNSPELLMAIN
RELNSPELLP:
  pause
RELNSPELLMAIN:
	matchre RELNSPELLP %waitstring
  matchre RETURN Your body is no longer imbued with Fire\.|The Earth energy flows from your body, returning to its rightful place in the ground beneath your feet\.|You feel the energy of|The warm feeling in your hand goes away\.|The refractive field surrounding you fades away.|Your corruption fades, revealing you to the world once more\.|Release what?|An unpleasant sensation jolts through your body as your synthetic reinforcement becomes unthreaded, leaving you feeling weakened as well as slower\.
  put release %relnspellstring
  matchwait 5
	var timeoutsub RELNSPELL
  var timeoutcommand release %relnspellstring
	goto TIMEOUT


RELSPELLP:
	pause
RELSPELL:
	matchre RELSPELLP %waitstring
	matchre RETURN You let your concentration|You aren't preparing a spell.
	put release spell
	matchwait 5
	var timeoutsub RELSPELL
  var timeoutcommand release spell
	goto TIMEOUT


RELCYCLICP:
	pause
RELCYCLIC:
  #put #echo Yellow Release cyclic.
	if ("$guild" = "Barbarian") then return
	if ("$guild" = "Thief") then return
	if ("$guild" = "Necromancer") then
	{
	  if ((%necrosafety = "YES") && ((%riteofgrace = "YES")) then
	  {
	    if $SpellTimer.RiteofGrace.active = 1 then
	    {
	      if %releaserog != 1 then return
	    }
	  }
	}
	var nextcyc 0
	var currentcyc 0
	matchre RELCYCLICP %waitstring
	match RETURN You have no cyclic spell active to release.
  put release cyclic
	matchwait .5
	goto RELCYCLIC2

RELCYCLIC2P:
	pause
RELCYCLIC2:
	matchre RELCYCLIC2P %waitstring
	match RETURN You have no cyclic spell active to release.
	put release cyclic
	matchwait 2
	return


RELSYMBIOSISP:
  pause
RELSYMBIOSIS:
  matchre RELSYMBIOSISP %waitstring
  matchre RETURN But you haven't prepared a symbiosis!|You pause for a moment|Are you sure you'd lke to remove the
  put release symbiosis
  matchwait 5
	var timeoutsub RELSYMBIOSIS
  var timeoutcommand release symbiosis
	goto TIMEOUT


RITUAL:
  gosub STOWALL
  gosub GETITEM %ritualfocus
  gosub RITUALINVOKE
  gosub STOWALL
  return

RITUALINVOKEP:
  pause
RITUALINVOKE:
  var invoked 1
  matchre RITUALINVOKEP %waitstring
  matchre RETURN You must begin preparing a ritual spell|You make sweeping gestures|Invoke what?|toward the sky and will the mana streams|toward the ceiling and will the mana streams|Kneeling down, you draw|reverently above your head and steadily harness mana streams through it.
  matchre RITUALINVOKESTOW You must be able to handle your .* with both hands to use it for a ritual\.
  matchre RITUALINVIS Magical rituals are exceedingly obvious.  You cannot do it while remaining hidden.
  put invoke %ritualfocus
  matchwait 5
	var timeoutsub RITUALINVOKE
  var timeoutcommand invoke %ritualfocus
	goto TIMEOUT

RITUALINVOKESTOW:
  gosub STOW left
  goto RITUALINVOKE

RITUALINVIS:
  gosub RELINVIS
  goto RITUALINVOKE


TMFOCUSINVOKEP:
  pause
TMFOCUSINVOKE:
  matchre TMFOCUSINVOKEP %waitstring
  matchre RETURN Roundtime:|Invoke what?|
  put invoke %tmfocusitem
  matchwait 5
	var timeoutsub TMFOCUSINVOKE
  var timeoutcommand invoke %tmfocusitem
	goto TIMEOUT


WANDINVOKE:
  var wandinvokestring $0
  goto WANDINVOKEMAIN
WANDINVOKEP:
  pause
WANDINVOKEMAIN:
  var wandinvokegood 1
  matchre WANDINVOKEP %waitstring
  matchre RETURN The world around you seems to slow as the spell grips your mind\.|The spell pulses through your soul, rekindling your holy rage\.|Mentally steeling yourself in preparation for the unnatural action|A glistening net of coiling tendrils|Your blood rises as images of ferocious battles play across your mind\.  You feel the fervor of combat grip you\.|You harness the currents of air and channel them around yourself\.|The overwhelming sense of unity with your hidden brothers and sisters sharpens your intuition, kin and prey alike\.|Your blood begins to boil and with a mighty shout you allow the rage within to flow outward for all to see\.|^You feel the strange aliveness in your limbs renew itself\.
  match WANDINVOKESTOW You must be able to handle your disc with both hands to use it for a ritual.
  matchre WANDINVOKEBAD ^The \w+ remains inert\.
  match RETURN You are in no condition to do that.
  put invoke my %wandinvokestring
  matchwait 5
	var timeoutsub WANDINVOKE
  var timeoutcommand invoke my %wandinvokestring
	goto TIMEOUT

WANDINVOKEBAD:
  var wandinvokegood 0
  return

WANDINVOKESTOW:
  gosub STOWALL
  gosub GETITEM %wandinvokestring
  goto WANDINVOKE



#####UPKEEP_SUBS#####


BUNDLEROPEGETLOOP:
  gosub ROPEASK
  gosub STOWALL
  math ropestoget subtract 1
  if %ropestoget < 1 then return
  else goto BUNDLEROPEGETLOOP


BUYLOOP:
  if %buyloopcount > %buylooptotal then RETURN
  gosub ORDER
  pause 1
  gosub PAY
  gosub STOWITEM %buytarget
  math buyloopcount add 1
  goto BUYLOOP


ENTERVAULTP:
  pause
ENTERVAULT:
  #if ($zoneid = 67) then move go door
  matchre ENTERVAULTP %waitstring
  matchre ENTERVAULTNONE The attendant says, "Hey bub, are you lost?|The attendant says, "Hey lady, are you lost?
  matchre ENTERVAULTPAY The Dwarven attendant grabs you by the wrist\.|The attendant catches your arm and says,
  matchre ENTERVAULTOPEN The attendant opens a small panel and fiddles with some controls
  matchre ENTERVAULT2 The attendant steps in front of
  match ENTERVAULTPAUSE The attendant grabs your arm and halts you.  "You ain't going in there,
  put go arch
  matchwait 5
	var timeoutsub ENTERVAULT
  var timeoutcommand go arch
	goto TIMEOUT
  
ENTERVAULT2:
  matchre ENTERVAULT3 The attendant steps in front of
  matchre ENTERVAULTOPEN The attendant opens a small panel and fiddles with some controls
  put go second arch
  matchwait 5
	var timeoutsub ENTERVAULT2
  var timeoutcommand go second arch
	goto TIMEOUT
  
ENTERVAULT3:
  matchre ENTERVAULT4 The attendant steps in front of
  matchre ENTERVAULTOPEN The attendant opens a small panel and fiddles with some controls
  put go third arch
  matchwait 5
	var timeoutsub ENTERVAULT3
  var timeoutcommand go third arch
	goto TIMEOUT

ENTERVAULT4:
  matchre RETURN The attendant steps in front of
  matchre ENTERVAULTOPEN The attendant opens a small panel and fiddles with some controls
  put go fourth arch
  matchwait 5
	var timeoutsub ENTERVAULT4
  var timeoutcommand go fourth arch
	goto TIMEOUT
 
ENTERVAULTPAUSE:
  pause 10
  goto ENTERVAULT 
 
ENTERVAULTNONE:
  if (("%vaultmove" = "YES") && ("%vaulttown" = "%townname")) then
  {
    move go desk
    put ring bell
    pause .5
    move out
    waitfor A young Dwarf trots up to you and says,
    goto ENTERVAULT
  }
  else
  { 
    return
  }
  
ENTERVAULTPAY:
  move go desk
  put pay 5000
  pause .5
  move out
  goto ENTERVAULT
 
ENTERVAULTOPEN:
  var vaultsuccess 1
  put pull lever
  pause .5
  move go door
  put open vault
  return
  
  
EXCHANGEP:
  pause
EXCHANGE:
  matchre EXCHANGEP %waitstring
  matchre RETURN You hand your|You don't have that many|You count|One of the guards mutters|The money-changer says crossly
  put exchange %examount to %excurrency
  matchwait 5
	var timeoutsub EXCHANGE
  var timeoutcommand exchange %examount to %excurrency
	goto TIMEOUT
  
  
EXITVAULT:
  put close vault
  pause .5
  move go door
  move go arch
  move out
  if ($zoneid = 1) then
  {
    move out
  }
  if ($zoneid = 67) then
  {
    move out
    move east
    put #mapper reset
  }
  return


GEMPOUCHGETLOOP:
  gosub GEMPOUCHASK
  gosub STOWALL
  math pouchestoget subtract 1
  if %pouchestoget < 1 then return
  else goto GEMPOUCHGETLOOP

GEMPOUCHASKP:
  pause
GEMPOUCHASK:
  if $zoneid = 150 then
  {
    if matchre("$roomobjs" "gemsmith") then var actualappraiser gemsmith
    else
    {
      if matchre("$roomobjs" "Wickett") then var actualappraiser Wickett
      else
      {
        if matchre("$roomobjs" "gembuyer") then var actualappraiser gembuyer
        else
        {
          if matchre("$roomobjs" "clerk") then var actualappraiser clerk
          else
          {
            if matchre("$roomobjs" "attendant") then var actualappraiser attendant
            else
            {
              echo Waiting for Wickett, gemsmith, gembuyer, clerk, or attendant.
              pause 60
              goto GEMPOUCHASK
            }
          }
        }
      }
    }
  }
  else var actualappraiser %appraiser
  matchre GEMPOUCHASKP %waitstring
  matchre GEMPOUCHASKGOOD hands you (a|an) (\S+) gem pouch\.
  matchre RETURN Usage: ASK|"All I know about are skins 
  put ask %actualappraiser for gem pouch
  matchwait 5
  var timeoutsub GEMPOUCHASK
  var timeoutcommand var actualappraiser %appraiser
	goto TIMEOUT
  
GEMPOUCHASKGOOD:
  var didgetpouch 1
  return


ORDERP:
  pause
ORDER:
  matchre ORDERP ...wait|type ahead|stunned|while entangled in a web.
  matchre RETURN Brother Durantine nods slowly|Friar Othorp grins broadly|Sister Nongwen smiles and nods|Sister Imadrail smiles and nods
  put order %buytarget
  matchwait 5
	var timeoutsub order
  var timeoutcommand order %buytarget
	goto TIMEOUT


PAYP:
  pause
PAY:
  matchre PAYP ...wait|type ahead|stunned|while entangled in a web.
  matchre RETURN Durantine waves a small censer|Othorp prays over your purchase|Sister Nongwen carefully|Sister Imadrail reverently
  put offer %cost
  matchwait 5
	var timeoutsub PAY
  var timeoutcommand offer %cost
	goto TIMEOUT
	
	
ROPEASKP:
  pause
ROPEASK:
  matchre ROPEASKP %waitstring
  matchre ROPEASKGOOD hands you a rope\.|hands you some bundling rope
  matchre ROPEASKSTOW Your hands are full
  matchre RETURN Usage: ASK|"All I know about are skins 
  put ask %furrier for bundling rope
  matchwait 5
	var timeoutsub ROPEASK
  var timeoutcommand ask %furrier for bundling rope
	goto TIMEOUT

ROPEASKSTOW:
  gosub STOWALL
  goto ROPEASK

ROPEASKGOOD:
  var didgetrope 1
  return


TITHE:
echo 0: $0
echo 1: $1
echo 2: $2
  var tithecurrency $1
  var tithebox $2
  goto TITHEMAIN
TITHEP:
  pause
TITHEMAIN:
  var tithegood 0
  matchre TITHEP %waitstring
  matchre TITHEGOOD A warm, soothing sensation washes over your soul.
  match RETURN A good positive attitude never hurts.
  put put 5 silver %tithecurrency in %tithebox
  put yes
  matchwait 5
	var timeoutsub TITHE
  var timeoutcommand put 5 silver %tithecurrency in %tithebox
	goto TIMEOUT
  
TITHEGOOD:
  var tithesuccess 1
  return
  
  
WEALTHCHECK:
  var copperkro 0
  var bronzekro 0
  var silverkro 0
  var goldkro 0
  var platinumkro 0
  var copperlir 0
  var bronzelir 0
  var silverlir 0
  var goldlir 0
  var platinumlir 0
  var copperdok 0
  var bronzedok 0
  var silverdok 0
  var golddok 0
  var platinumdok 0

  action (wealth) var copperkro $1; var totalkro $2 when .+ (\d+) copper Kronars \((\d+) copper Kronars\).
  action (wealth) var bronzekro $1; var totalkro $2 when .+ (\d+) bronze.+Kronars \((\d+) copper Kronars\).
  action (wealth) var silverkro $1; var totalkro $2 when .+ (\d+) silver.+Kronars \((\d+) copper Kronars\).
  action (wealth) var goldkro $1; var totalkro $2 when .+ (\d+) gold.+Kronars \((\d+) copper Kronars\).
  action (wealth) var platkro $1; var totalkro $2 when .+ (\d+) platinum.+Kronars \((\d+) copper Kronars\).
  action (wealth) var copperlir $1; var totallir $2 when .+ (\d+) copper Lirums \((\d+) copper Lirums\).
  action (wealth) var bronzelir $1; var totallir $2 when .+ (\d+) bronze.+Lirums \((\d+) copper Lirums\).
  action (wealth) var silverlir $1; var totallir $2 when .+ (\d+) silver.+Lirums \((\d+) copper Lirums\).
  action (wealth) var goldlir $1; var totallir $2 when .+ (\d+) gold.+Lirums \((\d+) copper Lirums\).
  action (wealth) var platlir $1; var totallir $2 when .+ (\d+) platinum.+Lirums \((\d+) copper Lirums\).
  action (wealth) var copperdok $1; var totaldok $2 when .+ (\d+) copper Dokoras \((\d+) copper Dokoras\).
  action (wealth) var bronzedok $1; var totaldok $2 when .+ (\d+) bronze.+Dokoras \((\d+) copper Dokoras\).
  action (wealth) var silverdok $1; var totaldok $2 when .+ (\d+) silver.+Dokoras \((\d+) copper Dokoras\).
  action (wealth) var golddok $1; var totaldok $2 when .+ (\d+) gold.+Dokoras \((\d+) copper Dokoras\).
  action (wealth) var platdok $1; var totaldok $2 when .+ (\d+) platinum.+Dokoras \((\d+) copper Dokoras\).
  put wealth
  pause 1
  action (wealth) off
  return



#####TREASURE_SUBS#####


ARRANGEP:
	pause
ARRANGE:
  #pause 1
	if %arrcount < 1 then return
  matchre RETURN You complete|That has already been arranged as much as you can manage.
  match ARRANGENOSKIN That creature cannot produce skins.
  matchre ARRANGEP %waitstring
  matchre ARRANGESUB You begin to arrange|You make a mistake in the|You continue arranging
  matchre ARRANGEBADSKIN You work at|Arrange what\?|You make a serious mistake|has already been skinned\.|cannot be skinned\, so you can't arrange|currently being arranged to produce a skin\,  and cannot be changed\.
  put arrange %arrangetype
  matchwait 5
	var timeoutsub ARRANGE
  var timeoutcommand arrange %arrangetype
	goto TIMEOUT
	
ARRANGESUB:
  math arrcount subtract 1
  goto ARRANGE

ARRANGENOSKIN:
  var arrangetype
  goto ARRANGE

ARRANGEBADSKIN:
  var badskin 1
  return


BUNDLEADJUSTP:
  pause
BUNDLEADJUST:
  matchre BUNDLEADJUSTP %waitstring 
  matchre RETURN You adjust your tight bundle so that you can more easily
  matchre BUNDLEADJUST You adjust your tight bundle to make it neat and compact
  put adjust my bundle
  matchwait 5
	var timeoutsub BUNDLEADJUST
  var timeoutcommand adjust my bundle
	goto TIMEOUT
	

BUNDLEMAKEP:
	pause
BUNDLEMAKE:
  gosub GETITEM bundling rope
  pause 2
  if ((matchre("$righthandnoun", "rope")) || (matchre("$lefthandnoun", "rope"))) then
  {
	  matchre BUNDLEMAKEP %waitstring 
	  match RETURN You bundle up
	  matchre BUNDLEBAD That's not going to work.|What were you referring to?
	  put bundle
	  matchwait 5
    var timeoutsub BUNDLEMAKE
    var timeoutcommand bundle
    goto TIMEOUT
	}
	else goto BUNDLEMAKENOROPE
	
BUNDLEBAD:
  gosub STOWALL
  return

BUNDLEMAKENOROPE:
  gosub DEEPSLEEP
  put #echo >$alertwindow Yellow Out of bundling ropes!  Please address!
  put #flash
  put #play Advance
  if (%bugout = "YES") then goto BUGOUT
  else goto BUNDLEMAKENOROPE2

BUNDLEMAKENOROPE2:
  echo ===OUT OF BUNDLING ROPES===
  put #flash
  put #play Advance
  pause 5
  goto BUNDLEMAKENOROPE2
  

BUNDLESWAP:
  if %dropskins = "YES" then
  {
    if %hand = "left" then gosub DUMPITEM $righthandnoun
    else gosub DUMPITEM $lefthandnoun
    return
  }
  if tolower("%weapon%currentweapon") != "brawl" then 
  {
    if %hand = "left" then 
    {
      if ("$lefthand" != "Empty") then
      {
        gosub STOW left
      }
    }
    else 
    {
      if ("$righthand" != "Empty") then
      {
        gosub STOW right
      }
    }
  }
  return  
  
  
BUNDLETIEP:
  pause
BUNDLETIE:
  matchre BUNDLETIEP 	%waitstring
  matchre BUNDLETIE Once you've tied off your bundle
  matchre RETURN Using the length of the rope|But this bundle has already been tied off!|Tie what?
  #matchre BUNDLEMAKE Tie what?
  put tie my bundle
  matchwait 5
	var timeoutsub BUNDLETIE
  var timeoutcommand tie my bundle
	goto TIMEOUT


COINGET:
  if !matchre ("$roomobjs", "(coin|coins)") then return
  gosub GETITEM coin
  goto COINGET


DISSECTP:
  pause
DISSECT:
  matchre DISSECTP %waitstring
  matchre RETURN Roundtime:|What exactly are you trying to dissect\?|The corpse has been defiled already\.|Perhaps the \w+ \w+ should be left alone\.
  match DISSECTSTOW You need at least one free hand for that!
  match DISSECTBADU That'd be a waste of time.  The rotted remains of the unliving are a poor study of how a body functions when alive.
  match DISSECTBAD You do not yet possess the knowledge required to perform this task.
  put dissect
  matchwait 5
	var timeoutsub DISSECT
  var timeoutcommand dissect
	goto TIMEOUT

DISSECTSTOW:
  gosub STOW left
  goto DISSECT

DISSECTBADU:
  put #echo >$alertwindow Yellow Attempted to dissect an undead creature.  Dissect should not be turned on in this hunting area!  Turning it off.
  var dissect NO
  put #var dissect NO
  put #var save
  return

DISSECTBAD:
  put #echo >$alertwindow Yellow You're not skilled enough to dissect!  Turning it off.
  var dissect NO
  return

COUNTITEM:
  var countitemstring $0
  goto COUNTITEMMAIN
COUNTITEMP:
  pause
COUNTITEMMAIN:
  matchre COUNTITEMP %waitstring
  matchre COUNTITEMGOOD You count .* (?:in|on) the \w+ and see there (?:are|is) (.*) left\.
  matchre COUNTITEMGOOD You count .* and see there (?:are|is) (.*) left\. 
  match COUNTITEMBAD I could not find what you were referring to.
  put count %countitemstring
  matchwait 5
	var timeoutsub COUNTITEMMAIN
  var timeoutcommand count %countitemstring
	goto TIMEOUT

COUNTITEMGOOD:
  #echo 0: $0
  #echo 1: $1
  var countitemlist $1
  eval countitemlist replace("%countitemlist", "-", "|")
  eval countitemlist replace("%countitemlist", " hundred", "-hundred")
  eval countitemlist replace("%countitemlist", " ", "|")
  eval countitemlist replace("%countitemlist", "-hundred", " hundred")
  #echo countitemlist: %countitemlist
  gosub WORDTONUMLOOP %countitemlist
  #echo wordtonumtotal: %wordtonumtotal
  var countitemtotal %wordtonumtotal
  return

COUNTITEMBAD:
  var countitemtotal 0
  return

COUNTCONTAINERAMMO:
  var countcontainerstring $0
  goto COUNTCONTAINERAMMOMAIN
COUNTCONTAINERAMMOP:
  pause
COUNTCONTAINERAMMOMAIN:
  matchre COUNTCONTAINERAMMOP %waitstring
  match RETURN You count up the items in your
  put count %countcontainerstring
  matchwait 5
  var timeoutsub COUNTCONTAINERAMMO
  var timeoutcommand count %countcontainerstring
	goto TIMEOUT


CONVERTANDADD:
  if (%%ammotypecountloop > %%ammotypetriggerlistcount) then return
  var countitemlist %%ammotypetriggerlist(%%ammotypecountloop)
  eval countitemlist replace("%countitemlist", "-", "|")
  eval countitemlist replace("%countitemlist", " hundred", "-hundred")
  eval countitemlist replace("%countitemlist", " ", "|")
  eval countitemlist replace("%countitemlist", "-hundred", " hundred")
  gosub WORDTONUMLOOP %countitemlist
  math %ammotypetotalcount add %wordtonumtotal
  math %ammotypecountloop add 1
  goto CONVERTANDADD


WORDTONUMLOOP:
  var wordnumindex 0
  eval wordtonumcount count("$0", "|")
  var wordtonumlist $0
  var wordtonumtotal 0
WORDTONUMMAIN:
  if %wordnumindex > %wordtonumcount then return
  var wordnumber 0
  gosub WORDTONUMBER %wordtonumlist(%wordnumindex)
  math wordtonumtotal add %wordnumber
  if %wordnumber != 0 then
  {
		#if %wordnumindex = 0 then var wordnumstring %wordnumber
		#else var wordnumstring %wordnumstring|%wordnumber
  }
  else
  {
    #if %wordnumindex = 0 then var wordnumstring %wordtonumlist(%wordnumindex)
		#else var wordnumstring %wordnumstring|%wordtonumlist(%wordnumindex)
  }
  math wordnumindex add 1 
  goto WORDTONUMMAIN

WORDTONUMBER:
  if $0 = "one" then var wordnumber 1
  if $0 = "two" then var wordnumber 2
  if $0 = "three" then var wordnumber 3
  if $0 = "four" then var wordnumber 4
  if $0 = "five" then var wordnumber 5
  if $0 = "six" then var wordnumber 6
  if $0 = "seven" then var wordnumber 7
  if $0 = "eight" then var wordnumber 8
  if $0 = "nine" then var wordnumber 9
  if $0 = "ten" then var wordnumber 10
  if $0 = "eleven" then var wordnumber 11
  if $0 = "twelve" then var wordnumber 12
  if $0 = "thirteen" then var wordnumber 13
  if $0 = "fourteen" then var wordnumber 14
  if $0 = "fifteen" then var wordnumber 15
  if $0 = "sixteen" then var wordnumber 16
  if $0 = "seventeen" then var wordnumber 17
  if $0 = "eighteen" then var wordnumber 18
  if $0 = "nineteen" then var wordnumber 19
  if $0 = "twenty" then var wordnumber 20
  if $0 = "thirty" then var wordnumber 30
  if $0 = "forty" then var wordnumber 40
  if $0 = "fifty" then var wordnumber 50
  if $0 = "sixty" then var wordnumber 60
  if $0 = "seventy" then var wordnumber 70
  if $0 = "eighty" then var wordnumber 80
  if $0 = "ninety" then var wordnumber 90
  if $0 = "one hundred" then var wordnumber 100
  if $0 = "two hundred" then var wordnumber 200
  if $0 = "three hundred" then var wordnumber 300
  if $0 = "four hundred" then var wordnumber 400
  if $0 = "five hundred" then var wordnumber 500
  if $0 = "six hundred" then var wordnumber 600
  if $0 = "seven hundred" then var wordnumber 700
  if $0 = "eight hundred" then var wordnumber 800
  if $0 = "nine hundred" then var wordnumber 900
  return
  
  
GEMPOUCHCOUNT:
  math pouchcount add 1
  if %pouchcount > 11 then return
  gosub NUMBERTOWORD
  gosub GEMPOUCHLOOK
  if %pouchfull = 0 then
  {
    math gempouchesnum add 1
  }
  if %pouchfull = -1 then
  {
    var pouchcount 12
    return
  }
  goto GEMPOUCHCOUNT


GEMFINDEMPTYPOUCH:
  math pouchcount add 1
  if %pouchcount > 11 then return
  gosub NUMBERTOWORD
  gosub GEMPOUCHLOOK
  if %pouchfull = 0 then return
  if %pouchfull = 12 then
  {
    var pouchcount -1
    return
  }
  goto GEMFINDEMPTYPOUCH


GEMFINDFULLPOUCH:
  math pouchcount add 1
  if %pouchcount > 11 then return
  gosub NUMBERTOWORD
  gosub GEMPOUCHLOOK
  if %pouchfull = 1 then return
  if %pouchfull = -1 then
  {
    var pouchcount 12
    return
  }
  goto GEMFINDFULLPOUCH

NUMBERTOWORD:
  if %pouchcount = 1 then var pouchnum first
  if %pouchcount = 2 then var pouchnum second
  if %pouchcount = 3 then var pouchnum third
  if %pouchcount = 4 then var pouchnum fourth
  if %pouchcount = 5 then var pouchnum fifth
  if %pouchcount = 6 then var pouchnum sixth
  if %pouchcount = 7 then var pouchnum seventh
  if %pouchcount = 8 then var pouchnum eighth
  if %pouchcount = 9 then var pouchnum ninth
  if %pouchcount = 10 then var pouchnum tenth
  if %pouchcount = 11 then var pouchnum eleventh
  return


GEMPOUCHLOOKP:
  pause
GEMPOUCHLOOK:
  matchre GEMPOUCHLOOKP %waitstring
  match GEMPOUCHLOOKNONE I could not find what you were referring to.
  match GEMPOUCHLOOKFULL You sort through the contents of the gem pouch and find 500 gems in it.  It is tied.
  matchre GEMPOUCHLOOKEMPTY You sort through the contents of the gem pouch and find (([1-9]|[1-9][0-9]|[1-4][0-9][0-9])) (gems|gem) in it\.
  match GEMPOUCHLOOKEMPTY The gem pouch is empty.
  put count %pouchnum gem pouch in %storage
  matchwait 5
	var timeoutsub GEMPOUCHLOOK
  var timeoutcommand count %pouchnum gem pouch in %storage
	goto TIMEOUT

GEMPOUCHLOOKNONE:
  var pouchfull -1
  return

GEMPOUCHLOOKFULL:
  var pouchfull 1
  echo Full pouch!
  return
  
GEMPOUCHLOOKEMPTY:
  var pouchfull 0
  echo Empty pouch!
  return

GEMPOUCHNONE:
  gosub DEEPSLEEP
  put #echo >$alertwindow Yellow Out of gem pouches!  Please address!
  put #flash
  put #play Advance
  if (%bugout = "YES") then goto BUGOUT
  else goto GEMPOUCHNONE2

GEMPOUCHNONE2:
  echo ===OUT OF GEM POUCHES===
  put #flash
  put #play Advance
  pause 5
  goto GEMPOUCHNONE2


GEMGETP:
  pause
GEMGET:
  if !matchre ("$roomobjs", "\b(%gems1|%gems2|%gems3|%gems4|%gweths)\b(,|\.| and)") then return
  matchre GEMGETP %waitstring
  matchre RETURN Stow what?|What were you referring to?
  matchre GEMGET ^You open your
  matchre GEMGETBAD You need a free hand to pick that up\.
  matchre GEMPOUCHFULL ^You think the .*gem pouch is too full|^You put your
  matchre TIEPOUCH You've already got a wealth of gems in there! 
  put stow gem
  matchwait 5
	var timeoutsub GEMGET
  var timeoutcommand stow gem
	goto TIMEOUT

GEMGETBAD:
  gosub STOW left
  goto GEMGET

GEMPOUCHFULL:
  gosub STOWALL
  gosub REMITEM gem pouch
  gosub STOWITEM gem pouch
  var pouchcount 0
  gosub GEMFINDEMPTYPOUCH
  if %pouchcount = 12 then goto GEMPOUCHNONE
  gosub GETITEM %pouchnum gem pouch
  gosub WEARITEM gem pouch
  gosub STORE gem gem pouch
  gosub STOWALL
  goto GEMGET


GWETHGET:
  if matchre ("$roomobjs", "\b(%gweths)\b(,|\.| and)") then
  {
    if %savegwethstones = "YES" then
    {
      gosub GETITEM stones
      if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a gweth stone!
      gosub PUTITEM my stones in my %storage
    }
    if (matchre ("$roomobjs", "\b(%gweths)\b(,|\.| and)")) then goto GWETHGET
  }
  return

BOXGET:
  if matchre ("$roomobjs", "\b(%boxtype) (%boxes)\b(,|\.| and)") then
  {
    var boxitem $1 $2
    gosub GETITEM %boxitem
    #if %lootalerts = "YES" then put #echo %alertwindow [Treasure]: Found a box!
    gosub PUTITEM my %boxitem in my %boxstorage
    if (%putsucceed = 0) then
    {
      if ("%auonboxes" = "YES") then
      {
        var goupkeep 1
        var autype boxes
        gosub DUMPITEM %boxitem
      }
      else
      {
        put #echo %alertwindow Yellow [Treasure]: Failed to put %boxitem in box storage!  Turning off box collecting and revering loot type to 'treasure'.
        gosub DUMPITEM %boxitem
        var loottype treasure
        put #var m%varsetloottype treasure
        var collectboxes NO
        put #var m%varsetcollectboxes NO
        put #var save
      }
      return
    }
  }
  if matchre ("$roomobjs", "(%boxtype) (%boxes)") then goto BOXGET
  return


LOOTP:
  pause
LOOT:
  if ("%noloot" = "YES") then return
  if !matchre ("$roomobjs", "((which|that) appears dead|\(dead\))") then return
  matchre RETURN You search|You should probably wait until|You find nothing of interest.|I could not find what you were referring to.
  match LOOT and get ready to search it!
  match RETURN You can't search or loot in here!
  matchre LOOTP %waitstring
  put loot %loottype
  matchwait 5
	var timeoutsub LOOT
  var timeoutcommand loot %loottype
	goto TIMEOUT


LOOTCHECK:
  #put #echo Yellow Coin.
  if ("%collectcoin" = "YES") then gosub COINGET
  #put #echo Yellow gwethstones
  if ("%savegwethstones" = "YES") then gosub GWETHGET
  #put #echo Yellow gem
  if ("%collectgem" = "YES") then gosub GEMGET
  #put #echo Yellow boxes
  if ("%collectboxes" = "YES") then gosub BOXGET
  #put #echo Yellow scroll
  if ("%collectscroll" = "YES") then gosub SCROLLGET
  #put #echo Yellow maps
  if ("%collectmaps" = "YES") then gosub MAPGET
  #put #echo Yellow nuggets
  if ("%collectnuggets" = "YES") then gosub NUGGETSGET
  #put #echo Yellow bars
  if ("%collectbars" = "YES") then gosub BARSGET
  #put #echo Yellow materials
  if ("%collectmaterials" = "YES") then gosub MATERIALSGET
  #put #echo Yellow misc
  if ("%misckeeplist" != "none") then
  {
    eval keeplistnum count("%misckeeplist", "|")
    var miscgetcounter 0
    gosub MISCGET
  }
  return


MAPGET:
  if matchre ("$roomobjs", "\b(%treasuremaps)\b(,|\.| and)") then
  {
    gosub GETITEM map
    if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a treasure map!
    gosub STOWITEM map
  }
  if matchre ("$roomobjs", "\b(%treasuremaps)\b(,|\.| and)") then goto MAPGET
  return

MATERIALSGET:
  if matchre ("$roomobjs", "\b(%materials) (%materialsnouns)\b(,|\.| and)") then
  {
    var materialadj $1
    var materialnoun $2
    gosub GETITEM %materialnoun
    if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a %materialadj %materialnoun rare material!
    gosub STOWITEM %materialnoun
  }
  if matchre ("$roomobjs", "\b(%materials) (%materialsnouns)\b(,|\.| and)") then goto MATERIALSGET
  return


MISCGETP:
  pause
MISCGET:
  if %miscgetcounter > %keeplistnum then return
  #echo keepitem: %misckeeplist(%miscgetcounter)
  if matchre ("$roomobjs", "%misckeeplist(%miscgetcounter)") then
  {
    if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a misc item - %misckeeplist(%miscgetcounter)!
    gosub GETITEM %misckeeplist(%miscgetcounter)
    gosub STOWITEM %misckeeplist(%miscgetcounter)
  }
  math miscgetcounter add 1
  goto MISCGET    


NUGGETSGET:
  if matchre ("$roomobjs", "\b(%nuggetmaterials) nugget\b(,|\.| and)") then
  {
    var nuggetadj $1
    gosub GETITEM nugget
    #if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a %nuggetadj nugget
    gosub STOWITEM nugget
  }
  if matchre ("$roomobjs", "\b(%nuggetmaterials) nugget\b(,|\.| and)") then goto NUGGETSGET
  return


BARSGET:
  if matchre ("$roomobjs", "\b(%nuggetmaterials) bar\b(,|\.| and)") then
  {
    var baradj $1
    gosub GETITEM bar
    #if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a %baradj bar!
    gosub STOWITEM my bar
  }
  if matchre ("$roomobjs", "\b(%nuggetmaterials) bar\b(,|\.| and)") then goto BARSGET
  return


SCROLLGET:
  if matchre("$roomobjs", ".*(?<!page of )(?<!fetid antelope )\b(%scrolls)\b(,|\.| and)") then
  {
    var foundscroll $1
    if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a scroll - %foundscroll! 
    gosub STOWITEM %foundscroll
  }
  if matchre("$roomobjs", ".*(?<!page of )(?<!fetid antelope )\b(%scrolls)\b(,|\.| and)") then goto SCROLLGET
  return


SKINNINGP:
	pause
SKINNING:
  matchre RETURN You can't skin something that's not dead\!|but end up destroying the skin\.|You carefully fit|renders your skinning attempt|You hideously bungle|You make a series of cuts|cannot be skinned|I don't know|twists and slips in your grip|You claw wildly|Skin what\?|You manage to slice it to dripping tatters\.
	match SKINSTOW You must have one hand free to skin.
	matchre SKINNINGP %waitstring
	matchre RETURN Roundtime: \d+
	put skin
  matchwait 5
	var timeoutsub SKINNING
  var timeoutcommand skin
	goto TIMEOUT

SKINSTOW:
  gosub STOWALL
  goto SKINNING


TIEPOUCHP:
  pause
TIEPOUCH:
  matchre TIEPOUCHP %waitstring
  matchre TIEGEMGET You tie up the gem pouch.|The gem pouch has already been tied off.
  put tie gem pouch
  matchwait 5
	var timeoutsub TIEPOUCH
  var timeoutcommand tie gem pouch
	goto TIMEOUT


TIEGEMGETP:
  pause
TIEGEMGET:
  if matchre ("$righthandnoun", "\b(%gems1|%gems2|%gems3|%gems4|%gweths)\b(,|\.| and)") then gosub STOW right
  if matchre ("$lefthandnoun", "\b(%gems1|%gems2|%gems3|%gems4|%gweths)\b(,|\.| and)") then gosub STOW left
  goto GEMGET


#####ARMOR_SWAP_SUBS#####
ARMORCHECK:
  var firstarmorcheck 1
  gosub STOWALL
  gosub WEARARMOR %shielditem
  if (%weararmorworn != 1) then
  {
    gosub GETITEM %shielditem
    if ("$righthand" != "Empty") then
    {
      gosub WEARITEM %shielditem
      if ("$righthand" = "Empty") then
      {
        var shieldworn 1
        #put #echo Yellow Wore Shield!
      }
      else
      {
        put #echo %alertwindow Yellow [Armor]: Could not wear shield!  Please address!
        put #echo Yellow Could not wear shield!  Please address!
        if ("%bugout" = "YES") then goto BUGOUT
        else goto ARMORPROBLEM
      }
    }
    else
    {
      put #echo %alertwindow Yellow [Armor]: Could not find shield to wear!  Please address!
      put #echo Yellow Could not find shield to wear!  Please address!
      if ("%bugout" = "YES") then goto BUGOUT
      else goto ARMORPROBLEM
    } 
  }
  else
  {
    #put #echo Yellow Shield worn!
  }
  #PARRY_STICK
  gosub WEARARMOR %parrystickitem
  if (%weararmorworn != 1) then
  {
    gosub GETITEM %parrystickitem
    if ("$righthand" != "Empty") then
    {
      gosub WEARITEM %parrystickitem
      if ("$righthand" = "Empty") then
      {
        var parrystickworn 1
        #put #echo Yellow Wore Parry Stick!
      }
      else
      {
        put #echo %alertwindow Yellow [Armor]: Could not wear parry stick!  Please address!
        put #echo Yellow Could not wear parry stick!  Please address!
        if ("%bugout" = "YES") then goto BUGOUT
        else goto ARMORPROBLEM
      }
    }
    else
    {
      put #echo %alertwindow Yellow [Armor]: Could not find parry stick to wear!  Please address!
      put #echo Yellow Could not find parry stick to wear!  Please address!
      if ("%bugout" = "YES") then goto BUGOUT
      else goto ARMORPROBLEM
    } 
  }
  else
  {
    #put #echo Yellow Shield worn!
  }
  #KNUCKLES
  gosub WEARARMOR %knucklesitem
  if (%weararmorworn != 1) then
  {
    gosub GETITEM %knucklesitem
    if ("$righthand" != "Empty") then
    {
      gosub WEARITEM %knucklesitem
      if ("$righthand" = "Empty") then
      {
        var knucklesworn 1
        #put #echo Yellow Wore knuckles!
      }
      else
      {
        put #echo %alertwindow Yellow [Armor]: Could not wear knuckles!  Please address!
        put #echo Yellow Could not wear knuckles!  Please address!
        if ("%bugout" = "YES") then goto BUGOUT
        else goto ARMORPROBLEM
      }
    }
    else
    {
      put #echo %alertwindow Yellow [Armor]: Could not find knuckles to wear!  Please address!
      put #echo Yellow Could not find knuckles to wear!  Please address!
      if ("%bugout" = "YES") then goto BUGOUT
      else goto ARMORPROBLEM
    } 
  }
  else
  {
    #put #echo Yellow Knuckles worn!
  }
  var armorloop 0
  gosub ARMORCHECKLOOP
  return

ARMORPROBLEM:
  echo ===ARMOR PROBLEM!===
  put #flash
  put #play Advance
  pause 5
  goto BOWNOAMMO2
    
ARMORCHECKLOOP:
  math armorloop add 1
  if %armorloop > %armornum then return
  gosub WEARARMOR %armor%armorloopitem
  if (%weararmorworn != 1) then
  {
    gosub GETITEM %armor%armorloopitem
    if ("$righthand" != "Empty") then
    {
      gosub WEARITEM %armor%armorloopitem
      if ("$righthand" = "Empty") then
      {
        var %armor%armorloopworn 1
        #put #echo Yellow Wore Armor %armorloop!
      }
      else
      {
        put #echo %alertwindow Yellow [Armor]: Could not wear Armor %armorloop!  Please address!
        put #echo Yellow Could not wear Armor %armorloop!  Please address!
        if ("%bugout" = "YES") then goto BUGOUT
        else goto ARMORPROBLEM
      }
    }
    else
    {
      put #echo %alertwindow Yellow [Armor]: Could not find Armor %armorloop to wear!  Please address!
      put #echo Yellow Could not find Armor %armorloop to wear!  Please address!
      if ("%bugout" = "YES") then goto BUGOUT
      else goto ARMORPROBLEM
    } 
  }
  else
  {
    #put #echo Yellow Armor %armorloop worn!
  }
  goto ARMORCHECKLOOP


ARMORREMBOXPOP:
  var armorremcount 0
  gosub ARMORREMBOXPOPLOOP
  gosub REMITEM %shielditem
  gosub STOWITEM %shielditem
  gosub REMITEM %knucklesitem
  gosub STOWITEM %knucklesitem
  return

ARMORREMBOXPOPLOOP:
  math armorremcount add 1
  if (%armorremcount > %armornum) then return
  gosub REMITEM %armor%armorremcountitem
  gosub STOWITEM %armor%armorremcountitem
  goto ARMORREMBOXPOPLOOP

#####LOCKSMITHING_SUBS#####


BOXCOINGETP:
  pause
BOXCOINGET:
  matchre BOXCOINGETP \.\.\.wait|type ahead|stunned|while entangled in a web\.
  match BOXCOINGET You pick up
  match RETURN What were you referring to?
  put get coin from my %boxitem
  matchwait
 
BOXFILLPOUCHP:
  pause
BOXFILLPOUCH:
  matchre BOXFILLPOUCHP \.\.\.wait|type ahead|stunned|while entangled in a web\.
	matchre RETURN ^You take|^There aren't any|You fill your|You open your|You have to be holding
	matchre BOXFILLPOUCHTIE The gem pouch is too valuable|You'll need to tie it up
	matchre BOXFILLPOUCHFULL is too full to fit any more gems!|You can't fill anything with
	put fill my gem pouch with my %boxitem
	matchwait
 
BOXFILLPOUCHTIE:
  gosub TIEPOUCH
  goto BOXFILLPOUCH

BOXFILLPOUCHFULL:
  gosub REMITEM gem pouch
  gosub STOWITEM gem pouch
  var pouchcount 0
  gosub GEMFINDEMPTYPOUCH
  if %pouchcount = 12 then goto GEMPOUCHNONE
  gosub GETITEM %pouchnum gem pouch
  gosub WEARITEM gem pouch
  gosub STORE gem gem pouch
  goto BOXFILLPOUCH

BOXLOOTCHECKP:
  pause
BOXLOOTCHECK:
	matchre BOXLOOTCHECKP \.\.\.wait|type ahead|stunned|while entangled in a web\.
	#matchre stow_Gear (gear|\bbolt\b|\bnut\b|glarmencoupler|spangleflange|rackensprocket|flarmencrank)
	matchre BOXLOOTGETMISC (map|treasure map|Treasure map)
  matchre BOXLOOTGETMISC (nugget|ingot|(?!bar of)\bbar\b|jadeite|kyanite|bark|parchment|\bdira\b|papyrus|tablet|vellum|\bscroll\b|\broll\b|ostracon|leaf|\brune\b)
  matchre RETURN In the|nothing|What
	put look in my %boxitem
	matchwait

BOXLOOTGETMISC:
  var itemtoget $1
  gosub GETITEM %itemtoget in my %boxitem
  gosub STOWITEM %itemtoget
  #put #echo >Log Yellow Found a %itemtoget!
  goto BOXLOOTCHECK


BOXSTORAGECHECKP:
  pause
BOXSTORAGECHECK:
  var foundboxes 0
	matchre BOXSTORAGECHECKP \.\.\.wait|type ahead|stunned|while entangled in a web\.
	matchre BOXSTORAGECHECKYES (%boxes)
  matchre RETURN In the|nothing|What
  match RETURN I could not find what you were referring to.
	put look in my %boxstorage
	matchwait
  
BOXSTORAGECHECKYES:
  var foundboxes 1
  return
  

DISARMP:
  pause
DISARM:
  matchre DISARMP \.\.\.wait|type ahead|stunned|while entangled in a web\.
  match DISARM2Q An aged grandmother could defeat this trap in her sleep.
  match DISARM2Q This trap is a laughable matter, you could do it blindfolded!
  match DISARM2Q This trap is a laughable matter -- you could do it blindfolded!
  match DISARM2Q trap is a trivially constructed gadget which you can take down any time.
  match DISARM2Q will be a simple matter for you to disarm.
  match DISARM2C should not take long with your skills.
  match DISARM2C with only minor troubles.
  match DISARM2C You think this trap is precisely at your skill level.
  match DISARM2C The trap has the edge on you, but you've got a good shot at disarming the
  match DISARM2C The odds are against you, but with persistence you believe you could disarm the
  match DISARM2C You have some chance of being able to disarm the
  match DISARM2C would be a longshot.
  match DISARM2C Prayer would be a good start for any attempt of yours at disarming the
  match DISARM2C You have an amazingly minimal chance at disarming the
  match DISARM2C You really don't have any chance at disarming this
  match DISARM2C You probably have the same shot as a snowball does crossing the desert.
  match DISARM2C You could just jump off a cliff and save yourself the frustration of attempting this
  match DISARM2C A pitiful snowball encased in the Flames of Ushnish would fare better than you.
  match DISARM You get the distinct feeling your careless examination caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
  match DISARM fails to reveal to you what type of trap protects it.
  match RETURN You guess it is already disarmed.
  match RETURN Roundtime:
  put disarm %boxitem identify
  matchwait

DISARM2Q:
  var disarmtype careful
  goto DISARM2
  
DISARM2C:
  var disarmtype careful
  goto DISARM2 
  
DISARM2P:
  pause
DISARM2:
  matchre DISARM2P \.\.\.wait|type ahead|stunned|while entangled in a web\.
  match RETURN Roundtime:
  match DISARM2 You work with the trap for a while but are unable to make any progress.
  matchre DISARM is not yet fully disarmed\.|You work with the trap for a while but are unable to make any progress\.
  put disarm my %boxitem %disarmtype
  matchwait


DISMANTLEP:
  pause
DISMANTLE:
  matchre DISMANTLEP \.\.\.wait|type ahead|stunned|while entangled in a web\.
  matchre RETURN Roundtime
  match DISMANTLE You can not dismantle the
  if ("%dismantletype" = "none") then put dismantle my %boxitem
  else put dismantle my %boxitem %dismantletype
  matchwait  


PICKP:
  pause
PICK:
  if (%baddisarm = 1) then
  {
    #var baddisarm 0
    #goto DISARM
    return
  }
  matchre PICKP \.\.\.wait|type ahead|stunned|while entangled in a web\.
  match PICK fails to teach you anything about the lock guarding it.
  match PICK2Q An aged grandmother could open this in her sleep.
  match PICK2Q This lock is a laughable matter, you could do it blindfolded!
  match PICK2Q This lock is a laughable matter -- you could do it blindfolded!
  match PICK2Q The lock is a trivially constructed piece of junk barely worth your time.
  match PICK2Q will be a simple matter for you to unlock.
  match PICK2C should not take long with your skills.
  match PICK2C with only minor troubles.
  match PICK2C You think this lock is precisely at your skill level.
  match PICK2C The lock has the edge on you, but you've got a good shot at picking open the
  match PICK2C The odds are against you, but with persistence you believe you could pick open the
  match PICK2C You have some chance of being able to pick open the
  match PICK2C would be a longshot.
  match PICK2C Prayer would be a good start for any attempt of yours at picking open the
  match PICK2C You have an amazingly minimal chance at picking open the
  match PICK2C You really don't have any chance at picking open this
  match PICK2C You probably have the same shot as a snowball does crossing the desert.
  match PICK2C You could just jump off a cliff and save yourself the frustration of attempting this
  match PICK2C A pitiful snowball encased in the Flames of Ushnish would fare better than you.
  match RETURN It's not even locked, why bother?
  put pick my %boxitem identify
  matchwait
    
PICK2Q:
  var picktype careful
  goto PICK2
  
PICK2C:
  var picktype careful
  goto PICK2
  
PICK2P:
  pause
PICK2:
  if (%baddisarm = 1) then
  {
    #var baddisarm 0
    #goto DISARM
    return
  }
  matchre PICK2P \.\.\.wait|type ahead|stunned|while entangled in a web\.
  match PICK You discover another lock protecting the
  match PICK2 You are unable to make any progress towards opening the lock.
  match RETURN Roundtime:
  #match RETURN With a soft click, you remove your lockpick and open and remove the lock.
  put pick my %boxitem %picktype
  matchwait


BOXPOPPINGKHRI:
  var firstbpkhristring 1
  var bpkhristring 
  if ("%boxpopkhrifocus" = "YES") then
  {
    if ($SpellTimer.KhriFocus.active != 1) then
    {
      echo firstbpkhristring: %firstbpkhristring
      if (%firstbpkhristring = 1) then
      {
        var firstbpkhristring 0
        var bpkhristring focus
      }
      else var bpkhristring %bpkhristring|focus
    }
  }
  if ("%boxpopkhrihasten" = "YES") then
  {
    if ($SpellTimer.KhriHasten.active != 1) then
    {
      if (%firstbpkhristring = 1) then
      {
        var firstbpkhristring 0
        var bpkhristring hasten
      }
      else var bpkhristring %bpkhristring|hasten
    }
  }
  if ("%boxpopkhriplunder" = "YES") then
  {
    if ($SpellTimer.KhriPlunder.active != 1) then
    {
      if (%firstbpkhristring = 1) then
      {
        var firstbpkhristring 0
        var bpkhristring plunder
      }
      else var bpkhristring %bpkhristring|plunder
    }
  }
  if ("%boxpopkhrisafe" = "YES") then
  {
    if ($SpellTimer.KhriSafe.active != 1) then
    {
      if (%firstbpkhristring = 1) then
      {
        var firstbpkhristring 0
        var bpkhristring safe
      }
      else var bpkhristring %bpkhristring|safe
    }
  }
  if ("%boxpopkhrisight" = "YES") then
  {
    if ($SpellTimer.KhriSight.active != 1) then
    {
      if (%firstbpkhristring = 1) then
      {
        var firstbpkhristring 0
        var bpkhristring sight
      }
      else var bpkhristring %bpkhristring|sight
    }
  }
  if (%firstbpkhristring = 0) then
  {
    eval bpkhristring replace("%bpkhristring", "|", " ")
    gosub KHRI %bpkhristring
  }
  return

LOCKSMITHCAST:
  if %burglerf = "YES" then
  {
    if (($SpellTimer.RefractiveField.active = 0) || ($SpellTimer.RefractiveField.duration < 2)) then
    {
      if %casting = 1 then
      {
        gosub RELSPELL
        gosub RELSYMBIOSIS
      }
      var spellprepping rf
      var prepmana 5
      var addmana 0
      var casting 1
      gosub PREP
      pause %burglerfdelay
      gosub CAST
    }
  }
  return


#####BARD_SUBS#####


SCREAMDEFIANCEP:
  pause
SCREAMDEFIANCE:
  matchre SCREAMDEFIANCEP %waitstring
  matchre RETURN You are unable to gather the will to overcome your stunned condition\.|You scream out!|You gather your will and overcome your stunned condition.|Building inspiration from tales of|Your defiant will subsides\.|You strain to muster an even greater defiant decry\.|You open your mouth, then close it suddenly, looking somewhat like a fish\.|There is no need for violence here\.
  put scream defiance
  matchwait 5
	var timeoutsub SCREAMDEFIANCE
  var timeoutcommand scream defiance
	goto TIMEOUT
	
	
WHISTLEPIERCEP:
  pause
WHISTLEPIERCE:
  matchre WHISTLEPIERCEP %waitstring
  matchre RETURN You take a deep breath, then exhale strongly over the tip of your curved tongue\.|Your throat feels too strained to perform another piercing whistle right now\.|You can't seem to summon the strength to perform a piercing whistle right now\.
  put whistle piercing
  matchwait 5
	var timeoutsub WHISTLEPIERCE
  var timeoutcommand whistle piercing
	goto TIMEOUT



#####MM_SUBS#####


INVOKESHADOWP:
  pause
INVOKESHADOW:
  matchre INVOKESHADOWP %waitstring
  matchre RETURN You gesture, adjusting the pattern|Invoke what?|You're not sure what would happen
  put invoke %shadowlingnoun
  matchwait 5
	var timeoutsub INVOKESHADOW
  var timeoutcommand invoke shadowling
	goto TIMEOUT


MOONCHECK:
  var moonsout 0
  if $Time.isKatambaUp = 1 then var moonsout 1
  if $Time.isXibarUp = 1 then var moonsout 1
  if $Time.isYavashUp = 1 then var moonsout 1
  return


SHIFTMOONP:
  pause
SHIFTMOON:
  matchre RETURN You are unable to see your target clearly enough for that.
  matchre SHIFTMOONGOOD You sense your moonbeam
  put gesture %smmoon %smtarget
  matchwait 5
	var timeoutsub SHIFTMOON
  var timeoutcommand gesture %smoon $smtarget
	goto TIMEOUT

SHIFTMOONGOOD:
  var smgood 1
  return



#####NECRO_LOGIC#####


COUNTMATERIAL:
  action (material) var rummagestring $1 when You rummage (.+)
  gosub RUMMAGE %storage
  pause .5
  action (material) off
  eval materialnum count("%rummagestring","material")
  return


DEVOURLOOP:
  gosub CASTINGLOGIC
  pause 1
  if %casting != 1 then
  {
    return
  }
  goto DEVOURLOOP


NSAFETYCHECK:
  var necrogood 1
  eval roomplayerslength length("$roomplayers")
  if %roomplayerslength != 0 then 
  {
    var roomplayers $roomplayers
    gosub RPLAYERSCRUB
    var rcounter 0
    eval nsafenum count("%necrowhitelist", "|")
    eval rplayernum count("%roomplayers", "|")
    #TURNING_TO_LOWERCASE
    eval roomplayers tolower("%roomplayers")
    eval necrowhitelist tolower("%necrowhitelist")
    gosub RPLAYERSORT
    if %roomplayers != "" then
    {
      echo Not engaging in spellcasting for Necro Safety!  Player(s) in the room: %roomplayers.
      var necrogood 0       
    }
  }
  return	


NRITUAL:
  var necroskin 0
  if matchre ("$roomobjs", "(\w+) ((which|that) appears dead|\(dead\))") then var ritualmonster $1
  if ("%preserve" = "YES") then gosub PRESERVE
  if ("%devour" = "YES") then
  {
    if $SpellTimer.Devour.active != 1 then
    {
      gosub HEALTHCHECK
      if %healthcheckgood != 1 then
      {
        gosub CASTRESET
        var spellprepping devour
        var prepmana %devourprepmana
        var addmana %devouraddmana
        var spellsymb 0
        var casting 1
        var scancel 0
        var prepped 0
        var charged 0
        var harnessed 0
        gosub DEVOURLOOP
        var necroskin 1
        return
      }
    }
  }
  if ("%dissect" = "YES") then
  {
    if (matchre("$roomobjs", "(%skinnablecritters) ((which|that) appears dead|\(dead\))") then
    {
      if ($Skinning.LearningRate > $Thanatology.LearningRate) then
      {
        gosub NECRODISSECT
        var necroskin 1
      }
    }
  }
  else
  {
    if ("%harvest" = "YES") then
    {
      if (%materialnum = -1) then
      {
      
      }
      if matchre("$roomobjs", "(%skinnablecritters) ((which|that) appears dead|\(dead\))") then
      {
        if $Skinning.LearningRate > $Thanatology.LearningRate then
        {
          gosub HARVEST
          var necroskin 1
        }
      }
      else
      {
        gosub HARVEST
        var necroskin 1
      }
    }
  }
  return





#####NECRO_SUBS#####


CONSUMEP:
  pause
CONSUME:
	matchre CONSUMEP %waitstring
  matchre RETURN This ritual may only be performed on a creature's corpse.|Roundtime:|A skinned creature is worthless for your purposes.|Rituals do not work upon constructs.
  put perform consume on %ritualmonster
  matchwait 5
	var timeoutsub CONSUME
  var timeoutcommand perform consume on %ritualmonster
	goto TIMEOUT


NECRODISSECTP:
  pause
NECRODISSECT:
  matchre DISSECTP %waitstring
  matchre RETURN Roundtime:|A skinned creature is worthless for your purposes.
  matchre NECRODISSECTBAD This ritual may only be performed on a creature's corpse.|This ritual may only be performed on a corpse.|A failed or completed ritual has rendered this corpse unusable for your purposes.
  put perform dissect on %ritualmonster
  matchwait 5
	var timeoutsub NECRODISSECT
  var timeoutcommand perform dissect on %ritualmonster
	goto TIMEOUT

NECRODISSECTBAD:
  var necroskin 0
  return


HARVESTP:
  pause
HARVEST:
  matchre HARVESTP %waitstring
  matchre HARVESTDISP Roundtime:
  matchre HARVESTBAD This ritual may only be performed on a creature's corpse.|Rituals do not work upon constructs.|This corpse has already been harvested.|A skinned creature is worthless for your purposes.|A failed or completed ritual has rendered this corpse unusable for your purposes.
  matchre HARVESTFULL You need a hand free to perform this ritual.
  match HARVEST2 You cannot harvest useful material
  put perform harvest on %ritualmonster
  matchwait 5
	var timeoutsub HARVEST
  var timeoutcommand perform harvest on %ritualmonster
	goto TIMEOUT
  
HARVESTFULL:
  gosub STOWALL
  goto HARVEST 
  
HARVESTBAD:
  var necroskin 0
  return

HARVEST2:
  gosub PRESERVE
  goto HARVEST

HARVESTDISP:
  if ("%harveststore" = "YES") then
  {
    gosub COUNTMATERIAL
    if %materialnum > %harveststorenum then goto HARVESTDROP
    else
    {
      gosub STOWITEM material
      return
    }
  }
  else goto HARVESTDROP


HARVESTDROPP:
  pause
HARVESTDROP:
  matchre HARVESTDROPP %waitstring
  matchre RETURN Having no further use|What were you referring to?|In a moment of foolishness
  put drop material
  matchwait 5
	var timeoutsub HARVESTDROP
  var timeoutcommand drop material
	goto TIMEOUT


PRESERVEP:
  pause
PRESERVE:
	matchre PRESERVEP %waitstring
  matchre RETURN This ritual may only be performed on a creature's corpse.|Roundtime:|A skinned creature is worthless for your purposes.|This corpse has already been preserved.|Rituals do not work upon constructs.
  put perform preserve on %ritualmonster
  matchwait 5
	var timeoutsub PRESERVE
  var timeoutcommand perform preserve on %ritualmonster
	goto TIMEOUT

#####RANGER_SUBS#####
POUNCEP:
  pause
POUNCE:
  matchre POUNCEP %waitstring
  match RETURN Roundtime
  match RETURN You're too tired from the last time you pounced on some prey.
  put pounce
  matchwait 5
  var timeoutsub POUNCE
  var timeoutcommand pounce
	goto TIMEOUT

#####TRADER_SUBS#####

INVESTP:
  pause
INVEST:
  matchre INVESTP %waitstring
  match INVESTRETREAT You cannot do that while focusing on combat!
	matchre RETURN Roundtime|The frosty tessera begins to frost over, but quickly returns to normal\.|The clear tessera attempts to tap into your starlight aura, but finds it depleted\.
	put ask tessera about invest
  matchwait 5
	var timeoutsub INVEST
  var timeoutcommand ask tessera about invest
	goto TIMEOUT
  
INVESTRETREAT:
  gosub RETREAT
  goto INVEST


TASKASKP:
  pause
TASKASK:
  matchre TASKASKP %waitstring
  match RETURN Mags frowns and shakes her head.  "Sorry, me hearin' isnae what it used tae be.  Come again?"
  match TASKFIND The firewood peddler Mags looks at you and says, "You are already on a task.  Please complete that task, or you may ask to cancel the job by asking me FOR TASK CANCEL."
  matchre TASKACCEPT The firewood peddler Mags says, "I do have a small task I'd like for you to perform\.  I need (\d*) (.*)\.  If you could get those for me, I would greatly appreciate it\."
  matchre TASKBAD The firewood peddler Mags says, "I am sorry, you must wait before I can give you a task\."
  put ask mags for task
  matchwait 5
  var timeoutsub TASKASK
  var timeoutcommand ask mags for task
	goto TIMEOUT
  
TASKACCEPTP:
  pause
TASKACCEPT:
  matchre TASKACCEPTP %waitstring
  matchre TASKFIND The firewood peddler Mags says, "Well, then.  Get to it.  Remember, I need \d* .*\.  Also, I will treat each item you give me as one item\."  The firewood peddler Mags glares at you, "So, don't try to give me a huge bundle, I'll only credit you for one\!"
  put accept task
  matchwait 5
  var timeoutsub TASKACCEPT
  var timeoutcommand accept task
	goto TIMEOUT

TASKFINDP:
  pause
TASKFIND:
  matchre TASKFINDP %waitstring
  match RETURN You look in your task journal and see the following entry:
  put task
  matchwait 5
  var timeoutsub TASKFIND
  var timeoutcommand task
	goto TIMEOUT
	
	
TASKMOVE:
  if ($zoneid != 1) then gosub TRAVEL crossing
  if (!matchre("$roomobjs" "Mags")) then gosub MOVE mags
  return
  
TASKBAD:
  put #echo Yellow Mags is on cooldown!
  pause 10
  goto TASKASK
  
TASKFORAGELOOP:
  if (%heldquantity >= %quantity) then return
  gosub FORAGE %forageitem
  if (matchre ("$righthand", "%forageitem")) then
  {
    gosub STOW right
    math heldquantity add 1
  }
  goto TASKFORAGELOOP
  
TASKGIVELOOP:
  gosub GETITEM %forageitem
  gosub TASKGIVEMAGS 
  if (%givingdone = 1) then return
  else goto TASKGIVELOOP

TASKGIVEMAGSP:
  pause
TASKGIVEMAGS:
  matchre TASKGIVEMAGSP %waitstring
  matchre RETURN The firewood peddler Mags takes the stems and says, "Thanks, .*\!  I need .* more\."
  matchre TASKGIVEGOOD The firewood peddler Mags says, "Thank you very much, .*\.  I have a few things here for you, thank you so much for your help\."
  put give mags
  matchwait 5
  var timeoutsub TASKGIVEMAGS
  var timeoutcommand give mags
	goto TIMEOUT
  
TASKGIVEGOOD:
  var givingdone 1
  return


#####WM_SUBS#####


BALLISTALOADP:
  pause
BALLISTALOAD:
  matchre BALLISTALOADP %waitstring
	matchre RETURN Roundtime|ballista is already loaded with a large rock!|What weapon are you trying to load?
	put load ballista
  matchwait 5
	var timeoutsub BALLISTALOAD
  var timeoutcommand load ballista
	goto TIMEOUT


BALLISTARUBP:
  pause
BALLISTARUB:	
	matchre BALLISTARUBP %waitstring
  matchre RETURN generates is focused only where it is facing\.|well enough to overcome the strength of its magnetic field\.|Rub what?
  matchre BALLISTARUB generates flares up with every single shot.
  put rub ballista
  matchwait 5
	var timeoutsub BALLISTARUB
  var timeoutcommand rub ballista
	goto TIMEOUT


BGATTACKP:
  pause  
BGATTACK:
  if %bgdone = 1 then return
  matchre BGATTACKP %waitstring
  matchre BGATTACK With a sharp overhand motion|With a casual flick of your wrists|You sweep your hands in
  #matchre BGNEWTARGET I don't think so.
  matchre RETURN I could not find what you were referring to.|you slap your|I do not understand what you mean.
  #matchre BGLOOT You wave to
  matchre RETURN You point at|You wave to|I don't think so.
  match RETURN You wave.
  put %bggesture %bgmon
  matchwait 5
	var timeoutsub BGATTACK
  var timeoutcommand %bggesture %bgmon
	goto TIMEOUT

BGATTACKDONE:
  var bgdone 1
  return
  
BGLOOT:
  if $SpellTimer.BlufmorGaraen.active = 1 then
  {
    gosub LOOT
    goto BGATTACK
  }
  else return
  
BGNEWTARGET:
  if $monstercount < 1 then
  {
    var goodtarget 0
    var shockcritter 1
    var currentcritter 0
    return
  }
  gosub MONSTERARRAY
  goto BGATTACK
  
  
BREAKWEAPON:
  var breakweaponstring $0
  goto BREAKWEAPONMAIN
BREAKWEAPONP:
  pause
BREAKWEAPONMAIN:
  matchre BREAKWEAPONP %waitstring
  matchre RETURN Focusing your will\, you rip the .* asunder, returning it to the Elemental planes\.|Break what\?|You can't break that\.
  put break my %breakweaponstring
  matchwait 5
	var timeoutsub BREAKWEAPON
  var timeoutcommand break my %breakweaponstring
	goto TIMEOUT
  

DOMAINSTARTP:
  pause  
DOMAINSTART:
  matchre DOMAINSTARTGOOD The strands anchor themselves to the ground,|The new lines of power are in conflict with the existing domain!  With a subtle show of power,
  matchre DOMAINSTARTBAD As the ritual winds toward its climax|The new lines of power are small compared to the existing ones, leaving the domain unaffected.
  matchre DOMAINSTARTP %waitstring
  put summon %domaintype domain 
  matchwait 5
	var timeoutsub DOMAINSTART
  var timeoutcommand summon %domaintype domain 
	goto TIMEOUT
 
DOMAINSTARTGOOD:
  var domainactive 1
  var domainactivetype %domaintype
  return

DOMAINSTARTBAD:
  var domainactive 0
  return


EXHALEP:
  pause	
EXHALE:
  var dbready 0
  matchre EXHALEP %waitstring
  matchre RETURN You sharply inhale, drawing upon|Your throat is too sore to breathe fire|You slowly and deliberately empty your filled lungs.|There is nothing else to face!
  put exhale
  matchwait 5
	var timeoutsub EXHALE
  var timeoutcommand put exhale
	goto TIMEOUT

EXHALETARGETP:
  pause	
EXHALETARGET:
  var dbready 0
  matchre EXHALEP %waitstring
  matchre RETURN You sharply inhale, drawing upon|You slowly and deliberately empty your filled lungs.|There is nothing else to face!|You'll need to pick a target to exhale fire at.
  match RETURN Your throat is too sore to breathe fire again so soon!
  matchre EXHALETLOOT That's just a wee bit pointless now, don't you think?
  put exhale %exhaletarget
  matchwait 5
	var timeoutsub EXHALETARGET
  var timeoutcommand exhale %exhaletarget
	goto TIMEOUT

EXHALETLOOT:
  gosub LOOT
  pause 1
  goto EXHALETARGET


PATHCHECKP:
  pause
PATHCHECK:
  match PATHCHECKNO With a moment of reflection, you realize you aren't investing any energy into manipulating the aether.
  match PATHCHECKYES You focus your magical senses on the aethereal landscape around you.
	matchre PATHCHECKP %waitstring
  put pathway check
  matchwait 5
	var timeoutsub PATHCHECK
  var timeoutcommand pathway check
	goto TIMEOUT

PATHCHECKNO:
  var pathwayactive 0
  return

PATHCHECKYES:
  var pathwayactive 1
  return


PATHSENSEP:
  pause
PATHSENSE:
  matchre PATHSENSEP %waitstring
  match RETURN You turn your perceptions inward
  put pathway sense
  matchwait 5
	var timeoutsub PATHSENSE
  var timeoutcommand pathway sense
	goto TIMEOUT


PATHSTART:
  var summpath $0
  goto PATHSTARTMAIN
PATHSTARTP:
  pause
PATHSTARTMAIN:
  var pathway 1
  matchre RETURN You focus on|You are already manipulating the aether to your benefit.
  matchre PATHSTARTBAD You lack the necessary charge
  matchre PATHSTARTP %waitstring
  put pathway focus %summpath
  matchwait 5
	var timeoutsub PATHSTART
  var timeoutcommand pathway focus %summpath
	goto TIMEOUT

PATHSTARTBAD:
  var pathway 0
  return


PATHSTOPP:
  pause
PATHSTOP:
  var pathway 0
  matchre RETURN You aren't focusing on any of the aethereal pathways.
  matchre RETURN You gently relax your mind and release your hold on the aethereal pathways.
  matchre PATHSTOPP %waitstring
  put pathway stop
  matchwait 5
	var timeoutsub PATHSTOP
  var timeoutcommand pathway stop
	goto TIMEOUT


SUMMONP:
	pause
SUMMON:
  if %summfull = 1 then var summarg impedance
  else var summarg admittance
  matchre RETURN you feel that you can still gather|you feel that you have reached your limit|You align yourself to it, briefly decreasing|You continue meditating
  matchre SUMMFULL You so heavily embody the Elemental Plane
  matchre SUMMEMPTY Try though you might
  matchre SUMMONP %waitstring
  put summon %summarg
  matchwait 5
	var timeoutsub SUMMON
  var timeoutcommand summon %summarg
	goto TIMEOUT

SUMMEMPTY:
  var summfull 0
  return

SUMMFULL:
  var summfull 1
  return

SUMMONCHARGEP:
	pause
SUMMONCHARGE:
  matchre RETURN you feel that you can still gather|you feel that you have reached your limit|You align yourself to it, briefly decreasing|You continue meditating
  matchre SUMMONCHARGEFULL You so heavily embody the Elemental Plane
  matchre SUMMONCHARGEP %waitstring
  put summon admittance
	matchwait
	var timeoutsub SUMMONCHARGE
  var timeoutcommand summon admittance
	goto TIMEOU
	
SUMMONCHARGEFULL:
  put #echo Yellow Charging complete!
  exit

SUMMONWEAPON:
  var argument $0
SUMMONWEAPONMAIN:
  matchre SUMMONWEAPONMAIN %waitstringgood
  matchre BADNEWS %waitstringbad
  match NOCHARGE You lack the elemental charge to summon a weapon.
  match RETURN Roundtime
  #matchre RETURN Closing your eyes, you grunt briefly in effort as you sense a small \w+ ethereal fissure open in front of you\.  Thrusting your hand through, you draw out (a|an) \w+ \w+\.
  #match SUMMONWEAPONSTOW How can you summon a weapon, when your hands are full?
  send summon weapon %argument
  matchwait 5
  goto COMBOERROR

SUMMONWEAPONNOCHARGE:
  put #echo Yellow You're out of elemental charge!
  exit

SUMMONWEAPONSHAPE:
  var argument $0
SUMMONWEAPONSHAPEMAIN:
  matchre SUMMONWEAPONSHAPEMAIN %waitstringgood
  matchre BADNEWS %waitstringbad
  matchre RETURN You reach out with your will and reshape your \w+ into .*\.
  match SUMMONWEAPONNOCHARGE You lack the elemental charge to modify your weapon.
  send shape $righthandnoun to %argument
  matchwait 5
  goto COMBOERROR

SUMMONWEAPONPULL:
  var argument $0
SUMMONWEAPONPULLMAIN:
  matchre SUMMONWEAPONPULLMAIN %waitstringgood
  matchre BADNEWS %waitstringbad
  match RETURN That's as heavy as you can make it!
  match RETURN Roundtime
  #matchre RETURN Closing your eyes, you grunt briefly in effort as you sense a small \w+ ethereal fissure open in front of you\.  Thrusting your \w+ \w+ through, you bind more material to your \w+, and pull it back out\.  
  send pull my %argument
  matchwait 5
  goto COMBOERROR
  
SUMMONWEAPONPUSH:
  var argument $0
SUMMONWEAPONPUSHMAIN: 
    matchre SUMMONWEAPONPUSHMAIN %waitstringgood
    matchre BADNEWS %waitstringbad
    match return Roundtime
    send push my %argument
    matchwait 5
    goto COMBOERROR

SUMMONWEAPONTURN:
  var argument $0
SUMMONWEAPONTURNMAIN:
    matchre SUMMONWEAPONTURNMAIN %waitstringgood
    matchre BADNEWS %waitstringbad
    match return Roundtime
    send turn %argument
    matchwait 5
    goto COMBOERROR

SUMMONWEAPONBREAK:
  var argument $0
SUMMONWEAPONBREAKMAIN:
    matchre SUMMONWEAPONBREAKMAIN %waitstringgood
    matchre BADNEWS %waitstringbad
    match RETURN Focusing your will
    match RETURN Break what?
    send break my %argument
    matchwait 5
    goto COMBOERROR


SUMMONWEAPONTRAINP:
  pause
SUMMONWEAPONTRAIN:
  matchre SUMMONWEAPONTRAINP %waitstring
  matchre RETURN You lack the elemental charge to summon a weapon\.
  matchre SUMMONWEAPONSET Closing your eyes, you grunt briefly in effort as you sense a small earthen ethereal fissure open in front of you\.  Thrusting your hand through, you draw out a.*stone (\w+)\.
  match SUMMONWEAPONSTOW How can you summon a weapon, when your hands are full?
  put summon weapon
  matchwait 5
	var timeoutsub SUMMONWEAPONTRAIN
  var timeoutcommand summon weapon
	goto TIMEOUT

SUMMONWEAPONSET:
  var summweaponname $1
  return

SUMMONWEAPONSTOW:
  gosub STOW left
  goto SUMMONWEAPONTRAIN


COMMANDWARRIORP:
  pause
COMMANDWARRIOR:
  matchre COMMANDWARRIORP %waitstring
  matchre RETURN Roundtime|EXAMPLES\:|Command who to do what\?|A .* ignores your command\.|You have already shifted your /w+ alfar warrior's behavior too recently, it will take a bit before it may again\.
  put command warrior to %warriorcommand
  matchwait 5
	var timeoutsub COMMANDWARRIOR
  var timeoutcommand command warrior to %warriorcommand
	goto TIMEOUT


MANIPULATEP:
  pause
MANIPULATE:
  matchre MANIPULATEP %waitstring
  matchre RETURN Roundtime|You're already manipulating|Manipulate what?|You attempt to empathically|You strain, but|seem to be beyond your ken. 
  put manipulate friendship %manipadj %maniptarget
  matchwait 5
	var timeoutsub MANIPULATE
  var timeoutcommand manipulate friendship %manipadj %maniptarget
	goto TIMEOUT

PERCHEALTHP:
  pause
PERCHEALTH:
  matchre PERCHEALTHP %waitstring
  matchre RETURN Roundtime|You fail to sense anything, however.|You close your eyes, drawing all your thoughts inward
  put perceive health
  matchwait 5
	var timeoutsub PERCHEALTH
  var timeoutcommand perceive health
	goto TIMEOUT

ICUTUTOUCHINGP:
  pause
ICUTUTOUCHING:
  var nextiztouch %t
  math nextiztouch add %iztimer
  matchre ICUTUTOUCHINGP %waitstring
  match ICUTUADV You aren't close enough to attack.
  match RETURN A good positive attitude never hurts.
  match RETURN Roundtime
  #You stab your curled ashen fingers at a sinuous ice adder.
  #The spell pattern collapses at the last moment due to the undead state of a sinuous ice adder.
  put touch
  put yes
  matchwait 5
	var timeoutsub ICUTUTOUCHING
  var timeoutcommand touch
	goto TIMEOUT

ICUTUADv:
  gosub ADV
  goto ICUTUTOUCHING

GAZESANOWRETP:
  pause
GAZESANOWRET:
  var sanowretready 0
  matchre GAZESANOWRETP %waitstring
  matchre RETURN You gaze intently into your|You need to be wearing or holding that first.
  put gaze %sanowretitem
  matchwait 5
	var timeoutsub GAZESANOWRET
  var timeoutcommand gaze %sanowretitem
	goto TIMEOUT


###PVP_SUBS###

MANEUVERTEST:
  eval maneuvernum count("%maneuverlist", "|")
  var maneuvertest 0
  var maneuver -1
  var closestmane 0
  gosub MANEUVERTESTLOOP
  if (%maneuver = -1) then
  {
    var secondsleft 90
    math secondsleft subtract %closestmane
    put #echo Yellow No maneuvers are off cooldown!  Closest maneuver: %secondsleft sec.
    exit
  }
  return

MANEUVERTESTLOOP:
  #echo maneuvertest: %maneuvertest  maneuvernum: %maneuvernum
  if (%maneuvertest > %maneuvernum) then return
  var manetest $unixtime
	math manetest subtract $%maneuverlist(%maneuvertest)last
	#echo %maneuverlist(%maneuvertest)last: $%maneuverlist(%maneuvertest)last
  #echo manetest: %manetest
	if (%manetest > 90) then
	{
	  var maneuver %maneuvertest
	  return
	}
	else
	{
	  if (%manetest > %closestmane) then var closestmane %manetest
	}
	math maneuvertest add 1
	goto MANEUVERTESTLOOP




ATTACKACMCOMBO:
  var argument $0
ATTACKACMCOMBOMAIN:
  matchre ATTACKACMCOMBOMAIN %waitstringgood
  match ATTACKACMCOMBOMAIN You must recover your position before attempting another maneuver so quickly.
  matchre ATTACKACMCBADNEWS %waitstringbad
  #match ATTACKACMCRETURN Roundtime:
  matchre ATTACKACMCRETURN ^You take a step back and (heft|ready) your \w+ behind you\.|^Taking a full step back, you plant your feet and .*\.|^You lower your shoulders and .*\.|^You take a step back and ready an upraised palm\.|^You angle to the side and .*\.|^You crouch down and draw your weapons close\.|^You step to the side and adjust your stance\.|^You take a step back and .*\.|^You square up your feet and arch your back while searching for an engaged enemy to target\.|You raise .* before you and prepare to strike\.|^You brace your shoulder against the .* to increase the power of the next shot\.
  matchre ATTACKACMCRETURN  ^\* .* is slain before your eyes!|^You take a step back and set your staff into a twirling motion\.
  #match RETURN With a loud twang, you let fly your
  #match ATTACKACMCSTOW You must free up your left hand first.
  matchre ATTACKACMCSTAND You'll need to stand up first\.|You must be standing to perform that maneuver\.
  matchre ATTACKACMCRANGE ^You aren't close enough to attack\.
  matchre ATTACKACMCGONE ^What are you trying to attack\?
  matchre ATTACKACMCWRONG With your fist\?  That might hurt\.|This weapon lacks the edge necessary to cleave your enemy with\.|Your hands must be empty to deliver such a blow\.|A pike or halberd weapon is necessary to impale your enemy with\.|Only a staff is suitable for the complex motions of the twirl maneuver\.|This works best when you use a suitable ranged weapon\.|This works best when you use a suitable weapon\.|This works best when you are dual wielding suitable weapons\.
  matchre ATTACKACMCFAIL You must rest a bit longer before attempting that maneuver again\.
  match ATTACKACMCBADNAME You cannot figure out how to do that.
  send maneuver %argument
  matchwait 5
  gosub COMBOERROR

ATTACKACMCSTOW:
  gosub STOW left
  goto ATTACKACMCOMBOMAIN

ATTACKACMCRETURN:
  #put #var %manenamelast $unixtime
  #put #echo Yellow Maneuver complete!
  return

ATTACKACMCGONE:
  put #echo Yellow Maneuver failed - gone!
  return

ATTACKACMCRANGE:
  put #echo Yellow Maneuver failed - range!  Advancing!
  gosub ADV
  goto ATTACKACMCOMBOMAIN
  return

ATTACKACMCSTAND:
  gosub STAND
  goto ATTACKACMCOMBOMAIN

ATTACKACMCWRONG:
  send #echo Yellow ACM attempted with improper item(s) in hands!
  exit

ATTACKACMCFAIL:
  #send #echo Yellow ACM is still on cooldown!
  #var failtest $unixtime
  #math failtest subtract 80
  #put #var %manenamelast %failtest
  exit

ATTACKACMCBADNAME:
  send #echo Yellow ACM attempted with bad syntax!
  exit

ATTACKACMCBADNEWS:
  put #echo Yellow You've been disrupted!
  exit

COMBOERROR:
  put #echo Yellow Something went wrong.
  exit

###ARMOR_SUBS###
ARMORSET:
  math testcount add 1
  if %testcount > 4 then return
  gosub ARMORSETRUN
  goto ARMORSET
  
ARMORSETRUNP:
  pause
ARMORSETRUN:
  if %%armortypearmor%testcountworn = 0 then
  {
    if %%armorotypearmor%testcount != "none" then
    {
      gosub REMITEM %%armorotypearmor%testcount
      var %armorotypearmor%testcountworn 0
      gosub STOWITEM %%armorotypearmor%testcount
    }
    if %%armortypearmor%testcount != "none" then
    {
      gosub GETITEM %%armortypearmor%testcount
      var %armortypearmor%testcountworn 1
      gosub WEARITEM %%armortypearmor%testcount
    }
  }
  return

NEWARMORFIND:
  action (armor) on
  action (armor) var shieldworn 1 when %shielddesc
  action (armor) var armor1worn 1 when %armor1desc
  action (armor) var armor2worn 1 when %armor2desc
  action (armor) var armor3worn 1 when %armor3desc
  action (armor) var armor4worn 1 when %armor4desc
  gosub INVARMOR
  pause 1
  action (armor) off
  return

INVARMOR:
  matchre RETURN [Type INVENTORY HELP for more options]|You aren't wearing anything like that.
  put inv armor
  matchwait 5
	var timeoutsub INVARMOR
  var timeoutcommand inv armor
	goto TIMEOUT


###HEALTH###
INFOCHECKP:
  pause
INFOCHECK:
  matchre INFOCHECKP %waitstring
  matchre RETURN A good positive attitude never hurts.
  put info
  put yes
  matchwait 5
	var timeoutsub INFOCHECK
  var timeoutcommand info
	goto TIMEOUT

BURDENCHECKP:
  pause
BURDENCHECK:
  matchre BURDENCHECKP %waitstring
  match RETURN Encumbrance :
  put encumbrance
  matchwait 5
	var timeoutsub BURDENCHECK
  var timeoutcommand encumbrance
	goto TIMEOUT

HEALTHCHECKP:
  pause
HEALTHCHECK:
  var healthcheckgood 0
  matchre HEALTHCHECKP %waitstring
  matchre HEALTHCHECKCLEAN You have no significant injuries.
  matchre RETURN A good positive attitude never hurts.
  put health
  put yes
  matchwait 5
	var timeoutsub HEALTHCHECK
  var timeoutcommand yes
	goto TIMEOUT

HEALTHCHECKCLEAN:
  var healthcheckgood 1
  return
  
BLEEDCHECKP:
  pause
BLEEDCHECK:
  var nextbleed %t
  math nextbleed add 90
  gosub BLEEDCLEAN
  matchre BLEEDCHECKP %waitstring
  matchre BLEEDING ^Bleeding$
  matchre RETURN A good positive attitude never hurts.
  put health
  put yes
  matchwait 5
	var timeoutsub BLEEDCHECK
  var timeoutcommand yes
	goto TIMEOUT
  
BLEEDING:
  if %head = 1 then gosub tend head
  if %neck = 1 then gosub tend neck
  if %chest = 1 then gosub tend chest
  if %abdomen = 1 then gosub tend abdomen
  if %back = 1 then gosub tend back
  if %tail = 1 then gosub tend tail
  if %rightarm = 1 then gosub tend right arm
  if %leftarm = 1 then gosub tend left arm
  if %righthand = 1 then gosub tend right hand
  if %lefthand = 1 then gosub tend left hand
  if %rightleg = 1 then gosub tend right leg
  if %leftleg = 1 then gosub tend left leg
  if %righteye = 1 then gosub tend right eye
  if %lefteye = 1 then gosub tend left eye
  return

TEND:
  var tendlocation $0
TENDP:
  pause
TENDMAIN:
  if ("%tendlocation" = "stunned") then
  {
    var nextbleed %t
    return
  }
  matchre TENDP %waitstring
  matchre RETURN ^You work|^That area|^Look again|^Your .+ too injured|TEND {MY|<character>} {area}|You are a bit too busy performing to do that.|^You fumble|That area is not bleeding\.|You skillfully remove
  put tend my %tendlocation
  matchwait 5
	var timeoutsub TENDMAIN
  var timeoutcommand tend my %tendlocation
	goto TIMEOUT
  
BLEEDCLEAN:
  var head 0
  var neck 0
  var chest 0
  var abdomen 0
  var back 0
  var tail 0
  var rightarm 0
  var leftarm 0
  var righthand 0
  var lefthand 0
  var rightleg 0
  var leftleg 0
  var righteye 0
  var lefteye 0
  return
  
HEALTHCHECK2:
  if $guild = "Empath" then 
  {
    gosub HEALTHRESET
    gosub HEALTHPERC
    gosub HEALTHOUTPUT
  }
  else
  {
    gosub HEALTHRESET
    gosub HEALTHVERB
    gosub HEALTHOUTPUT
  }
  exit

HEALTHPERC:
  action var TEMP $1_$2 when ^Wounds to the (LEFT|RIGHT) (\w+):$
  action var TEMP $1 when ^Wounds to the (\w+):$
  action var %TEMP_MYW_E 1 when Fresh External:.*?\-\-\s+insignificant$
  action var %TEMP_MYW_I 1 when Fresh Internal:.*?\-\-\s+insignificant$
  action var %TEMP_MYS_E 1 when Scars External:.*?\-\-\s+insignificant$
  action var %TEMP_MYS_I 1 when Scars Internal:.*?\-\-\s+insignificant$
  action var %TEMP_MYW_E 2 when Fresh External:.*?\-\-\s+negligible$
  action var %TEMP_MYW_I 2 when Fresh Internal:.*?\-\-\s+negligible$
  action var %TEMP_MYS_E 2 when Scars External:.*?\-\-\s+negligible$
  action var %TEMP_MYS_I 2 when Scars Internal:.*?\-\-\s+negligible$
  action var %TEMP_MYW_E 3 when Fresh External:.*?\-\-\s+minor$
  action var %TEMP_MYW_I 3 when Fresh Internal:.*?\-\-\s+minor$
  action var %TEMP_MYS_E 3 when Scars External:.*?\-\-\s+minor$
  action var %TEMP_MYS_I 3 when Scars Internal:.*?\-\-\s+minor$
  action var %TEMP_MYW_E 4 when Fresh External:.*?\-\-\s+more than minor$
  action var %TEMP_MYW_I 4 when Fresh Internal:.*?\-\-\s+more than minor$
  action var %TEMP_MYS_E 4 when Scars External:.*?\-\-\s+more than minor$
  action var %TEMP_MYS_I 4 when Scars Internal:.*?\-\-\s+more than minor$
  action var %TEMP_MYW_E 5 when Fresh External:.*?\-\-\s+harmful$
  action var %TEMP_MYW_I 5 when Fresh Internal:.*?\-\-\s+harmful$
  action var %TEMP_MYS_E 5 when Scars External:.*?\-\-\s+harmful$
  action var %TEMP_MYS_I 5 when Scars Internal:.*?\-\-\s+harmful$
  action var %TEMP_MYW_E 6 when Fresh External:.*?\-\-\s+very harmful$
  action var %TEMP_MYW_I 6 when Fresh Internal:.*?\-\-\s+very harmful$
  action var %TEMP_MYS_E 6 when Scars External:.*?\-\-\s+very harmful$
  action var %TEMP_MYS_I 6 when Scars Internal:.*?\-\-\s+very harmful$
  action var %TEMP_MYW_E 7 when Fresh External:.*?\-\-\s+damaging$
  action var %TEMP_MYW_I 7 when Fresh Internal:.*?\-\-\s+damaging$
  action var %TEMP_MYS_E 7 when Scars External:.*?\-\-\s+damaging$
  action var %TEMP_MYS_I 7 when Scars Internal:.*?\-\-\s+damaging$
  action var %TEMP_MYW_E 8 when Fresh External:.*?\-\-\s+very damaging$
  action var %TEMP_MYW_I 8 when Fresh Internal:.*?\-\-\s+very damaging$
  action var %TEMP_MYS_E 8 when Scars External:.*?\-\-\s+very damaging$
  action var %TEMP_MYS_I 8 when Scars Internal:.*?\-\-\s+very damaging$
  action var %TEMP_MYW_E 9 when Fresh External:.*?\-\-\s+severe$
  action var %TEMP_MYW_I 9 when Fresh Internal:.*?\-\-\s+severe$
  action var %TEMP_MYS_E 9 when Scars External:.*?\-\-\s+severe$
  action var %TEMP_MYS_I 9 when Scars Internal:.*?\-\-\s+severe$
  action var %TEMP_MYW_E 10 when Fresh External:.*?\-\-\s+very severe$
  action var %TEMP_MYW_I 10 when Fresh Internal:.*?\-\-\s+very severe$
  action var %TEMP_MYS_E 10 when Scars External:.*?\-\-\s+very severe$
  action var %TEMP_MYS_I 10 when Scars Internal:.*?\-\-\s+very severe$
  action var %TEMP_MYW_E 11 when Fresh External:.*?\-\-\s+devastating$
  action var %TEMP_MYW_I 11 when Fresh Internal:.*?\-\-\s+devastating$
  action var %TEMP_MYS_E 11 when Scars External:.*?\-\-\s+devastating$
  action var %TEMP_MYS_I 11 when Scars Internal:.*?\-\-\s+devastating$
  action var %TEMP_MYW_E 12 when Fresh External:.*?\-\-\s+very devastating$
  action var %TEMP_MYW_I 12 when Fresh Internal:.*?\-\-\s+very devastating$
  action var %TEMP_MYS_E 12 when Scars External:.*?\-\-\s+very devastating$
  action var %TEMP_MYS_I 12 when Scars Internal:.*?\-\-\s+very devastating$
  action var %TEMP_MYW_E 13 when Fresh External:.*?\-\-\s+useless$
  action var %TEMP_MYW_I 13 when Fresh Internal:.*?\-\-\s+useless$
  action var %TEMP_MYS_E 13 when Scars External:.*?\-\-\s+useless$
  action var %TEMP_MYS_I 13 when Scars Internal:.*?\-\-\s+useless$
  send perceive health self
  waitforre ^You .+ vitality
  return

HEALTHVERB:
  put health
  return

HEALTHRESET:
  var ABDOMEN_MYW_E 0
  var ABDOMEN_MYW_I 0
  var ABDOMEN_MYS_E 0
  var ABDOMEN_MYS_I 0
  var BACK_MYW_E 0
  var BACK_MYW_I 0
  var BACK_MYS_E 0
  var BACK_MYS_I 0
  var CHEST_MYW_E 0
  var CHEST_MYW_I 0
  var CHEST_MYS_E 0
  var CHEST_MYS_I 0
  var HEAD_MYW_E 0
  var HEAD_MYW_I 0
  var HEAD_MYS_E 0
  var HEAD_MYS_I 0
  var LEFT_ARM_MYW_E 0
  var LEFT_ARM_MYW_I 0
  var LEFT_ARM_MYS_E 0
  var LEFT_ARM_MYS_I 0
  var LEFT_EYE_MYW 0
  var LEFT_EYE_MYW 0
  var LEFT_EYE_MYS 0
  var LEFT_EYE_MYS 0
  var LEFT_HAND_MYW_E 0
  var LEFT_HAND_MYW_I 0
  var LEFT_HAND_MYS_E 0
  var LEFT_HAND_MYS_I 0
  var LEFT_LEG_MYW_E 0
  var LEFT_LEG_MYW_I 0
  var LEFT_LEG_MYS_E 0
  var LEFT_LEG_MYS_I 0
  var NECK_MYW_E 0
  var NECK_MYW_I 0
  var NECK_MYS_E 0
  var NECK_MYS_I 0
  var RIGHT_ARM_MYW_E 0
  var RIGHT_ARM_MYW_I 0
  var RIGHT_ARM_MYS_E 0
  var RIGHT_ARM_MYS_I 0
  var RIGHT_EYE_MYW_E 0
  var RIGHT_EYE_MYW_I 0
  var RIGHT_EYE_MYS_E 0
  var RIGHT_EYE_MYS_I 0
  var RIGHT_HAND_MYW_E 0
  var RIGHT_HAND_MYW_I 0
  var RIGHT_HAND_MYS_E 0
  var RIGHT_HAND_MYS_I 0
  var RIGHT_LEG_MYW_E 0
  var RIGHT_LEG_MYW_I 0
  var RIGHT_LEG_MYS_E 0
  var RIGHT_LEG_MYS_I 0
  var SKIN_MYW_E 0
  var SKIN_MYW_I 0
  var SKIN_MYS_E 0
  var SKIN_MYS_I 0
  var TAIL_MYW_E 0
  var TAIL_MYW_I 0
  var TAIL_MYS_E 0
  var TAIL_MYS_I 0
  return

HEALTHOUTPUT:
  echo ABDOMEN_MYW_E %ABDOMEN_MYW_E
  echo ABDOMEN_MYW_I %ABDOMEN_MYW_I
  echo ABDOMEN_MYS_E %ABDOMEN_MYS_E
  echo ABDOMEN_MYS_I %ABDOMEN_MYS_I
  echo BACK_MYW %BACK_MYW
  echo BACK_MYW %BACK_MYW
  echo BACK_MYS %BACK_MYS
  echo BACK_MYS %BACK_MYS
  echo CHEST_MYW_E %CHEST_MYW_E
  echo CHEST_MYW_I %CHEST_MYW_I
  echo CHEST_MYS_E %CHEST_MYS_E
  echo CHEST_MYS_I %CHEST_MYS_I
  echo HEAD_MYW_E %HEAD_MYW_E
  echo HEAD_MYW_I %HEAD_MYW_I
  echo HEAD_MYS_E %HEAD_MYS_E
  echo HEAD_MYS_I %HEAD_MYS_I
  echo LEFT_ARM_MYW_E %LEFT_ARM_MYW_E
  echo LEFT_ARM_MYW_I %LEFT_ARM_MYW_I
  echo LEFT_ARM_MYS_E %LEFT_ARM_MYS_E
  echo LEFT_ARM_MYS_I %LEFT_ARM_MYS_I
  echo LEFT_EYE_MYW_E %LEFT_EYE_MYW_E
  echo LEFT_EYE_MYW_I %LEFT_EYE_MYW_I
  echo LEFT_EYE_MYS_E %LEFT_EYE_MYS_E
  echo LEFT_EYE_MYS_I %LEFT_EYE_MYS_I
  echo LEFT_HAND_MYW_E %LEFT_HAND_MYW_E
  echo LEFT_HAND_MYW_I %LEFT_HAND_MYW_I
  echo LEFT_HAND_MYS_E %LEFT_HAND_MYS_E
  echo LEFT_HAND_MYS_I %LEFT_HAND_MYS_I
  echo LEFT_LEG_MYW_E %LEFT_LEG_MYW_E
  echo LEFT_LEG_MYW_I %LEFT_LEG_MYW_I
  echo LEFT_LEG_MYS_E %LEFT_LEG_MYS_E
  echo LEFT_LEG_MYS_I %LEFT_LEG_MYS_I
  echo NECK_MYW_E %NECK_MYW_E
  echo NECK_MYW_I %NECK_MYW_I
  echo NECK_MYS_E %NECK_MYS_E
  echo NECK_MYS_I %NECK_MYS_I
  echo RIGHT_ARM_MYW_E %RIGHT_ARM_MYW_E
  echo RIGHT_ARM_MYW_I %RIGHT_ARM_MYW_I
  echo RIGHT_ARM_MYS_E %RIGHT_ARM_MYS_E
  echo RIGHT_ARM_MYS_I %RIGHT_ARM_MYS_I
  echo RIGHT_EYE_MYW_E %RIGHT_EYE_MYW_E
  echo RIGHT_EYE_MYW_I %RIGHT_EYE_MYW_I
  echo RIGHT_EYE_MYS_E %RIGHT_EYE_MYS_E
  echo RIGHT_EYE_MYS_I %RIGHT_EYE_MYS_I
  echo RIGHT_HAND_MYW_E %RIGHT_HAND_MYW_E
  echo RIGHT_HAND_MYW_I %RIGHT_HAND_MYW_I
  echo RIGHT_HAND_MYS_E %RIGHT_HAND_MYS_E
  echo RIGHT_HAND_MYS_I %RIGHT_HAND_MYS_I
  echo RIGHT_LEG_MYW_E %RIGHT_LEG_MYW_E
  echo RIGHT_LEG_MYW_I %RIGHT_LEG_MYW_I
  echo RIGHT_LEG_MYW_E %RIGHT_LEG_MYW_E
  echo RIGHT_LEG_MYS_I %RIGHT_LEG_MYS_I
  echo SKIN_MYW_E %SKIN_MYW_E
  echo SKIN_MYW_I %SKIN_MYW_I
  echo SKIN_MYS_E %SKIN_MYS_E
  echo SKIN_MYS_I %SKIN_MYS_I  
  echo TAIL_MYW_E %TAIL_MYW_E
  echo TAIL_MYW_I %TAIL_MYW_I
  echo TAIL_MYS_E %TAIL_MYS_E
  echo TAIL_MYS_I %TAIL_MYS_I
  return
  
###COLLECTING###
COLLECTP:
	pause
COLLECT:
	matchre COLLECTP %waitstring
	matchre RETURN You begin exploring the area, searching for .*\.  In almost no time, you manage to identify \d+ of them but leave them where they are, undisturbed\.
	matchre RETURN /You manage to collect|The room is too cluttered to find anything here!|You find something dead and lifeless, is this what you were looking for?|Searching and searching, you fail to find anything./
	match COLLECTR You cannot collect anything while in combat!
	matchre RETURN You forage around|You wander around and|You begin to forage/
	matchre RETURN You are sure you knew what you were looking for|You are certain you could find what you were looking for/|As you rummage around|You are certain you could find
	match BADCOLLECT You survey the area and realize that any collecting efforts would be futile.
	match FULLHANDS You really need to have at least one hand free to properly collect something.
	put collect %collectitem practice
	matchwait 5
	var timeoutsub COLLECT
  var timeoutcommand collect %collectitem
	goto TIMEOUT

FULLHANDS:
  gosub STOWALL
  goto COLLECT

BADCOLLECT:
  var outdoor NO
  return

COLLECTR:
  gosub RETREAT
  goto COLLECT
  
KICKP:
	pause
KICK:
  if $standing != 1 then gosub STAND
  #if matchre ("$roomobjs", "a pile of rocks") then var kickitem rock
  #if matchre ("$roomobjs", "a pile of dust bunnies") then var kickitem bunnies
  matchre KICKP %waitstring
  match KICK You take a step back
  matchre KICKS You can't do that from your position.|You can't quite manage
  matchre RETURN I could not find|Now what did the|You lean back and kick your feet|Now THAT would be a trick!
  put kick pile
  matchwait 5
  var timeoutsub KICK
  var timeoutcommand kick pile
  goto TIMEOUT

KICKS:
  gosub STAND
  goto KICK
  
###HUNTING###
HUNTP:
	pause
HUNT:
  match NOHUNT You find yourself unable to hunt in this area.
	match RETURN Roundtime:
	matchre HUNTP %waitstring
	put hunt
  matchwait 5
  var timeoutsub HUNT
  var timeoutcommand hunt
  goto TIMEOUT

NOHUNT:
  var %hunt NO
  return

JUSTICECHECKP:
  pause
JUSTICECHECK:
  matchre JUSTICECHECKP %waitstring
  matchre RETURN You're fairly certain this area is lawless and unsafe.|After assessing the area, you think local law enforcement keeps an eye on what's going on here.|After assessing the area, you believe there is some kind of unusual law enforcement in this area.
  put justice
  matchwait 5
  var timeoutsub JUSTICECHECK
  var timeoutcommand justice
  goto TIMEOUT

###MUSIC###
ASSESSINSTRUMENTP:
  pause
ASSESSINSTRUMENT:
  matchre ASSESSINSTRUMENTP %waitstring
  match RETURN Roundtime:
  matchre RETURN You cannot assess the .* properly while in combat\!
  put assess my %instrument
  matchwait 5
  var timeoutsub ASSESSINSTRUMENT
  var timeoutcommand assess my %instrument
  goto TIMEOUT

PLAYP:
  pause
PLAY:
  matchre PLAYP %waitstring
  matchre PLAYSUCCESS You're already playing a song!|You begin a|You effortlessly begin|You fumble slightly|You struggle to begin
  match PLAYUNHIDE That would give away your hiding place!
  put play %songtype on %instrument
  matchwait 5
  var timeoutsub PLAY
  var timeoutcommand play %songtype on %instrument
  goto TIMEOUT

PLAYUNHIDE:
  gosub UNHIDE
  gosub RELINVIS
  goto PLAY

PLAYSUCCESS:
  var playing 1
  return

PLAYSTOPP:
  pause
PLAYSTOP:
  var playing 0
  var humming 0
  matchre PLAYSTOPP %waitstring
  matchre RETURN You stop playing your song.|In the name of love?|But you're not performing anything\!
  put stop play
  matchwait 5
  var timeoutsub PLAYSTOP
  var timeoutcommand stop play
  goto TIMEOUT

HUMP:
  pause
HUM:
  matchre HUMP %waitstring
  matchre HUMSUCCESS You're already humming a song!|You begin a|You effortlessly begin|You fumble slightly|You struggle to begin
  put hum %humsong
  matchwait 5
  var timeoutsub HUM
  var timeoutcommand hum %humsong
  goto TIMEOUT

HUMSUCCESS:
  var playing 1
  var humming 1
  return

INSTMAINTAIN:
  if matchre ("$lefthand", "%instrument") then gosub SWAP
  if matchre ("$righthand", "%instrument") then
  else
  {
    gosub GETITEM %instrument
  }
  if matchre ("$lefthand", "%instrument") then gosub SWAP
  if ("$lefthand" != "Empty") then
  {
    gosub STOW left
  }
  gosub GETITEM %instcleancloth
  gosub INSTDRY
  gosub INSTCLEAN
  gosub STOWITEM %instcleancloth
  return

INSTCLEANP:
  pause
INSTCLEAN:
  matchre INSTCLEANP %waitstring
  matchre RETURN Roundtime|(is|are) not in need of cleaning.
  matchre INSTCLEANGET You must be holding
  matchre INSTDRY Maybe you should dry (it|them) off before attempting to clean (it|them).
  put clean %instrument with %instcleancloth
  matchwait 5
  var timeoutsub INSTCLEAN
  var timeoutcommand clean %instrument with %instcleancloth
  goto TIMEOUT
  
INSTCLEANGET:
  gosub STOW right
  gosub GETITEM %instrument
  goto INSTCLEAN
  
INSTDRYP:
  pause
INSTDRY:
  matchre INSTDRYP %waitstring
  matchre RETURN is not in need of drying.
  match INSTDRYNONE You must be holding
  matchre INSTWRING Your cloth absorbs the water without too much trouble, but remains very wet afterwards.|Using your cloth, you expertly drain|You stare at your
  put wipe my %instrument with %instcleancloth
  matchwait 5
  var timeoutsub INSTDRY
  var timeoutcommand wipe my %instrument with %instcleancloth
  goto TIMEOUT

INSTDRYNONE:
  gosub GETITEM %instrument
  goto INSTDRY

INSTWRINGP:
  pause
INSTWRING:
  matchre INSTWRINGP %waitstring
  matchre INSTCLEAN squeezing out the last bit of water.
  matchre INSTWRING water dribbling down your hands to splash at your feet.|water pouring out to splash at your feet.
  put wring my %instcleancloth
  matchwait 5
  var timeoutsub INSTWRING
  var timeoutcommand wring my %instcleancloth
  goto TIMEOUT 

AWAKEP:
  pause
AWAKE:
  matchre AWAKEP %waitstring
  matchre RETURN You awaken from your reverie and begin to take in the world around you|But you are not sleeping!
  put awake
  matchwait 5
  var timeoutsub AWAKE
  var timeoutcommand awake
  goto TIMEOUT

DEEPSLEEPP:
  pause
DEEPSLEEP:
  matchre DEEPSLEEPP %waitstring
  matchre DEEPSLEEP You relax and allow your mind to enter a state of rest.|You stir yourself from the depths of relaxation and prepare for another night.|You stir yourself from the depths of relaxation and prepare for another day.
  matchre RETURN You draw deeper into rest, trying to destress from a hard (day's|night's) adventuring.
  put sleep
  matchwait 5
  var timeoutsub DEEPSLEEP
  var timeoutcommand sleep
  goto TIMEOUT

RPATOGGLEP:
  pause
RPATOGGLE:
  matchre RPATOGGLEP %waitstring
  matchre RPAPAUSE You pause your roleplaying award.
  matchre RPAACTIVE You unpause your
  matchre RPATIMER You need to wait a few minutes before doing that again.
  matchre RPABAD But you don't have an active roleplaying award to pause!
  put rpa toggle
  matchwait 5
  var timeoutsub RPATOGGLE
  var timeoutcommand rpa toggle
  goto TIMEOUT

RPATIMER:
  return

RPAACTIVE:
  var rpastatus 1
  return

RPAPAUSE:
  var rpastatus 0
  return

RPABAD:
  var rpastatus -1
  return

STUDYALMANACP:
	pause
STUDYALMANAC:
  matchre STUDYALMANACP %waitstring
  matchre ALMANACRETURN Roundtime:
  matchre BADALMANAC You've gleaned all the insight you can from
  match RETURN Study what?
  put study my %almanacitem
  matchwait 5
  var timeoutsub STUDYALMANAC
  var timeoutcommand study my %almanacitem
  goto TIMEOUT
  
ALMANACRETURN:
  var nextalmanac %t
  math nextalmanac add 610
  return

BADALMANAC:
  var nextalmanac %t
  math nextalmanac add 120
  return   

WRITEJOURNALP:
  pause
WRITEJOURNAL:
  matchre WRITEJOURNALP %waitstring
  matchre WRITEJOURNALGOOD Flipping to a blank page, you pluck the|As you open your
  matchre WRITEJOURNALBAD Having recently written in
  put write %ejournalitem
  matchwait 5
  var timeoutsub WRITEJOURNAL
  var timeoutcommand write %ejournalitem
  goto TIMEOUT

WRITEJOURNALGOOD:
  var ejournalused 1
  return

WRITEJOURNALBAD:
  var ejournalused 0
  return

TARANTULATURNP:
  pause
TARANTULATURN:
  var turngood 0
  matchre TARANTULATURNP %waitstring
  match TTURNGOOD With a *click*, your changes snap into place. 
  match RETURN However, your changes fail to lock into place.
  match TARANTULATURNBAD What skill did you want to attune
  put turn %tarantulaitem to %tarantulaskill%tskill
  matchwait 5
  var timeoutsub TARANTULATURN
  var timeoutcommand turn %tarantulaitem to %tarantulaskill%tskill
  goto TIMEOUT

TTURNGOOD:
  var turngood 1
  return

TARANTULATURNBAD:
  put #echo %alertwindow Could not turn tarantula to the %tarantulaskill%tskill.  Please investigate.  Turning off tarantula use.
  var tarantula NO
  return

TARANTULARUBP:
  pause
TARANTULARUB:
  matchre TARANTULARUBP %waitstring
  match TRUBGOOD It is mere moments afterward that you feel an itching, tingling, and crawling sensation all across the inside of your skull.
  matchre RETURN You try, but the|But you currently aren't learning any
  put rub %tarantulaitem
  matchwait 5
  var timeoutsub TARANTULARUB
  var timeoutcommand rub %tarantulaitem
  goto TIMEOUT
  
TRUBGOOD:
  #put #echo %alertwindow Used tarantula on %tarantulaskill%tskill.
  return
  
STUDYP:
	pause
STUDY:
  match TURN Why do you need to study this chart again?
  match RETURN Roundtime:
  match RETURN You need to be holding your compendium to study it.
  matchre STUDYP %waitstring
  put study my compendium
  matchwait 5
  var timeoutsub STUDY
  var timeoutcommand study my compendium
  goto TIMEOUT

STUDYTEXTP:
	pause
STUDYTEXT:
  matchre TEXTNEXT In a sudden moment of clarity, the information
  matchre TEXTNEXTBAD Why do you need to study this chart again?
  matchre RETURN /Roundtime: \d+/
  matchre STUDYTEXTP %waitstring
  put study my %textbookitem
  matchwait 5
  var timeoutsub STUDYTEXT
  var timeoutcommand study my %textbookitem
  goto TIMEOUT
  
TEXTNEXTBAD:
  var textlist%textpositionnext %t
  math textlist%textpositionnext add 1200
  var textagain 1
  var nexttext 0
  return
  
TEXTNEXT:
  var textlist%textpositionnext %t
  math textlist%textpositionnext add 1200
  #echo Page is done!  textlist%textpositionnext: %textlist%textpositionnext
  return

TURNTEXTP:
  pause
TURNTEXT:
  matchre TURNTEXTP %waitstring
  matchre RETURN You turn to the section on
  matchre BADTEXT That section does not exist within your
  put turn my %textbookitem to %textmonster
  matchwait 5
  var timeoutsub TURNTEXT
  var timeoutcommand turn my %textbookitem to %textmonster
  goto TIMEOUT

BADTEXT:
  var badtextturn 1
  return

TEACHP:
  pause
TEACH:
  eval tempteach tolower("$roomplayers")
  eval teachtarget tolower("%teachtarget")
  if !matchre ("%tempteach", "%teachtarget") then return
  matchre TEACHP %waitstring
  matchre RETURN You begin to lecture|I don't understand which skill you wish to teach.|is already listening to you|I don't understand which skill you wish to teach.|You have already offered|I could not find who you were referring to.|That person is too busy teaching their own students to listen to your lesson.
  match TEACHBAD You cannot listen to a teacher and teach at the same time!
  put teach %teachskill to %teachtarget 
  matchwait 5
  var timeoutsub TEACH
  var timeoutcommand teach %teachskill to %teachtarget
  goto TIMEOUT

TEACHBAD:
  gosub TEACHASSESS
  return

TEACHSTOPP:
  pause
TEACHSTOP:
  matchre TEACHSTOPP %waitstring
  matchre RETURN But you aren't teaching anyone.|You stop teaching.
  put stop teach
  matchwait 5
  var timeoutsub TEACHSTOP
  var timeoutcommand stop teach
  goto TIMEOUT

TEACHASSESSP:
  pause
TEACHASSESS:
  matchre TEACHASSESSP %waitstring
  matchre RETURN Roundtime: 
  put assess teach
  matchwait 5
  var timeoutsub TEACHASSESS
  var timeoutcommand assess teach
  goto TIMEOUT


TURNP:
  pause
TURN:
  math turncount add 1
  if %turncount = 1 then
  {
    put turn compendium
    match STUDY You turn to the section
    matchre TURNP %waitstring
    matchwait 5
    var timeoutsub TURN
    var timeoutcommand turn compendium
    goto TIMEOUT
  }
  else
  {
    math nextstudy add 1200
    gosub STOW left
    return
  }
  
PICKBOXP:
  pause
PICKBOX:
  matchre PICKBOXP %waitstring
  matchre LOCKBOX You set about picking your training box.  With a faint \*CLICK\* it opens.|But the training box isn't locked!|It's not even locked, why bother?
  matchre RETURN You set about picking the training box, but it quickly becomes apparent you are not making any progress.|Pick what?
  matchre BADLOCK The lock feels warm, as if worked too often recently, so you stop your attempt to pick it.
  put pick my %locksmithboxitem
  matchwait 5
  var timeoutsub PICKBOX  
  var timeoutcommand pick my %locksmithboxitem
  goto TIMEOUT

BADLOCK:
  var picksleft 0
  return

LOCKBOXP:
  pause
LOCKBOX:
  matchre LOCKBOXP %waitstring
  matchre RETURN You quickly lock the training box and pocket the key.|The training box is already locked.
  put lock my %locksmithboxitem
  matchwait 5
  var timeoutsub LOCKBOX
  var timeoutcommand lock my %locksmithboxitem
  goto TIMEOUT

SKINTRAINERP:
  pause
SKINTRAINER:
  matchre SKINTRAINERP %waitstring
  matchre REPAIRSKINTRAINER You skillfully peel back the leather from the frame underneath\.|A .* has already been sliced open\.  Maybe you should REPAIR it\.
  matchre BADSKINTRAIN The leather looks frayed, as if worked too often recently, so you stop your attempt to skin it\.
  put skin %skinfatraineritem
  matchwait 5
  var timeoutsub SKINTRAINER
  var timeoutcommand skin %skinfatraineritem
  goto TIMEOUT

BADSKINTRAIN:
  var skinsleft 0
  return

REPAIRSKINTRAINERP:
  pause
REPAIRSKINTRAINER:
  matchre REPAIRSKINTRAINERP %waitstring
  matchre RETURN With some needle and thread, you quickly stitch .* back together\.|A .* isn't in need of repair\.
  put repair my %skinfatraineritem
  matchwait 5
  var timeoutsub REPAIRSKINTRAINER
  var timeoutcommand repair my %skinfatraineritem
  goto TIMEOUT

  
WINDCHECKP:
  return
WINDCHECK:
  matchre WINDCHECKP %waitstring
  matchre YESWIND You're already riding on something.
  matchre NOWIND You need to be holding the|You cannot really do anything on
  put mount windboard
  matchwait 5
  var timeoutsub WINDCHECK
  var timeoutcommand mount windboard
  goto TIMEOUT

YESWIND:
  var windmounted 1
  return
  
NOWIND:
  var windmounted 0
  return

WINDCHARGEP:
  pause
WINDCHARGE:
  matchre WINDCFULL The windboard is already fully charged, so there's no need to charge it more.
  matchre WINDCHARGEP %waitstring
  matchre RETURN You strain, but lack the mental stamina to charge the windboard this much.
  match WINDCSUCC Roundtime:
  put charge windboard 50
  matchwait 5
  var timeoutsub WINDCHARGE
  var timeoutcommand charge windboard 50
	goto TIMEOUT

WINDCFULL:
  var windboardcharge 50
  put #var windboardcharge %windboardcharge
  return

WINDCSUCC:
  math windboardcharge add 10
  if %windboardcharge > 49 then var windboardcharge 50
  put #var windboardcharge %windboardcharge
  if %windboardcharge = 50 then return
  else goto WINDCHARGE

WINDMOUNTP:
  pause
WINDMOUNT:
  math windboardcharge subtract 1
  put #var windboardcharge %windboardcharge
  matchre WINDMOUNTP %waitstring
  match WINDMRET You cannot really do anything on your windboard while in combat.
  match RETURN You put your
  put mount windboard
  matchwait 5
  var timeoutsub WINDMOUNT
  var timeoutcommand mount windboard
	goto TIMEOUT

WINDMRET:
  gosub RETREAT
  goto WINDMOUNT

WINDDISMOUNTP:
  pause
WINDDISMOUNT:
  matchre WINDDISMOUNTP %waitstring
  matchre RETURN You step off your|You're not riding around on
  put dismount windboard
  matchwait 5
  var timeoutsub WINDDISMOUNT
  var timeoutcommand dismount windboard
	goto TIMEOUT
  
WINDTRICKP:
  pause
WINDTRICK:  
  matchre WINDTRICKP %waitstring
  match RETURN Roundtime:
  match WINDTRET You cannot really do anything on your windboard while in combat.
  put %windboardtrick windboard
  matchwait 5
  var timeoutsub WINDTRICK
  var timeoutcommand %windboardtrick windboard
	goto TIMEOUT

WINDTRET:
  gosub RETREAT
  goto WINDTRICK
  
APPRAISE:
  var appraisestring $0
  goto APPRAISEMAIN
APPRAISEP:
  pause
APPRAISEMAIN:
  matchre APPRAISEP %waitstring
  match APPRET You cannot appraise that when you are in combat!
  matchre RETURN Roundtime:|Appraise what\?|You need to be either holding it or wearing it\.|You try to sneak out of combat
  match RETURN Appraise what?  Type APPRAISE HELP for more information.
  put appraise %appraisestring
  matchwait 5
  var timeoutsub APPRAISE
  var timeoutcommand appraise %appraisestring
	goto TIMEOUT
  
APPRET:
  gosub RETREAT
  goto APPRAISE
  
APPRAISECREATUREP:
  pause
APPRAISECREATURE:
  gosub MONSTERARRAY
  eval monsterarray element("%monsterarray", 0)
  eval monsterarray replace("%monsterarray", " ", "|")
  eval arraylen count("%monsterarray", "|")
  eval appraisemon element("%monsterarray", %arraylen)
  #echo AppraiseMon: %appraisemon
  #echo ArrayLen: %arraylen
  if %arraylen = 0 then
  {  
    var nextrecall %t
    return
  }
  matchre APPRAISECREATUREP %waitstring
  matchre RETURN Roundtime:|You cannot appraise that when you are in combat!|You don't see anything of interest in that direction\.
  match RETURN Appraise what?  Type APPRAISE HELP for more information.
  matchre RETURN The /* appears to be in good condition\.
  match RETURN Perhaps that's not such a wise thing to do.
  match RETURN I could not find what you were referring to.
  match RETURN It's hard to appraise the
  match RETURN You can't determine anything about this creature.
  put appraise %appraisemon quick
  matchwait 5
  var timeoutsub APPRAISECREATURE
  var timeoutcommand appraise %appraisemon quick
	goto TIMEOUT
 
RECALLP:
  pause
RECALL:
  gosub MONSTERARRAY
  eval monsterarray element("%monsterarray", 0)
  eval monsterarray replace("%monsterarray", " ", "|")
  eval arraylen count("%monsterarray", "|")
  eval recallmon element("%monsterarray", %arraylen)
  if %arraylen = 0 then
  {  
    var nextrecall %t
    return
  }
  matchre RECALLP %waitstring
  matchre RETURN Roundtime:|You are far too occupied by present matters|You search your mind
  put recall %recallmon
  matchwait 5
  var timeoutsub RECALL
  var timeoutcommand recall %recallmon
	goto TIMEOUT
  
MONSTERARRAY:
  var monsterarray $monsterlist
  eval monsterarray replace("%monsterarray", ", ", "|")
  eval monsterarray replacere("%monsterarray", " that appears stunned", "")
  eval monsterarray replacere("%monsterarray", " that appears to be sleeping", "")
  eval monsterarray replacere("%monsterarray", " that is sleeping", "")
  eval monsterarray replacere("%monsterarray", " that is surrounded by a shimmering shield", "")
  eval monsterarray replacere("%monsterarray", " that is flying around", "")
  eval monsterarray replacere("%monsterarray", " that appears immobilized", "")
  eval monsterarray replacere("%monsterarray", " that is trying to remain hidden", "")
  eval monsterarray replacere("%monsterarray", " that is webbed", "")
  eval monsterarray replacere("%monsterarray", " that is lying down", "")
  eval monsterarray replacere("%monsterarray", " that is sitting", "")
  eval monsterarray replacere("%monsterarray", " that is caught in a cage of swirling darkness", "")
  return
  
###BRAIDING###
FORAGEP:
	pause
FORAGE:
	matchre FORAGEP %waitstring
	match RETURN You manage to find
	match FORAGEFULL You really need to have at least one hand free to forage properly.
	match FORAGEDUMP The room is too cluttered to find anything here!
	match FORAGE Roundtime:
	put forage %forageitem
	matchwait

FORAGEFULL:
  if matchre ("$righthand", "%braidtarget") then
  else
  {
    gosub STOW right
  }
  if matchre ("$lefthand", "%braidtarget") then
  else
  {
    gosub STOW left
  }
  goto FORAGE
  
FORAGEDUMP:
  gosub DUMPJUNK
  pause 20
  goto FORAGE
  
  
DUMPJUNKP:
  pause
DUMPJUNK:
  matchre DUMPJUNKP %waistring
  match RETURN You should just kick yourself in the shin.  There is no junk here.
  match RETURN [You have marked this room to be cleaned by the janitor.  It should arrive shortly.]
  match RETURN The janitor was recently summoned to this room.
  put dump junk
  matchwait
  
BRAID:
  if matchre ("$righthand", "%braidobjects") then gosub BRAIDING
  else
  { 
    if matchre ("$lefthand", "%braidobjects") then
    {
      gosub BRAIDING
    }
    else
    { 
      var forageitem %braidtarget
      gosub FORAGE
      goto BRAID
    }
  }
  return

BRAIDINGP:
	pause
BRAIDING:
	matchre BRAIDINGP %waitstring
	matchre BRAIDFORAGE You need to have more material|You need to be holding that first.|Braid what?
	match BRAIDPULL mistake
	match BRAIDDUMP wasted effort.
	match RETURN Roundtime:
	matchre BRAIDSTOW You need both hands to do that.
	put braid my %braidtarget
	matchwait

BRAIDSTOW:
  if matchre ("$righthand", "%braidtarget") then
  else
  {
    gosub STOW right
  }
  if matchre ("$lefthand", "%braidtarget") then
  else
  {
    gosub STOW left
  }
  goto BRAIDING
  
  
BRAIDDUMP:
  gosub DUMPITEM %braidtarget
  return

BRAIDDUMP2:
  gosub DUMPITEM $righthandnoun
  return

BRAIDFORAGE:
  var forageitem %braidtarget
  gosub FORAGE
  goto BRAIDING
 
BRAIDPULLP:
	pause
BRAIDPULL:
	matchre BRAIDPULLP %waitstring
	matchre BRAIDDUMP2 /rope|testing it thoroughly./
	put pull my %braidtarget
	matchwait

CLIMBPRACTICEP:
  pause
CLIMBPRACTICE:
  matchre CLIMBPRACTICEP %waitstring
  matchre CLIMBNOPLAY Tossing one end of the rope over your shoulder, you mime a convincing climb while pulling the rope hand over hand.
  matchre RETURN The rope's will quickly fades away|You finish practicing your climbing skill|Your focus diverts away from the rope
  matchre CLIMBTOOHARD This climb is too difficult, so you stop practicing\.|This climb is no challenge at all
  matchre CLIMBSTAND You should probably be standing to attempt this.
  if %climbingrope = "YES" then put climb %climbobject
  else put climb practice %climbobject
  matchwait

CLIMBTOOHARD:
  var climbing NO
  return

CLIMBSTAND:
  gosub STAND
  goto CLIMBPRACTICE

CLIMBNOPLAY:
  var playing 0
  var humming 0
  return

BADCLIMB:
  var climbing NO
  goto PERFORMLOOP

	
#CLERICSTUFF

COMMSENSEP:
  pause
COMMSENSE:
  var mercomup 0
  var tamcomup
  var tamsinegood 1
  var meraudgood 1
  var elunedgood 1
  matchre COMMSENSEP %waitstring
  match RETURN Roundtime: 
  put commune sense
  matchwait

COMMUNEP:
  pause
COMMUNE:
  matchre COMMUNEP %waitstring
  match COMMUNEBAD You stop as you realize that you have attempted a commune too recently in the past.
  matchre RETURN Roundtime|You grind some dirt in your fist|You feel warmth spread throughout your body|As you commune you sense that the ground is already consecrated\.
  put commune %commune
  matchwait
  
COMMUNEBAD:
  var communegood 0
  return

UNROLLMATP:
  pause
UNROLLMAT:
  matchre UNROLLMATP %waitstring
  matchre RETURN You reverently lay|You need to be holding that first!
  put unroll %prayermatitem
  matchwait

ROLLMATP:
  pause
ROLLMAT:
  matchre ROLLMATP %waitstring
  matchre RETURN You carefully gather up|It is already rolled up!
  put roll mat
  matchwait

KNEELLMATP:
  pause
KNEELMAT:
  matchre KNEELMATP %waitstring
  matchre RETURN You humbly kneel
  put kneel mat
  matchwait

KISSMATP:
  pause
KISSMAT:
  matchre KISSMATP %waitstring
  matchre RETURN You bend forward to kiss|You get a sense that you have
  put kiss mat
  matchwait

POURWINEP:
  pause
POURWINE:
  matchre POURWINEP %waitstring
  matchre RETURN You quietly pour some 
  put pour wine on mat
  matchwait

DIRTRUMMAGEP:
  pause
DIRTRUMMAGE:
  var dirtfull 0
  matchre DIRTRUMMAGEP %waitstring
  matchre RETURN determining it has a little dirt in it\.|determining that it is over a quarter full\.|determining that it is over half full\.| determining that it is over three quarters full\.|determining that it is almost full of dirt\!
  match RUMMAGEDIRTGOOD determining that it is full of dirt!
  put rummage %dirtstackeritem
  matchwait

RUMMAGEDIRTGOOD:
  var dirtfull 1
  return

DIRTPUSHP:
  pause
DIRTPUSH:
  matchre DIRTPUSHP %waitstring
  matchre RETURN You push the release catch on your
  put push %dirtstackeritem
  matchwait

DRAGONLIGHTP:
  pause
DRAGONLIGHT:
  matchre DRAGONLIGHTP %waitstring
  matchre RETURN You quickly flick
  put point %lighteritem at incense
  matchwait

WAVEINCP:
  pause
WAVEINC:
  matchre WAVEINCP %waitstring
  matchre RETURN I do not understand what you mean.|You wave your|You wave some
  put wave incense at %wavetarget
  matchwait
  
SPRINKLEP:
  pause
SPRINKLE:
  var goodsprinkle 1
  matchre SPRINKLEP %waitstring
  matchre RETURN I do not understand what you mean.|You sprinkle
  match SPRINKLEBAD Sprinkle that?  I don't think so.
  match RETURN USAGE: SPRINKLE (item) on (person|creature|item|ROOM)
  put sprinkle %sprinkleitem on %sprinkletarget
  matchwait

SPRINKLEBAD:
  var goodsprinkle 0
  return

SNUFFINCP:
  pause
SNUFFINC:
  matchre SNUFFINCP %waitstring
  matchre RETURN I do not understand what you mean.|You snuff out|What were you referring to?|But that isn't
  put snuff incense
  matchwait

DANCEP:
  pause
DANCE:
  matchre DANCEP %waitstring
  matchre DANCE Conclusion, but|You begin to dance,|Your actions grow in intensity|but you falter, destroying
  matchre RETURN Your dance reaches its conclusion|In your condition?|USAGE: DANCE
  #|You feel that your gods have smiled
  put dance %dancetarget
  matchwait

RECITE:
  put recite %recitation
  return

PRAYBADGEP:
  pause
PRAYBADGE:
  matchre PRAYBADGEP %waitstring
  match RETURN Roundtime:
  put pray %pilgrimbadgeitem
  matchwait

PRAYGODP:
  pause
PRAYGOD:
  matchre PRAYGODP %waitstring
  matchre RETURN You glance heavenward|You throw your head back and howl|Praying for|You raise your hands lightly|Bristling up against a sudden sense of evil|You slowly square your shoulders|You tap the center of your forehead|You whisper your prayer into the wind|With a pat you double-check|Quietly touching your lip|You mutter a prayer to|You grumble ominously|Aligning your thoughts with the song of the inner earth
  put pray %praydeity
  matchwait

LOOKPINP:
  pause
LOOKPIN:
  matchre LOOKPINP %waitstring
  matchre GOODPIN A thin layer of dust|Traces of the anloral's|The characteristic soft blue hue|Unsightly fingers of dirt have conquered
  match RETURN It is clean,
  put look my %anloralpinitem
  matchwait

GOODPIN:
  var pindirty 1
  return
  
CLEANPINP:
  pause
CLEANPIN:
  matchre LOOKPINP %waitstring
  matchre RETURN You pour some holy water from|The immaculate anloral
  match CLEANPINNOWATER Clean it with what?
  #That doesn't appear to be something you can clean.
  match CLEANPINNOBLESS You should not use mundane water to clean a sacred object.
  put clean %anloralpinitem with my water in %watercontainer
  matchwait

CLEANPINNOWATER:
  if %elunedcommune = "YES" then 
  {
    if %elunedgood = 1 then
    {
      gosub COMMUNEELUNED
      gosub STOWALL
      gosub GETITEM %anloralpinitem
      gosub GETITEM %watercontainer
      goto CLEANPIN
    }
    else var nextpin %t
    math nextpin add 180
  }
  else
  {
    put #echo %alertwindow Yellow Water container is out of holy water you don't know the Eluned commune.  Turning off anloral pin.
    put #flash
    put #play JustArrived
    var anloralpin NO
  }
  return

STAYIN:
  put look
  pause 20
  return
  
CLEANPINNOBLESS:
  if $guild = "Cleric" then gosub BLESSCAST
  goto CLEANPIN


TARGETSELECT:
  put look
  pause 1
  var shockcritter 1
  var specialmanipuse 0
  if ($SpellTimer.Absolution.active != 1) then var noshockcritters %normnoshockcritters
  else var noshockcritters %absnoshockcritters
  gosub MONSTERARRAY
  if matchre("%monsterarray", "%noshockcritters") then
  {
    eval tslength count("%monsterarray", "|")
    var tsloop 0
    var critternum 1
    var targetlist %noshockcritters
    var faceadj first
    var goodtarget 0 
    gosub TARGETSELECTLOOP
    if %goodtarget = 1 then
    {
      #echo MonsterArray: %monsterarray 
      #echo Element: %tsloop
      if %facebrawlfail = 1 then var faceadj next
      else var faceadj first
      var currentcritter %montest
      var shockcritter 0
      if matchre("%monsterarray", "%specialmanipulate") then var specialmanipuse 1
      gosub FACETARGET %faceadj %montest
      gosub TACTICSRESET
    }
  }
  else
  {
    if %justmanipulated = 1 then
    {
      if %manipcount < 1 then
      {
        var goodtarget 0
        var currentcritter 0
        var shockcritter 1
        return
      }
      if %mlcounter <= %malength then math mlcounter add 1
      eval facemon element("%monsterarray", %mlcounter)
      eval facemon replace("%facemon", " ", "|")
      eval arraylen count("%facemon", "|")
      eval facemon element("%facemon", %arraylen)
      var facenum 0
      if %facemon = %mon1 then math facenum add 1
      if %manipcount > 1 then
      {
        if %facemon = %mon2 then math facenum add 1
      }
      if %facenum = 0 then var faceadj first
      if %facenum = 1 then var faceadj second
      if %facenum = 2 then var faceadj third
      var goodtarget 1
      var justmanipulated 0
      var shockcritter 1
      var currentcritter %facemon
      gosub FACETARGET %faceadj %facemon

    }
    else
    {
      var targetlist %critters 
      var goodtarget 0
      gosub TARGETSELECTLOOP
      if %goodtarget = 1 then
      {
        gosub FACETARGET first %montest
        var currentcritter %montest
      }
      var shockcritter 1
    }
  }
  return
   
TARGETSELECTLOOP:
  if %tsloop > %tslength then return
  eval montest element("%monsterarray", %tsloop)
  if matchre ("%montest", "%targetlist") then
  {
    eval montest replace("%montest", " ", "|")
    eval arraylen count("%montest", "|")
    eval montest element("%montest", %arraylen)
    var goodtarget 1
    return
  }
  math tsloop add 1
  goto TARGETSELECTLOOP

Base.ListExtract:
  var Base.ListVar $1
  var Base.NounListVar $2
  var Base.ItemCountVar $3

  eval %Base.ListVar replace("%%Base.ListVar", ", ", "|")
  eval %Base.ListVar replacere("%%Base.ListVar", "( and )(?:a |an |some )(?!.*and (a |an |some ))","|")
  var %Base.ListVar |%%Base.ListVar
  eval %Base.ItemCountVar count("%%Base.ListVar", "|")
  var %Base.NounListVar %%Base.ListVar
Base.ListExtract.Loop.Trim:
  eval %Base.NounListVar replacere ("%%Base.NounListVar", "\|[\w'-]+ ", "|")
  if contains("%%Base.NounListVar", " ") then goto Base.ListExtract.Loop.Trim
	return

TAPADJECTIVE:
  var tap $0
  eval tap replace("%tap", " ", "|"
  eval taplength count("%tap","|")
  echo tap: %tap
  echo taplength: %taplength
  if (%taplength = 2) then var adjtap %tap(0) %tap(1)
  if (%taplength = 1) then var adjtap %tap(0)
  if (%taplength = 0) then var adjtap
  return

TAPNOUN:
  var tap $0
  eval tap replace("%tap", " ", "|"
  eval taplength count("%tap","|")
  #echo taplength: %taplength
  if %taplength > 0 then var nountap %tap(%taplength)
  else var nountap %tap(0)
  return

TAPSHORTEN:
  var tap $0
  eval tap replace("%tap", " ", "|"
  eval taplength count("%tap","|")
  #echo taplength: %taplength
  if %taplength > 0 then var shorttap %tap(0) %tap(%taplength)
  else var shorttap %tap(0)
  return

PREMIUMRINGGOP:
  pause
PREMIUMRINGGO:
  matchre PREMIUMRINGGOP %waitstring
  matchre PREMIUMRINGGOOD The world grows blurry and indistinct for a moment.  You look around and find yourself at...
  matchre PREMIUMRINGBAD cannot do that again yet.
  match PREMIUMRINGRETREAT You need to get out of combat, first!
  #[You may do that about an hour from now.]
  put push %premiumringitem
  matchwait

PREMIUMRINGRETREAT:
  gosub RETREAT
  goto PREMIUMRINGGO

PREMIUMRINGGOOD:
  var goodring 1
  return
  
PREMIUMRINGBAD:
  var goodring 0
  return

PREMIUMRINGBACK:
  var premringleaving $0
  goto PREMIUMRINGBACKMAIN
PREMIUMRINGBACKP:
  pause
PREMIUMRINGBACKMAIN:
  matchre PREMIUMRINGBACKP %waitstring
  matchre RETURN The world grows blurry and indistinct for a moment.  You look around and find yourself at...
  match RETURN You need to be in Fang Cove to do that!
  match RETURN The metal band pulses weakly, but nothing else happens.
  matchre PREMBADRETURN cannot do that again yet\.
  put pull %premiumringitem
  matchwait

PREMGOODRETURN:
  var goodring 1
  return

PREMBADRETURN:
  if ("%premringleaving" = "portal") then
  {
    var goodring 0
    return
  }
  put #echo %alertwindow Yellow [UPKEEP]: Unable to return yet due to premium ring timer.  Waiting and retrying.
  pause 60
  goto PREMIUMRINGBACK

# REPLACE input:
#               v-no quotes, yes %
#               v       v-no % (but probably should still be an existing variable, or else it is given a starting %) 
#               v       v          v- no %
# gosub REPLACE %INDEX "NEWVALUE" "ARRAYNAME"

REPLACE:
var arrayl $1|$2|$3
eval %arrayl(2) replacere("%%arrayl(2)","^(?<First>(?:[^|]*\|){%arrayl(0)})[^|]*(?<Last>\|.*)?","${First}%%arrayl(1)${Last}")
return 

LIBEND: