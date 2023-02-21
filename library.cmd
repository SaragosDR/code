var buffs |aa|ab|aeg|ags|art|as|aus|auspice|awaken|bc|benediction|bloodthorns|blur|botf|bg|bs|bue|centering|ch|clarity|cv|col|cotc|courage|da|dc|db|dr|drum|echo|ease|ecry|eli|em|emc|enrichment|es|etc|ey|fin|fotf|gf|gg|gi|ghoulflesh|gol|harm|hes|hol|ic|inst|iots|ivm|ks|lgv|lw|maf|mapp|mef|meg|mis|mo|mof|mon|mpp|name|non|nou|oath|obfuscation|pfe|pg|phk|php|pom|pop|psy|rage|refresh|rei|repr|rits|rw|seer|shadowling|shadows|sk|sks|sol|solace|sos|sott|soul|sr|stw|substratum|suf|sw|tk|tksh|tranquility|trc|turi|tw|vigor|voi|will|ws|worm|wotp|ys|
var ombuffs |auspice|benediction|bless|centering|dr|gg|halo|mapp|mpp|mf|pfe|pom|sl|sol|
var abuffs |etf|nexus|rm|
var cyctms |aban|ars|fr|gs|iz|pyre|rim|ros|sa|sls|usol|
var cycdbs |aewo|alb|dalu|dema|ee|hyh|shw|
var cyclics |ac|ad|af|bes|botf|care|cs|eye|fae|ghs|gj|hodi|how|mg|mom|regenerate|rev|roc|rog|sanctuary|sov|tr|
var allcyclics %cyclics-%cyctms-%cycdbs
var rituals |abs|aeg|all|ag|bc|bloodthorns|cos|dc|echo|eli|mf|mof|mon|iots|mf|mon|pom|pop|rtr|soul|vos|will|word|
var heavytm ms
var transnecro |ivm|ks|bue|worm|ch|php|
var aimweapons bow|xbow|sling
var researches fundamental|stream|augmentation|utility|warding|sorcery|energy|field|plane|planes|road|spell|symbiosis strengthen|symbiosis endure|symbiosis avoid|symbiosis spring|symbiosis remember|symbiosis resolve|symbiosis impress|symbiosis discern|symbiosis explore|symbiosis watch|symbiosis harvest|symbiosis heal|symbiosis learn|symbiosis examine|symbiosis perform|symbiosis cast|symbiosis harness|symbiosis activate

var combatpresetp1 p1-shiprats|p1-muskhogs|p1-badgers|p1-pothanits|p1-trollkin|p1-cougarsgrendels|p1-woodtrolls|p1-grasseels|p1-beisswurms|p1-copperheads|p1-endrusserpents|p1-snowbeasts|p1-vipers|p1-leucros|p1-warklins|p1-scuttlers|p1-stormbulls|p1-lavadrakes
var combatpresetp2 p2-seordmaors
var combatpresetp3 p3-prereniyoung|p3-prereni|p3-prerenielder|p3-gryphons|p3-adanfblood|p3-cloudrats|p3-dragonpriests|p3-adanfspirit|p3-stormbulls|p3-wyvernsyoung|p3-wyvernsjuve|p3-wyvernsadult|p3-adanfsorcs|p3-adanfblades
var combatpresetp4 none
var combatpresetp5 p5-iceadders|p5-dpcrones|p5-mountaingiants|p5-marblegargoyles|p5-shalswars|p5-stompers|p5-maulers|p5-blackapes|p5-fuliginmoths|p5-voidmoths
var combatpresetlist none|%combatpresetp1|%combatpresetp2|%combatpresetp3|%combatpresetp5

var townpresetlist none|muspari|theren|rossman|riverhaven|dirge|crossing|leth|ilaya|shard|fangcove|hibarnhvidar|boarclan|ratha
#|aesry|merkresh|jeihrem
var townvaultpresetlist none|muspari|theren|riverhaven|dirge|crossing|leth|shard|fangcove|hibarnhvidar|boarclan|ratha|aesry|merkresh|jeihrem
var pawnpresetlist none|crossing|riverhaven|shard|hibarnhvidar
var ammopresetlist none|crossing|shard|ratha

var Ordinal none|first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelfth|thirteenth|fourteenth
var waitstring  ^\.\.\.wait|^Sorry\, you may only type ahead|^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|Between the ringing in your head|Strangely, you don't feel like fighting right now\.|Your desire to prepare this offensive spell suddenly slips away\.

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
    if def(combat) then
    {
      put #echo Yellow Converting variables!
      gosub VARCONVERT
    }
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
  if !matchre("$preimum", "\b(YES|NO)\b") then put #var premium NO
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
  if !matchre("$m%checkmodecombatpreset", "\b(%combatpresetlist)\b") then put #var m%checkmodecombatpreset none
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
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 237|238|239|240|245|243|244|765|241|242|246|247
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 237|238|239|240|245|243|244|765|241|242|246|247|441|442|443|444|445|446|447|448|449|450|451|452|453
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 441|442|443|444|445|446|447|448|449|450|451|452|453
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
    }
    if ("$m%checkmodecombatpreset" = "p1-beisswurms") then
    {
      put #var m%checkmodezone 10
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest stone
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 31|32|33|34|36|36|37
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
    }
    if ("$m%checkmodecombatpreset" = "p1-endrusserpents") then
    {
      put #var m%checkmodezone 9b
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest leth
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist str1
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 131|132|133|134
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
    }
    if ("$m%checkmodecombatpreset" = "p1-vipers") then
    {
      put #var m%checkmodezone 11
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest vipers
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 42|43|44|45|46|47
    }
    if ("$m%checkmodecombatpreset" = "p1-leucros") then
    {
      put #var m%checkmodezone 11
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest vipers
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 15|16|17|18|19|20|32|31|34|30|33|29|28|24|23|25|26|27
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
    }
    if ("$m%checkmodecombatpreset" = "p3-adanfblood") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest corik
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 139|140|141|142|143|144|210|209|145|146|147|148|149|150
    }
    if ("$m%checkmodecombatpreset" = "p3-adanfspirit") then
    {
      put #var m%checkmodezone 68a
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest corik
      put #var m%checkmodemove YES
      put #var m%checkmodemovelist ice caves
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 16|15|14|13|12|27|11|10|28|9|8|26|17|18|19|20|21
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
    }
    if ("$m%checkmodecombatpreset" = "p3-wyvernsjuve") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 452|453|454|455|456|457|458|459|460|461|462|463|465|467|466
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 452|453|454|455|456|457|458|459|460|461|462|463|465|467|466|575|576|577|578|579
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 575|576|577|578|579
    }
    if ("$m%checkmodecombatpreset" = "p3-wyvernsyoung") then
    {
      put #var m%checkmodezone 69
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest wyvern
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      if ("$m%checkmodepresetpremium" = "NO") then put #var m%checkmodefindroomlist 480|481|482|483|484|485|486|487|511|512
      if ("$m%checkmodepresetpremium" = "YES") then put #var m%checkmodefindroomlist 480|481|482|483|484|485|486|487|511|512|575|576|577|578|579
      if ("$m%checkmodepresetpremium" = "ONLY") then put #var m%checkmodefindroomlist 575|576|577|578|579
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
    }
    if ("$m%checkmodecombatpreset" = "p3-adanfsorcs") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest corik
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 151|152|153|154|155|156|157|158|159|160
    }
    if ("$m%checkmodecombatpreset" = "p3-adanfblades") then
    {
      put #var m%checkmodezone 68
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest corik
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 163|164|165|166|167|168|169|170|171|172|173|174|175|176
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
    }
    if ("$m%checkmodecombatpreset" = "p5-voidmoths") then
    {
      put #var m%checkmodezone 127
      put #var m%checkmodetravel YES
      put #var m%checkmodetraveldest boar
      put #var m%checkmodemove NO
      put #var m%checkmodetargetroom 0
      put #var m%checkmodefindroom YES
      put #var m%checkmodefindroomlist 643|644|645|646|647|648
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
  
  if !matchre("$m%checkmodeaupreset", "\b(%townpresetlist)\b") then put #var m%checkmodeaupreset none
  if ("$m%checkmodeaupreset" != "none") then
  {
    gosub TOWNPRESET au
  }
  if $m%checkmodeauzone > -1 then
  else put #var m%checkmodeauzone 0 
  if !matchre("$m%checkmodeautravel", "\b(YES|NO)\b") then put #var m%checkmodeautravel NO
  if !def(m%checkmodeautraveldest) then put #var m%checkmodeautraveldest crossing
  if !matchre("$m%checkmodeaumove", "\b(YES|NO)\b") then put #var m%checkmodeaumove NO
  if !def(m%checkmodeaumovelist) then put #var m%checkmodeaumovelist 1|42
  if ($m%checkmodeautargetroom > -1) then 
  else put #var m%checkmodeautargetroom 0
  
  if !matchre("$m%checkmodeammopreset", "\b(%ammopresetlist)\b") then put #var m%checkmodeammopreset none
  if ("$m%checkmodeammopreset" != "none") then
  {
    gosub TOWNPRESET ammo
  }
  if $m%checkmodeammozone > -1 then
  else put #var m%checkmodeammozone 0 
  if !matchre("$m%checkmodeammotravel", "\b(YES|NO)\b") then put #var m%checkmodeammotravel NO
  if !def(m%checkmodeammotraveldest) then put #var m%checkmodeammotraveldest crossing
  if !matchre("$m%checkmodeammomove", "\b(YES|NO)\b") then put #var m%checkmodeammomove NO
  if !def(m%checkmodeammomovelist) then put #var m%checkmodeammomovelist 1|42
  if ($m%checkmodeammotargetroom > -1) then 
  else put #var m%checkmodeammotargetroom 0
  
  if !matchre("$m%checkmodeburglepreset", "\b(%townpresetlist)\b") then put #var m%checkmodeburglepreset none
  if ("$m%checkmodeburglepreset" != "none") then
  {
    gosub TOWNPRESET burgle
  }
  if ($m%checkmodeburglezone > -1) then
  else put #var m%checkmodeburglezone 0
  if !matchre("$m%checkmodeburgletravel", "\b(YES|NO)\b") then put #var m%checkmodeburgletravel NO
  if !def(m%checkmodeburgletraveldest) then put #var m%checkmodeburgletraveldest crossing
  if !matchre("$m%checkmodeburglemove", "\b(YES|NO)\b") then put #var m%checkmodeburglemove NO
  if !def(m%checkmodeburglemovelist) then put #var m%checkmodeburglemovelist 1|42
  if ($m%checkmodeburgletargetroom > -1) then
  else put #var m%checkmodeburgletargetroom 0
  
  if !matchre("$m%checkmodepawnpreset", "\b(%pawnpresetlist)\b") then put #var m%checkmodepawnpreset none
  if ("$m%checkmodepawnpreset" != "none") then
  {
    gosub TOWNPRESET pawn
  }
  if ($m%checkmodepawnzone > -1) then
  else put #var m%checkmodepawnzone 0
  if !matchre("$m%checkmodepawntravel", "\b(YES|NO)\b") then put #var m%checkmodepawntravel NO
  if !def(m%checkmodepawntraveldest) then put #var m%checkmodepawntraveldest crossing
  if !matchre("$m%checkmodepawnmove", "\b(YES|NO)\b") then put #var m%checkmodepawnmove NO
  if !def(m%checkmodepawnmovelist) then put #var m%checkmodepawnmovelist 1|42
  
  if !matchre("$m%checkmodeperformpreset", "\b(%townpresetlist)\b") then put #var m%checkmodeperformpreset none
  if ("$m%checkmodeperformpreset" != "none") then
  {
    gosub TOWNPRESET perform
  }
  if ($m%checkmodeperformzone > -1) then
  else put #var m%checkmodeperformzone 0
  if !matchre("$m%checkmodeperformtravel", "\b(YES|NO)\b") then put #var m%checkmodeperformtravel NO
  if !def(m%checkmodeperformtraveldest) then put #var m%checkmodeperformtraveldest crossing
  if !matchre("$m%checkmodeperformmove", "\b(YES|NO)\b") then put #var m%checkmodeperformmove NO
  if !def(m%checkmodeperformmovelist) then put #var m%checkmodeperformmovelist 1|42
  if ($m%checkmodeperformtargetroom > -1) then
  else put #var m%checkmodeperformtargetroom 0
  
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
  if !matchre("$scriptalerts", "\b(YES|NO)\b") then put #var scriptalerts NO
  
  #UPKEEP
  #if !matchre("$m%checkmodeaumoveclenchshard", "\b(YES|NO)\b") then put #var m%checkmodeaumoveclenchshard NO
  if !matchre("$m%checkmodemovewhistle", "\b(YES|NO)\b") then put #var m%checkmodemovewhistle NO
  if !matchre("$m%checkmodemovescream", "\b(YES|NO)\b") then put #var m%checkmodemovescream NO
  if !matchre("$m%checkmodemovevanish", "\b(YES|NO)\b") then put #var m%checkmodemovevanish NO
  if !matchre("$m%checkmodebugout", "\b(YES|NO)\b") then put #var m%checkmodebugout NO
  if $m%checkmodebugoutnum > 0 then
  else put #var m%checkmodebugoutnum 1
  if !matchre("$m%checkmodebugoutonbleed", "\b(YES|NO)\b") then put #var m%checkmodebugoutonbleed NO
  if $m%checkmodebugoutroom > 0 then
  else put #var m%checkmodebugoutroom 1
  if !matchre("$m%checkmodeautoupkeep", "\b(YES|NO)\b") then put #var m%checkmodeautoupkeep NO
  if !matchre("$m%checkmodeauonhealth", "\b(YES|NO)\b") then put #var m%checkmodeauonhealth NO
  if $m%checkmodeauhealthnum >= 0 then
  else put #var m%checkmodeauhealthnum 80
  if !matchre("$m%checkmodeauonbleed", "\b(YES|NO)\b") then put #var m%checkmodeauonbleed NO
  if !matchre("$m%checkmodeauonnerves", "\b(YES|NO)\b") then put #var m%checkmodeauonnerves NO
  if !matchre("$m%checkmodeauonburden", "\b(YES|NO)\b") then put #var m%checkmodeauonburden NO
  if $m%checkmodeauburdennum >= 0 then
  else put #var m%checkmodeauburdennum 3
  if !matchre("$m%checkmodeauonammo", "\b(YES|NO)\b") then put #var m%checkmodeauonammo NO
  
  if $m%checkmodeminmoney >= 0 then
  else put #var m%checkmodeminmoney 0
  if !matchre("$m%checkmodeexchange", "\b(YES|NO)\b") then put #var m%checkmodeexchange NO
  if !matchre("$m%checkmodepremiumheal", "\b(YES|NO)\b") then put #var m%checkmodepremiumheal NO
  if !matchre("$m%checkmodenonpremheal", "\b(YES|NO)\b") then put #var m%checkmodenonpremheal NO
  if !matchre("$m%checkmoderepair", "\b(YES|NO)\b") then put #var m%checkmoderepair NO
  if !def(m%checkmoderepairlist) then put #var m%checkmoderepairlist scimitar|nightstick
  if !matchre("$m%checkmodebundlesell", "\b(YES|NO)\b") then put #var m%checkmodebundlesell NO
  if !matchre("$m%checkmodebundlevault", "\b(YES|NO)\b") then put #var m%checkmodebundlevault NO
  if (($m%checkmodebundlevault = "YES") && ($m%checkmodebundlesell = "YES")) then put #var m%checkmodebundlesell NO
  if !matchre("$m%checkmodevaulttown", "\b(%townvaultpresetlist)\b") then put #var m%checkmodevaulttown none
  if !matchre("$m%checkmodevaultmove", "\b(YES|NO)\b") then put #var m%checkmodevaultmove NO
  if $m%checkmodebundlerope >= 0 then
  else put #var m%checkmodebundlerope 0
  if !matchre("$m%checkmodegemsell", "\b(YES|NO)\b") then put #var m%checkmodegemsell NO
  if !matchre("$m%checkmodegemvault", "\b(YES|NO)\b") then put #var m%checkmodegemvault NO
  if $m%checkmodegempouches >= 0 then
  else put #var m%checkmodegempouches 0
  if !matchre("$m%checkmodeammobuy", "\b(YES|NO)\b") then put #var m%checkmodeammobuy NO
  if !def(m%checkmodeammobuylist) then put #var m%checkmodeammobuylist bow|xbow|sling
  if !matchre("$m%checkmodeammobuytown", "\b(%ammopresetlist)\b") then put #var m%checkmodeammobuytown none
  if !def(m%checkmodeammocontainer) then put #var m%checkmodeammocontainer backpack
  if $m%checkmodeammomin >= 0 then
  else put #var m%checkmodeammomin 100
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
  if !matchre("$m%checkmodelowestfirst", "\b(YES|NO)\b") then put #var m%checkmodelowestfirst NO
  if (($m%checkmodeweaponnum >= 1) && ($m%checkmodeweaponnum <= 14)) then
  else put #var m%checkmodeweaponnum 1
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
  if !matchre("$m%checkmodeoffhand", "\b(YES|NO)\b") then put #var m%checkmodeoffhand NO
  if !matchre("$m%checkmodeacms", "\b(YES|NO)\b") then put #var m%checkmodeacms NO
  if !matchre("$m%checkmodecleave", "\b(YES|NO)\b") then put #var m%checkmodecleave NO
  if !matchre("$m%checkmodecrash", "\b(YES|NO)\b") then put #var m%checkmodecrash NO
  if !matchre("$m%checkmodedoublestrike", "\b(YES|NO)\b") then put #var m%checkmodedoublestrike NO
  if !matchre("$m%checkmodeimpale", "\b(YES|NO)\b") then put #var m%checkmodeimpale NO
  if !matchre("$m%checkmodepalmstrike", "\b(YES|NO)\b") then put #var m%checkmodepalmstrike NO
  if !matchre("$m%checkmodepowershot", "\b(YES|NO)\b") then put #var m%checkmodepowershot NO
  if !matchre("$m%checkmodetwirl", "\b(YES|NO)\b") then put #var m%checkmodetwirl NO
  
  if !def(m%checkmodeseweapon) then put #var m%checkmodeseweapon scimitar
  if !matchre("$m%checkmodeseoffhand", "\b(YES|NO)\b") then put #var m%checkmodeseoffhand NO
  if !matchre("$m%checkmodesecombo", "\b(slice|puncture)\b") then put #var m%checkmodesecombo slice
  if !def(m%checkmodeleweapon) then put #var m%checkmodeleweapon broadsword
  if !matchre("$m%checkmodeleoffhand", "\b(YES|NO)\b") then put #var m%checkmodeleoffhand NO
  if !def(m%checkmodetheweapon) then put #var m%checkmodetheweapon claymore
  if !def(m%checkmodesbweapon) then put #var m%checkmodesbweapon mace
  if !matchre("$m%checkmodesboffhand", "\b(YES|NO)\b") then put #var m%checkmodesboffhand NO
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
  if !def(m%checkmodexbowammo) then put #var m%checkmodexbowammo bolt
  if !matchre("$m%checkmodexbowworn", "\b(YES|NO)\b") then put #var m%checkmodexbowworn NO
  if !def(m%checkmodebowweapon) then put #var m%checkmodebowweapon bow
  if !def(m%checkmodebowammo) then put #var m%checkmodebowammo arrow
  if !matchre("$m%checkmodebowworn", "\b(YES|NO)\b") then put #var m%checkmodebowworn NO
  if !def(m%checkmodeslingweapon) then put #var m%checkmodeslingweapon sling
  if !def(m%checkmodeslingammo) then put #var m%checkmodeslingammo stone
  if !matchre("$m%checkmodecollectammo", "\b(YES|NO)\b") then put #var m%checkmodecollectammo YES
  if !matchre("$m%checkmodeplatring", "\b(YES|NO)\b") then put #var m%checkmodeplatring NO
  if !def(m%checkmodeplatringitem) then put #var m%checkmodeplatringitem scimitar
  if !matchre("$m%checkmodearmorswap", "\b(YES|NO)\b") then put #var m%checkmodearmorswap NO
  if !matchre("$m%checkmodearmornum", "\b(1|2|3|4)\b") then put #var m%checkmodearmornum 4
  if !def(m%checkmodeshieldname) then put #var m%checkmodeshieldname sipar
  if !def(m%checkmodeshielddesc) then put #var m%checkmodeshielddesc a lumium round sipar
  if !def(m%checkmodearmor1name) then put #var m%checkmodearmor1name hauberk
  if !def(m%checkmodearmor1desc) then put #var m%checkmodearmor1desc a quilted fine silk hauberk sealed with protective wax
  if !matchre("$m%checkmodea1stealthrem", "\b(YES|NO)\b") then put #var m%checkmodea1stealthrem NO
  if !def(m%checkmodearmor2name) then put #var m%checkmodearmor2name gloves
  if !def(m%checkmodearmor2desc) then  put #var m%checkmodearmor2desc some lumium scale gloves
  if !matchre("$m%checkmodea2stealthrem", "\b(YES|NO)\b") then put #var m%checkmodea2stealthrem NO
  if !def(m%checkmodearmor3name) then put #var m%checkmodearmor3name helm
  if !def(m%checkmodearmor3desc) then put #var m%checkmodearmor3desc a lumium ring helm
  if !matchre("$m%checkmodea3stealthrem", "\b(YES|NO)\b") then put #var m%checkmodea3stealthrem NO
  if !def(m%checkmodearmor4name) then put #var m%checkmodearmor4name mask
  if !def(m%checkmodearmor4desc) then put #var m%checkmodearmor4desc a light lumium plate mask
  if !matchre("$m%checkmodea4stealthrem", "\b(YES|NO)\b") then put #var m%checkmodea4stealthrem NO
  
  #NONCOMBAT
  if !matchre("$m%checkmodenoncomdelay", "\b(YES|NO)\b") then put #var m%checkmodenoncomdelay NO
  if !matchre("$m%checkmodeappraise", "\b(YES|NO)\b") then put #var m%checkmodeappraise NO
  if !matchre("$m%checkmodeappraisetarget", "\b(bundle|creature)\b") then put #var m%checkmodeappraisetarget bundle
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
  if !matchre("$m%checkmodeburgletool", "\b(pick|rope|both)\b") then put #var m%checkmodeburgletool rope
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
  
  #MAGIC
  if !matchre("$m%checkmodeattune", "\b(YES|NO)\b") then put #var m%checkmodeattune YES
  if $m%checkmodeminconcentration >= 0 then
  else put #var m%checkmodeminconcentration 80
  if $m%checkmodeminmana >= 10 then
  else put #var m%checkmodeminmana 30
  if $m%checkmodecastingthrottle >= 0 then
  else put #var m%checkmodecastingthrottle 1
  if !matchre("$m%checkmodestraightcast", "\b(YES|NO)\b") then put #var m%checkmodestraightcast NO
  if !matchre("$m%checkmodeharnessing", "\b(YES|NO)\b") then put #var m%checkmodeharnessing NO
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
  if !matchre("$m%checkmodewandbuffnum", "\b(1|2)\b") then put #var m%checkmodewandbuffnum 1
  if !def(m%checkmodewandstorage) then put #var m%checkmodewandstorage backpack
  if !def(m%checkmodewand1item) then put #var m%checkmodewand1item scepter
  if $m%checkmodewand1num > 0 then
  else put #var m%checkmodewand1num 1
  if !def(m%checkmodewand2item) then put #var m%checkmodewand2item scepter
  if $m%checkmodewand2num > 0 then
  else put #var m%checkmodewand2num 2
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
  if !matchre("$m%checkmodeberserkcyclone", "\b(YES|NO)\b") then put #var m%checkmodeberserkcyclone NO
  if !matchre("$m%checkmodeberserkearthquake", "\b(YES|NO)\b") then put #var m%checkmodeberserkearthquake NO
  if !matchre("$m%checkmodeberserkflashflood", "\b(YES|NO)\b") then put #var m%checkmodeberserkflashflood NO
  if !matchre("$m%checkmodeberserklandslide", "\b(YES|NO)\b") then put #var m%checkmodeberserklandslide NO
  if !matchre("$m%checkmodeberserktornado", "\b(YES|NO)\b") then put #var m%checkmodeberserktornado NO
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
  if !matchre("$m%checkmoderitstype", "\b(any|low|mid|high)\b") then put #var m%checkmoderitstype mid
  #GUILD-THIEF
  if !matchre("$m%checkmodebackstab", "\b(YES|NO)\b") then put #var m%checkmodebackstab NO
  if !matchre("$m%checkmodesnipe", "\b(YES|NO)\b") then put #var m%checkmodesnipe NO
  if $m%checkmodekhrimax >= 1 then
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
  if (($m%checkmodebugoutonbleed = "YES") && ($m%checkmodeauonbleed = "YES") && ($m%checkmodeautoupkeep = "YES")) then put #var m%checkmodebugoutonbleed NO
  if $m%checkmodeharvest = "YES" then put #var m%checkmodepreserve YES
  if $m%checkmodetmfocus = "YES" then put #var m%checkmodetmdbprior YES
  if %necrostate = "forsaken" then
  {
    put #var m%checkmodepremiumheal NO
    put #var m%checkmodenonpremheal NO
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
  if !matchre("$bgdbcombo", "\b(YES|NO)\b") then put #var bgdbcombo NO
  if !matchre("$dragonsbreath", "\b(YES|NO)\b") then put #var dragonsbreath NO
  if $dbprepmana >= 30 then
  else put #var dbprepmana 15
  if $dbaddmana >= 0 then
  else put #var dbaddmana 0
  if !matchre("$magneticballista", "\b(YES|NO)\b") then put #var magneticballista NO
  if $mabprepmana >= 30 then
  else put #var mabprepmana 15
  if $mabaddmana >= 0 then
  else put #var mabaddmana 0
  
  if !matchre("$killweapon", "\b(YES|NO)\b") then put #var killweapon NO
  if !matchre("$killweapontype", "\b(melee|brawl|thrown|aimed)\b") then put #var killweapontype brawl
  if !def(killweaponitem) then put #var killweaponitem scimitar
  if !def(killweaponammo) then put #var killweaponammo bolt
  if !matchre("$killweaponcombo", "\b(edged|blunt|piercing)\b") then put #var killweaponcombo edged
  if !matchre("$killthrownverb", "\b(lob|throw|hurl)\b") then put #var killthrownverb lob
  if !matchre("$killthrownbond", "\b(YES|NO)\b") then put #var killthrownbond NO
  return

TOWNPRESET:
  if ("$m%checkmode$0preset" = "muspari") then
	{
		put #var m%checkmode$0zone 47
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest muspari
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 0
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 0
	}
  if ("$m%checkmode$0preset" = "theren") then
	{
		put #var m%checkmode$0zone 42
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest theren
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 239
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 242
	}
	if ("$m%checkmode$0preset" = "rossman") then
	{
		put #var m%checkmode$0zone 34a
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest rossman
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 0
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 0
	}
  if ("$m%checkmode$0preset" = "riverhaven") then
	{
		put #var m%checkmode$0zone 30
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest riverhaven
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 250
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 219
	}
	if ("$m%checkmode$0preset" = "dirge") then
	{
		put #var m%checkmode$0zone 13
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest dirge
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 0
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 0
	}
	if ("$m%checkmode$0preset" = "crossing") then
	{
		put #var m%checkmode$0zone 1
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest crossing
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 388
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 227
	}
	if ("$m%checkmode$0preset" = "leth") then
	{
		put #var m%checkmode$0zone 61
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest leth
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 0
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 0
	}
	if ("$m%checkmode$0preset" = "ilaya") then
	{
		put #var m%checkmode$0zone 112
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest ilaya
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 190
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 185
	}
	if ("$m%checkmode$0preset" = "fangcove") then
	{
		put #var m%checkmode$0zone 150
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest fangcove
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 0
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 0
	}
	if ("$m%checkmode$0preset" = "shard") then
	{
		put #var m%checkmode$0zone 67
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest shard
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 194
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 180
	}
	if ("$m%checkmode$0preset" = "hibarnhvidar") then
	{
		put #var m%checkmode$0zone 116
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest hib
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 439
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 442
	}
	if ("$m%checkmode$0preset" = "boarclan") then
	{
		put #var m%checkmode$0zone 127
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest boar
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 29
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 233
	}
  if ("$m%checkmode$0preset" = "ratha") then
	{
		put #var m%checkmode$0zone 90
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest ratha
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 579
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 578
	}
	if ("$m%checkmode$0preset" = "aesry") then
	{
		put #var m%checkmode$0zone 99
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest aesry
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 144
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 130
	}
	if ("$m%checkmode$0preset" = "merkresh") then
	{
		put #var m%checkmode$0zone 107
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest merkresh
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 170
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 292
	}
  if ("$m%checkmode$0preset" = "jeihrem") then
	{
		put #var m%checkmode$0zone 90f
		put #var m%checkmode$0travel YES
		put #var m%checkmode$0traveldest jeihrem
		put #var m%checkmode$0move NO
		if ($0 = "burgle") then put #var m%checkmodeburgletargetroom 0
		if ($0 = "perform") then put #var m%checkmodeperformtargetroom 0
	}
  return












#==============STATUS_CHECKS==============  



STATUSCHECK:
  #DEATH_AND_CONNECTION_CHECKING
  if ($dead = 1) then goto DEADWAIT
  if ($connected = 0) then
  {
    put #echo >$alertwindow Yellow Disconnected!  Waiting to reconnect and restart script.
    goto CONNECTEDWAIT
  }
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
  if %scriptmode = 1 then
  {
    if $sitting = 1 then gosub STAND
    if $kneeling = 1 then gosub STAND
    if $prone = 1 then gosub STAND
  }
  if %buffingonly != 1 then
  {
    #BLEEDING
    if (($bleeding = 1) && (%scriptmode = 1)) then
    {
      if %auonbleed = "YES" then var goupkeep 1
      if %t > %nextbleed then gosub BLEEDCHECK
    }
    #BURDEN
    if ((%auonburden = "YES") && (%autoupkeep = "YES") && (%scriptmode = 1)) then
    {
      #echo t: %t
      #echo nextburdencheck: %nextburdencheck
      if %t > %nextburdencheck then
      {
        gosub BURDENCHECK
        pause 1
        #put #echo Yellow encumbrance: %encumbrance
        #put #echo Yellow auburdennum: %auburdennum
        if %encumbrance >= %auburdennum then
        {
          var goupkeep 1
          var autype burden
        }
        var nextburdencheck %t
        math nextburdencheck add 120
      }
    }
    #NERVES
    if ((%autoupkeep = "YES" ) && (%auonnerves = "YES") && (%scriptmode = 1)) then
    {
      if %t > %nextnervecheck then
      {
        var badnerves 0
        action (nerves) on
        gosub HEALTHCHECK
        pause 1
        action (nerves) off
        var nextnervecheck %t
        math nextnervecheck add 120
        if %badnerves = 1 then
        {
          var goupkeep 1
          var autype nerves
          var badnerves 0
        }
      }
    }
    #AUTOUPKEEP
    if ((%autoupkeep = "YES") && (%scriptmode = 1)) then
    {
      if %goupkeep = 1 then
      {
        if (%movetrainactive != 1) then gosub AUTOUPKEEPLOGIC
      }
    }
    #COLLECTAMMO
    if %scriptmode = 1 then gosub COLLECTINGAMMO
    if %scriptmode = 1 then
    {
      if %feetcheck = 1 then
      {
        var feetcheck 0
        gosub STOWFEET
      }
    }
    #DEAD_MONSTER
    if %scriptmode = 1 then
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
  }
  #TARGET_SELECTION
  if %scriptmode = 1 then
  {
    #echo Goodtarget: %goodtarget
    if %goodtarget = 0 then
    {
      if %avoidshock = "YES" then gosub TARGETSELECT
      else gosub FACE
    }
  }
  #BARBARIAN
  if $guild = "Barbarian" then
  {
    gosub BARBBUFFLOGIC
    gosub BARBROARLOGIC
    if %wandbuff = "YES" then gosub WANDBUFFING
  }
  #KHRI
  if $guild = "Thief" then
  {
    gosub KHRILOGIC
    if %wandbuff = "YES" then gosub WANDBUFFING
  }
  #ALFAR_COMMAND
  if %alfarcommand = 1 then
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
      if matchre ("$righthandnoun", "%tmfocusitem") then
      else
      {
        gosub STOW right
        gosub GETITEM %tmfocusitem
        gosub TMFOCUSINVOKE
      }
    }
  }
  #SPELL_WAIT_CHECK
  if %preptimewait > 0 then
  {
    if %preptime > 0 then
    {
      #echo preptime: %preptime
      #echo preptimewait: %preptimewait
      #echo t: %t
      #echo
      var preptimewaittest %preptime
      math preptimewaittest add %preptimewait
      #echo preptimewaittest: %preptimewaittest
      #echo t: %t
      if %t >= %preptimewaittest then
      {
        #put #echo Yellow Past!
        var ready 1
      }
    }
  }
  #SPELL_CANCEL
  if %scancel = 1 then
  {
    var scancel 0
    gosub SPELLCANCEL
  }
  #SPELL_PREPPING
  if %scriptmode = 1 then gosub MAINSPELLLOGIC
  #CASTING
  if %casting = 1 then gosub CASTINGLOGIC
  return



#==============GENERAL_SUBS==============  


EXIT:
  exit


RPLAYERSCRUB:
  eval roomplayers replace("%roomplayers", " who has coalesced into a battle of light and shadow, each warring for dominance", "") 
  eval roomplayers replace("%roomplayers", " and ", ", "
  eval roomplayers replace("%roomplayers", ", ", "|"
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
  if ($dead = 1) then goto DEADWAIT
  if ($connected = 0) then
  {
    put #echo >$alertwindow Yellow Disconnected!  Waiting to reconnect and restart script.
    goto CONNECTEDWAIT
  }
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
      if %bugout = "YES" then goto BUGOUT
    }
	}
	goto %timeoutsub

DEADWAIT:
  put #flash
  put #play JustArrived
  pause 4
  goto DEADWAIT

CONNECTEDWAIT:
  #put #flash
  #put #play JustArrived
  if ($connected = 1) then return
  pause 4
  goto CONNECTEDWAIT




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
  matchre BUYP ...wait|type ahead|stunned|while entangled in a web.
  matchre RETURN Brother Durantine nods slowly|Friar Othorp grins broadly|Sister Nongwen smiles and nods|Sister Imadrail smiles and nods|The sales clerk hands you your
  match RETURN You realize you don't have that much.
  put order %buytarget
  matchwait 5
	var timeoutsub BUY
  var timeoutcommand order %buytarget
	goto TIMEOUT


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
  matchre GETITEMP %waitstring|You don't seem to be able to moveYou grab hold
  matchre GETUNTIE You pull at it, but the ties prevent you.  Maybe if you untie it, first?|You should untie the
  matchre RETURN You get|You're already holding|You are already holding that.|You pick up|What were you referring to?|You stop as you realize|You must unload|You fade in for a moment|You remove|You pull|What were you referring to?|You try to grab your|Please rephrase that command\.|You are already holding that\.
  match RETURN Get what?
  matchre GETITEMP You try to grab your
  matchre GETITEMBAD You need a free hand to pick that up.
  matchre GETCLIMBPRACBAD You should stop practicing 
  matchre GETITEMADV Sheesh, it's still alive! 
  match GETITEMREM But that is already in your inventory.
  match GETITEMPLAYSTOP You should stop playing before you do that.
  match GETITEMPLAYSTOP You are a bit too busy performing to do that.
  put get %getitemstring
  matchwait 5
  var timeoutsub GETITEMMAIN
	var timeoutcommand get %getitemstring
	goto TIMEOUT

GETUNTIE:
  gosub UNTIEITEM %getitemstring
  return

GETITEMREM:
  gosub REMITEM %getitemstring
  return
 
GETITEMPLAYSTOP:
  #put #play Soul
  #put #echo Yellow needscleaning: %needscleaning    firstclean: %firstclean
  #put #echo Yellow Playing: %playing
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
  matchre RETURN You open the|That is already open\.|You open your
  put open %openitemstring
  matchwait 5
	var timeoutsub OPENITEMMAIN
	var timeoutcommand %openitemstring
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
  goto PUTITEMMAIN
PUTITEMP:
	pause
PUTITEMMAIN:
	matchre PUTITEMP %waitstring
	matchre RETURN You put|What were you referring to?|You drop|Perhaps you should be holding that first.|A bored-looking Human boy says|You briefly twist the top off of|There doesn't seem to be any more room left|is too long, even after stuffing it, to fit in the|There isn't any more room in|But that's closed\.|You just can't get the .* to fit in the \w*, no matter how you arrange it\.|Perhaps you should be holding that first\.|is too long to fit in the|Raffle Attendant Tizzeg examines your ticket and exclaims
	match PUTITEMSTOW There's no room in the
	match RETURN That's too heavy to go in there!
  matchre PUTITEMSTOW A bored-looking Human boy raises an eyebrow in your direction.
	put put %putitemstring
	matchwait 5
	var timeoutsub PUTITEMMAIN
  var timeoutcommand put %putitemstring
	goto TIMEOUT

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

RUMMAGE:
  var rummagestring $0
  goto RUMMAGEMAIN
RUMMAGEP:
  pause
RUMMAGEMAIN:
  matchre RUMMAGEP %waitstring
  matchre RETURN I don't know what you are referring to.|You rummage|While it's closed?
  put rummage %rummagestring
	matchwait 5
	var timeoutsub RUMMAGEMAIN
  var timeoutcommand rummage %rummagestring
	goto TIMEOUT

SHEATHEHAND:
  var sheathehandstring $0
  goto SHEATHEHANDMAIN
SHEATHEHANDP:
  pause
SHEATHEHANDMAIN:
  matchre SHEATHEHANDP %waitstring
  matchre SHEATHEBAD Sheathe your
  matchre RETURN Sheathe what?|You sheathe|You hang|You secure|You easily strap|Sheathing a
  if %sheathehandstring = "right" then var sheatheitemstring $righthandnoun
  else var sheatheitemstring $lefthandnoun
  put sheathe %sheatheitemstring
  matchwait 5
  var timeoutsub SHEATHEHANDMAIN
  var timeoutcommand %sheatheitemstring
	goto TIMEOUT

SHEATHEBAD:
  if %stowhand = "right" then gosub STOWITEM $righthandnoun
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
  matchwait

STOW:
  var stowhandstring $0
  goto STOWMAIN
STOWP:
  pause
STOWMAIN:
  if %stowhandstring = "left" then
  {
    if ("$lefthand" = "Empty") then return
  }
  if %stowhandstring = "right" then
  {
    if ("$righthand" = "Empty") then return
  }
  var stowcustomsuccess 0
  gosub STOWCUSTOM $%stowhandstringhand
  #echo stowcustomsuccess: %stowcustomsuccess
  if %stowcustomsuccess = 1 then return
  matchre STOWP %waitstring
  match STOWTOOHEAVY That's too heavy to go in there!
  matchre STOWUNLOAD You need to unload|You should unload
  matchre STOWSTOPPLAY You should stop playing before you do that.
  matchre STOWSKINBAD You try to stuff your
  matchre STOWGEMBAD You think the .* pouch is too full to fit another gem into\.
  matchre STOWCOIL The \S+ rope is too long, even after stuffing it, to fit in the
  matchre RETURN You put your|Stow what\?|You open your pouch|You stop as|What were you referring to?|You think the gem pouch|You stop as you realize|You easily strap your
  put stow %stowhandstring
  matchwait 5
  var timeoutsub STOWMAIN
  var timeoutcommand stow %stowhandstring
	goto TIMEOUT

STOWTOOHEAVY:
  gosub DEEPSLEEP
  put #echo >$alertwindow Yellow Tried to stow, but it's too heavy!  Please address!
  put #flash
  put #play Advance
  if %bugout = "YES" then
  {
    var bugoutnostow 1
    goto BUGOUT
  }
  else goto STOWTOOHEAVY2

STOWTOOHEAVY2:
  echo ===CAN'T STOW, TOO HEAVY===
  put #flash
  put #play Advance
  pause 5
  goto STOWTOOHEAVY2

STOWUNLOADP:
  pause
STOWUNLOAD:
  if (%stowhandstring = "left") then
  {
    gosub SWAP
  }
  if $lefthand != "Empty" then
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
  if %stowhandstring = "right" then gosub DUMPITEM $righthandnoun
  else gosub DUMPITEM $lefthandnoun
  return

STOWSKINBAD:
  if %stowhandstring = "right" then gosub DUMPITEM $righthandnoun
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
  var stowitemstring $0
  goto STOWITEMMAIN
STOWITEMP:
  pause
STOWITEMMAIN:
  var stowcustomsuccess 0
  gosub STOWCUSTOM %stowitemstring
  if %stowcustomsuccess = 1 then return
  matchre STOWITEMP %waitstring
  match STOWITEMTOOHEAVY That's too heavy to go in there!
  matchre RETURN You put your|You sling|You attach|You open your pouch|You stop as
  match RETURN Stow what?  Type 'STOW HELP' for details.
  match STOWITEMMAINFULL You need a free hand to pick that up.
  put stow %stowitemstring
  matchwait 5
  var timeoutsub STOWITEMMAIN
  var timeoutcommand stow %stowitemstring
	goto TIMEOUT

STOWITEMTOOHEAVY:
  gosub DEEPSLEEP
  put #echo >$alertwindow Yellow Tried to stow, but it's too heavy!  Please address!
  put #flash
  put #play Advance
  if %bugout = "YES" then
  {
    var bugoutnostow 1
    goto BUGOUT
  }
  else goto STOWITEMTOOHEAVY2

STOWITEMTOOHEAVY2:
  echo ===CAN'T STOW, TOO HEAVY===
  put #flash
  put #play Advance
  pause 5
  goto STOWITEMTOOHEAVY2


STOWITEMMAINFULL:
  gosub STOW left
  goto STOWITEMMAIN

SWAPP:
  pause
SWAP:
  matchre SWAPP %waitstring
  matchre RETURN You move|You have nothing to swap!|Your (right|left) hand is too injured to do that\.
  put swap
  matchwait 5
  var timeoutsub SWAP
  var timeoutcommand swap
	goto TIMEOUT

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
  matchre RETURN You unload|isn't loaded!|You remain concealed by your surroundings
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
  match WIELDBOND Wield what?
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
      gosub BOWLOAD
      if (%goupkeep = 1) then return
      gosub STOW left
      if %usingacm = 1 then goto ATTACKACM
      else goto BOWAIM
    }
    else goto BOWNOAMMO
  }
  else
  {
		gosub BOWLOAD
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
  matchre ADVRETURN to melee range|already at melee|You are already advancing|You begin to 
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
  matchre ANASUCC You fail to find any holes|Your analysis reveals a slight|You reveal a tiny weakness|You reveal a small|Your analysis reveals a small|Your analysis reveals a moderate|Your analysis reveals a good|Your analysis reveals a substantial|Your analysis reveals a large|Your analysis reveals a great|Your analysis reveals an exceptional|You reveal a moderate|You reveal a slight
  matchre RETURN Your analysis reveals a massive
	matchre ANAADV ^You must be closer
	match ANAFACE There is nothing else to face!
  match ANAFACENEXT Analyze what?
  matchre ANALYZE ^You fail to find any
  matchre ANALYZEP %waitstring
  matchre ANAFLYING is flying too high for you to attack.
  matchre ANAPRONE You should stand up first.
  matchre RETURN Face what?
  put analyze
  matchwait 5
	var timeoutsub ANALYZE
  var timeoutcommand analyze
	goto TIMEOUT

ANASUCC:
  gosub STATUSCHECK
  goto ANALYZE

ANAPRONE:
  gosub STAND
  goto ANALYZE

ANAFLYING:
  gosub FACE
  if %badface = 1 then
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
  match ATTACKACMSTOW You must free up your left hand first.
  matchre ATTACKACMSTAND You'll need to stand up first.
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
  gosub BOWLOAD
  if (%goupkeep = 1) then return
  if matchre ("$lefthand", "(%ubowammo)") then gosub STOW left
  goto ATTACKACM

ATTACKACMSUCCESS:
  var nextacm%acmtype %t
  math nextacm%acmtype add 90
  #put #echo %alertwindow Used ACM %acmtype!
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
  matchre ATTMELEEFLYING is flying too high for you to attack.
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


BOWLOADP:
	pause
BOWLOAD:
	matchre BOWLOADP %waitstring
	matchre BOWLOADSTOW is already loaded|to load the|You load|You reach into your|You can not load the
	matchre BOWLOADGETITEM You don't have the proper ammunition
	match BOWDLBAD You are not skilled enough to dual-load
	match BOWNOEAGLE You focus on the image of an eagle but are unable to draw upon its majesty.
	match BOWNOSTEADY Such a feat would be impossible without steadier hands.
	match BOWNOAMMO What weapon are you trying to load?
	if %usingdualload = 1 then put load my %ubowammos
	else put load my %ubowammo
	matchwait 5
	var timeoutsub BOWLOAD
  if %usingdualload = 1 then var timeoutcommand load my %ubowammos
  else var timeoutcommand load my %ubowammo
	goto TIMEOUT

BOWLOADSTOW:
  if matchre ("$lefthand", "%ubowammo") then gosub STOWITEM %ubowammo
  return

BOWLOADGETITEM:
  if %usingdualload = 1 then goto BOWNOAMMO
  gosub STOW left
  gosub GETITEM %ubowammo
  goto BOWLOAD

BOWDLBAD:
  var usingdualload 0
  var dualload NO
  put #var dualload NO
  put #echo Yellow Not skilled enough to dual-load!  Turning variable off.
  return

BOWNOEAGLE:
  var usingdualload 0
  goto BOWLOAD
  
BOWNOSTEADY:
  var usingdualload 0
  goto BOWLOAD

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
    if %bugout = "YES" then goto BUGOUT
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
	if %avoidshock = "YES" then
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
	  if mob = 0 then
	  {
	    var badface 1
	    return
	  }
	  if "%mobpos" = "Facing" then return
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
	if $monstercount < 2 then return
  matchre FACEASSESSP %waitstring
	matchre FACEVALUES ^An? .*(\b\w+(?:\S+)?\b) \((\d+):.*\) is (facing|flanking|behind|advancing on|moving to flank|moving behind) you at
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
	match FACEINVALID Face what?
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
  if %avoidshock = "YES" then
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
  gosub MONTEST
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
  matchre FLEECONT You foresee the situation deteriorating rapidly.|You realize you're out of your element!|Either you're looking really tasty|You feel the wrenching pain of dejection as you|Hoping the gods will come to your rescue, you mutter|You suddenly realize that you may be completely outclassed in this match.|You suddenly realize that the hunter may be the hunted\.
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
  matchwait 180
  goto MOVEMAIN

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
  var movement $0
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
		matchre STAND The weight of all your possessions prevents you from standing.|You are so unbalanced you cannot manage to stand.
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
BERSERKP:
  pause
BERSERK:
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
  matchre BERSERKRETURN Roundtime|The momentus rage of the avalanche replenishes your energy\!|A ravenous energy fills your limbs and you feel yourself growing healthier\!|You struggle\, but find yourself lacking the inner fire to enact such a rage\!|Your inner fire lacks the strength to fuel such a rage at this time\.|A vortex of malice springs into being\, expanding your focus and steadying your shield arm\!|Fury storming forth\, your pulse whips itself up to a furious tempo\!|You sense the rage within you well up and explode in a wild rage of dangerous power\.|You form the epicenter of a violent rage bent on crumbling your enemies\!|The momentus eruption of the volcano hardens you against damage\!|Careful control and timing of rage can provide reflexes capable of weathering even a landslide\.|In a flash your body fills with a flood of resilient rage\!|A supernatural strength and need to lash out at your foes inhabits you\.|A supernatural timing pulses through your veins, steadying your reaction against reflex based contests\!|The .* in your hands suddenly feels easier to wield, and more capable of powerful attacks\.
  match BERSERKRETURN Your hands shake in anticipation of releasing the fury of the tsunami down upon your foes!
  matchre BERSERKRETURN But you are already enraged with that berserk\.
  put berserk %berserktype
  matchwait 5
	var timeoutsub BERSERK
  var timeoutcommand berserk %berserktype
	goto TIMEOUT

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


FORMP:
  pause
FORM:
  matchre FORMP %waitstring
  match FORMBAD You find yourself unable to focus on an additional form.  Perhaps try stopping one first?
  match FORMWRONG You have no idea how to do that.
  match FORMTRAIN You have not been trained in that form.
  matchre FORMRETURN But you are already practicing that form!|Roundtime
  put form start %formtype
  matchwait 5
	var timeoutsub FORM
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
  
FORMRETURN:
  gosub MEDITATEPOWER
  return

FORMSTOPP:
  pause
FORMSTOP:
  put #var SpellTimer.%formtype.active 0
  matchre FORMSTOPP %waitstring
  matchre FORMRETURN But you are not practicing that form!|You feel your inner fire cool as you finish practicing the Form|The powerful gait of the Buffalo form
  put form stop %formtype
  matchwait 5
	var timeoutsub FORMSTOP
  var timeoutcommand form stop %formtype
	goto TIMEOUT

MEDITATEPOWERP:
  pause
MEDITATEPOWER:
  matchre MEDITATEPOWERP %waitstring
  match RETURN You feel a jolt as your vision snaps shut.
  put meditate power
 	matchwait 5
	var timeoutsub MEDITATE POWER
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
  put meditate %meditationtype
  matchwait

MEDITATIONRETURN:
  gosub STAND
  gosub MEDITATEPOWER
  return

MEDITATIONBAD:
  put #echo >$alertwindow Yellow Tried to start %meditationtype meditation, but there were already 3 meditations up!  Please investigate.
  put #flash
  put #play JustArrived
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
  matchwait

ROARP:
  pause
ROAR:
  var nextroar%roartype %t
  math nextroar%roartype add 120
  matchre ROARP %waitstring
  matchre ROARFACE You are not facing an enemy to roar at!
  matchre RETURN Roundtime|Strain though you might, you cannot muster|You have not been trained in that roar.
  put roar quiet %roartype
  matchwait

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
  put exhale %warhornitem lure
  matchwait



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
  var badcast 0
  var scancel 0
  var ctoverride 0
  var omcast 0
  var preptime 0
  var preptimewait 0
  return

CASTINGLOGIC:
  if %necrosafety = "YES" then
  {
    gosub NSAFETYCHECK
    if %necrogood != 1 then return
  }
  if %prepped != 1 then
  {
    gosub ARRANGEMANA
    if $concentration > %minconcentration then gosub PREP
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
        #gosub ARRANGEMANA
        gosub CHARGE
      }
    }
  }
  if %ready = 1 then 
  {
    if %cambtapped = 0 then
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
    if $Arcana.Ranks = 1750 then var arcanalock 1
    if $Attunement.LearningRate < 20 then var attunelock 0
    if $Attunement.LearningRate > 31 then var attunelock 1
    if $Attunement.Ranks = 1750 then var attunelock 1
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
	if %spellprepping = "mab" then
	{
	  send prep cantrip r s
	  send gesture ballista
	  pause 1
	  gosub BALLISTARUB
	}
	if %pcast = 1 then put #parse PCASTING COMPLETE!
	if %astralcast = 1 then return
  if %kcast = 1 then return
  if %multicast = 1 then goto MULTICASTRESET
  exit
  
CASTCLEANUPMAIN:
  if %badcast = 1 then
  {
    #put #flash
    #put #play Echo
    #put #echo Yellow Alarm: Bad cast via Trigger!
    if %harnmana > 0 then gosub RELMANA
    goto CASTRESET
  }
  if %symbiosis = 1 then
  {
    gosub PREPSYMBIOSIS
    gosub RELSYMBIOSIS
  }
  if $Attunement.LearningRate > 33 then var attunelock 1
  if $Arcana.LearningRate > 33 then var arcanalock 1
  if %spellprepping = "db" then var dbready 1
	if %spellprepping = "ignite" then
	{
	  if %buffing != 1 then gosub RELNSPELL ignite
	  if %ignitestow = 1 then
	  {
	    var ignitestow 0
	    var stowitem %ignitebackup
	    gosub STOWITEM
	  }
	}
	if %spellprepping = "iots" then put invoke circle
  if %spellprepping = "mab" then
	{
	  send prep cantrip r s
	  send gesture ballista
	  pause 1
	  gosub BALLISTARUB
	}
  if %spellprepping = "shadowling" then gosub INVOKESHADOW
	if %spellprepping = "tks" then
	{
  	gosub GETITEM %tktitem
    gosub PUTITEM %tktitem in %storage
	}
	if %spellprepping = "tkt" then
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
  if %harnmana > 0 then gosub RELMANA
  if $preparedspell != "None" then gosub RELSPELL
  gosub CASTRESET
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
  if %spellprepping = "shadowling" then put release shadowling
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
	matchre CASTCLEANUP You gesture.|You gesture at|You wave your hand|With a wave of your hand|You roll your hands in an elliptical|You clasp your hands together|You cup your hand before|You clap your hands once|Your spell|You press your fist|You reach with your fist toward the ground.|You speak a few words of righteousness|You whisper|Tendrils of flame|You make a holy gesture|You close your eyes and take several slow|You clench your hands into fists and grit your teeth|You don't think you can manage to ignite another weapon at the moment.|The flames dancing along your fingertips|Mentally steeling yourself in preparation for|You shudder involuntarily|You release an accompaniment of elemental|You thrust your (right|left) arm before you, fingers splayed\.|With a wave of your hand, your vitality is fully restored\.|You strike your heel against the ground|A sense of calm focus|Roundtime|Your heart skips a beat as your spell|You clench your fists, pressing your fingernails painfully into your flesh\.|You place your hands on your temples\.|You raise your fist toward the sun\.|You raise your hand in an imaginary toast to Glythtide\.|You drop briefly to one knee as you firmly press your palms into the ground\.|You steeple your fingers together to channel the spell's energies\.|You close your eyes and focus on the old hero, Lirisa\.|You swear
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
  if %harnmana > 0 then gosub RELMANA
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
	var timeoutsub INVOKE
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
  matchre RETURN Roundtime:|You are a bit too busy performing to do that.|You aren't trained in the ways of magic.
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
	matchre PREPREL you're already preparing|You have already fully prepared|You are already preparing
	match PREPPLAYING You should stop playing before you do that.
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

INVOKETATTOOP:
  pause
INVOKETATTOO:
  matchre INVOKETATTOOP %waitstring
  match INVOKETATTOOGOOD You brace yourself as you activate your tattoo and feel empowered, as its magic washes over you.
  match INVOKETATTOOBAD You brace yourself as you activate your tattoo, but nothing happens.  Its magic appears depleted.
  match INVOKETATTOOGOOD You brace yourself as you activate your tattoo, but nothing happens as you're already under a heroic effect.
  put invoke tattoo
  matchwait 5
	var timeoutsub INVOKETATTOO
  var timeoutcommand invoke tattoo
	goto TIMEOUT

INVOKETATTOOGOOD:
  var nexttattoo %t
  math nexttattoo add 3600
  return

INVOKETATTOOBAD:
  var nexttattoo %t
  math nexttattoo add 300
  return

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
  put #echo %alertwindow Tried to invoke a tattoo, but did not have one!  Turning off variable.
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
  matchre RETURN Your body is no longer imbued with Fire\.|The Earth energy flows from your body, returning to its rightful place in the ground beneath your feet\.|You feel the energy of|The warm feeling in your hand goes away\.|The refractive field surrounding you fades away.|Your corruption fades, revealing you to the world once more\.|Release what?
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
	if $guild = "Barbarian" then return
	if $guild = "Thief" then return
	if $guild = "Necromancer" then
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
  matchre RETURN The world around you seems to slow as the spell grips your mind\.|The spell pulses through your soul, rekindling your holy rage\.|Mentally steeling yourself in preparation for the unnatural action|A glistening net of coiling tendrils|Your blood rises as images of ferocious battles play across your mind\.  You feel the fervor of combat grip you\.|You harness the currents of air and channel them around yourself\.|The overwhelming sense of unity with your hidden brothers and sisters sharpens your intuition, kin and prey alike\.|Your blood begins to boil and with a mighty shout you allow the rage within to flow outward for all to see\.
  match WANDINVOKESTOW You must be able to handle your disc with both hands to use it for a ritual.
  matchre WANDINVOKEBAD ^The \w+ remains inert\.
  match You are in no condition to do that.
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
  matchre ENTERVAULTP %waitstring
  matchre ENTERVAULTNONE The attendant says, "Hey bub, are you lost?|The attendant says, "Hey lady, are you lost?
  matchre ENTERVAULTPAY The Dwarven attendant grabs you by the wrist\.|The attendant catches your arm and says,
  matchre ENTERVAULTOPEN The attendant opens a small panel and fiddles with some controls
  matchre ENTERVAULT2 The attendant steps in front of
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
          echo Waiting for Wickett or the gemsmith.
          pause 60
          goto GEMPOUCHASK
        }
      }
    }
  }
  else var actualappraiser %appraiser
  matchre GEMPOUCHASKP %waitstring
  matchre GEMPOUCHASKGOOD hands you (a|an) (\S+) gem pouch\.
  matchre RETURN Usage: ASK|"All I know about are skins 
  put ask %actualappraiser for gem pouch
  matchwait
  
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
  put adjust bundle
  matchwait 5
	var timeoutsub BUNDLEADJUST
  var timeoutcommand adjust bundle
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
  if %bugout = "YES" then goto BUGOUT
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
  put dissect
  matchwait 5
	var timeoutsub DISSECT
  var timeoutcommand dissect
	goto TIMEOUT

DISSECTSTOW:
  gosub STOW left
  goto DISSECT


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
  matchwait

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
  matchwait

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
  if %bugout = "YES" then goto BUGOUT
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
  matchwait

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
  if matchre ("$roomobjs", "(%boxtype) (%boxes)") then
  {
    var boxitem $1 $2
    gosub GETITEM %boxitem
    if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a box!
    gosub PUTITEM my %boxitem in my %boxstorage
  }
  if matchre ("$roomobjs", "(%boxtype) (%boxes)") then goto BOXGET
  return


LOOTP:
  pause
LOOT:
  if %noloot = "YES" then return
  if !matchre ("$roomobjs", "((which|that) appears dead|\(dead\))") then return
  matchre RETURN You search|You should probably wait until|You find nothing of interest.|I could not find what you were referring to.
  match LOOT and get ready to search it!
  matchre LOOTP %waitstring
  put loot %loottype
  matchwait 5
	var timeoutsub SEARCH
  var timeoutcommand loot %loottype
	goto TIMEOUT


LOOTCHECK:
  if (%collectcoin = "YES") then gosub COINGET
  if (%savegwethstones = "YES") then gosub GWETHGET
  if (%collectgem = "YES") then gosub GEMGET
  if (%collectboxes = "YES") then gosub BOXGET
  if (%collectscroll = "YES") then gosub SCROLLGET
  if (%collectmaps = "YES") then gosub MAPGET
  if (%misckeeplist != "none") then
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


SCROLLGET:
  if matchre("$roomobjs", ".*(?<!page of )\b(%scrolls)\b(,|\.| and)") then
  {
    var foundscroll $1
    if %lootalerts = "YES" then put #echo %alertwindow Yellow [Treasure]: Found a scroll - %foundscroll! 
    gosub STOWITEM %foundscroll
  }
  if matchre("$roomobjs", ".*(?<!page of )\b(%scrolls)\b(,|\.| and)") then goto SCROLLGET
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
  if matchre ("$roomobjs", "(\w+) ((which|that) appears dead|\(dead\))") then var ritualmonster $1
  if %preserve = "YES" then gosub PRESERVE
  if %devour = "YES" then
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
        return
      }
    }
  }
  if %dissect = "YES" then
  {
    if matchre("$roomobjs", "(%skinnablecritters) ((which|that) appears dead|\(dead\))") then
    {
      if $Skinning.LearningRate > $Thanatology.LearningRate then
      {
        gosub NECRODISSECT
        var necroskin 1
      }
    }
    else
    {
      gosub NECRODISSECT
      var necroskin 1
    }
  }
  else
  {
    if %harvest = "YES" then
    {
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
  if %harveststore = "YES" then
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
	var timeoutsub DISSECT
  var timeoutcommand perform preserve on %ritualmonster
	goto TIMEOUT



#####WM_SUBS#####


BALLISTALOADP:
  pause
BALLISTALOAD:
  matchre BALLISTALOADP %waitstring
	matchre RETURN Roundtime|The earthen ballista is already loaded with a large rock!|What weapon are you trying to load?
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
  matchre RETURN You point at|I could not find what you were referring to.|you slap your|I do not understand what you mean.|I don't think so.
  matchre BGLOOT You wave to
  put %bggesture %bgmon
  matchwait 5
	var timeoutsub BGATTACK
  var timeoutcommand %bggesture %bgmon
	goto TIMEOUT
  
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


SUMMONWEAPONP:
  pause
SUMMONWEAPON:
  matchre SUMMONWEAPONP %waitstring
  matchre RETURN You lack the elemental charge to summon a weapon\.
  matchre SUMMONWEAPONSET Closing your eyes, you grunt briefly in effort as you sense a small earthen ethereal fissure open in front of you\.  Thrusting your hand through, you draw out a.*stone (\w+)\.
  match SUMMONWEAPONSTOW How can you summon a weapon, when your hands are full?
  put summon weapon
  matchwait 5
	var timeoutsub SUMMONWEAPON
  var timeoutcommand summon weapon
	goto TIMEOUT

SUMMONWEAPONSET:
  var summweaponname $1
  return

SUMMONWEAPONSTOW:
  gosub STOW left
  goto SUMMONWEAPON

 











COMMANDWARRIORP:
  pause
COMMANDWARRIOR:
  matchre COMMANDWARRIORP %waitstring
  matchre RETURN Roundtime|EXAMPLES\:|Command who to do what\?|A .* ignores your command\.
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
  matchwait

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
  matchwait

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
  matchwait

#ARMOR	
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
  matchwait


###HEALTH###
INFOCHECKP:
  pause
INFOCHECK:
  matchre INFOCHECKP %waitstring
  matchre RETURN A good positive attitude never hurts.
  put info
  put yes
  matchwait

BURDENCHECKP:
  pause
BURDENCHECK:
  matchre BURDENCHECKP %waitstring
  match RETURN Encumbrance :
  put encumbrance
  matchwait

HEALTHCHECKP:
  pause
HEALTHCHECK:
  var healthcheckgood 0
  matchre HEALTHCHECKP %waitstring
  matchre HEALTHCHECKCLEAN You have no significant injuries.
  matchre RETURN A good positive attitude never hurts.
  put health
  put yes
  matchwait

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
  matchwait
  
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

TENDP:
  pause
TEND:
  if $0 = "stunned" then
  {
    var nextbleed %t
    return
  }
  matchre TENDP %waitstring
  matchre RETURN ^You work|^That area|^Look again|^Your .+ too injured|TEND {MY|<character>} {area}|You are a bit too busy performing to do that.|^You fumble|That area is not bleeding\.|You skillfully remove
  put tend my $0
  matchwait
  
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
	matchre RETURN /You manage to collect|The room is too cluttered to find anything here!|You find something dead and lifeless, is this what you were looking for?|Searching and searching, you fail to find anything./
	match COLLECTR You cannot collect anything while in combat!
	matchre RETURN /You forage around|You wander around and|You begin to forage/
	matchre RETURN /You are sure you knew what you were looking for|You are certain you could find what you were looking for/|As you rummage around|You are certain you could find
	match BADCOLLECT You survey the area and realize that any collecting efforts would be futile.
	match FULLHANDS You really need to have at least one hand free to properly collect something.
	put collect %collectitem
	matchwait

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
  if matchre ("$roomobjs", "a pile of rocks") then
  {
	  matchre KICKP %waitstring
	  match KICK You take a step back
    matchre KICKS You can't do that from your position.|You can't quite manage
	  matchre RETURN I could not find|Now what did the|You lean back and kick your feet|Now THAT would be a trick!
	  put kick rock
	  matchwait
	}
	if matchre ("$roomobjs", "a pile of dust bunnies") then
  {
	  matchre KICKP %waitstring
	  match KICK You take a step back
    matchre KICKS You can't do that from your position.|You can't quite manage
	  matchre RETURN I could not find|Now what did the|You lean back and kick your feet|Now THAT would be a trick!
	  put kick bunnies
	  matchwait
	}
	return

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
	matchwait

NOHUNT:
  var %hunt NO
  return

JUSTICECHECKP:
  pause
JUSTICECHECK:
  matchre JUSTICECHECKP %waitstring
  matchre RETURN You're fairly certain this area is lawless and unsafe.|After assessing the area, you think local law enforcement keeps an eye on what's going on here.|After assessing the area, you believe there is some kind of unusual law enforcement in this area.
  put justice
  matchwait

###MUSIC###
ASSESSINSTRUMENTP:
  pause
ASSESSINSTRUMENT:
  matchre ASSESSINSTRUMENTP %waitstring
  match RETURN Roundtime:
  matchre RETURN You cannot assess the .* properly while in combat\!
  put assess my %instrument
  matchwait

PLAYP:
  pause
PLAY:
  matchre PLAYP %waitstring
  matchre PLAYSUCCESS You're already playing a song!|You begin a|You effortlessly begin|You fumble slightly|You struggle to begin
  match PLAYUNHIDE That would give away your hiding place!
  put play %songtype on %instrument
  matchwait

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
  matchwait

HUMP:
  pause
HUM:
  matchre HUMP %waitstring
  matchre HUMSUCCESS You're already humming a song!|You begin a|You effortlessly begin|You fumble slightly|You struggle to begin
  put hum %humsong
  matchwait

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
  matchwait
  
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
  matchwait

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
  matchwait 

AWAKEP:
  pause
AWAKE:
  matchre AWAKEP %waitstring
  matchre RETURN You awaken from your reverie and begin to take in the world around you|But you are not sleeping!
  put awake
  matchwait

DEEPSLEEPP:
  pause
DEEPSLEEP:
  matchre DEEPSLEEPP %waitstring
  matchre DEEPSLEEP You relax and allow your mind to enter a state of rest.|You stir yourself from the depths of relaxation and prepare for another night.|You stir yourself from the depths of relaxation and prepare for another day.
  matchre RETURN You draw deeper into rest, trying to destress from a hard (day's|night's) adventuring.
  put sleep
  matchwait

RPATOGGLEP:
  pause
RPATOGGLE:
  matchre RPATOGGLEP %waitstring
  matchre RPAPAUSE You pause your roleplaying award.
  matchre RPAACTIVE You unpause your
  matchre RPATIMER You need to wait a few minutes before doing that again.
  matchre RPABAD But you don't have an active roleplaying award to pause!
  put rpa toggle
  matchwait

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
  put study my %almanacitem
  matchwait
  
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
  matchwait

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
  matchwait

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
  matchwait
  
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
  matchwait  

STUDYTEXTP:
	pause
STUDYTEXT:
  matchre TEXTNEXT In a sudden moment of clarity, the information
  matchre TEXTNEXTBAD Why do you need to study this chart again?
  matchre RETURN /Roundtime: \d+/
  matchre STUDYTEXTP %waitstring
  put study my %textbookitem
  matchwait
  
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
  matchwait

BADTEXT:
  var badtextturn 1
  return

TEACHP:
  pause
TEACH:
  eval tempteach tolower("$roomplayers")
  eval teachtarget tolower("%teachtarget")
  #echo tempteach: %tempteach
  #echo teachtarget: %teachtarget
  if matchre ("%tempteach", "%teachtarget") then
  {
    matchre TEACHP %waitstring
    matchre RETURN You begin to lecture|I don't understand which skill you wish to teach.|is already listening to you|I don't understand which skill you wish to teach.|You have already offered|I could not find who you were referring to.|That person is too busy teaching their own students to listen to your lesson.
    put teach %teachskill to %teachtarget 
    matchwait
  }
  else return

TEACHSTOPP:
  pause
TEACHSTOP:
  matchre TEACHSTOPP %waitstring
  matchre RETURN But you aren't teaching anyone.|You stop teaching.
  put stop teach
  matchwait

TEACHASSESSP:
  pause
TEACHASSESS:
  matchre TEACHASSESSP %waitstring
  matchre RETURN Roundtime: 
  put assess teach
  matchwait
  return

TURNP:
  pause
TURN:
  math turncount add 1
  if %turncount = 1 then
  {
    put turn compendium
    match STUDY You turn to the section
    matchre TURNP %waitstring
    matchwait
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
  matchwait

BADLOCK:
  var picksleft 0
  return

LOCKBOXP:
  pause
LOCKBOX:
  matchre LOCKBOXP %waitstring
  matchre RETURN You quickly lock the training box and pocket the key.|The training box is already locked.
  put lock my %locksmithboxitem
  matchwait

SKINTRAINERP:
  pause
SKINTRAINER:
  matchre SKINTRAINERP %waitstring
  matchre REPAIRSKINTRAINER You skillfully peel back the leather from the frame underneath\.|A .* has already been sliced open\.  Maybe you should REPAIR it\.
  matchre BADSKINTRAIN The leather looks frayed, as if worked too often recently, so you stop your attempt to skin it\.
  put skin %skinfatraineritem
  matchwait

BADSKINTRAIN:
  var skinsleft 0
  return

REPAIRSKINTRAINERP:
  pause
REPAIRSKINTRAINER:
  matchre REPAIRSKINTRAINERP %waitstring
  matchre RETURN With some needle and thread, you quickly stitch .* back together\.|A .* isn't in need of repair\.
  put repair my %skinfatraineritem
  matchwait

  
WINDCHECKP:
  return
WINDCHECK:
  matchre WINDCHECKP %waitstring
  matchre YESWIND You're already riding on something.
  matchre NOWIND You need to be holding the|You cannot really do anything on
  put mount windboard
  matchwait

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
  matchwait

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
  matchwait

WINDMRET:
  gosub RETREAT
  goto WINDMOUNT

WINDDISMOUNTP:
  pause
WINDDISMOUNT:
  matchre WINDDISMOUNTP %waitstring
  matchre RETURN You step off your|You're not riding around on
  put dismount windboard
  matchwait
  
WINDTRICKP:
  pause
WINDTRICK:  
  matchre WINDTRICKP %waitstring
  match RETURN Roundtime:
  match WINDTRET You cannot really do anything on your windboard while in combat.
  put %windboardtrick windboard
  matchwait

WINDTRET:
  gosub RETREAT
  goto WINDTRICK
  
APPRAISEP:
  pause
APPRAISE:
  matchre APPRAISEP %waitstring
  match APPRET You cannot appraise that when you are in combat!
  matchre RETURN Roundtime:|Appraise what\?|You need to be either holding it or wearing it\.|You try to sneak out of combat
  match RETURN Appraise what?  Type APPRAISE HELP for more information.
  if %appsaveitem != "none" then put appraise %appsaveitem bundle quick
  else put appraise bundle quick
  matchwait
  
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
  put appraise %appraisemon quick
  matchwait 
 
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
  matchwait 
  
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
  if $SpellTimer.Absolution.active != 1 then var noshockcritters %normnoshockcritters
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

PREMIUMRINGBACKP:
  pause
PREMIUMRINGBACK:
  matchre PREMIUMRINGBACKP %waitstring
  matchre RETURN The world grows blurry and indistinct for a moment.  You look around and find yourself at...
  match RETURN You need to be in Fang Cove to do that!
  matchre PREMBADRETURN cannot do that again yet\.
  put pull %premiumringitem
  matchwait

PREMBADRETURN:
  put #echo %alertwindow Yellow [UPKEEP]: Unable to return yet due to premium ring timer.  Waiting and retrying.
  pause 60
  goto PREMIUMRINGBACK

VARCONVERT:
  put #var m1bugout $bugout
  put #var m1bugoutnum $bugoutnum
  put #var m1bugoutonbleed $bugoutonbleed
  put #var m1bugoutroom $bugoutroom
  put #var m1autoupkeep $autoupkeep
  put #var m1aumoveclenchshard $aumoveclenchshard
  put #var m1aumovewhistle $aumovewhistle
  put #var m1movescream $movescream
  put #var m1aumovevanish $aumovevanish
  put #var m1autravel $autravel 
  put #var m1autraveldest $autraveldest
  put #var m1aumove $aumove
  put #var m1aumovelist $aumovelist
  put #var m1premiumring $premiumring
  put #var m1premiumringitem $premiumringitem
  put #var m1auonhealth $auonhealth
  put #var m1auhealthnum $auhealthnum
  put #var m1auonbleed $auonbleed
  put #var m1auonnerves $auonnerves
  put #var m1auonburden $auonburden
  put #var m1minmoney $minmoney
  put #var m1exchange $exchange
  put #var m1premiumheal $premiumheal
  put #var m1nonpremheal $nonpremheal
  put #var m1repair $repair
  put #var m1repairlist $repairlist
  put #var m1bundlesell $bundlesell
  put #var m1bundlevault $bundlevault
  put #var m1vaultmove $vaultmove
  put #var m1bundlerope $bundlerope
  put #var m1gemvault $gemvault
  put #var m1gempouches $gempouches
  put #var m1spiderfeed $spiderfeed
  put #var m1incense $incense
  put #var m1burglestorage $burglestorage
  put #var m1burgletool $burgletool
  put #var m1burglepickitem $burglepickitem
  put #var m1burglepickworn $burglepickworn
  put #var m1burgleropeitem $burgleropeitem
  put #var m1burglemaxgrabs $burglemaxgrabs
  put #var m1burgleloot $burgleloot
  put #var m1burglekeeplist $burglekeeplist
  put #var m1burglepawn $burglepawn
  put #var m1weapon1 $weapon1
  put #var m1weapon2 $weapon2
  put #var m1weapon3 $weapon3
  put #var m1weapon4 $weapon4
  put #var m1weapon5 $weapon5
  put #var m1weapon6 $weapon6
  put #var m1weapon7 $weapon7
  put #var m1weapon8 $weapon8
  put #var m1weapon9 $weapon9
  put #var m1weapon10 $weapon10
  put #var m1weapon11 $weapon11
  put #var m1weapon12 $weapon12
  put #var m1weapon13 $weapon13
  put #var m1weapon14 $weapon14
  
  put #var m1offhand $offhand
  put #var m1seoffhand $seoffhand
  put #var m1secombo $secombo
  put #var m1leoffhand $leoffhand
  put #var m1sboffhand $sboffhand
  put #var m1lboffhand $lboffhand
  put #var m1staveoffhand $staveoffhand
  put #var m1seweapon $seweapon
  put #var m1leweapon $leweapon
  put #var m1theweapon $theweapon
  put #var m1sbweapon $sbweapon
  put #var m1lbweapon $lbweapon
  put #var m1thbweapon $thbweapon
  put #var m1staveweapon $staveweapon
  put #var m1staveworn $staveworn
  put #var m1stavetied $stavetied
  put #var m1poleweapon $poleweapon
  put #var m1poleworn $poleworn
  put #var m1poletied $poletied
  put #var m1polecombo $polecombo
  put #var m1bastardsworditem $bastardsworditem
  put #var m1holyiconitem $holyiconitem
  put #var m1risteitem $risteitem
  put #var m1hhristeitem $hhristeitem
  put #var m1xbowweapon $xbowweapon
  put #var m1bowweapon $bowweapon
  put #var m1ltweapon $ltweapon
  put #var m1htweapon $htweapon
  put #var m1xbowammo $xbowammo
  put #var m1xbowworn $xbowworn
  put #var m1bowammo $bowammo
  put #var m1bowworn $bowworn
  put #var m1slingweapon $slingweapon
  put #var m1slingammo $slingammo
  put #var m1collectammo $collectammo
  
  #GENERAL
  put #var m1almanac $almanac
  put #var m1almanacitem $almanacitem
  put #var m1almanacalerts $almanacalerts
  put #var m1ejournal $ejournal
  put #var m1ejournalitem $ejournalitem
  put #var m1ejournalstates $ejournalstates
  put #var m1tarantula $tarantula
  put #var m1tarantulaitem $tarantulaitem
  put #var m1tarantulaskill1 $tarantulaskill1
  put #var m1tarantulaskill2 $tarantulaskill2
  put #var m1findroom $findroom
  put #var m1findroomlist $findroomlist
  put #var m1frwhitelist $frwhitelist
  put #var m1frblacklist $frblacklist
  put #var m1frprefergroup $frprefergroup
  
  #LOOT
  put #var m1lootalerts $lootalerts
  put #var m1loottype $loottype
  put #var m1lootalldead $lootalldead
  put #var m1collectcoin $collectcoin
  put #var m1collectgem $collectgem
  put #var m1collectscroll $collectscroll
  put #var m1collectmaps $collectmaps
  put #var m1savegwethstones $savegwethstones
  put #var m1misckeeplist $misckeeplist
  put #var m1storage $storage
  put #var m1skinning $skinning
  put #var m1arrange $arrange
  put #var m1arrangeforpart $arrangeforpart
  put #var m1skinafterlock $skinafterlock
  put #var m1dropskins $dropskins
  
  put #var m1htbond $htbond
  put #var m1htverb $htverb
  put #var m1htoffhand $htoffhand
  put #var m1ltbond $ltbond
  put #var m1ltverb $ltverb
  put #var m1ltoffhand $ltoffhand
  put #var m1platring $platring
  put #var m1platringitem $platringitem
  put #var m1weaponnum $weaponnum
  put #var m1lowestfirst $lowestfirst
  put #var m1killafterlock $killafterlock
  put #var m1stealth $stealth
  put #var m1locksmithbox $locksmithbox
  put #var m1locksmithboxitem $locksmithboxitem
  put #var m1locksmithboxtimer $locksmithboxtimer
  put #var m1skinfatrainer $skinfatrainer
  put #var m1skinfatrainertimer $skinfatrainertimer
  put #var m1skinfatraineritem $skinfatraineritem
  put #var m1climbingrope $climbingrope
  put #var m1climbingropename $climbingropename
  put #var m1climbingropehum $climbingropehum
  put #var m1humsong $humsong
  put #var m1windboard $windboard
  put #var m1windboardcharge $windboardcharge
  put #var m1windboardtrick $windboardtrick
  put #var m1windboardtimer $windboardtimer
  put #var m1appfocus $appfocus
  put #var m1appfocusitem $appfocusitem
  put #var m1recall $recall
  put #var m1tactics $tactics
  put #var m1tacticsweapons $tacticsweapons

  put #var m1teaching $teaching
  put #var m1teachtargets $teachtargets
  put #var m1teachskill $teachskill
  put #var m1teachtargetnum $teachtargetnum
  put #var m1teachtarget1 $teachtarget1
  put #var m1teachtarget2 $teachtarget2
  put #var m1teachtarget3 $teachstarget3
  put #var m1teacher $teacher
  put #var m1stancemain $stancemain
  put #var m1noncomdelay $noncomdelay
  put #var m1outdoor $outdoor
  put #var m1outdoortimer $outdoortimer
  put #var m1collectitem $collectitem
  put #var m1hunting $hunting
  put #var m1huntingtimer $huntingtimer
  put #var m1debil $debil
  put #var m1debilskill $debilskill
  put #var m1maxdebil $maxdebil
  put #var m1tm $tm
  put #var m1tmskill $tmskill
  put #var m1maxtm $maxtm
  put #var m1cyclic $cyclic
  put #var m1cyclicbuff $cyclicbuff
  put #var m1cyctm $cyctm
  put #var m1cycdebil $cycdebil
  put #var m1tmdbprior $tmdbprior
  put #var m1spell $spell
  put #var m1attune $attune
  put #var m1minconcentration $minconcentration
  put #var m1combatsanowret $combatsanowret
  put #var m1noncomsanowret $noncomsanowret
  put #var m1sanowretitem $sanowretitem
  put #var m1buff $buff
  put #var m1abuff $abuff
  put #var m1gbuff $gbuff
  put #var m1gbufftarget $gbufftarget
  put #var m1buffbuffer $buffbuffer
 
  put #var m1cambrinth $cambrinth
  put #var m1dedicatedcambrinth $dedicatedcambrinth
  put #var m1research $research
  put #var m1gafprepmana $gafprepmana
  put #var m1gafaddmana $gafaddmana
  put #var m1researchnum $researchnum
  put #var m1researchtype1 $researchtype1
  put #var m1researchtype2 $researchtype2
  put #var m1researchtype3 $researchtype3
  put #var m1researchtype4 $researchtype4
  put #var m1researchtype5 $researchtype5
  put #var m1harnessing $harnessing
  put #var m1harnessmax $harnessmax
  put #var m1chargemax $chargemax
  put #var m1minmana $minmana
  put #var m1castingthrottle $castingthrottle
  put #var m1straightcast $straightcast
  put #var m1cambitem1 $cambitem1
  put #var m1cambitems $cambitems
  put #var m1cambitem1mana $cambitem1mana
  put #var m1cambitem1worn $cambitem1worn
  put #var m1cambitem2 $cambitem2
  put #var m1cambitem2mana $cambitem2mana
  put #var m1cambitem2worn $cambitem2worn
  put #var m1ritualfocus $ritualfocus
  put #var m1ritualfocusstorage $ritualfocusstorage
  put #var m1ritualfocusworn $ritualfocusworn
  put #var m1ritualfocuscontainer $ritualfocuscontainer
  put #var m1tmfocus $tmfocus
  put #var m1tmfocusitem $tmfocusitem
  
  put #var m1tmfocusstorage $tmfocusstorage
  put #var m1tmfocusworn $tmfocusworn
  put #var m1tmfocuscontainer $tmfocuscontainer
  put #var m1armorswap $armorswap
  put #var m1armornum $armornum
  put #var m1armor1name $armor1name
  put #var m1armor1desc $armor1desc
  put #var m1a1stealthrem $a1stealthrem
  put #var m1armor2name $armor2name
  put #var m1armor2desc $armor2desc
  put #var m1a2stealthrem $a2stealthrem
  put #var m1armor3name $armor3name
  put #var m1armor3desc $armor3desc
  put #var m1a3stealthrem $a3stealthrem
  put #var m1armor4name $armor4name
  put #var m1armor4desc $armor4desc
  put #var m1a4stealthrem $a4stealthrem
  put #var m1appraise $appraise
  put #var m1appraisetarget $appraisetarget
  put #var m1appraisetimer $appraisetimer
  put #var m1appsaveitem $appsaveitem
  put #var m1appsaveitemstorage $appsaveitemstorage
  put #var m1perform $perform
  put #var m1songtype $songtype
  put #var m1instrument $instrument
  put #var m1instrumentworn $instrumentworn
  put #var m1instrumenthands $instrumenthands
  put #var m1instrumentassess $instrumentassess
  put #var m1instclean $instclean
  put #var m1instcleancloth $instcleancloth
  put #var m1compendium $compendium
  put #var m1compendiumtimer $compendiumtimer
  put #var m1textbook $textbook
  put #var m1textbooktimer $textbooktimer
  put #var m1textbookitem $textbookitem
  put #var m1textbooklist $textbooklist
  
  put #var m1noncombat $noncombat
  put #var m1burgle $moveburgle
  
  put #var m1buffnum $buffnum
  put #var m1buff1 $buff1
  put #var m1buff1prepmana $buff1prepmana
  put #var m1buff1addmana $buff1addmana
  put #var m1buff2 $buff2
  put #var m1buff2prepmana $buff2prepmana
  put #var m1buff2addmana $buff2addmana
  put #var m1buff3 $buff3
  put #var m1buff3prepmana $buff3prepmana
  put #var m1buff3addmana $buff3addmana
  put #var m1buff4 $buff4
  put #var m1buff4prepmana $buff4prepmana
  put #var m1buff4addmana $buff4addmana
  put #var m1buff5 $buff5
  put #var m1buff5prepmana $buff5prepmana
  put #var m1buff5addmana $buff5addmana
  put #var m1buff6 $buff6
  put #var m1buff6prepmana $buff6prepmana
  put #var m1buff6addmana $buff6addmana
  put #var m1buff7 $buff7
  put #var m1buff7prepmana $buff7prepmana
  put #var m1buff7addmana $buff7addmana
  put #var m1buff8 $buff8
  put #var m1buff8prepmana $buff8prepmana
  put #var m1buff8addmana $buff8addmana
  put #var m1buff9 $buff9
  put #var m1buff9prepmana $buff9prepmana
  put #var m1buff9addmana $buff9addmana
  put #var m1buff10 $buff10
  put #var m1buff10prepmana $buff10prepmana
  put #var m1buff10addmana $buff10addmana
  put #var m1buff11 $buff11
  put #var m1buff11prepmana $buff11prepmana
  put #var m1buff11addmana $buff11addmana
  put #var m1buff12 $buff12
  put #var m1buff12prepmana $buff12prepmana
  put #var m1buff12addmana $buff12addmana
  put #var m1buff13 $buff13
  put #var m1buff13prepmana $buff13prepmana
  put #var m1buff13addmana $buff13addmana
  put #var m1buff14 $buff14
  put #var m1buff14prepmana $buff14prepmana
  put #var m1buff14addmana $buff14addmana
  put #var m1buff15 $buff15
  put #var m1buff15prepmana $buff15prepmana
  put #var m1buff15addmana $buff15addmana
  put #var m1buff16 $buff16
  put #var m1buff16prepmana $buff16prepmana
  put #var m1buff16addmana $buff16addmana
  put #var m1abuffnum $abuffnum
  put #var m1abuff1 $abuff1
  put #var m1abuff1prepmana $abuff1prepmana
  put #var m1abuff1addmana $abuff1addmana
  put #var m1abuff2 $abuff2
  put #var m1abuff2prepmana $abuff2prepmana
  put #var m1abuff2addmana $abuff2addmana
  put #var m1abuff3 $abuff3
  put #var m1abuff3prepmana $abuff3prepmana
  put #var m1abuff3addmana $abuff3addmana
  put #var m1abuff4 $abuff4
  put #var m1abuff4prepmana $abuff4prepmana
  put #var m1abuff4addmana $abuff4addmana
  put #var m1abuff5 $abuff5
  put #var m1abuff5prepmana $abuff5prepmana
  put #var m1abuff5addmana $abuff5addmana
  put #var m1abuff6 $abuff6
  put #var m1abuff6prepmana $abuff6prepmana
  put #var m1abuff6addmana $abuff6addmana
  put #var m1abuff7 $abuff7
  put #var m1abuff7prepmana $abuff7prepmana
  put #var m1abuff7addmana $abuff7addmana
  put #var m1abuff8 $abuff8
  put #var m1abuff8prepmana $abuff8prepmana
  put #var m1abuff8addmana $abuff8addmana
  put #var m1gbuffnum $gbuffnum
  put #var m1gbuff1 $gbuff1
  put #var m1gbuff1prepmana $gbuff1prepmana
  put #var m1gbuff1addmana $gbuff1addmana
  put #var m1gbuff1duration $gbuff1duration
  put #var m1gbuff2 $gbuff2
  put #var m1gbuff2prepmana $gbuff2prepmana
  put #var m1gbuff2addmana $gbuff2addmana
  put #var m1gbuff2duration $gbuff2duration
  put #var m1gbuff3 $gbuff3
  put #var m1gbuff3prepmana $gbuff3prepmana
  put #var m1gbuff3addmana $gbuff3addmana
  put #var m1gbuff3duration $gbuff3duration
  put #var m1gbuff4 $gbuff4
  put #var m1gbuff4prepmana $gbuff4prepmana
  put #var m1gbuff4addmana $gbuff4addmana
  put #var m1gbuff4duration $gbuff4duration
  put #var m1gbuff5 $gbuff5
  put #var m1gbuff5prepmana $gbuff5prepmana
  put #var m1gbuff5addmana $gbuff5addmana
  put #var m1gbuff5duration $gbuff5duration
  put #var m1gbuff6 $gbuff6
  put #var m1gbuff6prepmana $gbuff6prepmana
  put #var m1gbuff6addmana $gbuff6addmana
  put #var m1gbuff6duration $gbuff6duration
  put #var m1gbuff7 $gbuff7
  put #var m1gbuff7prepmana $gbuff7prepmana
  put #var m1gbuff7addmana $gbuff7addmana
  put #var m1gbuff7duration $gbuff7duration
  put #var m1gbuff8 $gbuff8
  put #var m1gbuff8prepmana $gbuff8prepmana
  put #var m1gbuff8addmana $gbuff8addmana
  put #var m1gbuff8duration $gbuff8duration
  put #var m1spellnum $spellnum
  put #var m1spell1 $spell1
  put #var m1skill1 $skill1
  put #var m1spell1prepmana $spell1prepmana
  put #var m1spell1addmana $spell1addmana
  put #var m1spell1symb $spell1symb
  put #var m1spell2 $spell2
  put #var m1skill2 $skill2
  put #var m1spell2prepmana $spell2prepmana
  put #var m1spell2addmana $spell2addmana
  put #var m1spell2symb $spell2symb
  put #var m1spell3 $spell3
  put #var m1skill3 $skill3
  put #var m1spell3prepmana $spell3prepmana
  put #var m1spell3addmana $spell3addmana
  put #var m1spell3symb $spell3symb
  put #var m1spell4 $spell4
  put #var m1skill4 $skill4
  put #var m1spell4prepmana $spell4prepmana
  put #var m1spell4addmana $spell4addmana
  put #var m1spell4symb $spell4symb
  put #var m1spelltm $spelltm
  put #var m1spelltmprepmana $spelltmprepmana
  put #var m1spelltmaddmana $spelltmaddmana
  put #var m1spelltmtattoo $spelltmtattoo
  put #var m1spelldb $spelldb
  put #var m1spelldbtattoo $spelldbtattoo
  put #var m1spelldbprepmana $spelldbprepmana
  put #var m1spelldbaddmana $spelldbaddmana
  put #var m1misdirection $misdirection
  put #var m1misdirectionprepmana $misdirectionprepmana
  put #var m1misdirectionaddmana $misdirectionaddmana
  put #var m1tattoobuff $tattoobuff
  put #var m1tattoospell $tattoospell
  put #var m1wandbuff $wandbuff
  put #var m1wandstorage $wandstorage
  put #var m1wandbuffnum $wandbuffnum
  put #var m1wand1item $wand1item
  put #var m1wand1num $wand1num
  put #var m1wand1spell $wand1spell
  put #var m1wand2item $wand2item
  put #var m1wand2num $wand2num
  put #var m1wand2spell $wand2spell
  put #var m1tattooaddmana $tattooaddmana
  put #var m1spellcnum $spellcnum
  put #var m1spellc1 $spellc1
  put #var m1skillc1 $skillc1
  put #var m1spellc1skill $spellc1skill
  put #var m1spellc1prepmana $spellc1prepmana
  put #var m1spellc2 $spellc2
  put #var m1skillc2 $skillc2
  put #var m1spellc2skill $spellc2skill
  put #var m1spellc2prepmana $spellc2prepmana
  put #var m1spellc3 $spellc3
  put #var m1skillc3 $skillc3
  put #var m1spellc3skill $spellc3skill
  put #var m1spellc3prepmana $spellc3prepmana
  put #var m1debilassist $debilassist
  put #var m1dbanum $dbanum
  put #var m1dbalist $dbalist
  put #var m1dbaspell1 $dbaspell1
  put #var m1dbaspell1prepmana $dbaspell1prepmana
  put #var m1dbaspell1addmana $dbaspell1addmana
  put #var m1dbaspell2 $dbaspell2
  put #var m1dbaspell2prepmana $dbaspell2prepmana
  put #var m1dbaspell2addmana $dbaspell2addmana
  put #var m1dbaspell3 $dbaspell3
  put #var m1dbaspell3prepmana $dbaspell3prepmana
  put #var m1dbaspell3addmana $dbaspell3addmana
  put #var m1performcyclic $performcyclic
  put #var m1pspellcnum $pspellcnum
  put #var m1pspellc1 $pspellc1
  put #var m1pskillc1 $pskillc1
  put #var m1pspellc1pskill $pspellc1pskill
  put #var m1pspellc1prepmana $pspellc1prepmana
  put #var m1pspellc2 $pspellc2
  put #var m1pskillc2 $pskillc2
  put #var m1pspellc2pskill $pspellc2pskill
  put #var m1pspellc2prepmana $pspellc2prepmana
  put #var m1pspellc3 $pspellc3
  put #var m1pskillc3 $pskillc3
  put #var m1pspellc3pskill $pspellc3pskill
  put #var m1pspellc3prepmana $pspellc3prepmana
  put #var m1spellctm $spellctm
  put #var m1spellctmprepmana $spellctmprepmana
  put #var m1spellcdb $spellcdb
  put #var m1spellcdbprepmana $spellcdbprepmana
  if %cambitems < 1 then put #var m1cambitems 1
  
  put #var m1warhorn $warhorn
  put #var m1warhornitem $warhornitem
  put #var m1expertise $expertise
  put #var m1whirlwind $whirlwind
  put #var m1dualload $dualload
  put #var m1berserkava $berserkava
  put #var m1avafatigue $avafatigue
  put #var m1berserkfamine $berserkfamine
  put #var m1faminevit $faminevit
  put #var m1meditatestaunch $meditatestaunch
  put #var m1expaccuracy $expaccuracy
  put #var m1expdamage $expdamage
  put #var m1berserkcyclone $berserkcyclone
  put #var m1berserkearthquake $berserkearthquake
  put #var m1berserkflashflood $berserkflashflood
  put #var m1berserklandslide $berserklandslide
  put #var m1berserktornado $berserktornado
  put #var m1berserktsunami $berserktsunami
  put #var m1tsunamibackup $tsunamibackup
  put #var m1berserkvolcano $berserkvolcano
  put #var m1berserkwildfire $berserkwildfire
  put #var m1bearform $bearform
  put #var m1buffaloform $buffaloform
  put #var m1dragonform $dragonform
  put #var m1eagleform $eagleform
  put #var m1monkeyform $monkeyform
  put #var m1owlform $owlform
  put #var m1pantherform $pantherform
  put #var m1piranhaform $piranhaform
  put #var m1pythonform $pythonform
  put #var m1wolverineform $wolverineform
  put #var m1meditatebastion $meditatebastion
  put #var m1meditatecontemplation $meditatecontemplation
  put #var m1meditatetenacity $meditatetenacity
  
  put #var m1whistlepiercing $whistlepiercing
  put #var m1eilliescry $eilliescry
  put #var m1eilliescryprepmana $eilliescryprepmana
  put #var m1eilliescryaddmana $eilliescryaddmana
  
  put #var m1osrelmeraud $osrelmeraud
  put #var m1omprepmana $omprepmana
  put #var m1omaddmana $omaddmana
  put #var m1ombuffnum $ombuffnum
  put #var m1ombuff1 $ombuff1
  put #var m1ombuff2 $ombuff2
  put #var m1ombuff3 $ombuff3
  put #var m1ombuff4 $ombuff4
  put #var m1ombuff5 $ombuff5
  put #var m1ombuff6 $ombuff6
  put #var m1ombuff7 $ombuff7
  put #var m1ombuff8 $ombuff8
  put #var m1theurgy $theurgy
  put #var m1pray $pray
  put #var m1praydeity $praydeity
  put #var m1meraudcommune $meraudcommune
  put #var m1elunedcommune $elunedcommune
  put #var m1tamsinecommune $tamsinecommune
  put #var m1dance $dance
  put #var m1recite $recite
  put #var m1anloralpin $anloralpin
  put #var m1anloralpinitem $anloralpinitem    
  put #var m1pilgrimbadge $pilgrimbadge
  put #var m1pilgrimbadgeitem $pilgrimbadgeitem
  put #var m1prayermat $prayermat
  put #var m1prayermatitem $prayermatitem
  put #var m1dirtstacker $dirtstacker
  put #var m1dirtstackeritem $dirtstackeritem
  put #var m1lighter $lighter
  put #var m1lighteritem $lighteritem
  put #var m1watercontainer $watercontainer
  put #var m1blessdelay $blessdelay
  put #var m1hyhcast $hyhcast
  
  put #var m1avoidshock $avoidshock
  put #var m1perchealth $perchealth
  put #var m1manipulate $manipulate
  put #var m1paralysis $paralysis
  put #var m1paralysisprepmana $paralysisprepmana
  put #var m1paralysisaddmana $paralysisaddmana
  put #var m1vitheal $vitheal
  put #var m1vithealnum $vithealnum
  put #var m1vithealprepmana $vithealprepmana
  put #var m1vithealaddmana $vithealaddmana
  put #var m1heal $heal
  put #var m1healprepmana $healprepmana
  put #var m1healaddmana $healaddmana
  put #var m1curedisease $curedisease
  put #var m1cdprepmana $cdprepmana
  put #var m1cdaddmana $cdaddmana
  put #var m1adcheal $adcheal
  put #var m1adcdisease $adcdisease
  put #var m1adcpoison $adcpoison
  put #var m1absolution $absolution
  put #var m1absolutionprepmana $absolutionprepmana
  put #var m1iztouch $iztouch
  put #var m1izprepmana $izprepmana
  put #var m1iztimer $iztimer
  
  put #var m1astro $astro
  put #var m1astrotimer $astrotimer
  put #var m1predictiontool $predictiontool
  put #var m1predictiontoolitem $predictiontoolitem
  put #var m1tktitem $tktitem
  put #var m1pgprepmana $pgprepmana
  put #var m1pgaddmana $pgaddmana
  put #var m1mindshout $mindshout
  put #var m1mindshoutprepmana $mindshoutprepmana
  put #var m1mindshoutaddmana $mindshoutaddmana
  put #var m1burglerf $burglerf
  put #var m1burglerfdelay $burglerfdelay
  
  put #var m1necrostate $necrostate
  put #var m1necrosafety $necrosafety
  put #var m1necrowhitelist $necrowhitelist
  put #var m1riteofgrace $riteofgrace
  put #var m1rogprepmana $rogprepmana
  put #var m1rogcycle $rogcycle
  put #var m1dissect $dissect
  put #var m1preserve $preserve
  put #var m1harvest $harvest
  put #var m1harveststore $harveststore
  put #var m1harveststorenum $harveststorenum
  put #var m1devour $devour
  put #var m1devourprepmana $devourprepmana
  put #var m1devouraddmana $devouraddmana
  put #var m1eotbrel $eotbrel
  put #var m1siphonvit $siphonvit
  put #var m1siphonvitprepmana $siphonvitprepmana
  put #var m1siphonvitaddmana $siphonvitaddmana
  put #var m1siphonvitnum $siphonvitnum
  
  put #var m1smite $smite
  
  put #var m1snipe $snipe
  put #var m1dualload $dualload
  
  put #var m1snipe $snipe
  put #var m1backstab $backstab
  put #var m1khrimax $khrimax
  put #var m1khriadaptation $khriadaptation
  put #var m1khriavoidance $khriavoidance
  put #var m1khricunning $khricunning
  put #var m1khridampen $khridampen
  put #var m1khridarken $khridarken
  put #var m1khriendure $khriendure
  put #var m1khrielusion $khrielusion
  put #var m1khriflight $khriflight
  put #var m1khrifright $khrifright
  put #var m1khrifocus $khrifocus
  put #var m1khriharrier $khriharrier
  put #var m1khrihasten $khrihasten
  put #var m1khriplunder $khriplunder
  put #var m1khrisagacity $khrisagacity
  put #var m1khrisensing $khrisensing
  put #var m1khrisight $khrisight
  put #var m1khristeady $khristeady
  put #var m1khristrike $khristrike
  put #var m1khriguile $khriguile
  put #var m1khriprowess $khriprowess
  put #var m1khriterrify $khriterrify
  put #var m1khridebil $khridebil
  put #var m1khridebiltype $khridebiltype
  
  put #var m1burglethiefbin $burglethiefbin
  put #var m1burglekhrihasten $burglekhrihasten
  put #var m1burglekhriplunder $burglekhriplunder
  put #var m1burglekhrisilence $burglekhrisilence
  put #var m1burglekhrislight $burglekhrislight
  
  put #var m1ignitebackup $ignitebackup
  put #var m1summoning $summoning
  put #var m1summonweapon $summonweapon
  put #var m1summonweapontimer $summonweapontimer
  put #var m1pathway $pathway
  put #var m1pathwaytype $pathwaytype
  put #var m1domain $domain
  put #var m1domaintype $domaintype
  put #var m1chargeafterlock $chargeafterlock
  put #var m1calspell $calspell
  put #var m1calprepmana $calprepmana
  put #var m1caladdmana $caladdmana
  put #var m1groundingfield $groundingfield
  put #var m1gfprepmana $gfprepmana
  put #var m1gfaddmana $gfaddmana
  put #var m1gfelement $gfelement
  return

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