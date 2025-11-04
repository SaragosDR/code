########################################
###Training scripts by player of Saragos.
###Version 2.0
###Last Updated: 11/03/2025
########################################

include library.cmd
include craftlibrary.cmd
#include custom.cmd

#ScriptMode -1 = Help
#ScriptMode 0 = NonCombat
#ScriptMode 1 = Combat
#ScriptMode 2 = Buffing
#ScriptMode 3 = Upkeep
#ScriptMode 4 = Burgle

START:
  
##Monster Variables
var monsters1 ashu hhinvi|atik'et|bloodvine|bucca|cabalist|\bcrag\b|creeper|cutthroat|charred husk
var monsters2 Dragon Priest (assassin|crone|fanatic|imperial warden|intercessor|juggernaut|purifier|sentinel|zealot)|Dragon priest|Dragon priestess|blood dryad|dummy|dusk ogre|dyrachis|eviscerator|faenrae assassin|fendryad|fire maiden|folsi immola
var monsters3 footpad|forest bandit|frostweaver|gam chaga|\bgeni\b|gidii|goblin shaman|graverobber|guardian|gypsy marauder|\bimp\b|juggernaut
var monsters4 kelpie|kra'hei|kra'hei hatchling|intercessor|lipopod|lun'shele hunter|madman|malchata|mountain giant|nipoh oshu|\bnyad\b|orc bandit
var monsters5 orc clan chief|orc raider|orc reiver|orc scout|pile of rubble|pirate|river sprite|ruffian|scavenger troll|scout ogre|screamer
var monsters6 sentinel|shadow master|shadoweaver|sky giant|sleazy lout|sprite|swain|swamp troll|telga moradu|\bthug\b|trekhalo
var monsters7 umbramagii|velver|\bvine\b|vykathi builder|vykathi excavator|wind hound|wood troll|Xala'shar (archer|archmage|conjurer|lookout|magus|overseer|shredder|slayer|thrall|vanquisher|vindicator)|young ogre|zealot

var undead1 boggle|emaciated umbramagus|deadwood dryad|fiend|gargantuan bone golem|blue ghast|olensari mihmanan|plague wraith
var undead2 revivified mutt|blightwater nyad|shylvic|sinister maelshyvean heirophant|revenant conscript|skeletal peon|skeletal sailor|skeleton
var undead3 shambling frostcrone|skeletal kobold headhunter|skeletal kobold savage|snaer hafwa|soul|spectral pirate|spectral sailor
var undead4 tress|spirit|ur hhrki'izh|telga orek|wir dinego|zombie(?!\s)|zombie (head-splitter|mauler|nomad|stomper)

var skinnablemonsters1 angiswaerd hatchling|antelope|arbelog|armadillo|armored warklin|arzumo|asaren celpeze|badger|barghest|basilisk|\bbear\b|beisswurm|bison|black ape|blademaster
var skinnablemonsters2 blight ogre|blood warrior|bloodfish|\bboa\b|\bboar\b|bobcat|boobrie|brocket deer|burrower|caiman|caracal|carcal|cave troll
var skinnablemonsters3 cinder beast|cougar|\bcrab\b|crayfish|crocodile|\bdeer\b|dobek moruryn|ember bull|faenrae stalker|firecat|\bfrog\b|giant blight bat
var skinnablemonsters4 goblin|grass eel|\bgrub\b|gryphon|Isundjen conjurer|jackal|kartais|kashika serpent|kobold|la'heke|larva|la'tami|leucro
var skinnablemonsters5 marbled angiswaerd|merrows|\bmoda\b|\bmoth\b|mottled westanuryn|musk hog|\bpard\b|peccary|piruati serpent|pivuh|poloh'izh|pothanit|prereni|\bram\b
var skinnablemonsters6 \brat\b|retan dolomar|rock troll|scaly seordmaor|shadow beast|shadow mage|shalswar|silverfish|sinuous elsralael|skunk|S'lai scout
var skinnablemonsters7 sleek hele'la|sluagh|snowbeast|sorcerer|\bsow\b|spider|spirit dancer|storm bull|suw bizar|treehopper toad|trollkin|\bunyn\b|viper|vulture|vykathi harvester
var skinnablemonsters8 vykathi soldier|warcat|warklin mauler|\bwasp\b|\bwolf\b|\bworm\b|juvenile wyvern|adult wyvern|young wyvern

#var monsterskins adan'f tail barb|black marble hide|fuligin moth antenna|reddish-black scale|wyvern claw
var monsterskins 0

var specialmanipulate tress

var skinnableundead1 ice adder|adder skeleton|enraged tusky|fell hog|ghoul|ghoul crow|gremlin|grendel|lach|mastiff|mey|misshapen germish'din
var skinnableundead2 mutant togball|reaver|shadow hound|squirrel|steed|zombie kobold headhunter|zombie kobold savage

var construct ashu hhinvi|beltunumshi|boggle|bone amalgam|clay archer|clay mage|clay soldier|clockwork assistant|gam chaga|glass construct|(granite|marble|onyx|quartz) gargoyle|ice archon|lachmate|miniscule (fork|griddle|knife|lid|pan|plate|pot|spoon|teapot)|origami \S+|(alabaster|andesite|breccia|dolomite|marble|obsidian|quartzite|rock) guardian|rough-hewn doll
var skinnableconstruct Endrus serpent|(granite|marble|onyx|quartz) gargoyle|lava drake|marble gargoyle|snippet|sylph|windbag|clay slayer

var invasioncritters bone amalgam|bone warrior|brine shark|cloud eel|Drogorian stormrider|Elpalzi (bowyer|deadeye|dissident|fomenter|hunter|incendiary|instigator|malcontent|malcontent|partisan|rebel|sharpshooter|toxophilite)|flea-ridden beast|putrefying shambler|revivified mutt|shambling horror|skeletal peon|thunder eel|transmogrified oaf|Asketian harbinger|giant adder|wind wretch|wind hag|North Wind banshee|blight locust|murder crow|mantrap|clockwork monstrosity|rafflesia|Black Fang watcher

var skinnablecritters %skinnablemonsters1|%skinnablemonsters2|%skinnablemonsters3|%skinnablemonsters4|%skinnablemonsters5|%skinnablemonsters6|%skinnablemonsters7|%skinnablemonsters8|%skinnableundead1|%skinnableundead2|%skinnableconstruct
var nonskinnablecritters %monsters1|%monsters2|%monsters3|%monsters4|%monsters5|%monsters6|%monsters7|%undead1|%undead2|%undead3|%undead4|construct

var ritualcritters %monsters1|%monsters2|%monsters3|%monsters4|%monsters5|%monsters6|%monsters7|%skinnablemonsters1|%skinnablemonsters2|%skinnablemonsters3|%skinnablemonsters4|%skinnablemonsters5|%skinnablemonsters6|%skinnablemonsters7|%skinnablemonsters8|%specialmanipulate
var normnoshockcritters %construct|%skinnableconstruct
var absnoshockcritters %construct|%skinnableconstruct|%undead1|%undead2|%undead3|%undead4|%skinnableundead1|%skinnableundead2
var allundead %undead1|%undead2|%undead3|%undead4|%skinnableundead1|%skinnableundead2
var allconstruct %construct|%skinnableconstruct

var critters %skinnablecritters|%nonskinnablecritters|%invasioncritters|%allconstruct|%allundead

##LOOT Variables
var scrolls scroll|ostracon|roll|leaf|vellum|tablet|parchment|bark|papyrus
var treasuremaps \bmap\b
var gems1 agate|alexandrite|amber|ambergris|amethyst|andalusite|aquamarine|bead|beryl|bloodgem|bloodstone|carnelian|chrysoberyl|carnelian|chalcedony
var gems2 chrysoberyl|chrysoprase|citrine|coral|crystal|diamond|diopside|emerald|egg|eggcase|garnet|gem|goldstone|glossy malachite
var gems3 (chunk of|some|piece of).*granite|hematite|iolite|ivory|jade|jasper|kunzite|lapis lazuli|malachite stone|minerals|moonstone|morganite|onyx
var gems4 opal|pearl|pebble|peridot|quartz|ruby|sapphire|spinel|star-stone|(waermodi|lasmodi|sjatmal|lantholite) stones|sunstone|talon|tanzanite|tooth|topaz|tourmaline|tsavorite|turquoise|zircon
var gweths (jadeite|kyanite|lantholite|sjatmal|waermodi|lasmodi) stones
var goodgweths (jadeite|kyanite|waermodi) stones
var boxtype brass|copper|deobar|driftwood|iron|ironwood|mahogany|oaken|pine|steel|wooden
var boxes coffer|crate|strongbox|caddy|casket|skippet|trunk|chest|box
var junkloot runestone|scroll|tablet|vellum|sheiska leaf|ostracon|hhr'lav'geluhh bark|papyrus roll|smudged parchment|lockpick|fragment|package
var collectibles albredine ring|crystal ring|\bdira\b|kirmhiro draught|\bmap\b|package|soulstone|(?<!crossbow) \bbolts?\b|flarmencrank|\bgear\b|glarmencoupler|\bnuts?\b|rackensprocket|spangleflange
var raremetals animite|damite|darkstone|electrum|glaes|haralun|kertig|lumium|muracite|niniam
var specialmetals agonite|audrualm|coralite|haledroth|icesteel|indurium|kadepa|kelpzyte|kiralan|loimic|niello|orichalcum|quelium|silversteel|telothian|tomiek|tyrium|vardite
var metals %raremetals|%specialmetals
var specialstones anjisis|belzune|blackwater jet|diamondique|felstone|fulginode|senci|xenomite
var stones %specialstones
var rarebones demonbone
var specialbones blackened bone|bulbous bone|caracal bone|charred bone|crystal-bone|desumos bone|dragon bone|fae bone|horse bone|jaguar bone|mammoth bone|moradu-bone|morgawr bone|sprite-bone|wood drake bone|wraith bone|wyvern bone|zeltfish-bone
var bones %rarebones|%specialbones
var rarewoods azurelle|bloodwood|bocote|cherry|copperwood|darkspine|durian|ebony|goldwood|hickory|ilomba|ironwood|kapok|lelori|mistwood|osage|redwood|rockwood|rosewood|sandalwood|silverwood|tamarak|yew
var specialwoods adderwood|aformosia|albarco|alerce|avodire|crabwood|diamondwood|felwood|finvire|greenheart|macawood|ramin|smokewood
var woods %rarewoods|%specialwoods
var rarecloths electroweave|steelsilk
var specialcloths arzumodine|bourde|dergatine|dragonar|faeweave|farandine|imperial weave|jaspe|khaddar|ruazin wool|titanese|zenganne
var cloths %rarecloths|%specialcloths
var rareleathers demonscale|firecat-skin|inkhorne-skin|jaguar-pelt|mammoth-hide|onyx-hide|puffy-white|raven|serpentine-hide|white fox pelt|wyvern-hide
var specialleathers bark-hide|cloud-white|corrugated-hide|crusty bark-hide|dark dragon-scale|desumos-pelt|diamond-hide|droluger-hide|korograth|morgawr|punka|seal-pelt|shadowleaf
var leathers %rareleathers|%specialleathers
var materials %metals|%stones|%bones|%woods|%cloths|%leathers
var materialsnouns leather|hide|ingot|bar|fragment|shard|tear|nugget|stick|branch|limb|log|thick log|cloth|stack|pebble|stone|small rock|large rock|boulder|deed
var nuggetmaterials brass|bronze|coal|copper|covellite|iron|lead|nickel|oravir|pewter|platinum|silver|steel|tin|gold|zinc|electrum|darkstone


#JUSTICE_TRIGGERS
action put #echo %alertwindow Yellow [Justice]: Charged with forbidden practices in $1!  Please investigate! when "Burn him!  Burn him!"  You hear the cries echo around you as everyone in the vicinity suddenly moves away, giving you a wide berth!  It goes without saying you'll be wanted for forbidden practices in City of (\w+) now\.
action put #echo %alertwindow Yellow [Justice]: Charged with endangering the public in $1!  Please investigate! when A sudden shout of "The man's dangerous!" heralds a nearby citizen to run for the guards.  It won't be long before the (\w+) authorities will try to bring you in for endangering the public\.

action (arrest) var arrested 1; goto ARRESTED when ^Before you really realize .* you are marched off.|wrestle you to the ground, bind you in chains, and drag you off to jail|ushered to a cell, the door opened just long enough for you to be shoved inside|\[Guard House, Jail Cell\]|^The guard looks you over.* and leads you firmly off to jail|A sparkling cloud of silver motes envelops your body like a mist of stars|Although your head is still ringing from the assault|The sentinel brings you to the jail|^You slowly wake up again to find that all your belongings have been stripped

action var justice 1 when After assessing the area, you think local law enforcement keeps an eye on what's going on here.
action var justice 1 when After assessing the area, you believe there is some kind of unusual law enforcement in this area.
action var justice 0 when You're fairly certain this area is lawless and unsafe.
action instant var fine 0;var platfine 0;var goldfine 0;var silverfine 0;var bronzefine 0;var copperfine 0;if ($1) then evalmath platfine $1*10000;if ($2) then evalmath goldfine $2*1000;if ($3) then evalmath silverfine $3*100;if ($4) then evalmath bronzefine $4*10;if ($5) then var copperfine $5;evalmath fine %platfine+%goldfine+%silverfine+%bronzefine+%copperfine when I pronounce a fine upon you of (?:(\d+) platinum[,.]?)?(?:(?: and)? ?(\d+) gold[,.]?)?(?:(?: and)? ?(\d+) silver[,.]?)?(?:(?: and)? ?(\d+) bronze[,.]?)?(?:(?: and)? ?(\d+) copper\.)?

#RESEARCH_TRIGGERS
action var appfocusdone 1; var appfocusing 0; var rprojectactive 0; var researching 0 when ^Breakthrough!
action var appfousdone 1; var appfocusing 0; var rprojectactive 0; var researching 0 when You are already under the effects of an appraisal focus\.
action var appfousdone 1; var appfocusing 0; var rprojectactive 0; var researching 0 when You can't seem to focus on that.  Perhaps you're too mentally tired from researching similar principles recently.
action var researching 0;echo Research break! when ^You make definite progress in your project
action var researching 0; var researchtype -1 when ^Your eyes briefly darken.  When you regain sight, the graphs and sigils previously impressed upon your vision have disappeared.

action var researching 1;var researchtype $2 when ^You believe that you're (\S+)% complete with a portion of research about (\S+) Research.  You estimate that you will complete it
action var researching 1; var rprojectactive 1; var researchtype $2 when ^You believe that you're (\S+)% complete with a portion of research about (\S+) Patterns Research.  You estimate that you will complete it
action var researching 1; var rprojectactive 1; var researchtype $2 when ^You have completed (\S+)% of a project about (\S+) Research.  You believe that you're 
action var researching 1; var rprojectactive 1; var researchtype $2 when ^You have completed (\S+)% of a project about (\S+) Patterns Research.  You believe that you're 

action var researching 0; var rprojectactive 1; var researchtype $2 when ^You have completed (\S+)% of a project about (\S+) Research.
action var researching 0; var rprojectactive 1; var researchtype $2 when ^You have completed (\S+)% of a project about (\S+) Patterns Research.

#SANOWRET_TRIGGERS
action var sanowretready 1 when ^However, nothing much else happens, as you lack the concentration to focus.
action var sanowretready 1 when ^The light and crystal sound of your
action var tomeofloreready 1 when ^Having finished your studies, you close the cover of your
#sanowret crystal fades slightly

#APPFOCUS_TRIGGERS
action var appfocusing 1 when ^You are currently researching a project involving
action var appfocusing 0;var appfocusdone 1 when ^You have completed research awarding you
action var appfocusing 0;var appfocusdone 1 when ^You've pored over the possibilities,
action var appfocusing 0 when ^You feel ready for any sort of appraisal focus.

#TEACHING_TRIGGERS
action var currentteacher $1; var currentclass $3 when ^(\w+) is teaching a class on (extremely advanced|advanced|intermediate|basic|simplistic|extremely simplistic) \(compared to what you already know\) (.+)( which|, but).+You are in this class!$
action var currentteacher $1; var currentclass $3 when ^(\w+) is teaching a class on(?! (extremely advanced|advanced|intermediate|basic|simplistic|extremely simplistic)) (.+)( which|, but).+You are in this class!$
action var currentteacher SELF; var currentclass $1 when ^You are teaching a class on (.+) which
action var currentteacher 0; var currentclass 0 when ^All of your students have left, so you stop teaching|^Because you have no more students, your class ends|^But you aren't listening to anyone|^But you aren't teaching anyone|^No one seems to be teaching|^You stop listening to|^You stop teaching so as not to disturb the aura of quiet here|^You stop teaching\.|^Your teacher (has left|is not here), so you are no longer learning anything|cannot concentrate to teach .+ in combat\.|stops teaching and looks around quietly|Your students can no longer see you|No one seems to be teaching\.
action var currentteacher $1; var currentclass $2 when ^You begin to listen to (\w+) teach the (.+) skill
action var currentteacher SELF; var currentclass $1 when ^You continue to instruct your students? on (.+)\.$
action var currentteacher SELF; var currentclass $1 when begins to listen to you teach the (.+) skill
action var askstudent $1; var askclass $2 when (\S+) whispers, "OOC: teachme (\S+)"

#MAGIC_TRIGGERS
action var currentcyc 0;var nextcyc 0 when The mental strain of initiating a cyclic spell
action var currentcyc 0;var nextcyc 0 when You suddenly feel drained as your cyclic spell siphons the last of your energy.
action var ready 1 when You feel fully prepared to cast your spell.
action var ready 1 when Your spell pattern snaps into shape with little preparation!
action var ready 1 when Your formation of a targeting pattern
action var ready 1 when Your target pattern has finished forming around the area.

action var ready 0;var scancel 1 when Currently lacking the skill
action var ready 0;var scancel 1 when You don't have a spell prepared!
action var ready 0;var scancel 1 when You can't cast that on anyone else!
action var ready 0;var scancel 1 when You strain, but are too
action var ready 0;var scancel 1 when Your concentration slips for a moment, and your spell is lost.
action var ready 0;var scancel 1 when Your target pattern dissipates because
action var ready 0;var scancel 1 when Your pattern dissipates with the loss of your target.
action var ready 0;var scancel 1 when You have lost the spell you were preparing.
#action var ready 0;var scancel 1 when You let your concentration lapse and feel the spell's energies dissipate.

action var bgdone 1;put #var SpellTimer.BlufmorGaraen.active 0 when The winds encircling your forearms disperse.
action var heavytmready 1 when You feel sufficiently recovered to craft another major manifestation of offensive magic.
action var heavytmready 0 when You are still too fatigued from your previous efforts to manifest another major feat of offensive magic.
action var heavytmready 0 when You release an intense wave of psychic energy about you.
action var nexus 1 when A gently glittering series of colored lights appear in the air,
action var nexus 0 when The gentle, changing notes played in the distance grow softer 
#The gentle, changing notes played in the distance grow softer as the music nears the end, finishing with a lone sackbut to conclude the theme.
action var mist 1 when dense unnatural fog
action var mist 1 when dense mass of snow
action var mist 1 when wispy grey mist
action var mist 1 when obscured by a thick fog
action var pathwayactive 1 when You continue to discharge power, carving a favorable pathway
action var pathwayactive 0 when Unable to muster any further energy, the complex web of manipulations collapse, 
action var domainactive 1;var domainactivetype $2 when You sense the physics of the local area are being modified by (\S+) (\S+) domain.
action var aimready 1 when You think you have your best shot possible now.
action var aiming 0 when Since your left hand is now full, you stop aiming.
action var aiming 0 when You stop aiming.
action var aiming 0 when You stop concentrating on aiming your weapon.
action var aming 0 when Since you are no longer holding your ranged weapon in your right hand, you stop aiming.
action var tmdead 1 when You turn to face 
action var tmdead 1 when Face what?
action var symbiosis 1 when You recall the exact details of the (.+) symbiosis, preparing to integrate it with the next spell you cast.
action var symbiosis 1 when But you've already prepared the (.+) symbiosis!
action var symbiosis 0 when You twist the mana streams of your
action var symbiosis 0 when You pause for a moment as the details of the (.+) symbiosis fade from your mind.
action var symbiosis 0 when You release the (.+) symbiosis.
action var symbiosis 0 when Familiar streams of magic blend
action var symbiosis 0 when symbiosis from your memory?
action put #var Time.isKatambaUp 0;echo Fixing time! when Katamba is on the wrong side of Elanthia and is not visible.
action put #var Time.isXibarUp 0 when Xibar is on the wrong side of Elanthia and is not visible.
action put #var Time.isYavashUp 0 when Yavash is on the wrong side of Elanthia and is not visible.
action put #var tattoobuff NO; var tattoobuff NO; put #var spelldbtattoo NO; var spelldbtattoo NO; put #echo %alertwindow Failed to cast using a tattoo.  Turning off tattoo usage. when You fail to spread the mana evenly through the tattoo's tunnels, mangling the spell pattern before it could form.
action put #play Echo; put #echo %alertwindow Yellow [Magic] Attempting to cast %spellprepping without enough starlight or moonlight!; when There isn't enough starlight or moonlight for this spell!

#action var something 1 when The complementary nature of the spell empowers you.

action var tattooactive 1 when ^You brace yourself as you activate your tattoo, but nothing happens as you're already under a heroic effect\.
action var tattooactive 1 when ^You brace yourself as you activate your tattoo and feel empowered, as its magic washes over you\.
action var nexttattoo 0; var tattooactive 0 when You suddenly feel less heroic.
action var nexttattoo %t; math nexttattoo add 2100 when \[You will be able to use your tattoo again about an hour from now\.\]
action var nexttattoo %t; math nexttattoo add 1500 when \[You will be able to use your tattoo again about half an hour from now\.\]
action var nexttattoo %t; math nexttattoo add 900 when \[You will be able to use your tattoo again about 20 minutes from now\.\]
action var nexttattoo %t; math nexttattoo add 300 when \[You will be able to use your tattoo again about 10 minutes from now\.\]
action var nexttattoo %t; math nexttattoo add 60 when \[You will be able to use your tattoo again a few minutes from now\.\]
action var nexttattoo %t; math nexttattoo add 30 when \[You will be able to use your tattoo again about a minute from now\.\]

#COMBAT_TRIGGERS
action var balance $2 when \[You're(.*) (\S+) (balance|balanced|unbalanced|imbalanced)(.*)\]
action var deadcheck 1;var goodtarget 0 when (balance|balanced|imbalanced|unbalanced)\]
action var goodtarget 0 when You turn to face
action var fleegood 1 when You ponder displacing yourself to a galaxy far, far away from here.
action var fleegood 1 when You flee like a sniveling barbarian confronted by a powerful mage!
action var fleegood 1 when With a relieved breath, you decide shopping in town might be better for the rest of the day!
action var fleegood 1 when Choosing dishonor before death, you run away from the battlefield like a gutless cad.
action var fleegood 1 when Bolting quickly away, you consider making a substantial donation to the nearest temple.
action var fleegood 1 when You flee from the scene of battle like a coward!
action var fleegood 1 when All that running from the guard may pay off!  You turn southwest to make your getaway!
action var fleegood 1 when Either you're looking really tasty, or you've forgotten to wear your Innocence.  Deciding to abandon the cause, you turn and start running south!
action var fleegood 1 when You flee like a sniveling mage confronted by a berserking barbarian!
action send stow feet when ^You notice (?:an?|some).*at your feet, and do not wish to leave it behind\.

#TACTICS_TRIGGERS
action var tmove1 $1 when can be inflicted by landing an? (\S+)\.
action var tmove1 $1;var tmove2 $2 when can be inflicted by landing an? (\S+) and an? (\S+)\.
action var tmove1 $1;var tmove2 $2;var tmove3 $3 when can be inflicted by landing an? (\S+)\, an? (\S+) and an? (\S+)\.
action var tmove1 $1;var tmove2 $2;var tmove3 $3;var tmove4 $4 when can be inflicted by landing an? (\S+)\, an? (\S+)\, an? (\S+) and an? (\S+)\.
action var tmove1 $1;var tmove2 $2;var tmove3 $3;var tmove4 $4;var tmove5 $5 when can be inflicted by landing an? (\S+)\, an? (\S+)\, an? (\S+)\, an? (\S+) and an? (\S+)\.
action var analyzedone 1 when can be inflicted upon the enemy
action var analyzedone 1 when opening already being exploited 
#You reveal a moderate weakness in a young wyvern's defense.
#action var analyzedone 1 when Your analysis reveals a massive opening already being exploited in .* defenses\.
action var tacticsdone 1 when Utilizing good tactics
action var tacticsdone 1 when Utilizing flawless tactics
action var tacticsdone 1 when You can no longer see openings


##BLEEDING
action var head 1 when ^\s+head       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var neck 1 when ^\s+neck       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var chest 1 when ^\s+chest       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var abdomen 1 when ^\s+abdomen       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var back 1 when ^\s+back       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var tail 1 when ^\s+tail       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var rightarm 1 when ^\s+right arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var leftarm 1 when ^\s+left arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var righthand 1 when ^\s+right hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var lefthand 1 when ^\s+left hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var rightleg 1 when ^\s+right leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var leftleg 1 when ^\s+left leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var righteye 1 when ^\s+right eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var lefteye 1 when ^\s+left eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$

action var inthead 1 when ^\s+inside head       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intneck 1 when ^\s+inside neck       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intchest 1 when ^\s+inside chest       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action echo intabdomen;var intabdomen 1 when ^\s+inside abdomen       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intback 1 when ^\s+inside back       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var inttail 1 when ^\s+inside tail       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intrightarm 1 when ^\s+inside r\. arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intleftarm 1 when ^\s+inside l\. arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intrighthand 1 when ^\s+inside r\. hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intlefthand 1 when ^\s+inside l\. hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intrightleg 1 when ^\s+inside r\. leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intleftleg 1 when ^\s+inside l\. leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intrighteye 1 when ^\s+inside r\. eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
action var intlefteye 1 when ^\s+inside l\. eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
#action setvar You feel like now might be a good time to change the bandages on your head.

action var lodgehead 1 when (?:a|an) .* lodged \w+ into your head
action var lodgerighteye 1 when (?:a|an) .* lodged \w+ into your right eye
action var lodgelefteye 1 when (?:a|an) .* lodged \w+ into your left eye
action var lodgeneck 1 when (?:a|an) .* lodged \w+ into your neck
action var lodgechest 1 when (?:a|an) .* lodged \w+ into your chest
action var lodgeback 1 when (?:a|an) .* lodged \w+ into your back
action var lodgeabdomen 1 when (?:a|an) .* lodged \w+ into your abdomen
action var lodgerightarm 1 when (?:a|an) .* lodged \w+ into your right arm
action var lodgerighthand 1 when (?:a|an) .* lodged \w+ into your right hand
action var lodgeleftarm 1 when (?:a|an) .* lodged \w+ into your left arm
action var lodgelefthand 1 when (?:a|an) .* lodged \w+ into your left hand
action var lodgerightleg 1 when (?:a|an) .* lodged \w+ into your right leg
action var lodgeleftleg 1 when (?:a|an) .* lodged \w+ into your left leg
action var lodgechest 1 when (?:a|an) .* lodged \w+ into your tail

action var lodgehead 1 when a small red blood mite on your head
action var lodgerighteye 1 when a small red blood mite on your right eye
action var lodgelefteye 1 when a small red blood mite on your left eye
action var lodgeneck 1 when a small red blood mite on your neck
action var lodgechest 1 when a small red blood mite on your chest
action var lodgeback 1 when a small red blood mite on your back
action var lodgeabdomen 1 when a small red blood mite on your abdomen
action var lodgerightarm 1 when a small red blood mite on your right arm
action var lodgerighthand 1 when a small red blood mite on your right hand
action var lodgeleftarm 1 when a small red blood mite on your left arm
action var lodgelefthand 1 when a small red blood mite on your left hand
action var lodgerightleg 1 when a small red blood mite on your right leg
action var lodgeleftleg 1 when a small red blood mite on your left leg
action var lodgechest 1 when a small red blood mite on your tail



#NERVES
action (nerves) var badnerves 1 when some minor twitching
action (nerves) var badnerves 1 when some severe twitching
action (nerves) var badnerves 1 when difficulty controlling actions
action (nerves) var badnerves 1 when partial paralysis of the entire body
action (nerves) var badnerves 1 when severe paralysis of the entire body
action (nerves) var badnerves 1 when complete paralysis of the entire body
action (nerves) off

#POISON
action (poison) var poisoned 1 when You have a (critically|dangerously|seriously|mildly) poisoned (.*)\.
action (poison) off

#FIRE
action var onfire 1 when ^(?:A|An) \w+ \w+ breathes a stream of fire directly at you!  The flames *WHOOSH* around your (.*), setting it on fire!  You can smell the strong scent of naphtha in the \w+'s breath fueling the flames further\.
#action var onfire 1 when An adult wyvern breathes a stream of fire directly at you!  The flames *WHOOSH* around your left leg, setting it on fire!  You can smell the strong scent of naphtha in the wyvern's breath fueling the flames further.
action var onfire 1 when ^You pretend not to notice as the flames consume your (.*)!
action var onfire 1 when ^Your (.*) is on fire\.

#ENCUMBRANCE
action (encumbrance) var encumbrance 0 when Encumbrance : None
action (encumbrance) var encumbrance 1 when Encumbrance : Light Burden
action (encumbrance) var encumbrance 2 when Encumbrance : Somewhat Burdened
action (encumbrance) var encumbrance 3 when Encumbrance : Burdened
action (encumbrance) var encumbrance 4 when Encumbrance : Heavy Burden
action (encumbrance) var encumbrance 5 when Encumbrance : Very Heavy Burden
action (encumbrance) var encumbrance 6 when Encumbrance : Overburdened
action (encumbrance) var encumbrance 7 when Encumbrance : Very Overburdened
action (encumbrance) var encumbrance 8 when Encumbrance : Extremely Overburdened
action (encumbrance) var encumbrance 9 when Encumbrance : Tottering Under Burden
action (encumbrance) var encumbrance 10 when Encumbrance : Are you even able to move?
action (encumbrance) var encumbrance 11 when Encumbrance : It's amazing you aren't squashed!


#BURGLE_TRIGGERS
action var nextburgle $1; math nextburgle multiply 60; math nextburgle add %t when You should wait at least (\d*) roisaen for the heat to die down\.
action var nextburgle 0 when The heat has died down from your last caper\.
action var footsteps 1 when ^Footsteps nearby make you wonder if you\'re pushing your luck\.
action var surface counter when ^\[Someone Else\'s Home\, Kitchen\]$
action var room kitchen when Kitchen\]$
action var surface bed when ^\[Someone Else\'s Home\, Bedroom\]$
action var room bedroom when Bedroom\]$
action var surface table when ^\[Someone Else\'s Home\, Work Room\]$
action var room workroom when Work Room\]$
action var surface desk when ^\[Someone Else\'s Home\, Sanctum\]$
action var room sanctum when Sanctum\]$
action var surface rack when ^\[Someone Else\'s Home\, Armory\]$
action var room armory when Armory\]$
action var surface bookshelf when ^\[Someone Else\'s Home\, Library\]$
action var room library when Library\]$
action math grabs add 1 when ^You rummage around (.*)\, until you find
action math grabs add 1 when You rummage around (.*)\, but find nothing that looks valuable\.
action math pawntotal add $3 when ^(.+) takes your (.*) and gives it a quick but thorough examination\.  After pausing for a moment, he hands you (\d+) (\S+) for it\.

#MISC_TRIGGERS
action put #echo Black,Yellow ****FOUND RARE MATERIAL DROP!  CHECK ME!****; put #echo >Log Black,Green ****FOUND RARE MATERIAL DROP!  CHECK ME!****; put #flash; put #play MiniFanfare3 when Your luck knows no bounds\!

action var playing 0;var humming 0 when ^You finish playing .* on your .*\.
action var playing 0;var humming 0 when ^You stop playing your song\.
action var playing 0;var humming 0 when ^You finish humming
#action var climbing NO when This climb is too difficult, so you stop practicing.
action math windboardcharge subtract 1;put #var windboardcharge %windboardcharge when Your graceful windboard makes a few windy noises as it hovers under your feet.
action var justice 1 when After assessing the area, you think local law enforcement keeps an eye on what's going on here.
action var justice 1 when After assessing the area, you believe there is some kind of unusual law enforcement in this area.
action var justice 0 when You're fairly certain this area is lawless and unsafe.
action var needscleaning 1 when dirtiness may affect your performance.
action var firstlocksmith 0; var picksleft $2 when You believe the (.*) could be picked 105 times per day before running the risk of damaging the lock\.  You think it could be picked (\d+) more times today\.
action var firstskinfatrain 0; var skinsleft $2 when You believe the (.*) could be skinned and repaired 105 times per day before running the risk of damaging the leather.  You think it could be skinned and repaired (\d+) more times today\.
action var nextring %t;math nextring add 60 when You will be able to PUSH your ring again about a minute from now\.
action var nextring %t;math nextring add 300 when You will be able to PUSH your ring again a few minutes from now\.
action var nextring %t;math nextring add 600 when You will be able to PUSH your ring again about 10 minutes from now\.
action var nextring %t;math nextring add 1200 when You will be able to PUSH your ring again about 20 minutes from now\.
action var nextring %t;math nextring add 1800 when You will be able to PUSH your ring again about half an hour from now\.
action var nextring %t;math nextring add 2400 when You will be able to PUSH your ring again about an hour from now\.
action var nextring 0 when Your mind is momemtarily distracted with a vision of Fate's Fortune Lane.
action var nextring 0 when You may again use your Estate Holder jewelry to teleport to Fang Cove.
action var baddisarm 1 when ^However, a \w+ \w+ \w+ is not fully disarmed, making any chance of picking it unlikely\.


action var cost $1 when the humble sum of (.+) coins for this
action var cost $1 when and the price of (.+) coins is all I ask
action var cost $1 when I ask that you give (.+) copper lirum for
action put #var $anloralpin NO; put #echo %alertwindow Exploded an anloral pin due to having the wrong favors!  Turning off anloral pin usage. when Finding no strong affinity to your spirit, the delicate pin begins to vibrate\.

#EPISTEMIC_JOURNAL_TARANTULA
#action var nextejournal %t; var nextejournalwork $1; math nextejournalwork multiply 60; math nextejournalwork multiply 60; math nextejournal add %nextejournalwork; put #echo %alertwindow Epistemic journal can be used in $1 hours. when \[You can do that again in about (.+) (hour|hours)\.\]
#action var nextejournal %t; var nextejournalwork $1; math nextejournalwork multiply 60; math nextejournal add %nextejournalwork; put #echo %alertwindow Epistemic journal can be used in $1 minutes. when \[You can do that again in about (.+) minutes\.\]
action var nextejournal $gametime; var nextejournalwork $1; math nextejournalwork multiply 60; math nextejournalwork multiply 60; math nextejournal add %nextejournalwork; put #var nextejournal %nextejournal; put #echo %alertwindow Epistemic journal can be used in $1 hours. when \[You can do that again in about (.+) (hour|hours)\.\]
action var nextejournal $gametime; var nextejournalwork $1; math nextejournalwork multiply 60; math nextejournal add %nextejournalwork; put #var nextejournal %nextejournal; put #echo %alertwindow Epistemic journal can be used in $1 minutes. when \[You can do that again in about (.+) minutes\.\]
action var nexttarantula $2; math nexttarantula multiply 10; math nexttarantula add 10 when You try, but the (.*) is unresponsive.  It needs approximately (\d+) roisaen to generate enough venom again.

action (galley) put go galley when glides into the dock.
action (galley) put go galley when A voice calls, "All aboard who's going aboard!"
action (galley) pause 1;put go dock; var galleydone 1 when reaches the dock.  The crew ties it off and runs out the gangplank.
action (galley) off

action (sack) var sacklist $1 when ^In the .+ you see (.*)\.
action (sack) off

#action put #echo %alertwindow YellowPicking up a crossbow bolt would push you over the item limit of 500 items.  Please reduce your inventory count before you try again.

#######
timer clear
timer start

var multimode 0
var mstarget 0
var modestart 0
var multiarea NO

var scriptmodename %1
var scriptmode -1

var varset 1
gosub COMMANDPARSE
gosub SETUP
gosub COMMANDVARLOAD

goto SWITCHBOARD
#######



ALERTINIT:
  if %alertwindow = "Main" then var alertwindow
  else var alertwindow >%alertwindow
  ##AWARENESS_TRIGGERS##
  if ((%speechalerts = "YES") && (tolower("%scriptmodename") != "combat")) then
  { 
    var generalspeech ^Your mind hears|^A soft voice from somewhere near|^Your shadow babbles|^Your shadow mumbles|^Your shadow exclaims|^You (?:ask|exclaim|growl|hiss|lecture|say|shout|yell)|^From your hiding place you|^A loud voice bellows|^A scavenger troll strolls in|A \*very\* loud voice intones|^A grumbling janitor wanders into the|^A raggedy young Gnome dashes up beside|^Seamstress Zasele|^Rangu|^You hand Rangu|Out of the corner of your eye, you spy|^The attendant says,|^An attendant walks over and asks|^Their purpose is to serve, translate, and speak for Harawep's creatures,|^After a moment the leader steps forward grimly|^The figure intones solemnly|Aligning your thoughts with the song of|You grumble ominously,|^\S+ shakes his head and says|^\S+ looks puzzled,|The Human driver says, "I'm leaving shortly,|Occasional small twigs and pine needles|Downhill to the southeast, the gurgle of the|Quentin whispers,|Yrisa exclaims|Yrisa reaches into a pocket|The firewood peddler Mags says|Mags frowns and shakes her head.|The firewood peddler Mags takes|The firewood peddler Mags looks at you and says|Your head fills with the psychic backlash of the Negotiants' chatter|Feeble light from an ancient lantern does little to lessen the shadows|^\w+ regards you with a blank, slack-jawed stare, showing that nothing has sunk in\.  You mutter under your breath\,|A monotone voice with a Dwarven accent interrupts your thoughts,|The apprentice repairman looks over|A youthful attendant hands you some bundling rope and says,|You hand the apprentice repairman|The apprentice repairman smiles and says|The horse-drawn carriage's driver shouts|Mags calls out,|Aelik scowls and says,|Cormyn scowls and says,
    var craftingspeech Juln shuffles through some notes and says|A Dwarven clerk says politely,|Juln watches you closely before saying,|An Elothean clerk says|Serric shuffles through some notes and says,|Serric boasts,|An Elothean clerk looks over|You hand the clerk|Serric folds his arms across his chest and says,|Kapric shuffles through some notes and says|A clerk says,|A clerk says politely,|A clerk looks over the \w+ and says,|Yalda shuffles through some notes and says,|Yalda folds her arms across her chest and says,|You approach a guarded archway.  The sentry holds out|Yalda boasts,|You approach some broad stone doors.  The sentry holds out|Serric pulls out an ivory comb and hand mirror and begins to comb his hair\.
    var ferryspeech ^You hear a bell ring out|^You hear a shrill whistle sound and|^A voice calls, "All aboard who's going aboard!"|^From forward comes the cry "Cast off,"|Tumbling through the lower slopes|(?:He|She) says, "Farewell, (?:Sir|Madam)|(?:He|She) bows (?:graciously|quickly)\.  "Welcome back, (?:Sir|Madam)|(?:He|She) says, "Take care, (?:Sir|Madam)|A building quite out of place to the rest of the city lords over a large part of this portion of Sunstone Street\.|^A loud voice calls out, "Leaving in one minute!"  From below, another voice yells, "Shift change!"|^Someone shouts, "Leaving in thirty seconds!"  From below comes the cry, "Out oars," followed by the clatter of wood on wood\.|^A voice calls, "All ashore who's going ashore!"|A loud voice calls out, "Leaving in one minute!"
    var monsterspeech A \w+ blightwater nyad gazes wistfully at the mountain, whispering|A rotting deadwood dryad whispers to the desiccated trees all around|With a sibilant hiss, the blightwater nyad whispers|A rotting deadwood dryad weeps quietly to herself|The blood warrior roars in challenge|A low growl trickles from the gargoyle's mouth.|^A Dragon Priest assassin|The troll laughs monstrously and chants|A Dragon Priest purifier glides slowly into the area and hisses|A Dragon Priest purifier draws in a deep|Teardrops of flame ignite the air about an arthelun cabalist|A red-bristled gremlin jumps up and down|A black marble gargoyle throws its head back and screams|A Dragon Priest zealot (?:gasps|snarls|bellows|charges|hisses)|^An .*Adan'f (?:.*)+ falls to the ground with a crash and screams|^An .*Adan'f (?:.*) screams out|The Adan'f blademaster roars in challenge
    var spellspeech ^\S+ swears\, "|^Dark golden light glares forth from you|^You lift your voice|^You glance heavenward|^You make a holy|^\S+ makes a holy|^You swear\, "|The shadowling exclaims,|You throw your head back and howl,|After a moment, you see a crystal-clear vision of your|After a moment, you see a vision of your god who calls to you by name,
    var hespeech A voice on the wind whispers|A pair of Merelew guards assist you into the water|The libik (?:shouts|yells),|The seedy monger looks up to you and|The Monger's voice booms out,|The Monger's booming voice comes from the booth,|One of the attendants glances at you and says,|One of the monger's assistants addresses you, saying,|^An attendant in an otter costume exclaims|\w+ chants, "C'mon! I feel the luck of Eluned smiling on you all!
    var artspeech Painted with lush color and housed in a polished rectangle of walnut|A single crystal rose sits perfectly balanced upon the point|Fiendish lacerations exposing bare bone and dripping blood|Standing resolute in the face of an advancing horde of undead|The bright frame illuminates the rich color of the dark scene|Gracefully composed, the artwork features bold black strokes and pale watercolors|The sculpture itself is made from a single piece of gnarled copperwood|The kneeling figure of the chained man sits the height|Careful use of shading diverts your eyes away from the|At first glance, the piece appears dark and featureless|Rendered in dark bronze and rising three feet tall|Rich, polished mahogany frames this exquisite work of art|About the size of a Gor'Tog's skull, this smooth orb rests on an ornate|The panel is a worked slab of fine-grained pink sandstone standing four hands tall|Framed in a magnificent rectangle of rich mahogany, the bright bedroom|Framed in a square of goldenoak, the picture is presented against a backdrop of black velvet|As you take a look at this unique display, the first thing you notice|This display features a drape of black velvet overhead to protect
    var speechwhitelist %generalspeech|%craftingspeech|%ferryspeech|%monsterspeech|%spellspeech|%hespeech|%artspeech
    var namementionwhitelist Welcome back, (Sir|Madam)|Farewell, (Sir|Madam)|Take care, (Sir|Madam)|Thanks,|Thank you very much,|Searching methodically through the shelves, you finally manage to locate the jar labeled
    action (speech) var speechspeaker $1; var speechtext $2; var speechdiff2 %t; math speechdiff2 subtract %lastspeech; var speechdiff %speechdiff2 when ^(?!%speechwhitelist)(.{0,40}).*\, "(?!Say Ahh!)(.+)"
    action (speech) put #echo %alertwindow Yellow [Speech] %speechspeaker...; put #play Speech; put #flash; var lastspeech %t when eval %speechdiff >= 1
    action (speech) put #echo %alertwindow Yellow [Speech]: Name mention.; put #play Speech; put #flash when \"(?!%namementionwhitelist).*$charactername.*\"
    action (speech) put #echo %alertwindow Yellow [Speech]: Foreign Language; put #play Speech; put #flash; when something in \w+\.
    action (speech) put #play Speech;put #flash;put #echo %alertwindow Yellow [Speech]: Hidden: $1... when ^You hear (a voice|the voice of \S+|a male .+ voice|a female .+ voice) .+, \".+\"
    action (speech) put #play Speech;put #flash;put #echo %alertwindow Yellow [Speech]: Yell $1... when ^You hear (.+) voice yell from the \w+, \".+\"
    action (speech) put #play Speech;put #flash;put #echo %alertwindow Yellow [Speech]: $1 when ^\S+ (chants|sings) in a \w+ voice:|^You hear .+ voice (chanting|singing) from the shadows:
    action (speech) put #play Speech;put #flash;put #echo %alertwindow Yellow [Speech]: $1 when (^\S+ recites:|You hear .+ recite from the shadows:)
    action (speech) put #play Speech;put #flash;put #echo %alertwindow Yellow [Speech]: intone. when ^\S+ voice drops in pitch and (he|she) intones:|You hear .+ voice from the shadows intone:
    action (speech) put #play Speech;put #flash;put #echo %alertwindow Yellow [Speech]: whisper. when ^\S+ whispers, \".+\"|^\S+ leans over and whispers, \".+\"
    action put #play ThinkTo;put #flash;put #echo %alertwindow Yellow [Speech]: ESP when \[\S+\] \"\<(to you|to you faintly)\>\"
    action put #play ThinkTo;put #flash;put #echo %alertwindow Yellow [Speech]: ESP when ^You hear \S+ thoughts in your head|^You hear \S+'s (faint|loud) thoughts in your head
  }
  if %arrivalalerts = "YES" then
  {
    action put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes-Arrival when ^\S+ just arrived.
  }
  if (("%emotealerts" = "YES") && (tolower("%scriptmodename") != "combat")) then then
  { 
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 bows. when ^(\S+) bows to you.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 curtsies. when ^(\S+) curtsies to you.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 flails. when ^(\S+) flails (his|her) arms about.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 frowns. when ^(\S+) frowns\.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 frowns at $2. when ^(\S+) frowns at (\S+)\.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 hugs $2. when ^(\S+) hugs (\S+)
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 glares. when ^(\S+) glares
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 grins. when ^(\S+) grins at
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 giggles. when ^(\S+) giggles
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 hails you. when ^(\S+) hails you with a superior nod.|^\S+ hails you with a clenched fist over her heart and a respectful nod, the traditional Kaldaran greeting
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 leans on you. when ^(\S+) leans on you
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 licks you. when ^(\S+) leans over and licks you.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $2 nods to you. when ^(?!(He|She) nods to you slightly\.)(\S+) nods to you.|^(\S+) gives you (a slight|an amiable|an emphatic|a meek) nod.|^(\S+) tips (his|her) \S+ to you with a courteous nod.|^(\S+) nods politely to you.|^(\S+) nods graciously at you, giving you a polite smile.|^(\S+) gives you a slight nods at you, obviously agreeing with your views.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 nudges. when ^(\S+) nudges
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 peers. when ^(\S+) peers quizically
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 pokes you. when ^(\S+) pokes you in the ribs.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 shakes you. when ^(\S+) shakes you
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 stares at you. when ^(\S+) stares at you|^(\S+) fixes you with a serene, lofty stare\.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 tickled you. when ^(\S+) just tickled you.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 sighs. when ^(\S+) sighs
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 taps you. when ^(\S+) taps you
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 waves. when ^(\S+) waves\.|^\S+ waves to you.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 waves a hand in front of your face. when ^(\S+) waves a hand in front of your face.
    action (emote) put #play Speech;put #echo %alertwindow Yellow Alarm: Emotes - $1 winks. when ^(\S+) winks
  }
  if ("%gmalerts" = "YES") then
  {
    action put #flash; put #play MiniFanfare3;put #echo %alertwindow Yellow [GM]: SEND [$1] $2 when ^SEND\[(\w+)\] (.*)
    action put #flash; put #play MiniFanfare3;put #echo %alertwindow Yellow [GM]: PAGE when \[PAGE!\] \w+, a member of staff is trying to get your attention.  Please respond!
    action put #flash; put #play MiniFanfare3;put #echo %alertwindow Yellow [GM]: Question Asked when .*\* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \* \*(.*)
    action (questionlooker) put #class +questionreader -questionlooker when ^.(\s*(?:\*\s)+\s*).$
    action (questionreader) put #class -questionreader +questionlooker; put #flash; put #play MiniFanfare3;put #echo %alertwindow Yellow [GM]: Question - $1 when ^\s*(.*\?.*)$
    action (questionlooker) on
    action (questionreader) off
    #action put #flash; put #play MiniFanfare3;put #echo %alertwindow Yellow [GM]: Question 3 - $1 when ^. ((?=.*?\b\w{2,}\b).*).$
    action put #flash; put #play MiniFanfare3;put #echo %alertwindow Yellow [GM]: GM Logon when \bGameMaster\b(?!.*joins the adventure\.$)
    action put #flash; put #play MiniFanfare3;put #echo %alertwindow Yellow [GM]: Announcement when (^System Announcement:.*)
    
  }
  if %paranoiatalerts = "YES" then
  {
    action put #beep;put #echo %alertwindow Yellow Alarm: Script when (([^\Wa-z0-9]\s){2,})
    action put #beep;put #echo %alertwindow Yellow Alarm: Script when (\b[^\Wa-z0-9]{2,}\b)(?<!(TO|PIRP|SKILL|EXP|HELP|STOP|PULL|LISTENING|BANNGG|STOW|HR|INVENTORY|APPRAISE|POP|FACE))
    action put #beep;put #echo %alertwindow Yellow Alarm: Script when (([A-Z]\s){3,})
    action put #beep;put #echo %alertwindow Yellow Alarm: Script when yellow duck
    action put #beep;put #echo %alertwindow Yellow Alarm: Script when old hag
    action put #beep;put #echo %alertwindow Yellow Alarm: Script when mouse
  }
  if (%almanacalerts = "YES") then
  {
    action put #echo %alertwindow [Almanac]: $2. when ^You set about studying your (.*) intently.  You believe you've learned something significant about (.+)!
  }
  #RPA
  action var rpastatus 1; put #echo %alertwindow [RPA]: RPA started. when You suddenly feel charged with a fierce joy for life and realize that you have come to understand a little bit more about yourself, and the world about you.
  action var rpastatus 1; put #echo %alertwindow [RPA]: RPA started. when You gaze about yourself for a moment, struck by a momentary passing thought that seems to bring to light some of what you have learned in the past.  You laugh inwardly in delight at this scrap of personal philosophy, the joy of the realization filling you warmly.
  action var rpastatus 1; put #echo %alertwindow [RPA]: RPA started. when A memory of something you were told once by an old teacher of yours suddenly flashes through your mind.  Though you didn't understand what he told you then, you suddenly grasp the full meaning of it now!
  action var rpastatus 1; put #echo %alertwindow [RPA]: RPA unpaused. when You unpause your level (.+) roleplaying award.
  action (rpa) var rpastatus 1;put #echo %alertwindow [RPA]: Active. when Status: Active
  action (rpa) var rpastatus -1;put #echo %alertwindow [RPA]: Not Active. when Status: Paused
  action (rpa) var rpastatus -1 when None.
  action (rpa) off
  if %pvpstealthalerts = "YES" then
  {
    action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Stealth when ^You notice (\S+) attempting to conceal (his|her) spell preparations from a hidden location.
    action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Stealth when ^\S+ reveals (himself|herself).
    action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Stealth when ^You hear someone chanting.
    action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Stealth when ^You notice (\S+) slip into a hiding place.
    action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Stealth when ^You notice (\S+) come out of hiding.
    action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Stealth when ^You notice (\S+), who is quite obviously attempting to remain hidden.
    action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Stealth when ^You notice the vague silhouette of
    action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Stealth when ^You see signs that someone is about, but fail to discover their location.
  }
  if %inventoryalerts = "YES" then
  {
    action put #flash; put #play Speech;put #echo %alertwindow Yellow [Inventory]: Large number of items. when WARNING:  You have a large number of items on your person.
    action put #flash; put #play Speech;put #echo %alertwindow Yellow [Inventory]: Extremely large number of items. when WARNING: You are carrying an extremely large number of items on your person.  
  }
  action put #flash; put #play Speech;put #echo %alertwindow Yellow [Inventory]: Completely full inventory! when would push you over the item limit of 500 items.  Please reduce your inventory count before you try again.

  #HEALTH_ALARMS
  if %healthalerts = "YES" then
  {
    action put #flash; put #play JustArrived;put #echo %alertwindow Yellow [Health]: Stunned when stunning you
    action put #flash; put #play JustArrived;put #echo %alertwindow [Health]: Stunned when dealing you a vicious stun.
    #action put #flash; put #play JustArrived;put #echo %alertwindow [Health]: Stunned when You are still stunned.
    action put #flash; put #play Body;put #echo %alertwindow Yellow [Health]: Dead; #send avoid all;#flash; goto DEADLOGIC when ^Your death cry echoes in your brain
    action put #flash; put #play Body; put #echo %alertwindow Yellow [Health]: Dead; goto DEADLOGIC when DEAD> 
    action if $health < %lasthealth then put #flash; if $health < %lasthealth then put #play Advance; if $health < %lasthealth then put #echo %alertwindow Yellow [Health]: Low Health; var lasthealth $health when eval $health <= %healthalertnum
    action put #flash; put #play Advance;put #echo %alertwindow Yellow [Health]: Infection;var infection 1;var nexthealcheck 0 when You feel a wave of nausea rising from your gut as you notice a sickly green fluid oozing from
    action put #flash; put #play Advance;put #echo %alertwindow Yellow [Health]: Infection - Infection;var infection 1;var nexthealcheck 0 when Your wounds are infected.
    action var nexthealcheck 0 when You try to creep out of hiding but your injuries cause you to stumble and crash to the ground!
    action var nexthealcheck 0 when Your (.+) is too injured for you to do that.
  }  
  if (("%bugout" = "YES") && (%scriptmode = 1)) then
  {
    action if (%buggingout = 0) then goto BUGOUT; put #echo %alertwindow Yellow [Bugout]: Bugging out due to low health! when eval $health <= %bugoutnum
    if ("%bugoutonbleed" = "YES") then
    {
      action if (%buggingout = 0) then goto BUGOUT;put #echo %alertwindow Yellow [Bugout]: Bugging out due to bleeding! when eval $bleeding = 1
    }
    if ("%bugoutonsend" = "YES") then
    {
      action put #echo %alertwindow Yellow [GM]: SEND [$1] $2; put #echo %alertwindow Yellow [Bugout]: Bugging out due to GM SEND!;goto BUGOUT when ^SEND\[(\w+)\] (.*)
      action put #echo %alertwindow Yellow [GM]: PAGE; put #echo %alertwindow Yellow [Bugout]: Bugging out due to GM PAGE!;goto BUGOUT when ^\[PAGE!\] \w+, a member of staff is trying to get your attention.  Please respond!
    }
  }
  if ("%autoupkeep" = "YES") then
  { 
    if %auonhealth = "YES" then action var goupkeep 1;var autype health when eval $health <= $auhealthnum
    if %auonhealth = "YES" then action var goupkeep 1;var autype wounds when You try to creep out of hiding but your injuries cause you to stumble and crash to the ground!
    if %auonhealth = "YES" then action var goupkeep 1;var autype wounds when when Your (.+) is too injured for you to do that.
    if %auonbleed = "YES" then action var goupkeep 1;var autype bleed when eval $bleeding = 1
    action var goupkeep 1; var autype hands when Your (right|left) hand is too injured to draw .*\!
    action var goupkeep 1;var autype hands when Your (right|left) hand is too injured to do that\.
    action var goupkeep 1;var autype wounds when You are in no condition to do that.
    action var goupkeep 1; var autype manual when ^UPKEEP!!!
  }
  action put #flash; put #play JustArrived;put #echo %alertwindow Yellow [Health]: when The silt and sand starts to shift and slide
  if ("%nervealerts" = "YES") then
  {
    action put #flash; put #play Echo;put #echo %alertwindow [Nerves]: Nerve Damage when ^You sense (.*) amount of mana slip away from you\.
    action put #flash; put #play Echo;put #echo %alertwindow [Nerves]: Nerve Damage when The mana you were holding dissipates.
  }
  if ("%backfirealerts" = "YES") then
  {
    action put #flash; put #play Echo;put #echo %alertwindow [Nerves]: Backfire - %spellprepping when ^Your spell (.*)backfires
  }
  #SORCERY_ALARMS
  if ("%sorceryalerts" = "YES") then
  {
    #The spell pattern resists the influx of Elemental mana as a strange itching sensation builds under your skin.  Geysers of uncontrolled mana suddenly erupt from your flesh, illuminating the surroundings in an excruciating display of blue-black fire!
    
    action put #flash; put #play Echo;put #echo %alertwindow [Sorcery]: Nerve damage due to backlash. when The spell pattern resists the influx of (.+) mana though you are able to channel the worst of the backlash into your nervous system.
    action put #flash; put #play Echo;put #echo %alertwindow [Sorcery]: Burned skin due to backlash. when The spell pattern resists the influx of (.+) mana as a strange itching sensation builds under your skin.  Geysers of uncontrolled mana suddenly erupt from your flesh, illuminating the surroundings in an excruciating display of blue-black fire!
    action put #flash; put #play Echo;put #echo %alertwindow [Sorcery]: Lost scrolls due to backlash. when The spell pattern resists the influx of unfocused mana, overloading your arcane senses and rendering you magically inert\.
    action put #flash; put #play Echo;put #echo %alertwindow [Sorcery]: Stunned due to backlash. when The spell pattern resists the influx of .* mana though the backlash leaves you stunned\!
    action put #flash; put #play Echo;put #echo %alertwindow [Sorcery]: Attunement dulled due to backlash. when The spell pattern resists the influx of .* mana.  You are able to contain the backlash but doing so leaves your attunement to the mana streams dulled\.
    action put #flash; put #play Echo;put #echo %alertwindow [Sorcery]: Hand exploded due to backlash. when An instant rush of black and blue fire explodes into being, consuming your (left|right) hand and turning it into ash!
    action put #flash; put #play Echo;put #echo %alertwindow [Sorcery]: Both hands exploded due to backlash. when An instant rush of black and blue fire explodes into being, consuming your outstretched limbs and turning them into ash!
    action put #flash; put #play Echo;put #echo %alertwindow [Sorcery]: Spell failed due to backlash. when The spell pattern resists the influx of .* mana and fails completely\.
    #The spell pattern resists the influx of Life mana, and a strange burning sensation backwashes from the spell pattern into your body.
  }  
  if "$guild" = "Thief" then
  {
    if ((%bugout = "YES") && (%scriptmode = 1)) then
    {
      action if %buggingout = 0 then goto BUGOUT; if $concentration < %lastconc then put #play Echo; if $concentration < %lastconc then put #flash; if $concentration < %lastconc then put #echo %alertwindow Yellow [Khri]: Possible Khri crash.  Bugging!; var lastconc $concentration when eval $concentration <= 10
    }
    else
    {
      action if $concentration < %lastconc then put #flash; if $concentration < %lastconc then put #play Echo; if $concentration < %lastconc then put #echo %alertwindow Yellow [Khri]: Possible Khri crash.  Please investigate!; var lastconc $concentration when eval $concentration <= 5
    }
  }
  #PVP_ALARMS
  if %pvpalerts = "YES" then
  {
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Empath - $1 when ^You feel a warmth radiate from (\w+)'s touch\.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Locate when ^You get an odd feeling that someone is watching you.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Risen when ^A (.*) wanders into the area, looking for you.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Risen when ^A (.*) gazes about the area with an intent look, watching the goings on.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Familiar when begins to watch the goings on carefully.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Companion arrived. when A \w* (raccoon|wolf) pads into the area\.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Companion wants to give you something. when A \w* (raccoon|wolf) nudges at you (anxiously|excitedly)\.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Companion when A \w* (raccoon|wolf) (whines|sits down|stands back up)\.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Companion leaves. when A \w* (raccoon|wolf)  pads off\.
		action put #flash; put #play Body;put #echo %alertwindow Yellow [PVP]: Riftal Summons when A gaping rift of 
		action put #flash; put #play JustArrived;put #echo %alertwindow Yellow [PVP]: Thump when catches you in the throat with the edge of
		#action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]:  when snipes
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^(\S+) gestures at you.
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^(\S+) begins to advance on you!
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when You notice \S+ attempting to stealthily advance upon you!
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^(\S+) is still a distance away from you and is closing steadily.
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^(\S+) closes to pole weapon range on you!
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^(\S+) closes to melee range on you!
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^(\S+) turns to face you.
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^(\S+) begins to focus intently on you!
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^Not having any room, (\S+) stops advancing on you.
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^(\S+) appears to be aiming at you
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 when ^You notice (\S+) focusing intently on you while remaining hidden!
		
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Someone roared at you. when You are frozen with fear!
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: $1 roared at you. when You feel incredibly startled by (\S+), and glance down just in time to see that your footing has become unbalanced\.
		action put #flash; put #play Evil;put #echo %alertwindow Yellow [PVP]: Someone roared at you. when You feel weaker and less sure of your ability to attack\.
  }
  return


GUILDVARLOAD:
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
  if "$guild" = "Barbarian" then gosub BARBARIANONLY
  if "$guild" = "Bard" then gosub BARDONLY
  if "$guild" = "Cleric" then gosub CLERICONLY
  if "$guild" = "Empath" then gosub EMPATHONLY
  if "$guild" = "Thief" then gosub THIEFONLY
  if "$guild" = "Moon Mage" then gosub MOONMAGEONLY
  if "$guild" = "Necromancer" then gosub NECROONLY
  if "$guild" = "Paladin" then gosub PALADINONLY
  if "$guild" = "Ranger" then gosub RANGERONLY
  if "$guild" = "Trader" then gosub TRADERONLY
  if "$guild" = "Warrior Mage" then gosub WARMAGEONLY
  return


COMMANDVARLOAD:
  if tolower("%scriptmodename") = "1" then var multiarea NO
  if tolower("%scriptmodename") = "2" then var multiarea NO
  if (tolower("%scriptmodename") = "combat") then
  {
    echo
    echo ================Combat Training Only===============
    echo
    var scriptmode 1
    var speechalerts NO
    var emotealerts NO
    var combat YES
    var huntingarea none
    var autoupkeep NO
    var noncombat NO
    var bugout NO
    var multiarea NO
    if ("%2" = "2") then var varset 2
    else var varset 1
    put #echo >$alertwindow Began combat only training in Mode %varset.
  }
  if (tolower("%scriptmodename") = "noncombat") then
  {
    var scriptmode 0
    echo Out of Combat Training!
    var combat NO
    var outdoortimer 0
    var textbooktimer 0
    var appraisetarget bundle
    if ((%research = "YES") && (%spell = YES)) then var research NO
    var buff NO
    var tm NO
    var debil NO
    var autoupkeep NO
    var bugout NO
    put #echo >$alertwindow Began noncombat training.
  }
  if tolower("%scriptmodename") = "climb" then
  {
    echo
    echo ================Climb Practice===============
    echo
    var scriptmode 0
    var outdoor NO
    var perform YES
    var pathway NO
    var outdoor NO
    var hunting NO
    var spellprepping NO
    var cyclic NO
    var appfocus NO
    if_2 then
    {
      var climbobject %2
      var climbing YES
      echo ClimbObject: %climbobject
    }
    else var climbing NO
    var bugout NO
    var autoupkeep NO
  }
  if tolower("%scriptmodename") = "devotion" then
  {
    echo
    echo ================Devotion===============
    echo
    var scriptmode 0
    var buffingonly 0
    var devotiononly 1
    var cyclic NO
    var buff NO
    var gbuff NO
    var pathway NO
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var astro NO
    var textbook NO
    var harnessing YES
    var perchealth NO
    var bugout NO
    var speechalerts NO
    var emotealerts NO
    var noncomsanowret NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
  }
  if tolower("%scriptmodename") = "quiet" then
  {
    echo
    echo ================Quiet Training===============
    echo
    var scriptmode 0
    var speechalerts NO
    var emotealerts NO
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune YES
    var textbook NO
    var hunting NO
    var perform NO
    var buff NO
    var perform NO
    var astro NO
    var bugout NO
    var cycdebil NO
    var cyctm NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
  }
  if tolower("%scriptmodename") = "silent" then
  {
    echo
    echo ================Silent Training===============
    echo
    var scriptmode 0
    var speechalerts NO
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune YES
    var cyclic NO
    var textbook NO
    var hunting NO
    var perform NO
    var buff NO
    var perform NO
    var astro NO
    var bugout NO
    var noncomsanowret NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
    var almanac NO
  }
  if tolower("%scriptmodename") = "nort" then
  {
    echo
    echo ================No-RT Training===============
    echo
    var scriptmode 0
    var buffingonly 0
    #var cyclic YES
    var cyctm NO
    var cycdebil NO
    var buff NO
    var gbuff NO
    var textbook NO
    var pathway NO
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var astro NO
    var perchealth NO
    var bugout NO
    #var noncomsanowret NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var almanac NO
    var ejournal NO
    var research NO
    var autoupkeep NO
  }
  if tolower("%scriptmodename") = "magic" then
  {
    echo
    echo ================Magic===============
    echo
    var scriptmode 0
    var buffingonly 0
    #var cyclic YES
    var buff NO
    var gbuff NO
    var textbook NO
    var pathway NO
    var weapons NO
    var outdoor NO
    var spell YES
    var debil NO
    var tm NO
    var attune YES
    var hunting NO
    var perform NO
    var appraise NO
    var astro NO
    var research NO
    var bugout NO
    var noncomsanowret NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
    put #echo >$alertwindow Began noncombat training.
  }
  if tolower("%scriptmodename") = "music" then
  {
    echo
    echo ================Music===============
    echo
    var scriptmode 0
    var buffingonly 0
    var buff NO
    var gbuff NO
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var perform YES
    var appraise YES
    var research NO
    var bugout NO
    var autoupkeep NO
  }
  if tolower("%scriptmodename") = "research" then
  {
    echo
    echo ================Research===============
    echo
    var scriptmode 0
    var buffingonly 0
    var cyclic NO
    var buff NO
    var gbuff NO
    var textbook NOs
    var pathway NO
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var astro NO
    var bugout NO
    var noncomsanowret NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
    var almanac NO
    var speechalerts NO
    var emotealerts NO
    var research YES
    if_2 then
    {
      if_3 then var researchtype1 %2 %3
      else var researchtype1 %2
      if !contains("|%researches", "|%researchtype1|") then
      {
        echo Research option must be one of: %researches!
        exit
      }
      var researchnum 1
    }
  }
  if tolower("%scriptmodename") = "teach" then
  {
    echo
    echo ================Teaching===============
    echo
    var scriptmode 0
    var buffingonly 0
    var cyclic NO
    var buff NO
    var gbuff NO
    var textbook NO
    var pathway NO
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var astro NO
    var research NO
    var teaching YES
    var teachingonly 1
    var bugout NO
    var noncomsanowret NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
  }
  if tolower("%scriptmodename") = "focus" then
  {
    echo
    echo ================Appraise Focus===============
    echo
    var appfocusonly 1
    var scriptmode 0
    var buffingonly 0
    var cyclic NO
    var buff NO
    var gbuff NO
    var textbook NO
    var pathway YES
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var astro NO
    var research NO
    var appfocus YES
    var bugout NO
    var noncomsanowret NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
    var almanac NO
    var ejournal NO
  }
  if tolower("%scriptmodename") = "buff" then
  {
    var scriptmode 2
    var speechalerts NO
    var emotealerts NO
    if_2 then
    {
      #echo 2: %2
      if %2 > 0 then var buffbuffer %2
    }
    put #echo >$alertwindow Began buffing in Mode %varset.
  }
  if tolower("%scriptmodename") = "gbuff" then
  {
    echo
    echo ================Group Buffing===============
    echo
    var scriptmode 2
    var buffingonly 1
    var cyclic NO
    var buff NO
    var gbuff YES
    var pathway NO
    var weapons NO
    var outdoor NO
    var spell NO
    var debil NO
    var tm NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var astro NO
    var textbook NO
    #var harnessing YES
    var straightcast NO
    var perchealth NO
    var bugout NO
    var speechalerts NO
    var emotealerts NO
    var appfocus NO
    var noncomsanowret NO
    var teaching NO
    var research NO
    var almanac NO
    var ejournal NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
  }
  if tolower("%scriptmodename") = "upkeep" then
  {
    echo
    echo ================Upkeep===============
    echo
    var scriptmode 3
    var perchealth NO
    var bugout NO
    var healthalerts NO
    var speechalerts NO
    var emotealerts NO
    var healthalertnum 0
    var autoupkeep NO
    var armorcheck NO
  }
  if tolower("%scriptmodename") = "burgle" then
  {
    echo
    echo ================Burgle===============
    echo
    var scriptmode 4
    var perchealth NO
    var bugout NO
    var healthalerts NO
    var speechalerts NO
    var emotealerts NO
    var healthalertnum 0
    var autoupkeep NO
  }
  if tolower("%scriptmodename") = "burglepawn" then
  {
    echo
    echo ================Burgle & Pawn===============
    echo
    var scriptmode 4
    var perchealth NO
    var bugout NO
    var healthalerts NO
    var speechalerts NO
    var emotealerts NO
    var healthalertnum 0
    var autoupkeep NO
    var burglepawn YES
  }
  if tolower("%scriptmodename") = "multi" then
  {
    echo
    echo ================Multi-Area Training===============
    echo
    var scriptmode 1
    var multiarea YES
    put #echo >$alertwindow Began combat training in Multi-Area Mode.
  }
  if tolower("%scriptmodename") = "alerts" then
  {
    echo
    echo ================Alerts Only===============
    echo
    var scriptmode 0
    var cyclic NO
    var buff NO
    var gbuff NO
    var osrelmeraud NO
    var spell NO
    var debil NO
    var tm NO
    var pathway NO
    var weapons NO
    var outdoor NO
    var attune NO
    var hunting NO
    var perform NO
    var appraise NO
    var astro NO
    var textbook NO
    var harnessing NO
    var perchealth NO
    var bugout NO
    var healthalerts YES
    var speechalerts YES
    var emotealerts YES
    var gmalerts YES
    var noncomsanowret NO
    var teaching NO
    var research NO
    var almanac NO
    var ejournal NO
    var almanacalerts NO
    var windboard NO
    var locksmithbox NO
    var skinfatrainer NO
    var autoupkeep NO
    var auonbleed NO
    var auonburden NO
    var alertsonly 1
  }
  #gosub CUSTOMSETS
  return



COMMANDPARSE:
  var commandvars 0
  if_1 then
  {  
    var varset 1
    if tolower("%scriptmodename") = "help" then goto MAINHELP
    if ((tolower("%scriptmodename") = "1") || (tolower("%scriptmodename") = "2")) then
    {
      var scriptmode 1
      gosub TITLE
      var multiarea NO
      if ("%1" = "2") then
      {
        var varset 2
        put #echo mono Train script beginning in Mode %varset.
        put #echo >$alertwindow [Train]: Train script beginning in Mode %varset.
      }
      else
      {
        var varset 1
        put #echo mono Train script beginning in Mode %varset.
        put #echo >$alertwindow [Train]: Train script beginning in Mode %varset.
      }
    }
    else
    {
      if ((tolower("%scriptmodename") = "1") || (tolower("%scriptmodename") = "2") || (tolower("%scriptmodename") = "combat") || (tolower("%scriptmodename") = "research") || (tolower("%scriptmodename") = "teach") || (tolower("%scriptmodename") = "focus") || (tolower("%scriptmodename") = "buff")) || (tolower("%scriptmodename") = "gbuff") || (tolower("%scriptmodename") = "upkeep") || (tolower("%scriptmodename") = "burgle") || (tolower("%scriptmodename") = "burglepawn") || (tolower("%scriptmodename") = "multi") || (tolower("%scriptmodename") = "alerts") || (tolower("%scriptmodename") = "noncombat") || (tolower("%scriptmodename") = "climb") || (tolower("%scriptmodename") = "devotion") || (tolower("%scriptmodename") = "quiet") || (tolower("%scriptmodename") = "silent") || (tolower("%scriptmodename") = "nort") || (tolower("%scriptmodename") = "magic") || (tolower("%scriptmodename") = "music")) then
      { 
        var varset 1
        put #echo mono Train script beginning.
        put #echo >$alertwindow [Train]: Train script beginning.
      }
      else
      {
        put #echo mono Invalid script option.
        put #echo
        goto MAINHELP
      }
    }
  }
  else
  {
    var scriptmode 1
    gosub TITLE
    var varset 1
    put #echo mono Train script beginning.
    put #echo >$alertwindow [Train]: Train script beginning.
  }
  return

BARBARIANONLY:
  var expertise $expertise
  var expaccuracy $expaccuracy
  var expdamage $expdamage
  var whirlwind $whirlwind
  var dualload $dualload
  var warhorn $warhorn
  var warhornitem $warhornitem
  
  var mininnerfire $mininnerfire
  var berserkava $berserkava
  var avafatigue $avafatigue
  var berserkfamine $berserkfamine
  var faminevit $faminevit
  var meditatestaunch $meditatestaunch
  var berserkblizzard $berserkblizzard
  var berserkcyclone $berserkcyclone
  var berserkdrought $berserkdrought
  var berserkearthquake $berserkearthquake
  var berserkflashflood $berserkflashflood
  var berserkhurricane $berserkhurricane
  var berserklandslide $berserklandslide
  var landslidetraining $landslidetraining
  var berserktornado $berserktornado
  var tornadotraining $tornadotraining
  var berserktsunami $berserktsunami
  var berserkvolcano $berserkvolcano
  var berserkwildfire $berserkwildfire
  var bearform $bearform
  var buffaloform $buffaloform
  var dragonform $dragonform
  var eagleform $eagleform
  var monkeyform $monkeyform
  var owlform $owlform
  var pantherform $pantherform
  var piranhaform $piranhaform
  var pythonform $pythonform
  var wolverineform $wolverineform
  var meditatebastion $meditatebastion
  var meditatecontemplation $meditatecontemplation
  var meditateserenity $meditateserenity
  var meditatetenacity $meditatetenacity
  var roaranger $roaranger
  var roarembrace $roarembrace
  var roarkuniyo $roarkuniyo
  var roarrage $roarrage
  var roarscreech $roarscreech
  var roarshriek $roarshriek
  var roarwail $roarwail
  var tsunamiweapon %seweapon|%leweapon|%theweapon|%sbweapon|%lbweapon|%thbweapon|%staveweapon|%poleweapon
  
  
  
  var expertdone 1
  var expertpause 0
  var expaccuracy 0
  var expdamage 0
  
  #EXPERTISE_TRIGGERS
  action (expertise) var emove1 $1 when Increased inner fire may be achieved by landing an? (\S+)\.
  action (expertise) var emove1 $1 when You recall your combo may be completed by landing an? (\S+)\.
  action (expertise) var emove1 $1;var emove2 $2 when Increased inner fire may be achieved by landing an? (\S+) and an? (\S+)\.
  action (expertise) var emove1 $1;var emove2 $2 when You recall your combo may be completed by landing an? (\S+) and an? (\S+)\.
  action (expertise) var emove1 $1;var emove2 $2;var emove3 $3 when You recall your combo may be completed by landing an? (\S+)\, an? (\S+) and an? (\S+)\.
  action (expertise) var emove1 $1;var emove2 $2;var emove3 $3;var emove4 $4 when Increased inner fire may be achieved by landing an? (\S+)\, an? (\S+)\, an? (\S+) and an? (\S+)\.
  action (expertise) var emove1 $1;var emove2 $2;var emove3 $3;var emove4 $4 when You recall your combo may be completed by landing an? (\S+)\, an? (\S+)\, an? (\S+) and an? (\S+)\.
  action (expertise) var emove1 $1;var emove2 $2;var emove3 $3;var emove4 $4;var emove5 $5 when Increased inner fire may be achieved by landing an? (\S+)\, an? (\S+)\, an? (\S+)\, an? (\S+) and an? (\S+)\.
  action (expertise) var emove1 $1;var emove2 $2;var emove3 $3;var emove4 $4;var emove5 $5 when You recall your combo may be completed by landing an? (\S+)\, an? (\S+)\, an? (\S+)\, an? (\S+) and an? (\S+)\.
  action var eanalyzedone 1 when may be achieved by landing
  action var eanalyzedone 1 when your combo may be completed by landing 
  action var expertdone 1 when Utilizing flawless combat expertise
  action var expertdone 1;var expertpause 0 when The battle shifts away from you, ruining any tactical openings you were attempting to exploit\.
  action var eaccuracy 0 when You sense your combat accuracy decrease as the battle shifts before you\.
  action var eaccuracy 1 when Utilizing flawless combat expertise you execute an attack combination and increase the accuracy of your next few attacks\.
  action var edamage 0 when You sense your ability to land deadly blows decrease as the battle shifts before you\. 	
  action var edamage 1 when Utilizing flawless combat expertise you execute an attack combination and increase the damage of your next few attacks\.
  
  #action math nextacm%acmtype subtract 45;put #echo %alertwindow Subtracting 45 seconds from %acmtype timer - %nextacm%acmtype. when With expert skill you end the attack and maneuver into a better position\.
  #;put #echo %alertwindow Subtracting 45 seconds from %acmtype timer. 
  return


BARDONLY:
  var whistlepiercing $whistlepiercing
  var movewhistle $movewhistle
  var movescream $movescream
  var eilliescry $eilliescry
  var eilliescrymana $eilliescrymana
  return

CLERICONLY:
  #action var osrelmeraud NO; put #echo %alertwindow Yellow [BUffing]: Unable to find an orb to cast OM on.  Turning off OM use. when Crackling blue essence swirls over your hands, unable to reach the .+ orb.
  var theurgy $theurgy
  var pray $pray
  var praydeity $praydeity
  var meraudcommune $meraudcommune
  var elunedcommune $elunedcommune
  var tamsinecommune $tamsinecommune
  var dance $dance
  var recite $recite
  var recitation $recitation
  var anloralpin $anloralpin
  var anloralpinitem $anloralpinitem    
  var pilgrimbadge $pilgrimbadge
  var pilgrimbadgeworn $pilgrimbadgeworn
  var prayermat $prayermat
  var prayermatitem $prayermatitem
  var dirtstacker $dirtstacker
  var dirtstackeritem $dirtstackeritem
  var lighter $lighter
  var lighteritem $lighteritem
  var flint $flint
  var steelitem $steelitem
  var watercontainer $watercontainer
  var blessdelay $blessdelay
  var hyhcast $hyhcast
  var sapcast $sapcast
  var osrelmeraud $osrelmeraud
  var omprepmana $omprepmana
  var omaddmana $omaddmana
  var ombuffnum $ombuffnum
  var ombuff1 $ombuff1
  var ombuff2 $ombuff2
  var ombuff3 $ombuff3
  var ombuff4 $ombuff4
  var ombuff5 $ombuff5
  var ombuff6 $ombuff6
  var ombuff7 $ombuff7
  var ombuff8 $ombuff8
  var spellvarscount 0
  var devotion -1
  gosub OMSPELLVARSLOOP
  
  #CLERIC_TRIGGERS
  action (cleric) var mercomup 0; var tamcomup 0 when You are not a vessel for the gods at present.
  action (cleric) var mercomup 1 when The power of Meraud is channeling through the area.
  action (cleric) var mercomup 1 when The area is being favored by Meraud.
  action (cleric) var mercomup 1 when Meraud's benevolent eyes are upon the area.
  action (cleric) var mercomup 1 when A spark of Meraud's spirit is within the area.
  action (cleric) var mercomup 1 when The area is touched by Meraud.
  action (cleric) var mercomup 1 when Meraud is smiling down on the area.
  action (cleric) var mercomup 1 when Meraud's influence is woven into the area.
  action (cleric) var mercomup 1 when The area is under the auspices of Meraud.
  action (cleric) var mercomup 1 when The blessing of Meraud is with the area.
  action (cleric) var mercomup 1 when The miracle of Meraud has manifested about the area.

  action (cleric) var tamcomup 1 when The power of Tamsine is channeling through you.
  action (cleric) var tamcomup 1 when You are being favored by Tamsine.
  action (cleric) var tamcomup 1 when Tamsine's benevolent eyes are upon you.
  action (cleric) var tamcomup 1 when A spark of Tamsine's spirit is within you.
  action (cleric) var tamcomup 1 when You are touched by Tamsine.
  action (cleric) var tamcomup 1 when Tamsine is smiling down on you.
  action (cleric) var tamcomup 1 when Tamsine's influence is woven into your spirit.
  action (cleric) var tamcomup 1 when You are under the auspices of Tamsine.
  action (cleric) var tamcomup 1 when The blessing of Tamsine is with you.
  action (cleric) var tamcomup 1 when The miracle of Tamsine has manifested about you.
  action (cleric) var tamcomup 1 when You feel warmth spread throughout your body

  
  action (cleric) var commgood 1 when You feel fully prepared to seek assistance from the Immortals once again.
  action (cleric) var commgood 1 when You are eager to better understand your relationship with the Immortals.
  action (cleric) var meraudgood 0 when Meraud's power still holds your attention.
  action (cleric) var elunedgood 0 when The waters of Eluned are still in your thoughts.
  action (cleric) var tamsinegood 0 when You have been recently enlightened by Tamsine.

  action (cleric) var nextcommsense 0 when You sense your connection to the area you consecrated earlier fade away.
  action (cleric) var nextcommsense 0 when The holy presence in the area fades quietly away.

  action (cleric) var devotion 0 when You feel unclean and unworthy.
  action (cleric) var devotion 1 when You close your eyes and start to concentrate. In a moment a vision appears of a barren garden, parched and thirsting for nourishment. You have an intense desire to tend it.
  action (cleric) var devotion 2 when You call out to your god, but there is no answer.
  action (cleric) var devotion 3 when After a moment, you sense that your god is barely aware of you.
  action (cleric) var devotion 4 when After a moment, you sense that your efforts have not gone unnoticed.
  action (cleric) var devotion 5 when After a moment, you sense a distinct link between you and your god.
  action (cleric) var devotion 6 when After a moment, you sense that your god is aware of your devotion.
  action (cleric) var devotion 7 when After a moment, you sense that your god knows your name.
  action (cleric) var devotion 8 when After a moment, you sense that your god is pleased with your devotion
  action (cleric) var devotion 9 when After a moment, you see a vision of your god, though the visage is cloudy and impossible to make out clearly.
  action (cleric) var devotion 10 when After a moment, you sense a slight pressure on your shoulder, leaving the feeling that your efforts have been acknowledged.
  action (cleric) var devotion 11 when After a moment, you see a silent vision of your god, radiating forth with a powerful divine brilliance.
  action (cleric) var devotion 12 when After a moment, you see a vision of your god who calls to you by name, "Come here, my child, and I will show you things of wonder."
  action (cleric) var devotion 13 when After a moment, you see a vision of your god who calls to you by name, "My child, though you may not always see my face, I am pleased with thee and thy efforts."
  action (cleric) var devotion 14 when After a moment, you see a crystal-clear vision of your god who speaks slowly and deliberately,
  action (cleric) var devotion 15 when  After a moment, you feel a clear presence like a warm blanket covering you beneath the shade of a giant Sana'ati tree.
  
  return

EMPATHONLY:
  var avoidshock $avoidshock
  var perchealth $perchealth
  var manipulate $manipulate
  var paralysis $paralysis
  var paralysismana $paralysismana
  var vitheal $vitheal
  var vithealmana $vithealmana
  var heal $heal
  var healmana $healmana
  var curedisease $curedisease
  var curediseasemana $curediseasemana
  var flushpoisons $flushpoisons
  var flushpoisonsmana $flushpoisonsmana
  var adcheal $adcheal
  var adcdisease $adcdisease
  var adcpoison $adcpoison
  var upkeepregen $upkeepregen
  var upkeepregenmana $upkeepregenmana
  var absolution $absolution
  var absolutionmana $absolutionmana
  var iztouch $iztouch
  var izmana $izmana
  var iztimer $iztimer
  
  var nextiztouch 0
  var nexthealcast 0
  if %healthalerts = "YES" then
  {
    action put #flash; put #play JustArrived; put #echo %alertwindow Yellow [Health]: Empathic Shock.  Target: %faceadj %facemon; var goodtarget 0;var shockcritter 1 when Pain blossoms within you, your delicate empathic senses
    action put #flash; put #play JustArrived;put #echo %alertwindow Yellow [Health]: Empathic Shock.  Target: %faceadj %facemon;var goodtarget 0;var shockcritter 1 when Pain blossoms within you, your empathic shock deepening, but you compose yourself\.
    action put #flash; put #play JustArrived;put #echo %alertwindow Yellow [Health]: Total Empathic Shock!  Target: %faceadj %facemon;var goodtarget 0;var shockcritter 1 when You realize that you can no longer sense the life essences around you, a numb coldness gripping you\.
  }
  action var alfarcommand 1 when A (\S+) alfar warrior calmly strides in and surveys the area\.
  return

MOONMAGEONLY:
  var astro $astro
  var astrotimer $astrotimer
  var predictiontool $predictiontool
  var predictiontoolitem $predictiontoolitem
  var tktitem $tktitem
  var shadowlingnoun $shadowlingnoun
  var piercinggaze $piercinggaze
  var piercinggazemana $piercinggazemana
  var mindshout $mindshout
  var mindshoutmana $mindshoutmana
  var burglerf $burglerf
  var burglerfdelay $burglerfdelay
  
  var iotsscan 0
  var nextastro 0
  var mmnextperc 0
  var lxibar 0
  var lkatamba 0
  var lyavash 0
  var lsun 0
  var lore 0
  var magic 0
  var offense 0
  var defense 0
  var survival 0
  var predict 0
  var obsready 1
  var checkastropool 1
  var foundbody 0
  action var iotsscan 0 when Invoke what?
  action var iotsscan 0 when is below the horizon, causing the spell to fail.
  action var debil NO when Your spell pattern collapses because there is not enough celestial light available for it to manipulate.
  action (predict) var lore 1; var predict 1 when You believe you've learned all that you can about lore.
  action (predict) var magic 1; var predict 1 when You believe you've learned all that you can about magic.
  action (predict) var offense 1; var predict 1 when You believe you've learned all that you can about offense.
  action (predict) var defense 1; var predict 1 when You believe you've learned all that you can about defense.
  action (predict) var survival 1; var predict 1 when You believe you've learned all that you can about survival.
  action (predict) var obsready 1 when You feel you have sufficiently pondered your latest observation.
  action (predict) var magic 1; var predict 1 when You have a complete understanding of the celestial influences over magic.
  action (predict) var lore 1; var predict 1 when You have a complete understanding of the celestial influences over lore.
  action (predict) var offense 1; var predict 1 when You have a complete understanding of the celestial influences over offensive combat.
  action (predict) var defense 1; var predict 1 when You have a complete understanding of the celestial influences over defensive combat.
  action (predict) var survival 1; var predict 1 when You have a complete understanding of the celestial influences over survival.

  action (bodies) var dawgolesh 1 when Dawgolesh
  action (bodies) var merewalda 1 when Merewalda
  action (bodies) var szeldia 1 when Szeldia
  action (bodies) var penhetia 1 when Penhetia
  action (bodies) var yoakena 1 when Yoakena
  action (bodies) var durgaulda 1 when Durgaulda
  action (bodies) var scales 1 when Scales
  action (bodies) var brigantine 1 when Brigantine
  action (bodies) var estrilda 1 when Estrilda
  action (bodies) var toad 1 when Toad
  action (bodies) var verena 1 when Verena
  action (bodies) var hare 1 when Hare
  action (bodies) var giant 1 when Giant
  action (bodies) var spider 1 when Spider
  action (bodies) var jackal 1 when Jackal
  action (bodies) var shrike 1 when Shrike
  action (bodies) var cow 1 when Cow
  action (bodies) var weasel 1 when Weasel
  action (bodies) var nightingale 1 when Nightingale
  action (bodies) var ram 1 when Ram
  action (bodies) var triquetra 1 when Triquetra
  action (bodies) var raccoon 1 when Raccoon
  action (bodies) var welkin 1 when Welkin
  action (bodies) var goshawk 1 when Goshawk
  action (bodies) var mongoose 1 when Mongoose
  action (bodies) var dove 1 when Dove
  action (bodies) var coyote 1 when Coyote
  action (bodies) var donkey 1 when Donkey
  action (bodies) var shark 1 when Shark
  action (bodies) var albatross 1 when Albatross
  action (bodies) var wolverine 1 when Wolverine
  action (bodies) var dolphin 1 when Dolphin
  action (bodies) var ox 1 when Ox
  action (bodies) var cobra 1 when Cobra
  action (bodies) var panther 1 when Panther
  action (bodies) var boar 1 when Boar
  action (bodies) var lion 1 when Lion
  action (bodies) var magpie 1 when Magpie
  action (bodies) var cat 1 when Cat
  action (bodies) var unicorn 1 when Unicorn
  action (bodies) var raven 1 when Raven
  action (bodies) var wolf 1 when Wolf
  action (bodies) var heart 1 when Heart
  action (bodies) var sun 1 when sun
  action (bodies) var yavash 1 when yavash
  action (bodies) var katamba 1 when Katamba
  action (bodies) var xibar 1 when Xibar
  action (bodies) var yavash 1 when Yavash
  action (bodies) var yavash 0 when Yavash is below the horizon.
  action (bodies) var katamba 0 when Katamba is below the horizon.
  action (bodies) var xibar 0 when Xibar is below the horizon.
  action (bodies) off
  return

NECROONLY:
  var necrostate $necrostate
  var necrosafety $necrosafety
  var necrowhitelist $necrowhitelist
  var riteofgrace $riteofgrace
  var rogprepmana $rogprepmana
  var rogcycle $rogcycle
  var preserve $preserve
  var harvest $harvest
  var harveststore $harveststore
  var harveststorenum $harveststorenum
  var devour $devour
  var devourprepmana $devourprepmana
  var devouraddmana $devouraddmana
  var eotbrel $eotbrel
  var siphonvit $siphonvit
  var siphonvitprepmana $siphonvitprepmana
  var siphonvitaddmana $siphonvitaddmana
  var siphonvitnum $siphonvitnum
  
  var materialnum -1
  if "$guild" = "Necromancer" then
  {
    if %necrosafety = "YES" then
    {
      gosub JUSTICECHECK
      #echo Justice: %justice
    }
  }
  var burgleeotb $burgleeotb
  var burgleeotbdelay $burgleeotbdelay
  return

PALADINONLY:
  var smite $smite
  var tithe $tithe
  var anloralpin $anloralpin
  var anloralpinitem $anloralpinitem    
  var pilgrimbadge $pilgrimbadge
  var pilgrimbadgeworn $pilgrimbadgeworn
  var watercontainer $watercontainer
  return

RANGERONLY:
  
  action var pounceready 1 when You think you have the strength to pounce upon prey once again\.
  action var pounceready 0 when You're too tired from the last time you pounced on some prey\.
  
  var pounce $pounce
  var snipe $snipe
  var dualload $dualload
  var ritstype $ritstype
  
  var pounceready 1
  return

THIEFONLY: 
  var dualload $dualload
  var snipe $snipe
  var backstab $backstab
  var khrimax $khrimax
  var khriadaptation $khriadaptation
  var khriavoidance $khriavoidance
  var khricunning $khricunning
  var khridampen $khridampen
  var khridarken $khridarken
  var khriendure $khriendure
  var khrielusion $khrielusion
  var khrisevanescence $khrievanescence
  var khriflight $khriflight
  var khrifright $khrifright
  var khrifocus $khrifocus
  var khriharrier $khriharrier
  var khrihasten $khrihasten
  var khriinsight $khriinsight
  var khriplunder $khriplunder
  var khrisagacity $khrisagacity
  var khrisensing $khrisensing
  var khriserenity $khriserenity
  var khrishadowstep $khrishadowstep
  var khrisight $khrisight
  var khristeady $khristeady
  var khristrike $khristrike
  var khriguile $khriguile
  var khriprowess $khriprowess
  var khriterrify $khriterrify
  var khridebil $khridebil
  var khridebiltype $khridebiltype
  
  var burglethiefbin $burglethiefbin
  var burglekhrihasten $burglekhrihasten
  var burglekhriplunder $burglekhriplunder
  var burglekhrisilence $burglekhrisilence
  var burglekhrislight $burglekhrislight
  
  var boxpopkhrifocus $boxpopkhrifocus
  var boxpopkhrihasten $boxpopkhrihasten
  var boxpopkhriplunder $boxpopkhriplunder
  var boxpopkhrisafe $boxpopkhrisafe
  var boxpopkhrisight $boxpopkhrisight
  return

TRADERONLY:
  action var badxibar 1 when Xibar is below the horizon.
  action var badxibar 1 when Clouds obscure the sky where Xibar should appear.
  action var badyavash 1 when Yavash is below the horizon.
  action var badyavash 1 when Clouds obscure the sky where Yavash should appear.
  action var badstars 2 when Dense clouds completely obscure your search.
  action var badstars 1; var badyavash 1; var badxibar 1 when That's a bit hard to do while inside.
  
  action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) (.*)s\.
  action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) sprigs of (.*)\.
  action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) some (.*)\.
  action var forageitem $2 when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) bits of (.*)\.
  action var forageitem stick when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) sticks, branches or limbs.
  action var forageitem leaf when The firewood peddler Mags in The Crossing wants you to retrieve (\d*) leaves.
  action var quantity $1 when You need to turn in (\d*) more\.
  var invest $invest
  var tradingsell $tradingsell
  var tradingselltown $tradingselltown
  var tradingsellsource $tradingsellsource
  var tradingtasks $tradingtasks
  return

WARMAGEONLY:
  var ignitebackup $ignitebackup
  var summoning $summoning
  var summonweapon $summonweapon
  var summonweapontimer $summonweapontimer
  var pathway $pathway
  var pathwaytype $pathwaytype
  var domain $domain
  var domaintype $domaintype
  var chargeafterlock $chargeafterlock
  var calspell $calspell
  var calprepmana $calprepmana
  var caladdmana $caladdmana
  var igniteweapon %seweapon|%leweapon|%theweapon|%sbweapon|%lbweapon|%thbweapon|%staveweapon|%poleweapon|%ltweapon|%htweapon
  var zephyractive 0
  action zephyractive 1 when A faint pleasant breeze begins to stir.
  action zephyractive 1 when A faint warm breeze continues to swirl around you.
  action zephyractive 0 when With a final, swirling whisper, the breeze fades from the area.
  action var elecharge 1 when You sense nothing out of the ordinary\.
  action var elecharge 2 when A small charge lingers within your body\, just above the threshold of perception\. 
  action var elecharge 3 when A small charge lingers within your body\. 
  action var elecharge 4 when A charge dances through your body\. 
  action var elecharge 5 when A charge dances just below the threshold of discomfort\. 
  action var elecharge 6 when A charge circulates through your body\, causing a low hum to vibrate through your bones\. 
  action var elecharge 7 when Elemental essence floats freely within your body\, leaving little untouched\. 
  action var elecharge 8 when Elemental essence has infused every inch of your body\. 
  action var elecharge 9 when ^Extraplanar power crackles within your body\, leaving you feeling mildly feverish\. 
  action var elecharge 10 when ^Extraplanar power crackles within your body\, leaving you feeling acutely ill\. 
  action var elecharge 11 when ^Your body sings and crackles with a barely contained charge\, destroying what little cenesthesia you had left\.
  action var elecharge 12 when ^You have reached the limits of your body's capacity to store a charge\.
  var pathwayactive -1
  var domainactive -1
  var elecharge -1
  return

HUNTINGVARLOAD:
  if ("%huntingarea" != "none") then
  {
    var huntingareamaze 0
    if ("%huntingarea" = "p1-shiprats") then
    {
      var zone 1
      var travel YES
      var traveldest crossing
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 238|239|240|245|243|244|765|241|242|246|247
      if ("%huntingpremium" = "YES") then var findroomlist 237|238|239|240|245|243|244|765|241|242|246|247|441|442|443|444|445|446|447|448|449|450|451|452|453
      if ("%huntingpremium" = "ONLY") then var findroomlist 441|442|443|444|445|446|447|448|449|450|451|452|453
      var bugoutroom 52
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-louts") then
    {
      var zone 8
      var travel YES
      var traveldest crossing
      var move YES
      var movelist 170
      var targetroom 0
      var findroom YES
      var findroomlist 1|3|4|5|6|7|8|10|11|12|36|13|14
      var bugoutroom 2
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-deathsquirrels") then
    {
      var zone 7
      var travel YES
      var traveldest arthe
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534
      var bugoutroom 514
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-muskhogs") then
    {
      var zone 4
      var travel YES
      var traveldest wolf
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 18|43|44|45|46|47|73|74|75|76
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-goblins") then
    {
      var zone 4
      var travel YES
      var traveldest wolf
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 52|68|69|70|71|72|55|65|66|67|56|57|58|59
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-fellhogs") then
    {
      var zone 4
      var travel YES
      var traveldest wolf
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 60|61|62|63|64
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-badgers") then
    {
      var zone 6
      var travel YES
      var traveldest crossing
      var move YES
      var movelist n gate
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 297|296|26|27|28|29|30|31|32|33|34|35|269
      if ("%huntingpremium" = "YES") then var findroomlist 297|296|26|27|28|29|30|31|32|33|34|35|269|270|272|38|40
      if ("%huntingpremium" = "ONLY") then var findroomlist 270|272|38|40
      var bugoutroom 247
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-origami") then
    {
      var zone 7
      var travel YES
      var traveldest kaerna
      var move NO
      var movelist 0
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 258|257|259|260|261|262|263|264|265|266
      if ("%huntingpremium" = "YES") then var findroomlist 258|257|259|260|261|262|263|264|265|266|788|789|790|791
      if ("%huntingpremium" = "ONLY") then var findroomlist 788|789|790|791
      var bugoutroom 480
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-pothanits") then
    {
      var zone 6
      var travel YES
      var traveldest crossing
      var move YES
      var movelist n gate
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 291|274|275|44|276|277|290|279
      if ("%huntingpremium" = "YES") then var findroomlist 291|274|275|44|276|277|290|279|278|48|49
      if ("%huntingpremium" = "ONLY") then var findroomlist 278|48|49
      var bugoutroom 247
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-giantwasps") then
    {
      var zone 4
      var travel YES
      var traveldest wolf
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 24|25|26|27|28|29|30|31|32
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-trollkin") then
    {
      var zone 6
      var travel YES
      var traveldest crossing
      var move YES
      var movelist n gate
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 280|286|287|288|289|64|65|298|59|58|285|67|68|69
      if ("%huntingpremium" = "YES") then var findroomlist 280|286|287|288|289|64|65|298|59|58|285|67|68|69|283|282|284|281
      if ("%huntingpremium" = "ONLY") then var findroomlist 283|282|284|281
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-cougarsgrendels") then
    {
      var zone 7a
      var travel YES
      var traveldest kaerna
      var move YES
      var movelist vineyard
      var targetroom 0
      var findroom YES
      var findroomlist 21|22|23|24|25|26|27|28|29
      var bugoutroom 4
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-grasseels") then
    {
      var zone 4
      var travel YES
      var traveldest wolf
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 228|229|230|231|232|233
      if ("%huntingpremium" = "YES") then var findroomlist 228|229|230|231|232|233|234|235|236|237
      if ("%huntingpremium" = "ONLY") then var findroomlist 234|235|236|237
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-revenantconscripts") then
    {
      var zone 8
      var travel YES
      var traveldest crossing
      var move YES
      var movelist 170
      var targetroom 0
      var findroom YES
      var findroomlist 106|107|104|105|128
      var bugoutroom 2
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-lipopods") then
    {
      var zone 2
      var travel YES
      var traveldest wolf
      var move YES
      var targetroom 15
      var findroom YES
      var findroomlist 7|8|9|10|11|12|13|14|15|19|20|21|22|28|29|30|31|32|33
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-woodtrolls") then
    {
      var zone 7a
      var travel YES
      var traveldest kaerna
      var move YES
      var movelist vineyard
      var targetroom 0
      var findroom YES
      var findroomlist 30|31|32|33|34
      var bugoutroom 4
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-animateditems") then
    {
      var zone 7a
      var travel YES
      var traveldest kaerna
      var move YES
      var movelist baearholt
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 0
      if ("%huntingpremium" = "YES") then var findroomlist 70|71|72|73|74|75|76|77|78|79|80|81|82
      if ("%huntingpremium" = "ONLY") then var findroomlist 70|71|72|73|74|75|76|77|78|79|80|81|82
      var bugoutroom 62
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-beisswurms") then
    {
      var zone 10
      var travel YES
      var traveldest stone
      var move NO
      var targetroom 07
      var findroom YES
      var findroomlist 31|32|33|34|36|36|37
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-cavebears") then
    {
      var zone 10
      var travel YES
      var traveldest stone
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 50|48|49|52|53|52|51|53|55|56|54|57|59|58
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-copperheads") then
    {
      var zone 9b
      var travel YES
      var traveldest sorrow
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 131|132|133|134
      var bugoutroom 8
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-bloodwolves") then
    {
      var zone 4
      var travel YES
      var traveldest wolf
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 301|303|304|305|306|326|307
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-rocktrolls") then
    {
      var zone 7
      var travel YES
      var traveldest kaerna
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 441|442|443|444|445|446|447|448|449|450|451|452|453|454|455|456|457|458|459|460
      var bugoutroom 480
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-endrusserpents") then
    {
      var zone 60
      var travel YES
      var traveldest leth
      var move YES
      var movelist str1
      var targetroom 0
      var findroom YES
      var findroomlist 147|148|149|150|151|152|153|154|155
      var bugoutroom 14
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-snowbeasts") then
    {
      var zone 62
      var travel YES
      var traveldest leth
      var move YES
      var movelist str2
      var targetroom 0
      var findroom YES
      var findroomlist 16|17|18|19|20|32|31|34|30|33|29|28|24|23|25|26|27|15
      var bugoutroom 97
      var nearestportaltown leth
    }
    if ("%huntingarea" = "p1-crocodiles") then
    {
      var huntingareamaze 1
      var zone 7
      var travel YES
      var traveldest caravansary
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 52
      var bugoutroom 3
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-direbears") then
    {
      var zone 4
      var travel YES
      var traveldest wolf
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 317|316|315|324|314
      if ("%huntingpremium" = "YES") then var findroomlist 317|316|315|324|314|321|322|323
      if ("%huntingpremium" = "ONLY") then var findroomlist 321|322|323
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-vipers") then
    {
      var zone 11
      var travel YES
      var traveldest vipers
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 42|43|44|45|46|47|48|49|55|56
      if ("%huntingpremium" = "YES") then var findroomlist 42|43|44|45|46|47|48|49|55|56|149|150|151|152|153|154|155|156|157|158|159|160
      if ("%huntingpremium" = "ONLY") then var findroomlist 149|150|151|152|153|154|155|156|157|158|159|160
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-leucros") then
    {
      var zone 11
      var travel YES
      var traveldest vipers
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 6|7|8|9|10|11|20|19|16|11|12|15|18|21|22|17|14|13
      if ("%huntingpremium" = "YES") then var findroomlist 6|7|8|9|10|11|20|19|16|11|12|15|18|21|22|17|14|13|50|51|52|53|54
      if ("%huntingpremium" = "ONLY") then var findroomlist 50|51|52|53|54
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-forestbandits") then
    {
      var zone 112
      var travel YES
      var traveldest ilaya
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 172|173|174|175|176|177|178|179|180|181|182|183|170|171
      var bugoutroom 32
      var nearestportaltown leth
    }
    if ("%huntingarea" = "p1-guardians") then
    {
      var zone 11
      var travel YES
      var traveldest vipers
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 66|67|68|69|70|78|77|76|75|74|73|72|71|65
      var bugoutroom 1
      var nearestportaltown crossing
    }
    #45
    if ("%huntingarea" = "p1-giantbears") then
    {
      var zone 7
      var travel YES
      var traveldest kaerna
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 810|811|812|813
      if ("%huntingpremium" = "YES") then var findroomlist 810|811|812|813|821|822
      if ("%huntingpremium" = "ONLY") then var findroomlist 821|822
      var bugoutroom 355
      var nearestportaltown crossing
    }
    #63
    if ("%huntingarea" = "p1-emberbulls") then
    {
      var zone 7
      var travel YES
      var traveldest kaerna
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 828|829|830|831|832|833|834|835|836
      if ("%huntingpremium" = "YES") then var findroomlist 828|829|830|831|832|833|834|835|836
      if ("%huntingpremium" = "ONLY") then var findroomlist 834|835|836
      var bugoutroom 355
      var nearestportaltown crossing
    }
    #63
    if ("%huntingarea" = "p1-onyxgargoyles") then
    {
      var zone 7
      var travel YES
      var traveldest kaerna
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 814|815|816|817|818|819|820
      if ("%huntingpremium" = "YES") then var findroomlist 814|815|816|817|818|819|820|823|824|825|826
      if ("%huntingpremium" = "ONLY") then var findroomlist 823|824|825|826
      var bugoutroom 355
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-warklins") then
    {
      var zone 10
      var travel YES
      var traveldest stone
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 39|40|41|42|43|44|45|46|47
      if ("%huntingpremium" = "YES") then var findroomlist 39|40|41|42|43|44|45|46|47|117|118|119|120|121
      if ("%huntingpremium" = "ONLY") then var findroomlist 117|118|119|120|121
      var bugoutroom 1
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p1-scuttlers") then
    {
      var zone 62
      var travel YES
      var traveldest leth
      var move YES
      var movelist str2
      var targetroom 0
      var findroom YES
      var findroomlist 209|210|211|212|213
      var bugoutroom 97
      var nearestportaltown leth
    }
    if ("%huntingarea" = "p1-stormbulls") then
    {
      var zone 112
      var travel YES
      var traveldest ilaya
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97
      var bugoutroom 32
      var nearestportaltown leth
    }
    if ("%huntingarea" = "p1-lavadrakes") then
    {
      var zone 13
      var travel YES
      var traveldest dirge
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 189|190|191|192|193|194|195
      if ("%huntingpremium" = "YES") then var findroomlist 189|190|191|192|193|194|195|300|301|302|303|304|305
      if ("%huntingpremium" = "ONLY") then var findroomlist 300|301|302|303|304|305
      var bugoutroom 49
      var nearestportaltown crossing
    }
    if ("%huntingarea" = "p2-brocketdeeryoung") then
    {
      var zone 40a
      var travel YES
      var traveldest langenfirth
      var move YES
      var movelist siksraja
      var targetroom 0
      var findroom YES
      var findroomlist 104|105|146|147
      var bugoutroom 1
      var nearestportaltown langenfirth
    }
    if ("%huntingarea" = "p2-marauders") then
    {
      var zone 41
      var travel YES
      var traveldest fornsted
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 16|17|18|19|25|26|27|28|29
      var bugoutroom 1
      var nearestportaltown theren
    }
    #25
    if ("%huntingarea" = "p2-swamptrolls") then
    {
      var zone 31
      var travel YES
      var traveldest haven
      var move YES
      var movelist egate 
      var targetroom 0
      var findroom YES
      var findroomlist 39|108|109|110|111|80|82|83|84
      var bugoutroom 1
      var nearestportaltown langenfirth
    }
    if ("%huntingarea" = "p2-piruatiserpents") then
    {
      var zone 31
      var travel YES
      var traveldest haven
      var move YES
      var movelist egate 
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 55|56|57|58|51|53|54|
      if ("%huntingpremium" = "YES") then var findroomlist 55|56|57|58|51|53|54|131|132|133|134
      if ("%huntingpremium" = "ONLY") then var findroomlist 131|132|133|134
      var bugoutroom 1
      var nearestportaltown riverhaven
    }
    if ("%huntingarea" = "p2-brocketdeer") then
    {
      var zone 40a
      var travel YES
      var traveldest langenfirth
      var move NO
      var movelist siksraja
      var targetroom 0
      var findroom YES
      var findroomlist 148|149|150|151
      var bugoutroom 1
      var nearestportaltown langenfirth
    }
    if ("%huntingarea" = "p2-brocketdeerelder") then
    {
      var zone 40a
      var travel YES
      var traveldest langenfirth
      var move YES
      var movelist siksraja
      var targetroom 0
      var findroom YES
      var findroomlist 155|154|153|152
      var bugoutroom 1
      var nearestportaltown langenfirth
    }
    if ("%huntingarea" = "p2-gryphonsbaby") then
    {
      var zone 34
      var travel YES
      var traveldest rossman
      var move YES
      var movelist gryphons|49
      var targetroom 0
      var findroom YES
      var findroomlist 90|91|92
      var bugoutroom 1
      var nearestportaltown theren
    }
    if ("%huntingarea" = "p2-gryphonsyoung") then
    {
      var zone 34
      var travel YES
      var traveldest rossman
      var move YES
      var movelist gryphons|49
      var targetroom 0
      var findroom YES
      var findroomlist 93|116|117|118|119
      var bugoutroom 1
      var nearestportaltown theren
    }
    if ("%huntingarea" = "p2-seordmaors") then
    {
      var zone 41
      var travel YES
      var traveldest fornsted
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 77|78|79|76|204
      var bugoutroom 1
      var nearestportaltown theren
    }
    if ("%huntingarea" = "p2-fibrousslayers") then
    {
      var zone 40a
      var travel YES
      var traveldest langenfirth
      var move YES
      var movelist 263
      var targetroom 0
      var findroom YES
      var findroomlist 213|214|215|216
      var bugoutroom 1
      var nearestportaltown theren
    }
    if ("%huntingarea" = "p2-clayslayers") then
    {
      var zone 40a
      var travel YES
      var traveldest langenfirth
      var move YES
      var movelist 263
      var targetroom 0
      var findroom YES
      var findroomlist 208|209|210|211
      var bugoutroom 1
      var nearestportaltown theren
    }
    if ("%huntingarea" = "p2-foragerghouls") then
    {
      var zone 41
      var travel YES
      var traveldest fornsted
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 77|78|79|76|204
      var bugoutroom 1
      var nearestportaltown theren
    }
    if ("%huntingarea" = "p2-foragerwights") then
    {
      var zone 41
      var travel YES
      var traveldest fornsted
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 77|78|79|76|204
      var bugoutroom 1
      var nearestportaltown theren
    }
    if ("%huntingarea" = "p2-glazedslayers") then
    {
      var zone 40a
      var travel YES
      var traveldest langenfirth
      var move YES
      var movelist 263
      var targetroom 0
      var findroom YES
      var findroomlist 219|220|221|222
      var bugoutroom 1
      var nearestportaltown theren
    }
    if ("%huntingarea" = "p3-snippets") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 711|712|713|714|715|716
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-rocktrolls1") then
    {
      var zone 68
      var travel YES
      var traveldest ylono
      var move YES
      var movelist move out|sgate
      var targetroom 0
      var findroom YES
      var findroomlist 35|36|37|38|39|40|41|42|43|44|45|46|47
      var bugoutroom 28
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-snowbeasts") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 167|168|169|170|171
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-rocktrolls2") then
    {
      var zone 68
      var travel YES
      var traveldest ylono
      var move YES
      var movelist move out|sgate
      var targetroom 0
      var findroom YES
      var findroomlist 8|9|10|11|12|13|14
      var bugoutroom 28
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-gargoyles") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 173|174|178|179|180|181|182|183|184|185|186|187|188|189|190
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-eidolonsteeds") then
    {
      var zone 68
      var travel YES
      var traveldest ylono
      var move YES
      var movelist move out|sgate
      var targetroom 0
      var findroom YES
      var findroomlist 52|53|54|55|56|57|58|59|60|61|62|205|74|68|69|70|71|72
      var bugoutroom 28
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-crocodiles") then
    {
      var zone 68
      var travel YES
      var traveldest ylono
      var move YES
      var movelist move out|sgate
      var targetroom 0
      var findroom YES
      var findroomlist 184|183|185|186|187
      var bugoutroom 28
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-sylphs") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 717|718|719|720|721
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-gryphons") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 234|235|236|237|238|239|240|241|242|243
      var bugoutroom 382
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-quartzgargoyles") then
    {
      var zone 150
      var travel YES
      var traveldest fangcove
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 
      if ("%huntingpremium" = "YES") then var findroomlist 65|66|67|68|69|70|71|72|73|74|75
      if ("%huntingpremium" = "ONLY") then var findroomlist 65|66|67|68|69|70|71|72|73|74|75
      var bugoutroom 1
      var nearestportaltown none
    }
    if ("%huntingarea" = "p3-prereniyoung") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 656|657|658|659
      if ("%huntingpremium" = "YES") then var findroomlist 656|657|658|659|660|662
      if ("%huntingpremium" = "ONLY") then var findroomlist 660|662
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-redleucros") then
    {
      var zone 65
      var travel YES
      var traveldest fayrin
      var move YES
      var movelist undergondola
      var targetroom 0
      var findroom YES
      var findroomlist 5|6|7|8|9|10|11|12|13|14
      var bugoutroom 2
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-goldenpards") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 87|107|108|109|110|111|112|113|114|115|129|130|131|132
      #if ("%huntingpremium" = "NO") then var findroomlist 656|657|658|659
      #if ("%huntingpremium" = "YES") then var findroomlist 656|657|658|659|660|662
      #if ("%huntingpremium" = "ONLY") then var findroomlist 660|662
      var bugoutroom 382
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-prereni") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 664|665|666
      if ("%huntingpremium" = "YES") then var findroomlist 664|665|666|661|663
      if ("%huntingpremium" = "ONLY") then var findroomlist 661|663
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-windbags") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 722|723|724|725|726|727|728|729
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-windbags2") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 731|732|730|733|734|735|736
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-frostcrones") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 722|723|724|725|726|727|728|729
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-prerenielder") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 667|668|669
      if ("%huntingpremium" = "YES") then var findroomlist 667|668|669|679|680
      if ("%huntingpremium" = "ONLY") then var findroomlist 679|680
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-cloudrats") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 607|608|609|610|611|612
      var bugoutroom 382
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-dragonpriests") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 154|155|156|157|158|159|160|161|162|163|164|165|166|167
      var bugoutroom 382
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-beltunumshi") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 616|617|618|619|620|621|622|623|624|625|626|627|628
      var bugoutroom 382
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-adanfblood") then
    {
      var zone 68
      var travel YES
      var traveldest ylono
      var move YES
      var movelist move out|sgate
      var targetroom 0
      var findroom YES
      var findroomlist 139|140|141|142|143|144|210|209|145|146|147|148|149|150
      var bugoutroom 28
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-adanfspirit") then
    {
      var zone 68a
      var travel YES
      var traveldest ylono
      var move YES
      var movelist move out|sgate|ice caves
      var targetroom 0
      var findroom YES
      var findroomlist 16|15|14|13|12|27|11|10|28|9|8|26|17|18|19|20|21
      var bugoutroom 31
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-malchata") then
    {
      var zone 66
      var travel YES
      var traveldest fayrin
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 488|489|490|491|492|493|494|485|486|487|479|480|481|482|483|484|473|474|475|476|477|478|479|469|470|471|472|468|467|464|465|466
      var bugoutroom 128
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-stormbulls") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 597
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 597|598|599|600|601|602
      if ("%huntingpremium" = "YES") then var findroomlist 597|598|599|600|601|602|603|604|605
      if ("%huntingpremium" = "ONLY") then var findroomlist 603|604|605
      var bugoutroom 382
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-wyvernsjuve") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 454|455|456|457|458|459|460|461|462|463|465|467|466|453
      if ("%huntingpremium" = "YES") then var findroomlist 454|455|456|457|458|459|460|461|462|463|465|467|466|453|575|576|577|578|579
      if ("%huntingpremium" = "ONLY") then var findroomlist 575|576|577|578|579
      var bugoutroom 382
      var nearestportaltown shard
      var monsterskin wyvern claw
    }
    if ("%huntingarea" = "p3-wyvernsyoung") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 482|483|484|485|486|487|511|512|480|481
      if ("%huntingpremium" = "YES") then var findroomlist 482|483|484|485|486|487|511|512|480|481|575|576|577|578|579
      if ("%huntingpremium" = "ONLY") then var findroomlist 575|576|577|578|579
      var bugoutroom 382
      var nearestportaltown shard
      var monsterskin wyvern claw
    }
    if ("%huntingarea" = "p3-wyvernsadult") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 468|469|470|471|472|473|479|474|475|476|477|478
      var bugoutroom 382
      var nearestportaltown shard
      var monsterskin wyvern claw
    }
    if ("%huntingarea" = "p3-icearchons") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 498|499|500|501|506|509|510|502|503|504|505|507|508
      var bugoutroom 382
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p3-adanfsorcs") then
    {
      var zone 68
      var travel YES
      var traveldest ylono
      var move YES
      var movelist move out|sgate
      var targetroom 0
      var findroom YES
      var findroomlist 151|152|153|154|155|156|157|158|159|160|161|162
      var bugoutroom 28
      var nearestportaltown shard
      var monsterskin reddish-black scale
    }
    if ("%huntingarea" = "p3-adanfblades") then
    {
      var zone 68
      var travel YES
      var traveldest ylono
      var move YES
      var movelist move out|sgate
      var targetroom 0
      var findroom YES
      var findroomlist 163|164|165|166|167|168|169|170|171|172|173|174|175|176
      var bugoutroom 28
      var nearestportaltown shard
      var monsterskin adan'f tail barb
    }
    if ("%huntingarea" = "p4-merkreshcelpeze1") then
    {
      var zone 107
      var travel YES
      var traveldest merkresh
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 133|134|135|136|137|138|139|140|141|142|143|144|145|146|147|148|149|150|151|152
      var bugoutroom 16
      var nearestportaltown merkresh
    }
    if ("%huntingarea" = "p4-merkreshcelpeze2") then
    {
      var zone 107
      var travel YES
      var traveldest merkresh
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 156|157|158|159|160|161|162|163|164|165|166|167|168
      var bugoutroom 16
      var nearestportaltown merkresh
    }
    if ("%huntingarea" = "p4-merkreshcelpeze3") then
    {
      var zone 107
      var travel YES
      var traveldest merkresh
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 34|35|36|37
      var bugoutroom 16
      var nearestportaltown merkresh
    }
    if ("%huntingarea" = "p4-merkreshcelpeze4") then
    {
      var zone 107
      var travel YES
      var traveldest merkresh
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 103|104|105|106|107
      var bugoutroom 16
      var nearestportaltown merkresh
    }
    if ("%huntingarea" = "p4-armadillosjuve") then
    {
      var zone 108
      var travel YES
      var traveldest mriss
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 383|384|385|386|387|388|389
      if ("%huntingpremium" = "YES") then var findroomlist 383|384|385|386|387|388|389|403|404|405|406|407|408
      if ("%huntingpremium" = "ONLY") then var findroomlist 403|404|405|406|407|408
      var bugoutroom 150
      var nearestportaltown merkresh
    }
    if ("%huntingarea" = "p4-armadillosadult") then
    {
      var zone 108
      var travel YES
      var traveldest mriss
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 1|2|3|4|5|6|7|8|9|10|11
      if ("%huntingpremium" = "YES") then var findroomlist 1|2|3|4|5|6|7|8|9|10|11|415|416|417|418
      if ("%huntingpremium" = "ONLY") then var findroomlist 415|416|417|418
      var bugoutroom 150
      var nearestportaltown merkresh
    }
    if ("%huntingarea" = "p4-armadilloselder") then
    {
      var zone 108
      var travel YES
      var traveldest mriss
      var move NO
      var targetroom 0
      var findroom YES
      if ("%huntingpremium" = "NO") then var findroomlist 391|392|393|394|395|396|397|398|399|400|401|402
      if ("%huntingpremium" = "YES") then var findroomlist 391|392|393|394|395|396|397|398|399|400|401|402|410|411|412|413|414
      if ("%huntingpremium" = "ONLY") then var findroomlist 410|411|412|413|414
      var bugoutroom 150
      var nearestportaltown merkresh
    }
    if ("%huntingarea" = "p5-fuliginmoths") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 637|638|639|640|641|642
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
      var monsterskin fuligin moth antenna
    }
    #185
    if ("%huntingarea" = "p5-voidmoths") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 643|644|645|646|647|648
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    #195
    if ("%huntingarea" = "p5-shadowmoths") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 649|650|651|652|653|654
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-maidenstress") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 246|247|248|249|250|251|252|253|254
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-matronstress") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 255|256|257|258|259|260|261|262|263|264|265
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-dryads") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 283|284|285|286|287|288|289|290
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-nyads1") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 267|266|268|269|270|271|272|273
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-blightogres1") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 296|297|298|299
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-nyads2") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 274|277|281|276|275|279|280|278|282
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-blightogres2") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 312|311|308|305|309|310|307|306
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-iceadders") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 435|434|428|429|430|427|426|425|424|423|422|421|432|433|431|437|445|446|447|448|449|441|442|443|444
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-marblegargoyles") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 374|396|397|398|399|400|401|402|403|404|405|406|407|408|409|410|411|412|413|414|415|416|417|418
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
      var monsterskin black marble hide
    }
    if ("%huntingarea" = "p5-dpcrones") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 317|318|319|320|321|322
      var bugoutroom 265
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p5-mountaingiants") then
    {
      var zone 123
      var travel YES
      var traveldest raven
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 317|318|319|320|321|322
      var bugoutroom 26
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p5-shalswars") then
    {
      var zone 69
      var travel YES
      var traveldest wyvern
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 435|434|428|429|430|427|426|425|424|423|422|421|432|433|431|437|445|446|447|448|449|441|442|443|444
      var bugoutroom 265
      var nearestportaltown shard
    }
    if ("%huntingarea" = "p5-stompers") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 560|561|562|563|564|565
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-maulers") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 566|567|568|569|570|571
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-headsplitters") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 572|573|574|575|576|577|578|579|580
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-blackapes") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 164|165|166|167|168|169|170|171|172|173|174|175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|208|209|210
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
    if ("%huntingarea" = "p5-tuskies") then
    {
      var zone 127
      var travel YES
      var traveldest boar
      var move NO
      var targetroom 0
      var findroom YES
      var findroomlist 660|661|662|663|664|665
      var bugoutroom 14
      var nearestportaltown hibarnhvidar
    }
  }
  return

MAGICVARLOAD:
  if (("$guild" = "Thief") || ("$guild" = "Barbarian")) then
  {
    #NMU_SETUP
    if ("$guild" = "Thief") then
    {
      if %scriptmode != 2 then gosub KHRIVARRESET
      gosub KHRIVARS
    }
    if ("$guild" = "Barbarian") then gosub BARBVARRESET  
  }
  else
  {
    #MAGIC_USER_SETUP
    if %buff = "YES" then
    {
      var bufflist %buff1|%buff2|%buff3|%buff4|%buff5|%buff6|%buff7|%buff8
    }
    var spellvarscount 0
    gosub SPELLVARSLOOP
    var spellvarscount 0
    gosub CYCSPELLVARSLOOP
    gosub CYCTMDBVARS
    var spellname %symbiosisspell
    gosub SPELLIDENT
    var symbiosisvar %spellvar
    var spellname %tattoospell
    gosub SPELLIDENT
    var tattoovar %spellvar
    gosub SPELLVARRESET
  }
  var spellname %wand1spell
  gosub SPELLIDENT
  var wand1var %spellvar
  var spellname %wand2spell
  gosub SPELLIDENT
  var wand2var %spellvar
  var spellname %wand3spell
  gosub SPELLIDENT
  var wand3var %spellvar
  var spellname %wand4spell
  gosub SPELLIDENT
  var wand4var %spellvar

  #SPELL_SKILLS
  gosub SPELLSTATCHECK %spell1
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var spell1skill sorcery
  else
  {
    if contains("%augmentation", "|%spell1|") then var spell1skill augmentation
    if contains("%utility", "|%spell1|") then var spell1skill utility
    if contains("%warding", "|%spell1|") then var spell1skill warding
  }
  gosub SPELLSTATCHECK %spell2
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var spell2skill sorcery
  else
  {
    if contains("%augmentation", "|%spell2|") then var spell2skill augmentation
    if contains("%utility", "|%spell2|") then var spell2skill utility
    if contains("%warding", "|%spell2|") then var spell2skill warding
  }
  gosub SPELLSTATCHECK %spell3
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var spell3skill sorcery
  else
  {
    if contains("%augmentation", "|%spell3|") then var spell3skill augmentation
    if contains("%utility", "|%spell3|") then var spell3skill utility
    if contains("%warding", "|%spell3|") then var spell3skill warding
  }
  gosub SPELLSTATCHECK %spell4
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var spell4skill sorcery
  else
  {
    if contains("%augmentation", "|%spell4|") then var spell4skill augmentation
    if contains("%utility", "|%spell4|") then var spell4skill utility
    if contains("%warding", "|%spell4|") then var spell4skill warding
  }
  #echo spell1skill: %spell1skill
  #echo spell2skill: %spell2skill
  #echo spell3skill: %spell3skill
  #echo spell4skill: %spell4skill
  
  #CYCLICS_SKILLS
  gosub SPELLSTATCHECK %spellc1
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var spellc1skill sorcery
  else
  {
    if contains("%augmentation", "|%spellc1|") then var spellc1skill augmentation
    if contains("%utility", "|%spellc1|") then var spellc1skill utility
    if contains("%warding", "|%spellc1|") then var spellc1skill warding
  }
  gosub SPELLSTATCHECK %spellc2
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var spellc2skill sorcery
  else
  {
    if contains("%augmentation", "|%spellc2|") then var spellc2skill augmentation
    if contains("%utility", "|%spellc2|") then var spellc2skill utility
    if contains("%warding", "|%spellc2|") then var spellc2skill warding
  }
  gosub SPELLSTATCHECK %spellc3
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var spellc3skill sorcery
  else
  {
    if contains("%augmentation", "|%spellc3|") then var spellc3skill augmentation
    if contains("%utility", "|%spellc3|") then var spellc3skill utility
    if contains("%warding", "|%spellc3|") then var spellc3skill warding
  }
  gosub SPELLSTATCHECK %spellc4
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var spellc4skill sorcery
  else
  {
    if contains("%augmentation", "|%spellc4|") then var spellc4skill augmentation
    if contains("%utility", "|%spellc4|") then var spellc4skill utility
    if contains("%warding", "|%spellc4|") then var spellc4skill warding
  }
  #echo spellc1skill: %spellc1skill
  #echo spellc2skill: %spellc2skill
  #echo spellc3skill: %spellc3skill
  #echo spellc4skill: %spellc4skill
  #PERFORM_CYCLICS
  gosub SPELLSTATCHECK %pspellc1
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var pspellc1skill sorcery
  else
  {
    if contains("%augmentation", "|%pspellc1|") then var pspellc1skill augmentation
    if contains("%utility", "|%pspellc1|") then var pspellc1skill utility
    if contains("%warding", "|%pspellc1|") then var pspellc1skill warding
  }
  gosub SPELLSTATCHECK %pspellc2
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var pspellc2skill sorcery
  else
  {
    if contains("%augmentation", "|%pspellc2|") then var pspellc2skill augmentation
    if contains("%utility", "|%pspellc2|") then var pspellc2skill utility
    if contains("%warding", "|%pspellc2|") then var pspellc2skill warding
  }
  gosub SPELLSTATCHECK %pspellc3
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var pspellc3skill sorcery
  else
  {
    if contains("%augmentation", "|%pspellc3|") then var pspellc3skill augmentation
    if contains("%utility", "|%pspellc3|") then var pspellc3skill utility
    if contains("%warding", "|%pspellc3|") then var pspellc3skill warding
  }
  
  gosub SPELLSTATCHECK %spelltm
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var tmskill sorcery
  else var tmskill tm
  gosub SPELLSTATCHECK %spelldebil
  if ((%spellmana != %nativemana) && (%spellmana != 0) then var debilskill sorcery
  else var debilskill debil
  return

WEAPONVARLOAD:
  gosub ACTIVEWEAPONS
  var nonwornweapons %seweapon|%leweapon|%theweapon|%sbweapon|%lbweapon|%theweapon
  action var feetcheck 1 when The .* %bowammo (falls to the ground|lands nearby)\!
  action var feetcheck 1 when The .* %xbowammo (falls to the ground|lands nearby)\!
  action var feetcheck 1 when The .* %slingammo (falls to the ground|lands nearby)\!
  gosub WSKILLGET
  return

VALIDROOMCHECK:
  if %scriptmode = 1 then
  {
    if ((%autoupkeep = "YES") || (%bugout = "YES")) then
    {
      if %premiumring = "YES" then 
      {
        put #var roomid 0
        pause 1
      }
      if $roomid = 0 then
      {
        put #mapper reset
        #pause .5
        if $roomid = 0 then
        {
          put #flash
          put #play JustArrived
          put #echo %alertwindow Yellow [UPKEEP]: Multi-Area Training, AutoUpkeep or Bugout is turned on, but the script is starting up in an unrecognized room!  Restart script when $roomid is something other than 0!
          put #echo Yellow [UPKEEP]: AutoUpkeep or Bugout is turned on, but the script is starting up in an unrecognized room!  Restart script when $roomid is something other than 0!
          exit
        }
      }
    }
  }
  return

SETUP:
  gosub STATUSVARLOAD
  gosub SETDEFAULTS
  gosub MAINVARLOAD
  gosub MULTIVARLOAD
  gosub GUILDVARLOAD
  gosub ALERTINIT
  gosub WEAPONVARLOAD
  gosub MAGICVARLOAD
  gosub HUNTINGVARLOAD
  gosub CRAFTVARLOAD
  gosub VALIDROOMCHECK
  return


###SETUP###
MAINHELP:
	put #echo
	put #echo mono ================================================
	put #echo mono ================== TRAINING! ===================
	put #echo mono ================================================
	put #echo
	echo Options are:
	echo TRAIN COMBAT - Combat training with no movement in the room that you're in.
  echo TRAIN COMBAT 2 - The above, with Mode 2 variables.
	echo TRAIN MULTI - Multi-Variable Set training.
  echo TRAIN NONCOMBAT - Out-of-combat training.
	echo TRAIN UPKEEP - Performs upkeep while inside a town.
	echo
	echo TRAIN QUIET - Quiet, but not silent training for RP situations.
	echo TRAIN SILENT - Completely silent training for RP situations.
	echo TRAIN ALERTS - Alerts only for idling situations.  No training. Health, Speech, Emote, and GM alerts forced active.
	echo TRAIN NORT - Only actions that provoke no RT and produce minimal room spam.
	echo
  echo TRAIN BURGLE - Attempts to peform burglary in the room that you're in.
	echo TRAIN MAGIC - Trains out of combat magic skills.
	echo TRAIN MUSIC - Trains performance and compatible skills that are enabled.
	echo TRAIN CLIMB <object> - Trains climb practice as well as any set noncombat skills.
	echo TRAIN RESEARCH <research type> - Performs spell research.  If a modifier is used, it will research only that type.  If not, it will go by variables.
	echo TRAIN FOCUS - Performs an appraisal focus and trains skills that can be done at the same time.
	if "$guild" = "Cleric" then echo TRAIN DEVOTION - Builds devotion.
	echo
	echo TRAIN BUFF <minutes> - Casting personal buffs only.  Spells with durations remaining below <minutes> will be recast.
  echo TRAIN GBUFF	- Casting group buffs only.
  #if "$guild" = "Cleric" then echo TRAIN OMBUFF - Casts OM and casts buffs inside it.
  echo
	echo SET DISPLAY - displays current settings,
	echo SET <variable> <value> - Changes script variables.
	#echo TRAIN TEACH - Teaching only.
	goto END

STATUSVARLOAD:
  #SKILL_LOCK_VARIABLES
  var arcanalock 0
  var appraiselock 0
  var athleticslock 0
  var attunelock 0
  var augmentationlock 0
  var backstablock 0
  var bardlorelock 0
  var debillock 0
  var empathylock 0
  var expertlock 0
  var firstaidlock 0
  var forginglock 0
  var locksmithinglock 0
  var offhandlock 0
  var outdoorlock 0
  var perclock 0
  var performlock 0
  var scholarlock 0
  var skinninglock 0
  var sorcerylock 0
  var stealthlock 0
  var summlock 0
  var tacticslock 0
  var targetlock 0
  var tradinglock 0
  var utilitylock 0
  var wardinglock 0
  var weapon1lock 0
  var weapon2lock 0
  var weapon3lock 0
  var weapon4lock 0
  var weapon5lock 0
  var weapon6lock 0
  var weapon7lock 0
  var weapon8lock 0
  var weapon9lock 0
  var weapon10lock 0
  var weapon11lock 0
  var weapon12lock 0
  var weapon13lock 0
  var weapon14lock 0

  #TIMING_VARIABLES
  var buffbuffer 2
  var castingthrottle 1
  var nextacmcleave 0
  var nextacmcrash 0
  var nextacmdoublestrike 0
  var nextacmimpale 0
  var nextacmpalmstrike 0
  var nextacmpowershot 0
  var nextacmtwirl 0
  var nextalmanac 0
  var nextapp 0
  var nextartstudy 0
  var nextassess 0
  var nextberserk 0
  var nextburgle 0
  var nextbadge 0
  var nextcast 0
  var nextbleed 0
  var nextburdencheck 0
  var nextcollect 0
  var nextcommsense 0
  var nextcyc 0
  var nextdance 0
  var nexteotbrel 0
  var nextejournal 0
  var nexthealcheck 0
  var nexthunt 0
  var nextinvest 0
  var nextlockbox 0
  var nextlootcyc 0
  var nextlootmanip 0
  var nextmanip 0
  var nextmontest 0
  var nexthealthcheck 0
  var nextnvstealth 0
  var nextom 0
  var nextpathway 0
  var nextpray 0
  var nextperc 0
  var nextperchealth 0
  var nextpin 0
  var nextrecall 0
  var nextrecite 0
  var nextring 0
  var nextrmlook 0
  var nextroaranger 0
  var nextroarembrace 0
  var nextroarkuniyo 0
  var nextroarrage 0
  var nextroarscreech 0
  var nextroarshriek 0
  var nextroarwail 0
  var nextskinfa 0
  var nextsmite 0
  var nextspider 0
  var nextstarcheck 0
  var nextstudy 0
  var nextsumm 0
  var nexttarantula 0
  var nexttext 0
  var nexttattoo 0
  var nextwarhorn 0
  var nextwhistle 0
  var nextwind 0
  var nextspelltracking 0
  var privateroomuntil 0
  var gbuff1next 0
  var gbuff2next 0
  var gbuff3next 0
  var gbuff4next 0
  var gbuff5next 0
  var gbuff6next 0
  var gbuff7next 0
  var gbuff8next 0

  var weapon1max 0
  var weapon2max 0
  var weapon3max 0
  var weapon4max 0
  var weapon5max 0
  var weapon6max 0
  var weapon7max 0
  var weapon8max 0
  var weapon9max 0
  var weapon10max 0
  var weapon11max 0
  var weapon12max 0
  var weapon13max 0
  var weapon14max 0
  var weapon1count 0
  var weapon2count 0
  var weapon3count 0
  var weapon4count 0
  var weapon5count 0
  var weapon6count 0
  var weapon7count 0
  var weapon8count 0
  var weapon9count 0
  var weapon10count 0
  var weapon11count 0
  var weapon12count 0
  var weapon13count 0
  var weapon14count 0

  var aiming 0
  var aimready 0
  var analyzedone 0
  var appfocusing -1
  var appfocusdone 0
  var appfocusonly 0
  var armortype 0
  var baddisarm 0
  var badface 0
  var boxespoppedtotal 0
  var bugoutnostow 0
  var alertsonly 0
  var shieldworn 0
  var parrystickworn 0
  var shieldworn 0
  var armor1worn 0
  var armor2worn 0
  var armor3worn 0
  var armor4worn 0
  var armor5worn 0
  var armor6worn 0
  var askclass 0
  var askstudent 0
  var noncombatactive 0
  var balance solidly
  var barmace 0
  var bastardsword 0
  var buggingout 0
  var buffing 0
  var buffingonly 0
  var charged 0
  var cambcharge1 0
  var cambcharge2 0
  var cambcharge 0
  var cambtapped 0
  var casting 0
  var climbing 1
  var combatperforming 0
  var commgood 1
  var ctoverride 0
  var cyctmcount 0
  var cycdebilcount 0
  var cyclic1count 0
  var cyclic2count 0
  var cycliccast 0
  var currentarmor 0
  var currentcyc 0
  var currentclass 0
  var currentcritter 0
  var currentteacher 0
  var currentweapon -1
  var dbanext 1
  var deadcheck 0
  var debilcast 0
  var debilcount 0
  var ejournalused 0
  var elunedgood 1
  var alfarcommand 0
  var evenweapon 1
  var evenweapontarget 0
  var facebrawlfail 0
  var feetcheck 0
  var firstarmorcheck 0
  var firstawake 1
  var firstclean 0
  var firstcommsense 1
  var firstlocksmith 1
  var firstperc 1
  var firstmanip 1
  var firstrel 1
  var firstskinfatrain 1
  var firststoragecheck 1
  var firststowall 1
  var firstteach 1
  var fissure 0
  var goodtarget 0
  var goupkeep 0
  var harnessed 0
  var harnmana 0
  var harntapped 0
  var heavytmready 1
  var hhriste 0
  var humming 0
  var invoked 0
  var infection 0
  var justice -1
  var justicemoved -1
  var killbeforeleave -1
  var lastcast 0
  var lasthit 1
  var lastignite 0
  var lastspellcheck 0
  var lastweapon 0
  var mercomup 0
  var meraudgood 1
  var mist 0
  var movenum 0
  var needscleaning 0
  var nexus 0
  var nriste 0
  var omcast 0
  var pcast 0
  var picksleft 0
  var playing 0
  var prepped 0
  var preptime 0
  var ready 0
  var researching 0
  var rprojectactive 0
  var researchtype -1
  var sanowretready 1
  var scancel 0
  var scriptarea 0
  var scriptareachange 0
  var sorted 0
  var spell1count 0
  var spell2count 0
  var spell3count 0
  var spelldifficulty -1
  var spellpercent 100
  var splittingmana 0
  var stance 0
  var stealthcount 0
  var stealthmax 0
  var summfull 0
  var tacticsdone 1
  var tacticsmove 0
  var tacticsmax 0
  var tamcomup 0
  var tskill 0
  var targetnum 5
  var teachingonly 0
  var testcount 0
  var textposition 0
  var tattooactive 0
  var tattoocast 0
  var tmcast 0
  var tmcount 0
  var tmdead 0
  var tmfocusinuse 0
  var tmove1 none
  var tmove2 none
  var tmove3 none
  var tmove4 none
  var tmove5 none
  var tomeofloreready 1
  var upkeepactive 0
  var usingacm 0
  var usingbow 0
  var usingdebiltm 0
  var usingexpert 0
  var usingprivateroom 0
  var usingstealth 0
  var usingtactics 0
  var waricon 0
  var windmounted -1

  #BURGLE_VARIABLES
  var justice 1
  var burgleready 0
  var footsteps 0
  var grabs 0
  var moves 0
  var arrested 0
  var totalburgle 0
  var guards Gwaerd|guard|Shard sentinel|Sentinel|Elven Warden|Riverhaven Warden|Warden|Baronial guardsman|sickly tree|Muspar'i constable|Malk'smo constable 

  var 0through34 0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34
  return

MAINVARLOAD:
  var bugout $bugout
  var bugoutnum $bugoutnum
  var bugoutonbleed $bugoutonbleed
  var bugoutonsend $bugoutonsend
  #var killbeforemove $killbeforemove
  var killbeforemove NO
  var sleepontravel $sleepontravel
  var movetimeout $movetimeout
  var prefergroup $prefergroup
  var huntingpremium $huntingpremium
  var premiumring $premiumring
  var premiumringitem $premiumringitem
  
  if (%varset = 1) then var huntingarea $huntingarea
  else var huntingarea $huntingaream2
  if (%varset = 1) then var upkeeptown $upkeeptown
  else var upkeeptown $upkeeptownm2
  if (%varset = 1) then var burgletown $burgletown
  else var burgletown $burgletownm2
  if (%varset = 1) then var pawntown $pawntown
  else var pawntown $pawntownm2
  if (%varset = 1) then var performtown $performtown
  else var performtown $performtownm2
  if (%varset = 1) then var forgingtown $forgingtown
  else var forgingtown $forgingtownm2
  
  var movevanish $movevanish

  
  var autoupkeep $autoupkeep
  var auonhealth $auonhealth
  var auhealthnum $auhealthnum
  var auonbleed $auonbleed
  var auonpoison $auonpoison
  var auonfire $auonfire
  var auonnerves $auonnerves
  var auonburden $auonburden
  var auburdennum $auburdennum
  var auonammo $auonammo
  var auonboxes $auonboxes
  var minmoney $minmoney
  var minmoneytype $minmoneytype
  var exchange $exchange
  var autopath $autopath
  var repair $repair
  var repairlist $seweapon|$leweapon|$theweapon|$sbweapon|$lbweapon|$thbweapon|$staveweapon|$poleweapon|$ltweapon|$htweapon
  var vaulttown $vaulttown
  var bundlesell $bundlesell
  var bundlevault $bundlevault
  var vaultmove $vaultmove
  var bundlerope $bundlerope
  var gemsell $gemsell
  var gemvault $gemvault
  var gempouches $gempouches
  var nuggetsell $nuggetsell
  var barsell $barsell
  var ammobuy $ammobuy
  var ammobuytown $ammobuytown
  var ammobuylist $ammobuylist
  var ammocontainer $ammocontainer
  var ammomin $ammomin
  var lockpickbuy $lockpickbuy
  var lockpickbuytown $lockpickbuytown
  var lockpickstacker $lockpickstacker
  var lockpickitem $lockpickitem
  var boxpopping $boxpopping
  var skeletonkey $skeletonkey
  var bucketitem $bucketitem
  var dismantletype $dismantletype
  var boxpopbuff $boxpopbuff
  var boxpopbuffprepmana $boxpopbuffprepmana
  var boxpopbuffaddmana $boxpopbuffaddmana
  var spiderfeed $spiderfeed
  var incense $incense
  
 
  #COMBAT 
  if (%varset = 1) then var weapons $weapons
  else var weapons $weaponsm2
  #WEAPONLIST
  if (%varset = 1) then var weaponlist $weaponlist
  else var weaponlist $weaponlistm2
  eval weaponnum count("%weaponlist", "|")
  math weaponnum add 1
  gosub WEAPONLOADLOOP
  #WEAPONLIST_END
  var stancemain $stancemain
  var lowestfirst $lowestfirst
  var killafterlock $killafterlock
  
  var offhand $offhand
  var acms $acms
  var seweapon $seweapon
  var seoffhand $seoffhand
  var secombo $secombo
  var leweapon $leweapon
  var leoffhand $leoffhand
  var theweapon $theweapon
  var sbweapon $sbweapon
  var sboffhand $sboffhand
  var lbweapon $lbweapon
  var lboffhand $lboffhand
  var thbweapon $thbweapon
  var staveweapon $staveweapon
  var staveoffhand $staveoffhand
  var staveworn $staveworn
  var stavetied $stavetied
  var poleweapon $poleweapon
  var poleworn $poleworn
  var poletied $poletied
  var polecombo $polecombo
  var bastardsworditem $bastardsworditem
  var barmaceitem $barmaceitem
  var holyiconitem $holyiconitem
  var risteitem $risteitem
  var hhristeitem $hhristeitem
  var ltweapon $ltweapon
  var ltoffhand $ltoffhand
  var ltbond $ltbond
  var ltverb $ltverb
  var htweapon $htweapon
  var htoffhand $htoffhand
  var htbond $htbond
  var htverb $htverb

  var xbowweapon $xbowweapon
  var bowweapon $bowweapon
  
  var xbowammo $xbowammo
  var xbowworn $xbowworn
  var bowammo $bowammo
  var bowworn $bowworn
  var slingweapon $slingweapon
  var slingammo $slingammo
  var collectammo $collectammo
  
  var armorcheck $armorcheck
  var shielditem $shielditem
  var parrystickitem $parrystickitem
  var armornum $armornum
  var armor1item $armor1item
  var armor2item $armor2item
  var armor3item $armor3item
  var armor4item $armor4item
  var armor5item $armor5item
  var armor6item $armor6item
  var knucklesitem $knucklesitem
  
  var attune $attune
  var recall $recall
  var hunting $hunting
  var huntingtimer $huntingtimer
  if (%varset = 1) then var stealth $stealth
  else var stealth $stealthm2
  if (%varset = 1) then var tactics $tactics
  else var tactics $tacticsm2
  var retreatdelay $retreatdelay
  var appraise $appraise
  var appraisetarget $appraisetarget
  var appraisetimer $appraisetimer
  var appsaveitem $appsaveitem
  var appsaveitemstorage $appsaveitemstorage
  if (%varset = 1) then var collect $collect
  else var collect $collectm2
  var collecttimer $collecttimer
  var collectitem $collectitem
  var textbook $textbook
  var textbooktimer $textbooktimer
  var textbookitem $textbookitem
  var textbooklist $textbooklist
  var tomeoflore $tomeoflore
  var tomeofloreitem $tomeofloreitem
  var teaching $teaching
  var teachtargets $teachtargets
  var teachskill $teachskill
  
  var combatsanowret $combatsanowret
  var sanowretitem $sanowretitem
  
  #GENERAL
  
  var whitelist $whitelist
  var blacklist $blacklist
  
  var almanac $almanac
  var almanacitem $almanacitem
  var almanacalerts $almanacalerts
  var ejournal $ejournal
  var ejournalitem $ejournalitem
  var ejournalstates $ejournalstates
  var tarantula $tarantula
  var tarantulaitem $tarantulaitem
  var tarantulaskill1 $tarantulaskill1
  var tarantulaskill2 $tarantulaskill2
  var locksmithboxitem $locksmithboxitem
  var locksmithboxtimer $locksmithboxtimer
  var skinfatrainer $skinfatrainer
  var skinfatrainertimer $skinfatrainertimer
  var skinfatraineritem $skinfatraineritem
  var windboard $windboard
  var windboardtimer $windboardtimer
  var windboardtrick $windboardtrick
  var windboardcharge $windboardcharge
  
  #LOOT
  var storage $storage
  var boxstorage $boxstorage
  var lootalerts $lootalerts
  var lootalldead $lootalldead
  var collectboxes $collectboxes
  var collectcoin $collectcoin
  var collectscroll $collectscroll
  var collectmaps $collectmaps
  var collectnuggets $collectnuggets
  var collectbars $collectbars
  var collectmaterials $collectmaterials
  var collectgem $collectgem
  var savegwethstones $savegwethstones
  var misckeeplist $misckeeplist
  var skinafterlock $skinafterlock
  var dropskins $dropskins
  if (%varset = 1) then
  {
    var loottype $loottype
    var skinning $skinning
    var arrange $arrange
    var arrangeforpart $arrangeforpart
    var dissect $dissect
  }
  else
  {
    var loottype $loottypem2
    var skinning $skinningm2
    var arrange $arrangem2
    var arrangeforpart $arrangeforpartm2
    var dissect $dissectm2
  }
      
  var platring $platring
  var platringitem $platringitem
  var locksmithbox $locksmithbox

  
  var appfocus $appfocus
  var appfocusitem $appfocusitem
  
  
  var gbuff $gbuff
  var gbufftarget $gbufftarget

  var gafmana $gafmana
  var researchnum $researchnum
  var researchtype1 $researchtype1
  var researchtype2 $researchtype2
  var researchtype3 $researchtype3
  var researchtype4 $researchtype4
  var researchtype5 $researchtype5
  
  #MAGIC
  var minconcentration $minconcentration
  var minmana $minmana
  var straightcast $straightcast
  var difficulty1percent $difficulty1percent
  var difficulty2percent $difficulty2percent
  var difficulty3percent $difficulty3percent
  var difficulty4percent $difficulty4percent
  var difficulty5percent $difficulty5percent
  var harnessmax $harnessmax
  var harnessing $harnessing
  var cambrinth $cambrinth
  var dedicatedcambrinth $dedicatedcambrinth  
  var cambitems $cambitems
  var cambitem1 $cambitem1
  var cambitem1mana $cambitem1mana
  var cambitem1worn $cambitem1worn
  var cambitem2 $cambitem2
  var cambitem2mana $cambitem2mana
  var cambitem2worn $cambitem2worn
  var ritualfocus $ritualfocus
  var ritualfocusstorage $ritualfocusstorage
  var ritualfocusworn $ritualfocusworn
  var ritualfocuscontainer $ritualfocuscontainer
  var tmfocus $tmfocus
  var tmfocusitem $tmfocusitem
  var tmfocusstorage $tmfocusstorage
  var tmfocusworn $tmfocusworn
  var tmfocuscontainer $tmfocuscontainer
  var tattoo $tattoo
  var tattootype $tattootype
  var tattoospell $tattoospell
  var tattooprepmana $tattooprepmana
 
  if (%varset = 1) then var spell $spell
  else var spell $spellm2
  if (%varset = 1) then var spellnum $spellnum
  else var spellnum $spellnumm2
  var spell1 $spell1
  var spell1mana $spell1mana
  var spell1symb $spell1symb
  var spell2 $spell2
  var spell2mana $spell2mana
  var spell2symb $spell2symb
  var spell3 $spell3
  var spell3mana $spell3mana
  var spell3symb $spell3symb
  var spell4 $spell4
  var spell4mana $spell4mana
  var spell4symb $spell4symb
  var tmdbprior $tmdbprior
  if (%varset = 1) then var tm $tm
  else var tm $tmm2
  var spelltm $spelltm
  var spelltmmana $spelltmmana
  if (%varset = 1) then var debil $debil
  else var debil $debilm2
  var spelldebil $spelldebil
  var spelldebilmana $spelldebilmana
  if (%varset = 1) then var cyclic $cyclic
  else var var cyclic $cyclicm2
  var cyclicbuff $cyclicbuff
  var spellcnum $spellcnum
  if (%varset = 1) then var spellcnum $spellcnum
  else var var spellcnum $spellcnumm2
  var spellc1 $spellc1
  var spellc1prepmana $spellc1prepmana
  var spellc2 $spellc2
  var spellc2prepmana $spellc2prepmana
  var spellc3 $spellc3
  var spellc3prepmana $spellc3prepmana
  if (%varset = 1) then var cyctm $cyctm
  else var cyctm $cyctmm2
  var spellcyctm $spellcyctm
  var spellcyctmmana $spellcyctmmana
  if (%varset = 1) then var cycdebil $cycdebil
  else var cycdebil $cycdebilm2
  var spellcycdebil $spellcycdebil
  var spellcycdebilmana $spellcycdebilmana
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
  var symbiosisbuff $symbiosisbuff
  var symbiosisspell $symbiosisspell
  var symbiosismana $symbiosismana
  var misdirection $misdirection
  var misdirectionmana $misdirectionmana
  var tattoobuff $tattoobuff
  var tattooaddmana $tattooaddmana
  var wandbuff $wandbuff
  var wandstorage $wandstorage
  var wandbuffnum $wandbuffnum
  var wand1item $wand1item
  var wand1num $wand1num
  var wand1spell $wand1spell
  var wand2item $wand2item
  var wand2num $wand2num
  var wand2spell $wand2spell
  var wand3item $wand3item
  var wand3num $wand3num
  var wand3spell $wand3spell
  var wand4item $wand4item
  var wand4num $wand4num
  var wand4spell $wand4spell  
  
  var debilassist $debilassist
  var dbanum $dbanum
  var dbalist $dbalist
  var dbaspell1 $dbaspell1
  var dbaspell1mana $dbaspell1mana
  var dbaspell2 $dbaspell2
  var dbaspell2mana $dbaspell2mana
  var dbaspell3 $dbaspell3
  var dbaspell3mana $dbaspell3mana
  var performcyclic $performcyclic
  var pspellcnum $pspellcnum
  var pspellc1 $pspellc1
  var pspellc1prepmana $pspellc1prepmana
  var pspellc2 $pspellc2
  var pspellc2prepmana $pspellc2prepmana
  var pspellc3 $pspellc3
  var pspellc3prepmana $pspellc3prepmana    
  
  var gbuffnum $gbuffnum
  if %gbuffnum > 0 then var gbuff1 $gbuff1
  if %gbuffnum > 0 then var gbuff1prepmana $gbuff1prepmana
  if %gbuffnum > 0 then var gbuff1addmana $gbuff1addmana
  if %gbuffnum > 0 then var gbuff1duration $gbuff1duration
  if %gbuffnum > 1 then var gbuff2 $gbuff2
  if %gbuffnum > 1 then var gbuff2prepmana $gbuff2prepmana
  if %gbuffnum > 1 then var gbuff2addmana $gbuff2addmana
  if %gbuffnum > 1 then var gbuff2duration $gbuff2duration
  if %gbuffnum > 2 then var gbuff3 $gbuff3
  if %gbuffnum > 2 then var gbuff3prepmana $gbuff3prepmana
  if %gbuffnum > 2 then var gbuff3addmana $gbuff3addmana
  if %gbuffnum > 2 then var gbuff3duration $gbuff3duration
  if %gbuffnum > 3 then var gbuff4 $gbuff4
  if %gbuffnum > 3 then var gbuff4prepmana $gbuff4prepmana
  if %gbuffnum > 3 then var gbuff4addmana $gbuff4addmana
  if %gbuffnum > 3 then var gbuff4duration $gbuff4duration
  if %gbuffnum > 4 then var gbuff5 $gbuff5
  if %gbuffnum > 4 then var gbuff5prepmana $gbuff5prepmana
  if %gbuffnum > 4 then var gbuff5addmana $gbuff5addmana
  if %gbuffnum > 4 then var gbuff5duration $gbuff5duration
  if %gbuffnum > 5 then var gbuff6 $gbuff6
  if %gbuffnum > 5 then var gbuff6prepmana $gbuff6prepmana
  if %gbuffnum > 5 then var gbuff6addmana $gbuff6addmana
  if %gbuffnum > 5 then var gbuff6duration $gbuff6duration
  if %gbuffnum > 6 then var gbuff7 $gbuff7
  if %gbuffnum > 6 then var gbuff7prepmana $gbuff7prepmana
  if %gbuffnum > 6 then var gbuff7addmana $gbuff7addmana
  if %gbuffnum > 6 then var gbuff7duration $gbuff7duration
  if %gbuffnum > 7 then var gbuff8 $gbuff8
  if %gbuffnum > 7 then var gbuff8prepmana $gbuff8prepmana
  if %gbuffnum > 7 then var gbuff8addmana $gbuff8addmana
  if %gbuffnum > 7 then var gbuff8duration $gbuff8duration
  
  if %cambitems < 1 then var cambitems 1
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

  #NONCOMBAT
  if (%varset = 1) then var noncombat $noncombat
  else var noncombat $noncombatm2
  if (%varset = 1) then var burgle $burgle
  else var burgle $burglem2
  if (%varset = 1) then var perform $perform
  else var perform $performm2
  if (%varset = 1) then var crafting $crafting
  else var crafting $craftingm2
  if (%varset = 1) then var forging $forging
  else var forging $forgingm2
  if (%varset = 1) then var outfitting $outfitting
  else var outfitting $outfittingm2
  if (%varset = 1) then var research $research
  else var research $researchm2
  
  var burglestorage $burglestorage
  var burgletool $burgletool
  var burglepickitem $burglepickitem
  var burglepickworn $burglepickworn
  var burgleropeitem $burgleropeitem
  var burglehide $burglehide
  var burglemaxgrabs $burglemaxgrabs
  var burgleloot $burgleloot
  var burglekeeplist $burglekeeplist
  var burglepawn $burglepawn
  
  var songtype $songtype
  var instrument $instrument
  var instrumentworn $instrumentworn
  var instrumenthands $instrumenthands
  var instrumentassess $instrumentassess
  var instclean $instclean
  var instcleancloth $instcleancloth
  var climbingrope $climbingrope
  var climbingropename $climbingropename
  var climbingropehum $climbingropehum
  var humsong $humsong
  var studyart $studyart
  var noncomsanowret $noncomsanowret

  
  var deathaction $deathaction
  var disconnectaction $disconnectaction
  var arrestaction $arrestaction
  var alertwindow $alertwindow
  var healthalerts $healthalerts
  var healthalertnum $healthalertnum
  var nervealerts $nervealerts
  var backfirealerts $backfirealerts
  var sorceryalerts $sorceryalerts
  var speechalerts $speechalerts
  var arrivalalerts $arrivalalerts
  var emotealerts $emotealerts
  var gmalerts $gmalerts
  var pvpalerts $pvpalerts
  var pvpstealthalerts $pvpstealthalerts
  var inventoryalerts $inventoryalerts
  var paranoiaalerts $paranoiaalerts
  
  var tendarea $tendarea
  var tendobject $tendobject
  return

WEAPONLOADLOOP:
  var weaponloadloopcount 0
WEAPONLOADLOOPMAIN:
  if (%weaponloadloopcount >= %weaponnum) then return
  var weaponactual %weaponloadloopcount
  math weaponactual add 1
  var weapon%weaponactual %weaponlist(%weaponloadloopcount)
  #echo weapon%weaponactual %weapon%weaponactual
  math weaponloadloopcount add 1
  goto WEAPONLOADLOOPMAIN


MULTIVARLOAD:
  #MULTITRAIN
  var multiarea $multiarea
  var multiareapriority $multiareapriority
  var multimindstep $multimindstep
  var mode1list $mode1list
  var mode2list $mode2list
  return



###MAIN LOOP###
SWITCHBOARD:
  if (%scriptmode = 0) then goto NONCOMBATONLYLOOP
  if (%scriptmode = 1) then
  {
    gosub SCRIPTBEGINCHECKS
    goto MAINLOOP
  }
  if (%scriptmode = 2) then goto BUFFINGONLYLOOP
  if (%scriptmode = 3) then
  {
    gosub UPKEEPLOGIC
    put #flash
    put #play NewRank
    exit
  }
  if (%scriptmode = 4) then
  {
    gosub AWAKE
    gosub BURGLELOGIC
    put #flash
    put #play NewRank
    exit
  }
  exit
  
  
MAINLOOP:
  pause .5
  #AREADECISION_MOVEMENT
  gosub NEWAREADECISION
  gosub NEWAREAMOVEMENT
  #put #echo Yellow ScriptArea: %scriptarea  ScriptAreaChange: %scriptareachange
  #put #echo upkeepactive: %upkeepactive  noncombatactive: %noncombatactive
  if (%upkeepactive = 1) then
  {
    gosub UPKEEPLOGIC
  }
  else
  {
    if ("%scriptareachange" = "0") then
    {
      if (%noncombatactive = 1) then goto NONCOMBATLOOP
      else goto COMBATLOOP
    }
    else
    {
      if ((%killbeforeleave = 0) && ("%scriptarea" = "combat") && ("%scriptareachange" = "noncombat")) then
      {
        goto COMBATLOOP
      }
    }
  }
  else
  {
    pause .5
  }
  goto MAINLOOP

  
COMBATLOOP:
  #SANCTUARY_CHECK
  if ($SpellTimer.Sanctuary.active = 1) then
  {
    gosub RELCYCLIC
    gosub PERCSELF
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #SPIDER
  if %spiderfeed = "YES" then
  {
    if %t > %nextspider then
    {
      var nextspider %t
      math nextspider add 3600
      put look my clockwork spider
    }
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #ATTUNEMENT
  if %attune = "YES" then
  {
    gosub ATTUNELOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #STANCE_CHECKING
  gosub BOWSTANCECHECK
  if ((%stance != "%stancemain") && (%usingbow = 0)) then
  {
    var stance %stancemain
    gosub STANCECHANGE
  }
  if ((%stance != "shield") && (%usingbow = 1)) then
  {
    var stance shield
    gosub STANCECHANGE
  }
  #ALMANAC
  if %almanac = "YES" then
  {
    if %t >= %nextalmanac then
    {
      gosub ALMANACLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
  }
  #EJOURNAL
  if %ejournal = "YES" then
  {
    gosub EJOURNALLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #TARANTULA
  if %tarantula = "YES" then
  {
    gosub TARANTULALOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #DOMAIN
  if (("$guild" = "Warrior Mage") && (%domain = "YES")) then
  {
    echo DomainActive: %domainactive
    if %domainactive = 1 then echo DomainActiveType: %domainactivetype
    if %domainactive = -1 then
    {
      gosub RETREAT
      gosub DOMAINSTART 
    }
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #MANIPULATE
  if %manipulate = "YES" then
  {
    if "$guild" = "Empath" then
    {
      gosub MANIPLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
  }
  #TEACHING
  if %teaching = "YES" then gosub TEACHINGLOGIC
  
  #NONVIOLENT_TACTICS
  if ((%avoidshock = "YES") && (%tactics = "YES")) then
  {
    if %shockcritter = 1 then
    {
      gosub NVTACTICSLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
  }
  #WEAPONS
  if ("%weapons" = "YES") then
  {
    if ($monstercount > 0) then
    {
      gosub WEAPONLOGIC
    }
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #NVSTEALTH
  if ((%avoidshock = "YES") && (%stealth = "YES")) then
  {
    if %shockcritter = 1 then
    {
      gosub NVSTEALTHLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
  }
  if (("$guild" = "Paladin") && (%stealth = "YES")) then
  {
    gosub NVSTEALTHLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #HUNTING
	if %hunting = "YES" then
	{
	  gosub HUNTLOGIC
	  gosub STATUSCHECK
	  if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #RECALL
  if %recall = "YES" then
  {
    gosub RECALLLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #APPRAISAL
	if %appraise = "YES" then
	{
    gosub APPLOGIC
	  gosub STATUSCHECK
	  if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #WINDBOARD
  if %windboard = "YES" then
  {
    if %buffing = 0 then
    {
      if ((%usingtactics != 1) && (%usingexpert != 1)) then
      {
        gosub WINDBOARDLOGIC
        gosub STATUSCHECK
        if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
      }
    }
  }
  #COLLECTING
  #put #echo Yellow Collect: %collect
  if ("%collect" = "YES") then
  {
    #put #echo buffing: %buffing
    if (%buffing = 0) then
    {
      #echo Not buffing.
      #put #echo usingtactics: %usingtactics
      if ((%usingtactics != 1) && (%usingexpert != 1)) then
      {
        #echo Not using tactics or expertise.
        gosub COLLECTLOGIC
      }
    }
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #TEXTBOOK
  if %textbook = "YES" then
  {
    if %buffing = 0 then
    {
      if ((%usingtactics != 1) && (%usingexpert != 1)) then
      {
        gosub TEXTLOGIC
      }
    }
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #SANOWRET
  if %combatsanowret = "YES" then
  {
    gosub SANOWRETLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #LOCKSMITHBOX
  if %locksmithbox = "YES" then
  {
    gosub LOCKSMITHLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #SKINFATRAINER
  if %skinfatrainer = "YES" then
  {
    gosub SKINFATRAINERLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  
  
  ######
  ##GUILD_SKILLS
  ######
  #PERCEIVE_HEALTH
  if (("$guild" = "Empath") && ("%perchealth" = "YES")) then
  {
    gosub PERCHEALTHLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #ASTROLOGY
  if (("$guild" = "Moon Mage") && ("%astro" = "YES")) then
  {
    gosub ASTROLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
	}
	#WARHORN
	if %warhorn = "YES" then
  {
    if %t >= %nextwarhorn then
    {
      gosub GETITEM %warhornitem
      gosub WARHORN
      gosub STOWITEM %warhornitem
      var nextwarhorn %t
      math nextwarhorn add 605
    }
  }
 	if ("$guild" = "Paladin") then
  {
 	  #PILGRIMBADGE
    if ("%pilgrimbadge" = "YES") then
    {
      gosub BADGELOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
    #ANLORALPIN
    if %anloralpin = "YES" then
    {
      gosub PINLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
 	}
 	if (("$guild" = "Cleric") && ("%theurgy" = "YES")) then
 	{
 	  #COMMUNE_DETECTION
 	  if ((%meraudcommune = "YES") || (%elunedcommune = "YES") || (%tamsinecommune = "YES")) then
    {
      if (%firstcommsense = 1) then
      {
        gosub COMMSENSE
        var firstcommsense 0
        var nextcommsense %t
        math nextcommsense add 1200
        echo commgood: %commgood
        echo mercomup: %mercomup
        echo meraudgood: %meraudgood
      }
    }
    #PRAYER
    if %pray = YES then
    {
      gosub PRAYLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
    #PILGRIMBADGE
    if ("%pilgrimbadge" = "YES") then
    {
      gosub BADGELOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
    #ANLORALPIN
    if %anloralpin = "YES" then
    {
      gosub PINLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
    #MERAUDCOMMUNE
    if ((%meraudcommune = "YES") || (%elunedcommune = "YES") || (%tamsinecommune = "YES")) then
    {
      gosub COMMUNELOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
    #RECITE
    if %recite = "YES" then
    {
      gosub RECITELOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
    #DANCE
    if %dance = "YES" then
    {
      gosub DANCELOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
  }
  #SUMMONING
  if (($guild = "Warrior Mage") && (%summoning = "YES")) then
  {
    if ("%summonweapon" = "YES") then
    {
      gosub SUMMWEAPONLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
    if %pathway = "YES" then
    {
      gosub PATHWAYLOGIC
      gosub STATUSCHECK
      if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
    }
  }
  #TRADING
  if (($guild = "Ranger") && ("%pounce" = "YES")) then
  {
    gosub POUNCELOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #TRADING
  if (($guild = "Trader") && ("%invest" = "YES")) then
  {
    gosub INVESTLOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  #BARDIC_LORE
  if (($guild = "Bard") && ("%whistlepiercing" = "YES")) then
  {
    gosub WHISTLELOGIC
    gosub STATUSCHECK
    if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  }
  gosub STATUSCHECK
  if ((%scriptareachange != 0) || (%goupkeep = 1)) then goto MAINLOOP
  goto MAINLOOP

NONCOMBATONLYLOOP:
  var noncombatperformactive 0
  #PERFORM
  if ("%perform" = "YES") then
  {
    if ($Performance.LearningRate > 20) then var performlock 1
    if ($Performance.LearningRate < 4) then var performlock 0
    if ($Performance.Ranks >= 1750) then var performlock 1
    if (%performlock != 1) then 
    {
      var noncombatperformactive = 1
      gosub MTPERFORMLOOP
    }
    else var noncombatperformactive = 1
    put #echo Yellow loop passed.
  }
  #MAGIC_AND_MISC
  #ATTUNEMENT
  if %attune = "YES" then
  {
    gosub ATTUNELOGIC
    gosub STATUSCHECK
  }
  #ALMANAC
  if %almanac = "YES" then
  {
    if %t >= %nextalmanac then
    {
      gosub ALMANACLOGIC
      gosub STATUSCHECK
    }
  }
  #EJOURNAL
  if %ejournal = "YES" then
  {
    gosub EJOURNALLOGIC
    gosub STATUSCHECK
  }
  #TARANTULA
  if %tarantula = "YES" then
  {
    gosub TARANTULALOGIC
    gosub STATUSCHECK
  }
  #TEXTBOOK
  if %textbook = "YES" then
  {
    if %buffing = 0 then
    {
      if ((%usingtactics != 1) && (%usingexpert != 1)) then
      {
        gosub TEXTLOGIC
      }
    }
    gosub STATUSCHECK
  }
  #TEACHING
  if %teaching = "YES" then gosub TEACHINGLOGIC
  #HUNTING
	if %hunting = "YES" then
	{
	  gosub HUNTLOGIC
	  gosub STATUSCHECK
  }
  #APPRAISAL
	if %appraise = "YES" then
	{
    gosub APPLOGIC
	  gosub STATUSCHECK
  }
  #COLLECTING
  if ("%collect" = "YES") then
  {
    gosub COLLECTLOGIC
    gosub STATUSCHECK
  }
  #SANOWRET
  if %combatsanowret = "YES" then
  {
    gosub SANOWRETLOGIC
    gosub STATUSCHECK
  }
  #WINDBOARD
  if %windboard = "YES" then
  {
    gosub WINDBOARDLOGIC
    gosub STATUSCHECK
  }
  #LOCKSMITHBOX
  if %locksmithbox = "YES" then
  {
    gosub LOCKSMITHLOGIC
    gosub STATUSCHECK
  }
  #SKINFATRAINER
  if %skinfatrainer = "YES" then
  {
    gosub SKINFATRAINERLOGIC
    gosub STATUSCHECK
  }
  pause 1
  goto NONCOMBATONLYLOOP


OLDNONCOMBATLOOP:
  #PRERUN_ACTIONS
  if %firststowall = 1 then
  {
    if tolower("%1") != "alerts" then gosub STOWALL
    var firststowall 0
  }
  if %firstrel = 1 then
  {
    if (($guild = "Thief") || ($guild = "Barbarian")) then
    else
    {  
      if %spell = "YES" then
      {
        if ((%spell1symb = "YES") || (%spell2symb = "YES") || (%spell3symb = "YES") || (%symbiosisbuff = "YES")) then
        {
          gosub SYMBCLEAR
        }
      }
      if ("%necrosafety" = "YES") then
      {
        gosub RELMANA
        gosub RELSPELL
      }
      else gosub RELALL
    }
    var firstrel 0
  }
  if ((%appfocusonly = 0) && (%alertsonly = 0)) then
  {
    if %firstawake = 1 then
    {
      gosub AWAKE
      var firstawake 0
    }
  }
  #TRADING_SELL
  if (("%tradingsell" = "YES") && ("$guild" = "Trader")) then
  {
    #put #echo >Log Yellow tradingsell: %tradingsell Logic started.
    if $Trading.LearningRate > 28 then var tradinglock 1
    if $Trading.LearningRate < 4 then var tradinglock 0
    if $Trading.Ranks >= 1750 then var tradinglock 1
    if (%tradinglock = 0) then
    {
      #put #echo >Log [Train] Attempting to sell bundle.
      gosub TRADINGSELLLOGIC
    }
  }
  #TRADING_TASKS
  if (("%tradingtasks" = "YES") && ("$guild" = "Trader")) then
  {
    if $Trading.LearningRate > 33 then var tradinglock 1
    if $Trading.LearningRate < 4 then var tradinglock 0
    if $Trading.Ranks >= 1750 then var tradinglock 1
    if (%tradinglock = 0) then
    {
      gosub TASKLOGIC
    }
  }
  #HEALING
  if %selfheal = 1 then gosub HEALTHCHECK
  #APPFOCUS
  if %appfocusonly = 1 then
  { 
    if %appfocus = "YES" then
    {
      gosub APPFOCUSLOGIC
    }
  }
  #DEVOTION
  if %devotiononly = 1 then
  {
    gosub DEVOTIONLOGIC
    exit
  }
  #ALMANAC
  if %almanac = "YES" then
  {
    if %t >= %nextalmanac then
    {
      gosub ALMANACLOGIC
    }
  }
  #TEACHING
  if %teaching = "YES" then gosub TEACHINGLOGIC
  #PERFORMING_CLIMBING
  if ((%perform = "YES") || (%climbing = "YES") | (%climbingrope = "YES")) then
  {
    if ((%climbing = "YES") || (%climbingrope = "YES")) then
    {
      if ($Athletics.LearningRate < 20) then var athleticslock 0
      if ($Athletics.LearningRate = 34) then var athleticslock 1
      if ($Athletics.LearningRate >= 1750) then var athleticslock 1
      if (%athleticslock = 1) then gosub STOWITEM %climbingropename
    }
    else var athleticslock 1
    if $Performance.LearningRate < 20 then var performlock 0
    if $Performance.LearningRate = 34 then var performlock 1
    if $Performance.Ranks >= 1750 then var performlock 1
    if %perform = "NO" then var performlock 1
    if ((%performlock = 0) || (%athleticslock = 0)) then
    {
      gosub PERFORMLOOP
      goto OLDNONCOMBATLOOP
    }
    else
    {
      if %playing = 1 then
      { 
        gosub PLAYSTOP
        if ((matchre ("$righthand", "%instrument") || (matchre ("$lefthand", "%instrument"))) then
        {
          gosub STOWITEM %instrument
        }
      }
    }
  }
  #LOCKSMITHBOX
  if %locksmithbox = "YES" then
  {
    gosub LOCKSMITHLOGIC
    gosub STATUSCHECK
  }
  #SKINFATRAINER
  if %skinfatrainer = "YES" then
  {
    gosub SKINFATRAINERLOGIC
    gosub STATUSCHECK
  }
  #WINDBOARD
  if %windboard = "YES" then
  {
    if %buffing = 0 then
    {
      if ((%usingtactics != 1) && (%usingexpert != 1)) then
      {
        gosub WINDBOARDLOGIC
        gosub STATUSCHECK
      }
    }
  }
  #PERCEIVE_HEALTH
  if %perchealth = "YES" then
  {
    gosub PERCHEALTHLOGIC
    gosub STATUSCHECK
  }
  #ATTUNEMENT
  if %attune = "YES" then
  {
    gosub ATTUNELOGIC
	  gosub STATUSCHECK
  }
  #SPELLCASTING
	gosub MAINSPELLLOGICNC
	gosub STATUSCHECK
  #RESEARCH
	if ("%research" = "YES") then
  {
    if %casting != 1 then
    { 
      gosub RESEARCHLOGIC
    }
  }
	#SANOWRET
  if %noncomsanowret = "YES" then
  {
    gosub SANOWRETLOGIC
    gosub STATUSCHECK
  }
  #SANOWRET
  if %noncomsanowret = "YES" then
  {
    gosub SANOWRETLOGIC
    gosub STATUSCHECK
  }
  #TEXTBOOK
	if %textbook = "YES" then
	{
	  gosub TEXTLOGIC
    gosub STATUSCHECK
  }
  #HUNTING
	if %hunting = "YES" then
	{
	  gosub HUNTLOGIC
	  gosub STATUSCHECK
	}
  #COLLECTING
  if (%collect = "YES") then
  {
    gosub COLLECTLOGIC
    gosub STATUSCHECK
  }
  #ASTROLOGY
  if %astro = YES then
  {
    gosub ASTROLOGIC
    gosub STATUSCHECK
  }
  #SUMMONING
  if (($guild = "Warrior Mage") && (%summoning = "YES")) then
  {
    if %pathway = "YES" then
    {
      gosub PATHWAYLOGIC
      gosub STATUSCHECK
    }
  }
  pause 1
  gosub STATUSCHECK
  goto OLDNONCOMBATLOOP


#################################################


SCRIPTBEGINCHECKS:
  #STORAGE_CHECK
  if (%firststowall = 1) then
  {
    gosub STOWALL
    var firststowall 0
  }
  if (%firststoragecheck = 1) then
  {
    if ("%crafting" = "YES") then
    {
      var firststoragecheck 0
      gosub STORAGECHECKLOGIC
    }
  }
  if (("%armorcheck" = "YES") && (%firstarmorcheck = 0)) then
  {
    gosub ARMORCHECK
  }
  #FIRSTPERC
  if (%firstperc = 1) then
  {
    if ("$guild" = "Moon Mage") then
    {
      var mmnextperc %t
      math mmnextperc add 300
    }
    var firstperc 0
    gosub PERCSELF
  }
  #RELEASE_MANA_SPELLS
  if (%firstrel = 1) then
  {
    if (("$guild" = "Thief") || ("$guild" = "Barbarian")) then
    else
    {  
      if ("%spell" = "YES") then
      {
        if ((%spell1symb = "YES") || (%spell2symb = "YES") || (%spell3symb = "YES") || (%symbiosisbuff = "YES")) then
        {
          gosub SYMBCLEAR
        }
      }
      if ("%necrosafety" = "YES") then
      {
        if ($SpellTimer.RiteofGrace.active = 1) then
        {
          gosub RELMANA
          gosub RELSPELL
        }
        else gosub RELALL
      }
      else gosub RELALL
    }
    var firstrel 0
  }
  #AWAKE_AND_RPAS
  if (%firstawake = 1) then
  {
    gosub AWAKE
    var firstawake 0
    action (rpa) on
    put rpa check
    pause 1
    action (rpa) off
  }
  return


NEWAREADECISION:
  #MULTITRAIN
  if ("%multiarea" = "YES") then
  {
    gosub MULTITRAINLOGIC
  }
  if ((%autoupkeep = "YES") && (%buffingonly != 1) && (%scriptmode = 1)) then
  {
    gosub AUTOUPKEEPCHECKS
  }
  if ("%scriptareachange" != "0") then return
  if ("%scriptarea" = "0") then
  {
    if (%goupkeep = 1) then
    {
      if (("%autype" = "bleed") || ("%autype" = "wounds")) then
      {
        if (("$guild = "Empath") && ("$SpellTimer.Heal.active = 1)) then
        {
          var goupkeep 0
          return
        }
      }
      if ("%autype" = "poison") then
      {
        if (("$guild = "Empath") && ("$SpellTimer.FlushPoisons.active = 1)) then
        {
          var goupkeep 0
          return
        }
      }
      var scriptareachange upkeep
      return
    }
    if ("%noncombat" = "YES") then
    {
      gosub NEWNONCOMBATCHECKS
      if (%noncombatactive = 1) then
      {
        var scriptareachange noncombat
        return
      }
    }
    if (%noncombatactive != 1) then var scriptareachange combat
    else var scriptareachange noncombat
  }
  if ("%scriptarea" = "upkeep") then
  {
    if (%upkeepactive = 0) then
    {
      if ("%noncombat" = "YES") then
      {
        gosub NEWNONCOMBATCHECKS
        if (%noncombatactive = 1) then
        {
          var scriptareachange noncombat
          return
        }
      }
      var scriptareachange combat
      return
    }
    else return
  }
  if ("%scriptarea" = "noncombat") then
  {
    #echo noncombatactive: %noncombatactive
    if (%noncombatactive = 0) then
    {
      if (%goupkeep = 1) then
      {
        var scriptareachange upkeep
        return
      }
      var scriptareachange combat
      return
    }
    else
    {
      if (%goupkeep = 1) then
      {
        var noncombatactive 0
        var scriptareachange upkeep
        return
      }
    }
  }
  if ("%scriptarea" = "combat") then
  {
    if (%goupkeep = 1) then
    {
      var scriptareachange upkeep
      return
    }
    if ("%noncombat" = "YES") then
    {
      gosub NEWNONCOMBATCHECKS
      if (%noncombatactive = 1) then
      {
        var scriptareachange noncombat
        return
      }
    }
  }
  return


NEWNONCOMBATCHECKS:
  var noncombatactive 0
  var noncombatperformactive 0
  var noncombatburgleactive 0
  var noncombatsellactive 0
  var noncombattasksactive 0
  var noncombatstudyartactive 0
  var noncombatforgingactive 0
  #BURGLE_CHECKING
  if ("%burgle" = "YES") then
  {
    if (($Athletics.Ranks < 1750) || ($Locksmithing.Ranks < 1750) || ($Thievery.Ranks < 1750) || ($Stealth.Ranks < 1750)) then
    {
      if ((%t >= %nextburgle) && (%killbeforeleave != 0) then
      {
        gosub BURGLERECALL
        if (%t >= %nextburgle) then
        {
          var scriptareachange noncombat
          var noncombatactive 1
          var noncombatburgleactive 1
        }
      }
    }
    else
    {
      var noncombatburgleactive 0
    }
  }
  #PERFORM_CHECKING
  if ("%perform" = "YES") then
  {
    if ($Performance.LearningRate > 20) then var performlock 1
    if ($Performance.LearningRate < 4) then var performlock 0
    if ($Performance.Ranks >= 1750) then var performlock 1
    if (%performlock != 1) then
    {
      var scriptareachange noncombat
      var noncombatactive 1
      var noncombatperformactive 1
    }
  }
  #STUDY_ART
  if ("%studyart" = "YES") then
  {
    if $Scholarship.LearningRate > 33 then var scholarlock 1
    if $Scholarship.LearningRate < 11 then var scholarlock 0
    if $Scholarship.Ranks >= 1750 then var scholarlock 1
	  if %scholarlock != 1 then
	  {
	    var gametimetest $unixtime
	    math gametimetest subtract $lastartstudy
	    #put #echo t: %t
	    #put #echo nextartstudy: %nextartstudy
	    #put #echo unixtime: $unixtime
	    #put #echo gametimetest: %gametimetest
      if ((%t >= %nextartstudy) && (%gametimetest >= 1800)) then
      {
        var scriptareachange noncombat
        var noncombatactive 1
        var noncombatstudyartactive 1
      }
    }
  }
  #TRADING_SELL_TASKS
  if ("$guild" = "Trader") then
  { 
    #put #echo >Log Yellow tradingsell: %tradingsell
    if (("%tradingsell" = "YES") || ("%tradingtasks" = "YES")) then
    {
      if $Trading.LearningRate > 28 then var tradinglock 1
      if $Trading.LearningRate < 4 then var tradinglock 0
      if $Trading.Ranks >= 1750 then var tradinglock 1
      #put #echo >Log Yellow tradinglock: %tradinglock
      if (%tradinglock != 1) then
      {
        var scriptareachange noncombat
        var noncombatactive 1
        if (("%tradingsell" = "YES") && ("%tradingselltown" != "none")) then var noncombatsellactive 1
        if ("%tradingtasks" = "YES") then var noncombattasksactive 1
      }
    }
  }
  #CRAFT_CHECKING
  if ("%crafting" = "YES") then
  {
    #FORGING_CHECKING
    if ("%forging" = "YES") then
    {
      if ($Forging.LearningRate > 20) then var forginglock 1
      if ($Forging.LearningRate < 4) then var forginglock 0
      if ($Forging.Ranks >= 1750) then var forginglock 1
      if (%forginglock != 1) then
      {
        #if (%killbeforeleave != 0) then put #echo %alertwindow Yellow Decided to forge at Forging.LearningRate: $Forging.LearningRate
        var scriptareachange noncombat
        var noncombatactive 1
        var noncombatforgingactive 1
      }
    }
  }
  return


NEWAREAMOVEMENT:
  #put #echo Yellow NEWAREAMOVEMENT
  #put #echo scriptarea: %scriptarea
  #put #echo scriptareachange: %scriptareachange
  
  #JUST_CHECKING_AREA
  #put #echo Yellow scriptareachange: %scriptareachange
  if ("%scriptareachange" = "0") then
  {
    #put #echo Yellow scriptarea: %scriptarea
    #COMBAT_MOVEMENT
    if ("%scriptarea" = "combat") then
    {
      if ("%huntingarea" != "none") then
      {
        if (%huntingareamaze = 1) then
        {
          #put #echo Yellow zoneid: $zoneid  zone: %zone
          if ("$zoneid" = "%zone") then
          else
          {
            put #echo %alertwindow Script was in combat mode in a maze, but found itself in the wrong zone.  Moving back to hunting area.
            gosub ROOMTRAVELCOMBAT
            gosub STATUSCHECK
          }
        }
        else
        {
          #put #echo Yellow zoneid: $zoneid  zone: %zone
          #put #echo Yellow roomid: $roomid  findroomlist: %findroomlist
          if (("$zoneid" = "%zone") && (contains("|%findroomlist|", "|$roomid|"))) then
          else
          {
            put #echo %alertwindow Script was in combat mode, but found itself in the wrong zone or area.  Moving back to hunting area.
            gosub ROOMTRAVELCOMBAT
            gosub STATUSCHECK
          }
        }
      }
    }
    #NONCOMBAT_MOVEMENT
      #NEED_TO_ADD_ONGOING_MOVEMENT_CHECKS_FOR_NONCOMBAT
     
    #UPKEEP_MOVEMENT
    if ("%scriptarea" = "upkeep") then
    {
      if ("$zoneid" != "%upkeepzone") then
      {
        gosub ROOMTRAVELUPKEEP
      }
    }
  }
  else
  {
    #COMING_FROM_COMBAT
    if ("%scriptarea" = "combat") then
    {
      if ("%scriptareachange" = "noncombat") then
      {     
        #KILL_BEFORE_MOVE
        if ("%killbeforemove" = "YES") then
        {
          #CHECKING_FOR_MONSTERS
          if (%killbeforeleave = -1) then
          {
            gosub MONSTERARRAY
            if !matchre("%monsterarray", "%critters") then var killbeforeleave 1
            else
            {
              var killbeforeleave 0
              put #echo %alertwindow Waiting for kill before leaving for NonCombat.
            }
          }
          ##KILL_NEXT
          if (%killbeforeleave != 1) then return
          var killbeforeleave -1
          #put #echo %alertwindow [Train]: Ended Combat training.
        }
        else
        {
          #put #echo %alertwindow [Train]: Ended Combat training.
        }
      }
    }
    #COMING_FROM_UPKEEP
    if ("%scriptarea" = "upkeep") then
    {
      action (speech) on
      action (emote) on
      var upkeepactive 0
      var goupkeep 0
      gosub LEAVEROOM
      if ("%upkeeptown" = "fangcove") then
      {
        if (%fangcovevisit = 1) then
        {
          put #echo Yellow premium ring going back!
          gosub PREMIUMRINGBACK
          put #mapper reset
          pause 1
        }
        else
        {
          if (%fangcovevisit > 1) then
          {
            put #echo Yellow Going back through portal!
            gosub MOVE portal
            move go exit portal
          }
        }
      }
      put #echo %alertwindow [Train]: Completed Upkeep.
    }
    #COMING_FROM_NONCOMBAT
    if ("%scriptarea" = "noncombat") then
    {
      put #echo Yellow Noncombat ended!
      put #echo %alertwindow [Train]: Ended NonCombat training.
      if ("%sleepontravel" = "YES") then gosub DEEPSLEEP
    } 
    
    #GOING_TO_COMBAT
    if ("%scriptareachange" = "combat") then
    {
      if ("%scriptarea" = "0") then put #echo %alertwindow [Train]: Starting training in %scriptareachange.
      else put #echo %alertwindow [Train]: Transitioning to %scriptareachange from %scriptarea.
      var noncombatactive 0
      var scriptareachange 0 
      var scriptarea combat
      if ((%scriptmode != 3) && ("$guild" != "Barbarian") && ("$guild" != "Thief")) then
      {
        if (("$zoneid" = "%zone") && (contains("|%findroomlist|", "|$roomid|"))) then
        else
        {
          if (("%buff" = "YES") && (%buffnum > 0)) then
          {
            put #echo %alertwindow [Combat]: Buffing before combat.
            gosub BUFFINGONLYLOOP
          }
        }
      }
      if %rpastatus = 0 then gosub RPATOGGLE
      if ("%huntingarea" != "none") then
      {
        if (("$zoneid" != "%zone") || (!contains("|%findroomlist|", "|$roomid|"))) then
        {
          gosub ROOMTRAVELCOMBAT
          gosub STATUSCHECK
        }
      }
      gosub AWAKE
      return
    }
    #GOING_TO_NONCOMBAT
    if ("%scriptareachange" = "noncombat") then
    {
      if ("%scriptarea" = "0") then put #echo %alertwindow [Train]: Starting training in %scriptareachange.
      else put #echo %alertwindow [Train]: Transitioning to %scriptareachange from %scriptarea.
      
      var scriptareachange 0
      var scriptarea noncombat
      var noncombatactive 1
      #if (%rpastatus = 1) then gosub RPATOGGLE
      gosub NONCOMBATCHOOSE
      gosub NONCOMBATMOVEMENT
      return
    }
    #GOING_TO_UPKEEP
    if ("%scriptareachange" = "upkeep") then
    {
      if ("%scriptarea" = "0") then put #echo %alertwindow [Train]: Starting training in %scriptareachange.
      else put #echo %alertwindow [Train]: Transitioning to %scriptareachange from %scriptarea.
      var scriptareachange 0
      var scriptarea upkeep
      var goupkeep 0
      var upkeepactive 1
      #MESSAGING
      put #echo Yellow AUType: %autype
      if ("%autype" = "health") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to low health.
      if ("%autype" = "fire") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to being on fire.
      if ("%autype" = "burden") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to burden of %encumbrance.
      if ("%autype" = "bundle") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to lacking space for bundle.
      if ("%autype" = "gem") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to lacking gem pouches.
      if ("%autype" = "bleed") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to bleeding.
      if ("%autype" = "nerves") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to nerve damage.
      if ("%autype" = "poison") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to poison.
      if ("%autype" = "onfire") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to being on fire.
      if ("%autype" = "wounds") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to significant wounds.
      if ("%autype" = "hands") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to missing hand(s).
      if ("%autype" = "ammo") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to running out of ammo.
      if ("%autype" = "boxes") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to lacking space for boxes.
      if ("%autype" = "manual") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep due to manual trigger.
      if ("%autype" = "test") then put #echo %alertwindow [UPKEEP]: Started AutoUpkeep to test the route.
      if ("%sleepontravel" = "YES") then gosub DEEPSLEEP
      if (%rpastatus = 1) then gosub RPATOGGLE
    	if ($invisible = 1) then gosub RELINVIS
    	gosub LEAVEROOM
    	put #echo Yellow starting travel
    	gosub ROOMTRAVELUPKEEP
    	if ("$guild" = "Barbarian") then
      {
        gosub BERSERKSTOPALL
        gosub FORMSTOPALL
      }
      return
    }
  }
  return


BUFFINGONLYLOOP:
  var buffingonly 1
  if ("$guild" = "Thief") then
  {
    var khridebil NO
    gosub KHRILOGIC
    var khridebil $khridebil
  }
  if ("$guild" = "Barbarian") then gosub BARBBUFFLOGIC
  if (%firstperc = 1) then
  {
    var firstperc 0
    gosub PERCSELF
  }
  #NECROSAFETY
  if ($guild = "Necromancer") then
  {
    if ("%riteofgrace" = "YES") then
    {
      if ($SpellTimer.RiteofGrace.active != 1) then
      {
        if (%casting != 1) then  
        {
          gosub RELCYCLIC
          gosub PERCSELF
          var spellprepping rog
          var prepmana %rogprepmana
          var addmana 0
          var addmana 0
          var cycliccast 1
          var spellsymb 0
          var casting 1
          var scancel 0
          var prepped 0
          var charged 0
          var harnessed 0
          var nextcyc %t
          math nextcyc add 300
        }
      }
    }
  }
  if ("%necrosafety" = "YES") then
  {
    gosub JUSTICECHECK
    if (%justice = 1) then return
  }
  #OM   
  if %osrelmeraud = "YES" then
  {
    if %casting != 1 then
    {
      gosub OMLOGIC
      gosub STATUSCHECK
    }
  }
  #BUFFING
  if ((%casting != 1) && ($mana >= %minmana)) then gosub BUFFLOGIC
  gosub STATUSCHECK
  if (%anybuff = 0) then
  {
    gosub DEVICEBUFFLOGIC
    if (%scriptmode = 2) then goto DONEBUFFING
    if ((%scriptmode = 1) || (%scriptmode = 3)) then
    {
      var buffingonly 0
      return
    }
  }
  pause 1
  gosub STATUSCHECK
  goto BUFFINGONLYLOOP

DONEBUFFING:
  echo ===FINISHED BUFFING===
  put #flash
  put #play NewRank
  goto END


UPKEEPLOGIC:
  action (speech) off
  action (emote) off
  var upkeependroom $roomid
  var goodupkeep 0
  var startedoutside 0
  gosub UPKEEPSET
  if %goodupkeep != 1 then
  {
    if %autoupkeep = "YES" then
    {
      put #echo %alertwindow [UPKEEP]: Upkeep not started in a valid location!  Somewthing went wrong with AutoUpkeep!
    }
    else put #echo %alertwindow [UPKEEP]: Upkeep not started in a valid location!  Go to a town!
    return
  }
  gosub STOWALL
  #APPFOCUS
	if %appfocus = "YES" then
  {
    if ((%casting = 1) || ($preparedspell != "None")) then
    {
      gosub SPELLCANCEL
    }
    if ((%researching != 1) && (%rprojectactive != 1)) then gosub APPFOCUSLOGIC
  }
  #STOP_DROP_AND_ROLL
  if (%onfire = 1) then
  {
    gosub LIE
    gosub ROLL
    var onfire 0
    gosub STAND
  }
  #EMPATH_REGEN
  if ("%upkeepregen" = "YES") then
  {
    if ($SpellTimer.Regenerate.active = 0) then
    {
      if (%casting = 1) then
      {
        gosub RELSPELL
        gosub RELSYMBIOSIS
      }
      var spellprepping regenerate
      var prepmana %upkeepregenmana
      var addmana 0
      var casting 1
      gosub PREP
      pause 20
      gosub CAST
    }
    }
  }
  #AUTOPATH
  if ("$zoneid" = "150") then
  {
    if (("%autopath" = "YES") || ("%autopath" = "PREMIUM")) then
    {
      var didautopath 1
      gosub MOVE healer
      put join list
      waitfor Yrisa crosses $charactername's name from the list.
    }
    else var didautopath 0
  }
  else
  {
    if ("%autopath" = "YES") then
    {
      if ("%healer" != "none") then
      {
        gosub AUTOPATHLOGIC
      }
    }
  }
  #BUNDLES
  if ("%bundlesell" = "YES") then
  {
    if ("%furrier" != "none") then
    {
      var soldbundle 0
      gosub BUNDLESELL
    }
  }
  #COUNTING
  gosub COUNTCONTAINER
  #BUNDLEROPES
  if %bundlerope > 0 then
  {
    if %furrier != "none" then
    {
      gosub BUNDLEROPELOGIC
    }
  }
  if (($zoneid = 150) && ($roomid = 0)) then move out
  if %exchange = "YES" then gosub EXCHANGELOGIC
  if (%minmoney > 0) then gosub MINMONEYLOGIC
  #BUNDLEVAULT
  if ((%bundlevault = "YES") || (%gemvault = "YES")) then
  {
    if %hasvault = 1 then
    {
      if ("%vaulttown" != "%townname") then var hasvault -1
      else
      {
        if ((%tightbundlesnum > 0 ) || (%gemvault = "YES")) then
        {
          gosub VAULTLOGIC
          if (($zoneid = 150) && ($roomid = 0)) then move west
        }
      }
    }
  }
  #GEMPOUCH_SELLING
  if ("%gemsell" = "YES") then
  {
    if ("$guild" = "Trader") then
    {
      if ("%appraiser" != "none") then
      {
        var financedsell 0
        gosub GEMSELLLOGIC
      }
      else
      {
        if ("%financedappraiser" != "none") then
        {
          var financedsell 1
          gosub GEMSELLLOGIC
        }
      } 
    }
    else
    {
			if %financedappraiser != "none" then
			{
			  var financedsell 1
			  gosub GEMSELLLOGIC
      }
    }
  }
  #GEMPOUCHES
  if %gempouches > 0 then
  {
    put #echo Yellow appraiser: %appraiser
    if ("%appraiser" != "none") then
    {
      var pouchcount 0
      var gempouchesnum 0
      gosub GEMPOUCHCOUNT
      #put #echo Yellow Gempouchesnum: %gempouchesnum
      gosub GEMPOUCHLOGIC
    }
  }
  #NUGGET_SELLING
  if ("%nuggetsell" = "YES") then
  {
    if ("%appraiser" != "none") then gosub NUGGETSELLLOGIC
  }
  #BAR_SELLING
  if ("%barsell" = "YES") then
  {
    if ("%appraiser" != "none") then gosub BARSELLLOGIC
  }
  #REPAIR
  if ("%repair" = "YES") then gosub REPAIRLOGIC
  if (%minmoney > 0) then gosub MINMONEYLOGIC 
  if ($zoneid = 4) then
  {
    gosub MOVE crossing
  }
  #AMMUNITION
  if ("%ammobuy" = "YES") then
  {
    if (("%townname" = "%ammobuytown") && (%ammoroom != 0)) then gosub AMMOBUYLOGIC
  }
  #LOCKPICK_BUYING
  if ("%lockpickbuy" = "YES") then
  {
    if ("%lockpickbuytown" = "%townname") then
    {
      gosub LOCKPICKBUYLOGIC
    }
  }
  #BOX_POPPING
  if ("%boxpopping" = "YES") then
  {
    gosub BOXPOPPINGLOGIC
  }
  #CLERIC_RITUAL_STUFF
  if ((%incense > 0) && ($guild = "Cleric")) then
  {
    gosub CRITUALLOGIC
  }
  #DIRTSTACKER
  if (%upkeependroom != 0) then
  {
    if (%multizone = 1) then
		{
		  var upkeepzone %upkeependroomzone
		  gosub UPKEEPZONEMOVE
		}
    gosub MOVE %upkeependroom
    #DIRTCOLLECTING
    if ("%dirtstacker" = "YES") then
    {
      gosub DIRTSTACKERLOGIC
    }
  }
  #TITHING
  if ((%tithe = "YES") && ($guild = "Paladin")) then
  {
    if %almsbox = 1 then
    {
       gosub TITHELOGIC
    }
  }
  #WAITING_FOR_APPFOCUS
  if ("%appfocus" = "YES") then
  {
    #echo appfocusing: %appfocusing
    #echo appfocusdone: %appfocusdone
    if ((%appfocusing = 1) && (%appfocusdone != 1)) then
    {
      echo Waiting for Breakthrough.
      waitfor Breakthrough!  
    }
  }
  #REPORTING
  var outputtext Completed upkpeep
  if %didautopath = 1 then var outputtext %outputtext, healed at autopath
  if %repair = "YES" then
  {
    if %didrepair = 1 then var outputtext %outputtext, repaired items
    else 
    {
      if ((%mrep = "none" && (%lrep = none)) then var outputtext %outputtext, no repairer at this location
      else var outputtext %outputtext, unable to repair items
    }
  }
  if %bundlesell = "YES" then
  {
    if %soldbundle = 1 then var outputtext %outputtext, sold bundles
    else
    {
      if %furrier = "none" then var outputtext %outputtext, no furrier at this location
      else var outputtext %outputtext, no bundles to sell
    }
  }
  if ("%gemsell" = "YES") then
  {
    if (%soldgem = 1) then var outputtext %outputtext, sold gem pouches
    else
    {
      if ("$guild" = "Trader") then
      {
        if %appraiser = "none" then var outputtext %outputtext, no appraiser at this location
        else var outputtext %outputtext, no gem pouches to sell
      }
      else
      {
        if %financedappraiser = "none" then var outputtext %outputtext, no financed appraiser at this location
        else var outputtext %outputtext, no gem pouches to sell
      }
    }
  }
  if ("%nuggetsell" = "YES") then
  {
    if (%soldnugget = 1) then var outputtext %outputtext, sold non-valuable nuggets
    else
    {
      if %appraiser = "none" then var outputtext %outputtext, no appraiser at this location
      else var outputtext %outputtext, no nuggets to sell
    }
  }
  if ("%barsell" = "YES") then
  {
    if (%soldbar = 1) then var outputtext %outputtext, sold non-valuable bars
    else
    {
      if %appraiser = "none" then var outputtext %outputtext, no appraiser at this location
      else var outputtext %outputtext, no bars to sell
    }
  }
  if %bundlerope > 0 then
  {
    if %didgetrope = -1 then var outputtext %outputtext, no additional bundling ropes needed
    if %didgetrope = 0 then var outputtext %outputtext, unable to get bundling ropes
    if %didgetrope = 1 then var outputtext %outputtext, stocked up on bundling ropes
  }
  if %gempouches > 0 then
  {
    if %didgetpouch = -1 then var outputtext %outputtext, no additional gem pouches needed
    if %didgetpouch = 0 then var outputtext %outputtext, unable to get gem pouches
    if %didgetpouch = 1 then var outputtext %outputtext, stocked up on gem pouches
  }
  if ((%bundlevault = "YES") || (%gemvault = "YES")) then
  {
    if %hasvault = 0 then var outputtext %outputtext, no vault at this location
    if %hasvault = -1 then var outputtext %outputtext, not your vault town
    else
    {
      if %bundlevault = "YES" then
      {
        if %hasvaultedbundle = 1 then var outputtext %outputtext, vaulted bundles
        else var outputtext %outputtext, no bundles to vault
      }
      if %gemvault = "YES" then
      {
        if %hasvaultedgem = 1 then var outputtext %outputtext, vaulted gem pouches
        else var outputtext %outputtext, no gem pouches to vault
      }
    }
  }
  if (("%ammobuy" = "YES") && (%ammoroom != 0)) then
  {
    if (%boughtammo = 1) then var outputtext %outputtext, topped up on ammo
    else var outputtext %outputtext, did not need ammo
  }
  if ("%lockpickbuy" = "YES") then
  {
    if ("%lockpickbuytown" = "%townname") then
    {
      if (%boughtlockpick = 1) then var outputtext %outputtext, bought lockpicks
      else var outputtext %outputtext, did not need lockpicks
    }
    else var outputtext %outputtext, not your lockpick town
  }
  if ("%boxpopping" = "YES") then
  {
    if (%poppedboxes = 1) then var outputtext %outputtext, popped boxes
    if (%poppedboxes = 0) then var outputtext %outputtext, no boxes to pop
    if (%poppedboxes = -1) then var outputtext %outputtext, not a valid town to pop boxes in
  }
  if ((%exchange = "YES") && (%hasbank = 1)) then var outputtext %outputtext, exchanged extra cash
  if ((%minmoney > 0) && (%hasbank = 1)) then var outputtext %outputtext, deposited cash, kept MinMoney
  if (("$guild" = "Paladin") && (%tithe = "YES") && (%almsbox = 1)) then
  {
    if %tithesuccess = 1 then var outputtext %outputtext, successfully tithed
    else var outputtext %outputtext, unable to tithe
  }
  if ("%appfocus" = "YES") then
  {
    if %appfocusdone = 1 then var outputtext %outputtext, performed app focus
    else var outputtext %outputtext, app Focus not complete
  }
  var outputtext %outputtext.
  put #echo %alertwindow [UPKEEP]: %outputtext
  action (speech) on
  action (emote) on
  var upkeepactive 0
  return

UPKEEPSET:
  var townname none
  var mrep none
  var lrep none
  var furrier none
  var critual none
  var appraiser none
  var financedappraiser none
  var hasvault 0
  var hasbank 0
  var multizone 0
  var upkeependroom 0
  var thiefbin 0
  var pawnshop none
  var almsbox 0
  var ammoroom 0
  var hastasks 0
  var taskgiver 0
  var boxpoproom 0
  #CROSSING
  if (($zoneid = 1) || ($zoneid = 4)) then
  {
    var townname crossing
    var multizone 1
    var goodupkeep 1
    var mrep Catrox
    var mrepzone 1
    var lrep Catrox
    var lrepzone 1
    var furrier Falken
    var furrierzone 1
    var appraiser Dwarven appraiser
    var appraiserzone 1
    var healer Martyr
    var healerzone 1
    var critual Durantine
    var critualzone 1
    var hasvault 1
    var vaultzone 1
    var hasbank 1
    var bankzone 1
    var currency Kronar
    var upkeependroom 163
    var upkeependroomzone 1
    var thiefbin 1
    var pawnshop Cormyn
    var pawnzone 1
    var almsbox 1
    var almsboxzone 1
    var almsboxitem almsbox
    var townname crossing
    var ammoroom weapon
    var ammozone 1
    var lockpickroom locksmith
    var lockpickzone 1
    var hastasks
    var taskgiver Mags
    var boxpoproom 105
    var boxpopzone 1
  }
  #DIRGE
  if $zoneid = 13 then
  {
    var townname dirge
    var goodupkeep 1
    var mrep Catrox
    var mrepzone 1
    var lrep Catrox
    var lrepzone 1
    var furrier Tromlyn
    var appraiser Greyka
    var hasvault 1
    var hasbank 1
    var currency Kronar
    var upkeependroom 11
    var boxpoproom 176
  }
  #RIVERHAVEN
  if $zoneid = 30 then
  {
    var townname riverhaven
    var goodupkeep 1
    var mrep Unspiek
    var lrep Unspiek
    var furrier Fara
    var appraiser Anthelorm
    var appraiserzone 30
    var healer Fraethis
    var critual Cleric Shopord
    var hasbank 1
    var currency Lirum
    var upkeependroom 8
    var pawnshop Ioun
    var almsbox 1
    var almsboxitem almsbox
    var boxpoproom 272
    var lockpickroom locksmith
  }
  #ROSSMANS
  if $zoneid = 34a then
  {
    var townname rossman
    var furrier Drinak
    var appraiser Barberry
    var appraiserzone 34a
    var financedappraiser 
    var financedappraiserzone
    var currency Lirum
    var upkeependroom 2
    var boxpoproom 128
  }
  #LANGENFIRTH_THEREN
  if (($zoneid = 40) || ($zoneid = 42)) then
  {
    var townname theren
    var multizone 1
    var goodupkeep 1
    var mrep Dagul
    var mrepzone 42
    var lrep Dagul
    var lrepzone 42
    var furrier Dartrise
    var furrierzone 42
    var appraiser Gruk
    var appraiserzone 42
    var critual Nongwen
    var critualzone 42
    var healer Srela
    var healerzone 42
    var hasbank 1
    var bankzone 42
    var currency Lirum
    var hasvault 1
    var vaultzone 42
    var upkeependroom 32
    var upkeependroomzone 42
    var almsbox 1
    var almsboxzone 42
    var almsboxitem almsbox
    var boxpoproom 304
    var boxpopzone 42
  }
  #MOOSE_PARTY
  if (($zoneid = 47) || ($zoneid = 48)) then
  {
    var townname muspari
    var goodupkeep 1
    var mrep Fekoeti
    var lrep Bonze
    var healer Gaktrhn
    var hasvault 1
    var hasbank 1
    var upkeependroom 1
    var boxpoproom 131
  }
  #LETH
  if $zoneid = 61 then
  {
    var townname leth
    var goodupkeep 1
    var furrier Morikai
    var appraiser Ghendil
    var healer Arthianna
    var hasbank 1
    var currency Kronar
    var hasvault 1
    var upkeependroom 58
    var boxpoproom 227
  }
  #ILAYA
  if $zoneid = 112 then
  {
    var townname ilaya
    var goodupkeep 1
    var hasbank 1
    var currency Kronar
    var furrier Knain
    var appraiser Elven appraiser
    var upkeependroom 28
    var boxpoproom 190
  }
  #SHARD
  if (($zoneid = 66) || ($zoneid = 67) || ($zoneid = 68) || ($zoneid = 69)) then
  {
    var townname shard
    var multizone 1
    var goodupkeep 1
    var mrep Ylono
    var mrepzone 66
    var lrep Ylono
    var lrepzone 66
    var furrier Tremagis
    var furrierzone 66
    var appraiser Veilex
    var appraiserzone 67
    var financedappraiser Mhar
    var financedappraiserzone 68
    var healer Quentin
    var healerzone 67
    var critual Imadrail
    var critualzone 67
    var hasvault 1
    var vaultzone 67
    var hasbank 1
    var bankzone 67
    var currency Dokora
    var upkeependroom 25
    var upkeependroomzone 67
    var pawnshop Aelik
    var pawnzone 67
    var ammoroom general
    var ammozone 67
    var boxpoproom 382
    var boxpopzone 67
    var lockpickroom locksmith
    var lockpickzone 67
  }
  #RATHA
  if $zoneid = 90 then
  {
    var townname ratha
    var goodupkeep 1
    var mrep Krrikt'k
    var lrep Krrikt'k
    var furrier Lysskava'an
    var appraiser Mother Magpie
    var healer Onsuwayo
    var hasvault 1
    var hasbank 1
    var currency Lirum
    var upkeependroom 1
    var pawnshop Paedraig
    var ammoroom general
    var boxpoproom 558
  }
  #AESRY
  if $zoneid = 99 then
  {
    var townname aesry
    var goodupkeep 1
    var mrep Shh'yris
    var lrep Shh'yris
    var furrier Egani
    var appraiser Shoiya
    var healer Tanalae
    var hasvault 1
    var hasbank 1
    var currency Lirum
    var upkeependroom 1
    var boxpoproom 144
  }
  #KRESH    
  if $zoneid = 107 then
  {
    var townname merkresh
    var goodupkeep 1
    var mrep Diwitt
    var lrep Diwitt
    var furrier Scupper
    var hasbank 1
    var healer Yolesi
    var hasvault 1
    var currency Lirum
    var upkeependroom 17
    var boxpoproom 10
  }
  #HIB
  if $zoneid = 116 then
  {
    var townname hibarnhvidar
    var goodupkeep 1
    var mrep Ladar
    var lrep Ladar
    var furrier Vandorf
    var appraiser Rasiya
    var healer Shalvard
    var hasbank 1
    var currency Dokora
    var hasvault 1
    var upkeependroom 105
    var pawnshop Relf
    var boxpoproom 258
  }
  #RAVENS_POINT
  if $zoneid = 123 then
  {
    var townname ravenspoint
    var goodupkeep 1
    var furrier Stedh
    var appraiser Gimsta
    var hasbank 1
    var currency Dokora
    var upkeependroom 136
  }
  #BOAR_CLAN
  if $zoneid = 127 then
  {
    var townname boarclan
    var goodupkeep 1
    var mrep Tuzra
    var lrep Tuzra
    var hasbank 1
    var hasvault 1
    var furrier Gudthar
    var currency Dokora
    var upkeependroom 24
    var boxpoproom 523
  }
  #FANG_COVE
  if $zoneid = 150 then
  {
    var townname fangcove
    var goodupkeep 1
    #if $Time.isDay = 1 then
    #{
    #  if (($Time.timeOfDay = "dawn") || ($Time.timeOfDay = "dusk") || ($Time.timeOfDay = "early morning")} then 
    #  {
    #    var mrep repairman
    #    var lrep repairman
    #  }
    #  else
    #  {
    #    var mrep Lakyan
    #    var lrep Lakyan
    #  }
    #}
    #else
    #{
    #  var mrep repairman
    #  var lrep repairman
    #}
    var mrep Lakyan
    var lrep Lakyan
    if ($Time.isDay = 1) then
    {
      #($Time.timeOfDay = "dawn") || 
      if (($Time.timeOfDay = "dusk") || ($Time.timeOfDay = "early morning")} then
      {
        var furrier attendant
      }
      else var furrier Gorund
    }
    else var furrier attendant
    #else var furrier tanner
    var appraiser Wickett
    #if $Time.isDay = 1 then var appraiser Wickett
    #else var appraiser gemsmith
    var healer Yrisa
    var hasvault 1
    var hasbank 1
    var currency Dokora
    var boxpoproom 221
    var upkeependroom 7
  }
  #JEIHREM
  if ("$zoneid" = "90f") then
  {
    var townname jeihrem
    var goodupkeep 1
    var hasbank 1
    var hasvault 1
    var currency Lirum
    var upkeependroom 38
  }
  eval maxitemsrepair count("%repairlist","|")	
  var currentrepairitem -1
  return


MINMONEYLOGIC:
  var usedbank 0
  if (%hasbank = 1) then
  {
    if %multizone = 1 then
    {
      var upkeepzone %bankzone
      gosub UPKEEPZONEMOVE
    }
    gosub MOVE teller
    put deposit all %currency
    pause .5
    put withdraw %minmoney %minmoneytype %currency
    var usedbank 1
  }
  return

EXCHANGELOGIC:
  var didexchange 0
  if (%hasbank != 1) then return
  gosub WEALTHCHECK
  if (%multizone = 1) then
  {
    var upkeepzone %bankzone
    gosub UPKEEPZONEMOVE
  }
  gosub MOVE exchange
  if %currency != "Kronar" then
  {
    var excurrency %currency
    if %copperkro > 0 then
    {
      var examount %copperkro copper kronar
      gosub EXCHANGE
    }
    if %bronzekro > 0 then
    {
      var examount %bronzekro bronze kronar
      gosub EXCHANGE
    }
    if %silverkro > 0 then
    {
      var examount %silverkro silver kronar
      gosub EXCHANGE
    }
    if %goldkro > 0 then
    {
      var examount %goldkro gold kronar
      gosub EXCHANGE
    }
    #if %platinumkro > %minmoney then
    #{
    #  var examount %platinumkro
    #  math subtract examount %minmoney
    #  var examount %examount platinum kronar
    #  gosub EXCHANGE
    #}
  }
  if %currency != "Lirum" then
  {
    var excurrency %currency
    if %copperlir > 0 then
    {
      var examount %copperlir copper lirum
      gosub EXCHANGE
    }
    if %bronzelir > 0 then
    {
      var examount %bronzelir bronze lirum
      gosub EXCHANGE
    }
    if %silverlir > 0 then
    {
      var examount %silverlir silver lirum
      gosub EXCHANGE
    }
    if %goldlir > 0 then
    {
      var examount %goldlir gold lirum
      gosub EXCHANGE
    }
  }
  if %currency != "Dokora" then
  {
    var excurrency %currency
    if %copperdok > 0 then
    {
      var examount %copperdok copper dokora
      gosub EXCHANGE
    }
    if %bronzedok > 0 then
    {
      var examount %bronzedok bronze dokora
      gosub EXCHANGE
    }
    if %silverdok > 0 then
    {
      var examount %silverdok silver dokora
      gosub EXCHANGE
    }
    if %golddok > 0 then
    {
      var examount %golddok gold dokora
      gosub EXCHANGE
    }
  }
  return

AUTOPATHLOGIC:
  gosub HEALTHCHECK
  if %healthcheckgood != 1 then
  {
    var didautopath 1
    if ((matchre("$roomobjs" "%healer")) || (matchre("$roomdesc" "%healer")) || (matchre("$roomname" "%healer"))) then
    else
    {
      if %multizone = 1 then
      {
        var upkeepzone %healerzone
        gosub UPKEEPZONEMOVE
      }  
      #HEALER_MOVES
      if (($zoneid = 30) || ($zoneid = 42) || ($zoneid = 67)) then gosub MOVE healer
      else gosub MOVE %healer
      put #echo Yellow Healer: %healer
      if ((matchre("$roomobjs" "%healer")) || (matchre("$roomdesc" "%healer") || (matchre("$roomname" "%healer"))) then
      else
      {
        echo Something's wrong!  Can't find the healer!
        var didautopath 0
        return
      }
    }
    if ($zoneid = 1) then
    {
      var didautopath 1
      gosub MOVE healer   
      if (matchre("$roomobjs", "vela'tohr (\w+)")) then
      {
        put join list
        gosub TOUCHVELA $0
        match RETURN The last of your wounds knit shut, a cool wave of relief washing over you.
        matchwait 180
      }
      else
      {
        put join list
        waitfor Kaiva crosses your name off the waiting list.
      }
    }
    else
    {
      if (matchre("$roomobjs", "vela'tohr (\w+)")) then
      {
        gosub LIE
        gosub TOUCHVELA $0
        match RETURN The last of your wounds knit shut, a cool wave of relief washing over you.
        matchwait 180
      }
      else gosub HEALERUSE
    }
  }
  return


HEALERUSEP:
  pause
HEALERUSE:
  matchre HEALERUSEP %waitstring
  match RETURN Dokt gives you a quick glance, "Look fine to me, out with you now."
  match RETURN Quentin snickers at you.  "Get up, get up, go have yourself a birthday party 'cause you don't need healing!"
  match RETURN Quentin whispers, "Just between you and me and the Queen, I think you don't really need healing.  Are you just my friend or something?"
  match RETURN You sit up.
  put lie
  matchwait



#####LOCKSMITHING_LOGIC#####

BOXPOPPINGLOGIC:
  var poppedboxes -1
  if (%boxpoproom = 0) then return
  if ($roomid != %boxpoproom) then
  {
    if %multizone = 1 then
    {
      var upkeepzone %boxpopzone
      gosub UPKEEPZONEMOVE
    }
    gosub MOVE %boxpoproom
  }
  gosub BOXSTORAGECHECK
  if (%foundboxes = 1) then
  {
    var poppedboxes 1
    if (("$guild" != "Thief") && ("$guild" != "Barbarian") && ("%skeletonkey" != "YES")) then
    {
      echo boxpopbuff: %boxpopbuff
      if ("%boxpopbuff" != "none") then
      {
        if ("%boxpopbuff" = "drum") then
        {
          if (($SpellTimer.DrumsoftheSnake.active = 0) || ($SpellTimer.DrumsoftheSnake.duration < 2)) then
          {
            if %casting = 1 then
            {
              gosub RELSPELL
              gosub RELSYMBIOSIS
            }
            var spellprepping drum
            var prepmana %boxpopbuffprepmana
            var addmana %boxpopbuffaddmana
            var casting 1
            gosub CASTINGLOGIC
            waitfor You feel fully prepared to cast your spell.
            gosub CASTINGLOGIC
          }
        }
        if ("%boxpopbuff" = "hol") then
        {
          if (($SpellTimer.HandsofLirisa.active = 0) || ($SpellTimer.HandsofLirisa.duration < 2)) then
          {
            if %casting = 1 then
            {
              gosub RELSPELL
              gosub RELSYMBIOSIS
            }
            var spellprepping hol
            var prepmana %boxpopbuffprepmana
            var addmana %boxpopbuffaddmana
            var casting 1
            gosub CASTINGLOGIC
            waitfor You feel fully prepared to cast your spell.
            gosub CASTINGLOGIC
          }
        }
        if ("%boxpopbuff" = "mt") then
        {
          if (($SpellTimer.MachinistsTouch.active = 0) || ($SpellTimer.MachinistsTouch.duration < 2)) then
          {
            if %casting = 1 then
            {
              gosub RELSPELL
              gosub RELSYMBIOSIS
            }
            var spellprepping mt
            var prepmana %boxpopbuffprepmana
            var addmana %boxpopbuffaddmana
            var casting 1
            gosub CASTINGLOGIC
            waitfor You feel fully prepared to cast your spell.
            gosub CASTINGLOGIC
          }
        }
      }
    }
    if (("$guild" = "Thief") && ("%skeletonkey" != "YES")) then
    {
      gosub KHRISTOP
      gosub BOXPOPPINGKHRI
    }
    put #echo %alertwindow Yellow Box popping started.
    if ("%skeletonkey" != "YES") then gosub ARMORREMBOXPOP
    var boxindex 0
    var boxespoppedsession 0
    gosub BOXPOPPINGLOOP
    math boxespoppedtotal add %boxespoppedsession
    put #echo %alertwindow Yellow Box popping ended.  Boxes popped: %boxespoppedsession.  Total this session: %boxespoppedtotal.
    if (("$guild" = "Thief") || ("$guild" = "Barbarian") && ("%skeletonkey" != "YES")) then
    {
      if ("$guild" = "Thief") then
      {
        gosub KHRISTOP sight plunder safe focus hasten
      }
    }
  }
  else
  {
    var poppedboxes 0
  }
  if ("%skeletonkey" != "YES") then gosub ARMORCHECK
  if ($standing != 1) then gosub STAND
  return
  
 
BOXPOPPINGLOOP:
  if (%baddisarm != 1) then
  {
    var boxitem %boxes(%boxindex)
    gosub GETITEM my %boxitem from %boxstorage
    if ("$righthand" = "Empty") then
    {
      math boxindex add 1
      if %boxindex > 8 then return
      goto BOXPOPPINGLOOP
    }
  }
  if ("%skeletonkey" = "YES") then
  {
    gosub GETITEM my skeleton key
    gosub TAPSHORTEN $righthand
    gosub TURNSKELETONKEY %shorttap
    gosub STOWITEM my skeleton key
  }
  else
  {
    var baddisarm 0
    gosub DISARM
    if (%baddisarm = 1) then
    {
      gosub DISARM2
      goto BOXPOPPINGLOOP
    }
    gosub PICK
    if (%baddisarm = 1) then
    {
      gosub DISARM2
      goto BOXPOPPINGLOOP
    }
  }
  gosub OPENITEM my %boxitem
  gosub BOXCOINGET
  gosub BOXFILLPOUCH
  gosub BOXLOOTCHECK
  math boxespoppedsession add 1
  #pit
  if matchre ("$roomobjs", "(bucket|large stone turtle|disposal bin|waste bin|tree hollow|oak crate|firewood bin|ivory urn|trash receptacle|marble statue|pit)") then
	{
	  gosub PUTITEM my %boxitem in $1
	}
	else
	{
	  if ("%bucketitem" != "none") then
	  {
	    gosub PUTITEM my %boxitem in my %bucketitem
	    gosub PULLBUCKET
	  }
	  else gosub DISMANTLE
  }
  goto BOXPOPPINGLOOP
  

REPAIRLOGIC:
  var didrepair 0
  if ((%mrep = "none") && (%lrep = none)) then return
  var didrepair 1
  
  gosub STOWALL
  echo Repairing metal.
  var repairer %mrep
  if %multizone = 1 then var repairerzone %mrepzone
  gosub REPAIRMOVE
  gosub REPAIR
  if %mrep != "%lrep" then
  {
    echo Repairing leather.
    var repairer %lrep
    if %multizone = 1 then var repairerzone %lrepzone
    gosub REPAIRMOVE
    gosub REPAIR
  }
  gosub STOWALL
  #RECOVERY
  echo Recovering metal.
  var repairer %mrep
  if %multizone = 1 then var repairerzone %mrepzone
  gosub REPAIRMOVE
  
  if %repairer = "Lakyan" then
  {
    gosub TICKETLOOP repairman
    gosub TICKETLOOP Lakyan
  }
  else 
  {
    gosub TICKETLOOP %repairer
    if %mrep != "%lrep" then
    {
      echo Recovering non-metal.
      var repairer %lrep
      if %multizone = 1 then var repairerzone %lrepzone
      gosub REPAIRMOVE
      gosub TICKETLOOP %repairer
    }
    #else echo Metal repairer does everything!
  }
  if %repairer = "Ylono" then
  {
    put out
    put #mapper reset
    pause 2
  }
  return

REPAIR:
  gosub REPAIRMOVE
  gosub REPAIRALL
  var currentrepairitem -1
  gosub REPAIRLOOP
  return

REPAIRMOVE:
  if ((matchre("$roomobjs" "%repairer")) || (matchre("$roomdesc" "%repairer"))) then
  else
  {
    if ("%repairer" = "Lakyan") then
    {
      if ($roomid = 55) then return
    }
    if (%multizone = 1) then
    {
      var upkeepzone %repairerzone
      gosub UPKEEPZONEMOVE
    }
    #REPAIRER_MOVES
    if ("%repairer" = "Raven") then var gosub MOVE 318
    {
      else
      {
        if ("%repairer" = "Krrikt'k") then gosub MOVE 319
        else
        {
					if ("%repairer" = "repairman") then gosub MOVE 55
					else gosub MOVE %repairer
        }
      }
    }
    if %repairer = "Lakyan" then
    {
      if $roomid != 55 then
      {
        echo Something's wrong!  Can't find the repairer!
        var didrepair 0
        return   
      }
    }
    else
    {
      if ((matchre("$roomobjs" "%repairer")) || (matchre("$roomdesc" "%repairer"))) then
      else
      {
        echo Something's wrong!  Can't find the repairer!
        var didrepair 0
        return   
      }
    }
  }
  return

	
REPAIRALL:
  if $zoneid = 150 then
  {
    if matchre("$roomobjs" "repairman") then var actualrepairer repairman
    else
    {
      if matchre("$roomobjs" "Lakyan") then var actualrepairer Lakyan
      else
      {
        pause 60
        echo Waiting for Lakyan or the repairman.
        goto GIVETICKET
      }
    }
  }
  else var actualrepairer %repairer
  matchre RETURN I will not repair something that isn't broken.|There isn't a scratch on that|Lucky for you!  That isn't damaged!|
  match RETURN The apprentice repairman smiles and says, "Lucky for you!  That isn't damaged!"
  match REPAIRALL To whom are you speaking?
  matchre NOMONEY You will need more coin if I am to be repairing that\!|\S+ shakes his head with a sigh.  "Sorry, (madam|sir), but you don't have the coin for that."
  match REPAIRALLSTOW Please don't lose this ticket!
  put ask %actualrepairer about repair all
  put ask %actualrepairer about repair all
  matchwait
  
REPAIRALLSTOW:
  pause 1
  gosub STOWALL
  return
		
REPAIRLOOP:
  math currentrepairitem add 1
  if ((%currentrepairitem > %maxitemsrepair) || ("%repairlist" = "")) then
  {
    #echo No valid list.
    return
  }
  gosub WIELD right my %repairlist(%currentrepairitem)
  pause .5
  if ("$righthand" != "Empty") then goto REPAIRLIST
  goto REPAIRLOOP

REPAIRLISTP:
  pause
REPAIRLIST:
  if $zoneid = 150 then
  {
    if matchre("$roomobjs" "repairman") then var actualrepairer repairman
    else
    {
      if matchre("$roomobjs" "Lakyan") then var actualrepairer Lakyan
      else
      {
				echo Waiting for Lakyan or the repairman.
        pause 60
        goto REPAIRLIST
      }
    }
  }
  else var actualrepairer %repairer
  matchre REPAIRLISTP %waitstring
  matchre NOMONEY You will need more coin if I am to be repairing that!
  matchre REPAIRLISTSTOW I will not repair something that isn't broken|I'm sorry, but I don't work on those.|Lucky for you!  That isn't damaged!|Read the sign on the wall!|There isn't a scratch on that,|Read the hide on the wall, please|Please don't lose the ticket|Please don't lose this ticket|Read the sign please\!|The apprentice repairman frowns and says|\w+ smiles and says|Lakyan frowns and says, "I don't repair those here\."
  match REPAIRLIST What is it you're trying to give?
  put give %actualrepairer
  put give %actualrepairer
  matchwait 5
  var timeoutsub REPAIRLIST
  var timeoutcommand give %actualrepairer
	goto TIMEOUT


REPAIRLISTSTOW:
  gosub STOWALL
  goto REPAIRLOOP
		
TICKETLOOP:
  var ticketstring $0
  goto TICKETLOOPMAIN		
		
TICKETLOOPMAIN:
  #echo ticketstring: %ticketstring
  gosub GETITEM %ticketstring ticket
  if ((matchre("$righthandnoun", "ticket")) || (matchre("$righthandnoun", "ticket"))) then
  else
  {
    #echo No ticket!  Moving on.
    return
  }
  gosub REPAIRMOVE
  gosub GIVETICKET
  gosub CHECKITEM
  goto TICKETLOOPMAIN

GIVETICKET:
  if $zoneid = 150 then
  {
    if matchre("$roomobjs" "repairman") then var actualrepairer repairman
    else
    {
      if matchre("$roomobjs" "Lakyan") then var actualrepairer Lakyan
      else
      {
        pause 60
        echo Waiting for Lakyan or the repairman.
        goto GIVETICKET
      }
    }
  }
  else var actualrepairer %repairer
  matchre RETURN ^You hand (%repairer) your ticket and are handed back|After a moment, he returns and hands you
	matchre WAITREPAIR Well that is almost done|Well that isn't gonna be done for another|That's not ready yet
	match WAITREPAIR An apprentice repairman shakes his head.  "Sorry, sir, but I'm just heading out.  Mr. Osmandikar or Mr. Lakyan should be available to assist you shortly."
	match WAITREPAIR The apprentice repairman shakes his head.  "That's not ready yet, sir.  Check your ticket for the estimated time, and please be patient."
	matchre WAITREPAIR ^\w* smiles and says
	match GIVETICKET What is it you're trying to give?
	put give %actualrepairer
	matchwait

WAITREPAIR:
	pause 60
	goto GIVETICKET

CHECKITEM:
  action (sack) off
  if ("$righthandnoun" = "sack") then
  {		
		action (sack) on  
    put look in my large sack
    waitfor In the
    pause
    gosub Base.ListExtract sacklist NounList maxitemcount
    action (sack) off
    var itemcount 1
    goto SACKGETLOOP
  }
  else
  {
    gosub STOW right
    return
  }
  
SACKGETLOOP:
  if (%itemcount > %maxitemcount) then goto CHECKSOURCE
  #echo NounList: %NounList
  gosub GETITEM %NounList(%itemcount) from my large sack
  put wear my %NounList(%itemcount)
  pause .5
  math itemcount add 1
  goto SACKGETLOOP
	
CHECKSOURCE:
  match SACKDONE There is nothing in there.
  match Fail You glance 
  put look in my sack
  put glance
  matchwait

SACKDONE:
  gosub DUMPITEM sack
  return		

COUNTCONTAINER:
  action (bundles) var rummagetext $1 when You rummage (.+)
  gosub RUMMAGE %storage
  pause .5
  action (bundles) off
  eval bundropesnum count("%rummagetext","bundling rope")
  eval incensenum count("%rummagetext","incense")
  eval tightbundlesnum count("%rummagetext","tight bundle")
  eval gempouchesnum count("%rummagetext","gem pouch")
  #echo bundropesnum: %bundropesnum
  #echo tightbundlesnum: %tightbundlesnum
  #echo gempouchesnum: %gempouchesnum
  return

BUNDLESELL:
  #if (($Time.isDay != 1) && ($zoneid = 150)) then return
  var bundlefindname bundle
  gosub BUNDLEFIND
  if %foundbundle = 0 then return
  if ((matchre("$roomobjs" "%furrier")) || (matchre("$roomdesc" "%furrier"))) then
  else
  {
    if %multizone = 1 then
    {
      var upkeepzone %furrierzone
      gosub UPKEEPZONEMOVE
    }
    gosub MOVE bundle
  }
  if ((%appsaveitem = "lumpy") || (%appsaveitem = "tight")) then
  {
    var bundlesellstring bundle in %storage
    gosub BUNDLESELLLOOP
    var bundlefindname lumpy bundle in %storage
    #COUNTING_BUNDLES
    var lbundlecount 0
    var tbundlecount 0
    action (bundlecount) math lbundlecount add 1 when lumpy bundle
    action (bundlecount) math tbundlecount add 1 when tight bundle
    put inv %appsaveitemstorage
    pause 1
    action (bundlecount) off
    
    #REMOVING_BUNDLE_AND_SELLING

    if ((%appsaveitem = "tight") && (%tbundlecount != 0)) then
    {
      gosub REMITEM bundle
      gosub SELLITEM bundle
      gosub STOWALL
    }
    if ((%appsaveitem = "lumpy") && (%lbundlecount != 0)) then
    {
      gosub REMITEM bundle
      gosub SELLITEM bundle
      gosub STOWALL
    }
  }
  else
  {
    var bundlesellstring bundle
    gosub BUNDLESELLLOOP
  }
  return

BUNDLEFINDP:
  pause
BUNDLEFIND:
  matchre BUNDLEFINDP ...wait|type ahead|stunned|while entangled in a web
  matchre BUNDLEFINDYES You see
  matchre BUNDLEFINDNO I could not find what you were referring to.
  put look %bundlefindname
  matchwait

BUNDLEFINDYES:
  var foundbundle 1
  return
  
BUNDLEFINDNO:
  var foundbundle 0
  return

BUNDLEROPELOGIC:
  var didgetrope -1
  if %bundropesnum < %bundlerope then
  {
    var didgetrope 0
    var ropestoget %bundlerope
    math ropestoget subtract %bundropesnum
    if ((matchre("$roomobjs" "%furrier")) || (matchre("$roomdesc" "%furrier"))) then
    else
    {
      #if (($Time.isDay != 1) && ($zoneid = 150)) then return
      if %multizone = 1 then
      {
        var upkeepzone %furrierzone
        gosub UPKEEPZONEMOVE
      }
      gosub MOVE bundle
    }
    gosub BUNDLEROPEGETLOOP
    gosub STOWALL
  }
  return

CRITUALLOGIC:
  if ("$guild" != "Cleric") then return
  if ("%critual" = "none") then return
  var didgetinc -1
  if %incensenum < %incense then
  {
    var didgetinc 0
    var inctoget %incense
    math inctoget subtract %incensenum
    if ((matchre("$roomobjs" "%critual")) || (matchre("$roomdesc" "%critual"))) then
    else
    {
      if (($Time.isDay != 1) && ($zoneid = 150)) then return
      if %multizone = 1 then
      {
        var upkeepzone %critualzone
        gosub UPKEEPZONEMOVE
      }
      if %critual = "Imadrail" then gosub MOVE cleric shop
      else gosub MOVE %critual
    }
    var buytarget incense
    var buylooptotal %incense
    math buylooptotal subtract %incensenum
    var buyloopcount 0
    gosub BUYLOOP
  }
  return

AMMOBUYLOGIC:
  var boughtammo 0
  if %multizone = 1 then
	{
		var upkeepzone %ammozone
		gosub UPKEEPZONEMOVE
	}
	gosub MOVE %ammoroom
	pause .5
	gosub MOVE %ammoroom
	pause .5
  
  action var xbowtriggerlist %xbowtriggerlist|$1 when ^There are (.*) (%xbowammos) inside your.*\.
  action var bowtriggerlist %bowtriggerlist|$1 when ^There are (.*) (%bowammos) inside your.*\.
  action var slingtriggerlist %slingtriggerlist|$1 when ^There are (.*) (%slingammos) inside your.*\.

  gosub AMMOCOUNTTOTAL
  
  gosub BUYAMMOLOOP2 xbow
  gosub BUYAMMOLOOP2 bow
  gosub BUYAMMOLOOP2 sling
  
  #if %xbowtotalcount < %ammomin then
	#{
	#  put #echo Yellow Buying %xbowammos.
	#  gosub BUYAMMOLOOP %xbowammo
	#  var boughtammo 1
	#}
	#if %bowtotalcount < %ammomin then
	#{
	#  put #echo Yellow Buying %bowammos.
	#  gosub BUYAMMOLOOP %bowammo
	#  var boughtammo 1
	#}
	#if %slingtotalcount < %ammomin then
	#{
	#  put #echo Yellow Buying %slingammos.
	#  gosub BUYAMMOLOOP %slingammo
	#  var boughtammo 1
	#}
  
  return

AMMOCOUNTTOTAL:
  var xbowtriggerlist 0
  var bowtriggerlist 0
  var slingtriggerlist 0
  gosub COUNTCONTAINERAMMO %ammocontainer
  #put #echo xbowtriggerlist: %xbowtriggerlist
  #put #echo bowtriggerlist: %bowtriggerlist
  #put #echo slingtriggerlist: %slingtriggerlist
  gosub AMMOCONVERT xbow
  gosub AMMOCONVERT bow
  gosub AMMOCONVERT sling
  return

AMMOCONVERT:
  var ammotype $0
AMMOCONVERTMAIN:
  eval %ammotypetriggerlistcount count("%%ammotypetriggerlist", "|")
  var %ammotypecountloop 1
  var %ammotypetotalcount 0
  if (%%ammotypetriggerlistcount != 0) then 
  {
    gosub CONVERTANDADD
  }
  put #echo Yellow %ammotypetotalcount: %%ammotypetotalcount   AmmoMin: %ammomin
  return


LOCKPICKBUYLOGIC:
  var boughtlockpick 0
  if (%multizone = 1) then
	{
		var upkeepzone %lockpickzone
		gosub UPKEEPZONEMOVE
	}
	gosub MOVE %lockpickroom
  if ($zoneid = 67) then
  {
    if ($roomid != 383) then gosub MOVE %lockpickroom
  }
	
	gosub LOCKPICKCOUNT
  put echo lockpicksneeded: %lockpicksneeded
  if (%lockpicksneeded > 0) then gosub LOCKPICKBUY
	return

LOCKPICKBUY: 
  var lockbuycount 0
  goto LOCKPICKBUYLOOP
LOCKPICKBUYLOOP:
  if (%lockbuycount > %lockpicksneeded) then return
  gosub BUY %lockpickitem
  gosub PUTITEM my lockpick in my %lockpickstacker
  if (%putsucceed = 0) then
  {
    gosub DUMPITEM lockpick
    return
  }
  math lockbuycount add 1
  var boughtlockpick 1
  goto LOCKPICKBUYLOOP
  
LOCKPICKCOUNTP:
  pause
LOCKPICKCOUNT:
  var lockpicksneeded 0
  matchre LOCKPICKCOUNTP %waitstring
  matchre LOCKPICKCOUNTFULL The \w+ \w+ looks to be holding (\d+) lockpicks and it appears to be full\.
  matchre LOCKPICKCOUNTGOOD The \w+ \w+ looks to be holding (\d+) lockpicks and it might hold an additional (\d+)\.
  matchre LOCKPICKCOUNTEMPTY The \w+ \w+ is empty but you think (\d+) lockpicks would probably fit\.
  matchre LOCKPICKCOUNTBAD It looks like a \w+ \w+\.
  match BADLOCKPICKSTACKER I could not find what you were referring to.
  put appraise my %lockpickstacker
  matchwait 5
  var timeoutsub LOCKPICKCOUNT
  var timeoutcommand appraise my %lockpickstacker
	goto TIMEOUT
  
LOCKPICKCOUNTFULL:  
  var lockpickscurrent $1
  var lockpicksneeded 0
  return
  
LOCKPICKCOUNTGOOD:
  var lockpickscurrent $1
  var lockpicksneeded $2
  return

LOCKPICKCOUNTEMPTY:
  var lockpicktotal $1
  var lockpicksneeded %lockpicktotal
  return
  
LOCKPICKCOUNTBAD:
  var lockpicksneeded -1
  return

BADLOCKPICKSTACKER:
  put #echo %alertwindow [Upkeep]: Unable to find lockpick stacker.  Turning off lockpick buying!
  var lockpickbuy NO
  put #var lockpickbuy NO
  return

UPKEEPZONEMOVE:
  if $zoneid = %upkeepzone then return
  if (($zoneid = 1) && (%upkeepzone = 4)) then
  {
    gosub MOVE w gate
  }
  if (($zoneid = 4) && (%upkeepzone = 1)) then
  {
    gosub MOVE crossing
  }
  if (($zoneid = 40) && (%upkeepzone = 42)) then
  {
    gosub MOVE theren
  }
  if (($zoneid = 42) && (%upkeepzone = 40)) then
  {
    gosub MOVE gate
  }
  if (($zoneid = 66) && (%upkeepzone = 67)) then
  {
    gosub MOVE e gate
  }
  if (($zoneid = 66) && (%upkeepzone = 68)) then
  {
    gosub MOVE s gate
  }
  if (($zoneid = 67) && (%upkeepzone = 68)) then
  {
    gosub MOVE e gate
    gosub MOVE s gate
  }
  if (($zoneid = 67) && (%upkeepzone = 66)) then
  {
    gosub MOVE e gate
  }
  if (($zoneid = 68) && (%upkeepzone = 66)) then
  {
    gosub MOVE e gate
  }
  if (($zoneid = 68) && (%upkeepzone = 67)) then
  {
    gosub MOVE e gate
    gosub MOVE e gate
  }
  if (($zoneid = 69) && (%upkeepzone = 66)) then
  {
    gosub MOVE north gate
  }
  if (($zoneid = 69) && (%upkeepzone = 67)) then
  {
    gosub MOVE north gate
    gosub MOVE e gate
  }
  if (($zoneid = 69) && (%upkeepzone = 68)) then
  {
    gosub MOVE north gate
    gosub MOVE s gate
  }
  return

DIRTSTACKERLOGIC:
  gosub DIRTRUMMAGE
  if %dirtfull = 1 then return
  var forageitem dirt
  gosub FORAGE
  gosub PUTITEM my dirt in my %dirtstackeritem
  goto DIRTSTACKERLOGIC

GEMSELLLOGIC:
  #put #echo Yellow Selling gem pouches!
  var soldgem 0
  if ((matchre("$roomobjs" "%appraiser")) || (matchre("$roomdesc" "%appraiser"))) then
	else
	{
		if %multizone = 1 then
		{
		  if (%financedsell = 0) then var upkeepzone %appraiserzone
		  else var upkeepzone %financedappraiserzone
			gosub UPKEEPZONEMOVE
		}
		gosub MOVE gem
	}
	gosub GEMPOUCHSELL
	
	return

GEMPOUCHSELL:
  var pouchcount 0
  gosub GEMFINDFULLPOUCH
  if %pouchcount = 12 then return
  gosub GETITEM %pouchnum gem pouch from my %storage
  if $righthand != "Empty" then
  {
    var soldgem 1
    gosub SELLITEM gem pouch
    gosub DUMPITEM gem pouch
    goto GEMPOUCHSELL
  }
  else return
	
GEMPOUCHLOGIC:
  var didgetpouch -1
  if %gempouchesnum < %gempouches then
  {
    var didgetpouch 0
    var pouchestoget %gempouches
    math pouchestoget subtract %gempouchesnum
    if ((matchre("$roomobjs" "%appraiser")) || (matchre("$roomdesc" "%appraiser"))) then
    else
    {
      if %multizone = 1 then
      {
        var upkeepzone %appraiserzone
        gosub UPKEEPZONEMOVE
      }
      gosub MOVE gem
    }
    gosub GEMPOUCHGETLOOP
    gosub STOWALL
  }
  return


NUGGETSELLLOGIC:
  #put #echo Yellow Selling nuggets!
  var soldnugget 0
  if ((matchre("$roomobjs" "%appraiser")) || (matchre("$roomdesc" "%appraiser"))) then
	else
	{
		if %multizone = 1 then
		{
		  var upkeepzone %appraiserzone
			gosub UPKEEPZONEMOVE
		}
		gosub MOVE gem
	}
	gosub STOWALL
	var nuggetnum 0
	eval nuggetlistlength count("%nuggetmaterials", "|")
	gosub NUGGETSELL
	return

NUGGETSELL:
  if (%nuggetnum > %nuggetlistlength) then return
  gosub GETITEM %nuggetmaterials(%nuggetnum) nugget
  if ("$righthand" != "Empty") then
  {
    gosub SELLITEM %nuggetmaterials(%nuggetnum) nugget
    var soldnugget 1
    goto NUGGETSELL
  }
  math nuggetnum add 1
  goto NUGGETSELL


BARSELLLOGIC:
  #put #echo Yellow Selling bars!
  var soldbar 0
  if ((matchre("$roomobjs" "%appraiser")) || (matchre("$roomdesc" "%appraiser"))) then
	else
	{
		if %multizone = 1 then
		{
		  var upkeepzone %appraiserzone
			gosub UPKEEPZONEMOVE
		}
		gosub MOVE gem
	}
	gosub STOWALL
	var barnum 0
	eval barlistlength count("%nuggetmaterials", "|")
	gosub BARSELL
	return

BARSELL:
  if (%barnum > %barlistlength) then return
  gosub GETITEM %nuggetmaterials(%barnum) bar
  if ("$righthand" != "Empty") then
  {
    gosub SELLITEM %nuggetmaterials(%barnum) bar
    var soldbar 1
    goto BARSELL
  }
  math barnum add 1
  goto BARSELL


TITHELOGIC:
  var tithesuccess 0
  #GETTING_MONEY
  if %hasbank = 1 then
  {
    if %multizone = 1 then
    {
      var upkeepzone %bankzone
      gosub UPKEEPZONEMOVE
    }
    gosub MOVE teller
    put withdraw 5 silver %currency
    pause .5
  }
  else return
  
  if ((matchre("$roomobjs", "almsbox")) || (matchre("$roomobjs", "tithe box"))) then
  else
  {
    if %multizone = 1 then
    {
      var upkeepzone %almsboxzone
      gosub UPKEEPZONEMOVE
    }
    if $zoneid = 42 then gosub MOVE 201
    else gosub MOVE almsbox
  }
  gosub TITHE %currency %almsboxitem
  return

VAULTLOGIC:
  if matchre("$roomobjs", "uniformed Dwarven attendant") then
  else
  {
    if (%multizone = 1) then
    {
      var upkeepzone %vaultzone
      gosub UPKEEPZONEMOVE
    }
    gosub MOVE carousel
  }
  if (!matchre("$roomname", "Carousel")) then goto VAULTLOGIC
  var hasvaultsuccess 0
  gosub ENTERVAULT
  if %vaultsuccess = 1 then
  {
    var hasvaultedbundle 0
    var hasvaultedgem 0
    if %bundlevault = "YES" then gosub BUNDLESTORE
    if %gemvault = "YES" then gosub GEMPOUCHSTORE
  }
  gosub EXITVAULT
  return

GEMPOUCHSTORE:
  var pouchcount 0
  gosub GEMFINDFULLPOUCH
  if %pouchcount = 12 then return
  gosub GETITEM %pouchnum gem pouch from my %storage
  if $righthand != "Empty" then
  {
    var hasvaultedgem 1
    put put pouch in vault
    goto GEMPOUCHSTORE
  }
  else return
  

BUNDLESTORE:
  gosub GETITEM tight bundle from my %storage
  pause 1
  if matchre("$righthandnoun", "bundle") then
  {
    var hasvaultedbundle 1
    put put bundle in vault
  }
  else return
  goto BUNDLESTORE
  
BUNDLESELLLOOP:
  gosub GETITEM %bundlesellstring
  if ((matchre("$righthandnoun", "bundle")) || (matchre("$lefthandnoun", "bundle"))) then
  {
    gosub SELLITEM bundle
    if ((matchre("$righthandnoun", "bundle")) || (matchre("$lefthandnoun", "bundle"))) then
    {
      gosub WEARITEM bundle
      return
    }
  }
  else return
  if (("$righthand" != "Empty") || ("$lefthand" != "Empty")) then
  {
    gosub STOWALL
  }
  var soldbundle 1
  goto BUNDLESELLLOOP
  
NOMONEY:
  echo Out of cash!
  var didrepair 0
  return


PERFORMLOOP:
  #CYCLICS
  if %performcyclic = "YES" then
  {
    if %playing = 0 then
    {
      gosub SPELLCYCLOGIC
    }
    else
    {
      #echo NextCyc: %nextcyc
      #echo Time: %t
    }
  }
  else
  {
    if %cyclic = "YES" then
    {
      if %playing = 0 then
      {
        gosub SPELLCYCLOGIC
      }
      else
      {
        #echo NextCyc: %nextcyc
        #echo Time: %t
      }
    }
  }
  gosub STATUSCHECK
  #EILLIES_CRY
  if %eilliescry = "YES" then
  {
    if (($SpellTimer.EilliesCry.active != 1) || ($SpellTimer.EilliesCry.duration <= %buffbuffer)) then
    {
      if %casting != 1 then
      {
        if %playing != 1 then
        {
          var spellprepping ecry
          gosub SPELLSTATCHECK %spellprepping
          var prepmana %spellminmana  
          var addmana %eilliescrymanamana
          math addmana subtract %prepmana
	        var casting 1
	        var scancel 0
        }
      }
    }
    gosub STATUSCHECK
  }
  #ALMANAC
  if %almanac = "YES" then
  {
    if %t >= %nextalmanac then
    {
      gosub ALMANACLOGIC
    }
  }
  #TOME_OF_LORE
  if ("%tomeoflore" = "YES") then
  {
    gosub TOMEOFLORELOGIC
    gosub STATUSCHECK
  }
  #SANOWRET
  if %noncomsanowret = "YES" then
  {
    gosub SANOWRETLOGIC
    gosub STATUSCHECK
  }
  #ATTUNEMENT
  if %attune = "YES" then
  {
    if %playing = 0 then gosub ATTUNELOGIC
	}
	gosub STATUSCHECK
	if %instrumenthands = 1 then
	{
	  #LOCKSMITHBOX
		if %locksmithbox = "YES" then
		{
			gosub LOCKSMITHLOGIC
			gosub STATUSCHECK
		}
    gosub STATUSCHECK
    #TEXTBOOK
    if %textbook = "YES" then
    {
      if %performlock = 0 then 
      { 
        gosub TEXTLOGIC
      }
    }	
    gosub STATUSCHECK
  }
  #CLEANING
  if ((%instclean = "YES") && (%perform = "YES")) then
  {
    if ((%needscleaning = 1) || (%firstclean = 0)) then
    {
      #put #echo Yellow needscleaning: %needscleaning    firstclean: %firstclean
      #put #echo Yellow Playing: %playing
      if %playing = 0 then
      {
        gosub INSTMAINTAIN
        var firstclean 1
      }
    }
  }
  gosub STATUSCHECK
  #PERFORMING
  if %climbingropehum != "YES" then
  {
    if %perform = "YES" then
    {
      if %casting != 1 then
      {
        if %performlock != 1 then gosub PERFORMLOGIC
        else
        {
          if %athleticslock != 1 then gosub PERFORMLOGIC
        }
      }
    }
  }
  else
  {
    if %casting != 1 then
    {
      if %performlock = 1 then
      {
        if %playing = 0 then
        {
          if ((matchre ("$righthand", "%instrument")) || (matchre ("$lefthand", "%instrument"))) then
          {
            gosub STOWITEM %instrument
          }
          gosub HUM
        }
      }
      else gosub PERFORMLOGIC
    }
  }
  gosub STATUSCHECK
  #CLIMBING
  if %climbing = "YES" then
  {
    if %athleticslock = 0 then
    {
      gosub CLIMBPRACTICE
      #waitfor You finish practicing your climbing skill
    }
  }
  if %climbingrope = "YES" then
  {
    if %climbingropehum != "YES" then
    {
      if %athleticslock != 1 then
      {
        if ((matchre ("$righthand", "%climbingropename")) || (matchre ("$lefthand", "%climbingropename"))) then
        else
        {
          gosub GETITEM %climbingropename
          if ((matchre ("$righthand", "%climbingropename")) || (matchre ("$lefthand", "%climbingropename"))) then
          else
          {
            gosub GETITEM writhing rope
          }
        }
        if %playing = 1 then
        {
          var climbobject %climbingropename
          gosub CLIMBPRACTICE
        }
      }
    }
    else
    {
      if ((%performlock = 1) && (%athleticslock != 1)) then
      {
        if %humming = 1 then
        {
          if ((matchre ("$righthand", "%climbingropename")) || (matchre ("$lefthand", "%climbingropename"))) then
          else
          {
            gosub GETITEM %climbingropename
          }
          if %playing = 1 then
          {
            var climbobject %climbingropename
            gosub CLIMBPRACTICE
          }
        }
      }
    }
  }
  gosub STATUSCHECK
  #HUNTING
	if %hunting = "YES" then gosub HUNTLOGIC
	gosub STATUSCHECK
  #ASTROLOGY
  if %astro = YES then
  {
    if %playing = 0 then gosub ASTROLOGIC
  }
  gosub STATUSCHECK
  #SUMMONING
  if %pathway = "YES" then
  {
    if %playing = 0 then gosub PATHWAYLOGIC
  }
  gosub STATUSCHECK
  pause 1
  return
  

MTPERFORMLOOP:
  if (%noncombatperformactive = 1) then
  {
    var combatperforming 1
    gosub PERFORMLOOP
    var combatperforming 0
    if ($Performance.LearningRate > 33) then
    {
      var performlock 1
      var noncombatperformactive 0
      var combatperforming 0
      if ("%instclean" = "YES") then
      {
        gosub PLAYSTOP
        gosub INSTMAINTAIN
        var firstclean 1
      }
      gosub STOWALL
    }
  }
  if (%noncombatperformactive = 0) then return
  goto MTPERFORMLOOP

MTFORGING:
  var workorder 1
  var difficulty %forgingdifficulty
  var discipline %forgingdiscipline
  var material %forgingmaterial
  gosub CRAFTVARLOAD
  gosub AREAVARINIT
  gosub CRAFTINGSTART
  if (%workorderbail = 1) then return
  gosub CRAFTREPAIR
  if (%workorderbail = 1) then return
  put #echo Yellow Crafting %difficulty %discipline work order in %material.
  put #echo %alertwindow Yellow [Craft]: Crafting %difficulty %discipline work order in %material.
  goto MTFORGINGLOOP

MTFORGINGLOOP:
  gosub WORKORDER
  if (%workorderbail = 1) then return
  put #echo Yellow $Forging.LearningRate
  if (($Forging.LearningRate < 25) && ("%forging" = "YES")) then
  {
    gosub CRAFTVARLOAD
    goto MTFORGINGLOOP
  }
  else
  {
    gosub CRAFTINGEND
    var noncombatforgingactive 0
    return
  }
  

ALMANACLOGIC:
{
  if %aiming = 1 then return
  gosub GETITEM %almanacitem
  gosub STUDYALMANAC
  gosub STOWITEM %almanacitem
  return
}

APPFOCUSLOGIC:
  if %appfocusing = -1 then
  {
    gosub APPFOCUSCHECK
    pause 1
    if appfocusing = -1 then var appfocusing 0
  }
  if %appfocusing = 0 then
  {
    var appfocusdone 0
    gosub STOWALL
    gosub GETITEM %appfocusitem
    gosub RELALL
    gosub APPRAISEFOCUS
    gosub STOWALL
  }
  return
  
APPFOCUSCHECKP:
  pause
APPFOCUSCHECK:
  matchre APPFOCUSCHECKP ...wait|type ahead|stunned|while entangled in a web.
  matchre RETURN You are currently researching|You have completed research|You feel ready for any sort of appraisal focus.|You currently feel muddled|You are already under
  put appraise focus check
  matchwait

APPRAISEFOCUSP:
  pause
APPRAISEFOCUS:
  matchre APPRAISEFOCUSP ...wait|type ahead|stunned|while entangled in a web.
  matchre APPFOCUSGOOD You carefully examine|You resume focusing on
  matchre APPFOCUSBAD You can't seem to focus on that\.|You are already under|You can't seem to find much to focus your appraisal that way.
  put appraise focus %appfocusitem
  matchwait

APPFOCUSGOOD:
  var appfocusing 1
  return
  
APPFOCUSBAD:
  var appfocusing 0
  return


APPLOGIC:
  if (%buffing = 1) then return
  if ((%usingtactics = 1) || (%usingexpert = 1)) then return
  if (%retreatdelay = "YES") then
  {
    if %evenleastnum < 7 then return
  }
  if $Appraisal.LearningRate < 20 then var appraiselock 0
  if $Appraisal.LearningRate > 33 then var appraiselock 1
  if $Appraisal.Ranks >= 1750 then var appraiselock 1
  if %appraiselock = 0 then
  {
    if (%t >= %nextapp) then
    {
      if %appraisetarget = "bundle" then
      {
        if %appsaveitem != "none" then
        {
          gosub GETITEM %appsaveitem bundle in %appsaveitemstorage
        }
        if %appsaveitem != "none" then gosub APPRAISE %appsaveitem bundle quick
        else gosub APPRAISE bundle quick
        if $Appraisal.LearningRate > 33 then var appraiselock 1
        math nextapp set %t
        math nextapp add %appraisetimer
        if %appsaveitem != "none" then
        {
          gosub PUTITEM my %appsaveitem bundle in my %appsaveitemstorage
        }
      }
      if %appraisetarget = "creature" then
      {
      
        #echo Creature appraise!
        math nextapp set %t
        math nextapp add %appraisetimer
        gosub APPRAISECREATURE
        if $Appraisal.LearningRate > 33 then var appraiselock 1
      }
    }
  }
  return

ASSESSLOGIC:
  if (%t > %nextassess) then 
  {
    math nextassess set %t
    math nextassess add 12
    if ($Appraisal.LearningRate < 34) then gosub ASSESSINSTRUMENT
  }
  return

ASTROLOGIC:
  if "$guild" != "Moon Mage" then return
  if %t < %nextastro then return
  if $Astrology.Ranks >= 1750 then return
  if (($SpellTimer.PiercingGaze.active != 1) || ($SpellTimer.PiercingGaze.duration < 3)) then return
  if %checkastropool = 1 then
  {
    gosub ASTROCHECK
    var checkastropool 0
  }
  if ((%obsready = 1) && (%predict != 1)) then 
  {
    if %foundbody != 1 then
    {
      gosub FINDBODY
      if %astro != "YES" then return
      gosub BODYSORT
    }
    var badobserve 0
    gosub OBSERVE
    if %badobserve = 1 then
    {
      var badobserve 0
      return
    }
    if %checkastropool = 1 then goto ASTROLOGIC
    var nextastro %t
    math nextastro add %astrotimer
  }
  if %predict = 1 then
  {
    if $Astrology.LearningRate < 21 then gosub ALIGN
    else
    {
      var nextastro %t
      math nextastro add 600
    }
  }
  return



ATTUNELOGIC:
  if $Attunement.LearningRate < 20 then var attunelock 0
  if $Attunement.LearningRate > 33 then var attunelock 1
  if $Attunement.Ranks >= 1750 then var attunelock 1
  if $charactername = "Eyuve" then
  {
    if $Attunement.LearningRate < 32 then var attunelock 0
  }
  if %attunelock = 1 then return 
  #echo nextperc: %nextperc
  #echo t: %t
  if %t >= %nextperc then
  {
    if (("$guild" = "Moon Mage") || ("$guild" = "Trader")) then 
    {
      #if %t > %mmnextperc then
      #{
      #  var mmnextperc %t
      #  math mmnextperc add 300
      #  gosub PERC
      #}
      #else gosub PERCLUNAR
      gosub PERCLUNAR
    }
    else gosub PERC
    math nextperc set %t
    math nextperc add 62
  }
	return


BURGLELOGIC:
  var justice 1
  var burgleready 0
  var grabs 0
  var moves 0
  var arrested 0
  var footsteps 0
  var burglelootlist 0
  unvar direction(0)
  unvar direction(1)
  unvar direction(2)
  unvar direction(3)
  unvar direction(4)
  unvar direction(5)
  unvar direction(6)
  unvar direction(7)
  unvar direction(8)
  unvar direction(9)
  unvar direction(10)
  unvar direction(11)
  unvar direction(12)
  unvar reverse(0)
  unvar reverse(1)
  unvar reverse(2)
  unvar reverse(3)
  unvar reverse(4)
  unvar reverse(5)
  unvar reverse(6)
  unvar reverse(7)
  unvar reverse(8)
  unvar reverse(9)
  unvar reverse(10)
  unvar reverse(11)
  unvar reverse(12)
  unvar priorexit(kitchen)
  unvar priorexit(bedroom)
  unvar priorexit(workroom)
  unvar priorexit(sanctum)
  unvar priorexit(kitchen)
  unvar priorexit(armory)
  unvar priorexit(library)
        
  gosub BURGLERECALL
  put #echo burgleready: %burgleready
  if (%burgleready = 0) then goto BURGLEEND
  gosub JUSTICECHECK
  if %justice != 1 then goto BURGLEEND
  gosub STOWALL
  gosub STOWFEET
  if ("$guild" = "Thief") then gosub BURGLEKHRI
  if ("$guild" = "Moon Mage") then gosub BURGLERFCAST
  if ("$guild" = "Necromancer") then gosub BURGLEEOTBCAST
  gosub BURGLETOOLGET
  gosub BURGLEGUARDCHECK
  if (%scriptmode = 4) then gosub UPKEEPSET
  gosub BURGLE
  if %justice != 1 then goto BURGLEEND
  if %arrested != 0 then goto ARRESTED
  gosub STOWALL
  gosub BURGLELOOP
  gosub BURGLELEAVE
  if %arrested = 0 then gosub BURGLEEXIT
  if %arrested = 0 then
  {
    goto BURGLEEND
  }
  else goto ARRESTED

BURGLEPAWNLOGIC:
  if ("%burglelootlist" = "0") then
  {
    var burglepawnsold -1
    return
  }
  var burglepawnsold 0
  eval burglelootlistnum count("%burglelootlist", "|")
  put #echo Yellow burglelootlist: %burglelootlist
  echo burglelootlistnum: %burglelootlistnum
  if (%pawnshop = "none") then var burglepawnsold -2
  else
  {
    if ("%sleepontravel" = "YES") then gosub DEEPSLEEP
    gosub NEWTOWNPRESET %pawntown pawn
    gosub ROOMTRAVEL
    var pawncounter 0
    var burglepawnsold 0
    var pawntotal 0
    gosub STOWALL
    gosub BURGLEPAWN
  }
  return

BURGLEPAWN:
  if (%pawncounter > %burglelootlistnum) then return
  gosub GETITEM %burglelootlist(%pawncounter) from %burglestorage
  if ("$righthand" != "Empty") then
  {
    gosub SELLITEM %burglelootlist(%pawncounter)
    if ("$righthand" != "Empty") then
    {
      gosub DUMPITEM $righthandnoun
    }
    else var burglepawnsold 1
  }
  math pawncounter add 1
  goto BURGLEPAWN
  
BURGLEEND:
	if ("$guild" = "Thief") then gosub BURGLEKHRISTOP
	if ($invisible = 1) then gosub RELINVIS
  if (%justice != 1) then
  {
    put #echo %alertwindow [Burgle]: Unable to burgle, not in a justice zone.
    return
  }
  if %burgleready = 0 then
  {
    put #echo %alertwindow [Burgle]: Unable to burgle, still on cooldown.
    return
  }
  var burgletext Burgled using a %burgletoolchosen for %grabs grabs
  if ("%burgleloot" = "YES") then
  {
    if ("%burglelootlist" != "0") then
    {
      if ("%burglepawn" = "YES") then gosub BURGLEPAWNLOGIC
      eval finds count("%burglelootlist", "|")
      math finds add 1
      var burgletext %burgletext and %finds finds.
      var burgletext %burgletext  Found %burglelootlist.
      echo burglepawn: %burglepawn
      if ("%burglepawn" = "YES") then
      {
        echo burglepawnsold: %burglepawnsold
        if (%burglepawnsold = 1) then
        {
          math totalburgle add %pawntotal
          var burgletext %burgletext  Pawned for %pawntotal, with a total of %totalburgle this session. 
        }
        if %burglepawnsold = 0 then var burgletext %burgletext  Failed to pawn for an unknown reason.
        if %burglepawnsold = -1 then var burgletext %burgletext  No loot to pawn.
        if %burglepawnsold = -2 then var burgletext %burgletext  No pawn shop present in this zone to sell at.
      }        
    }
    else
    {
      else var finds 0
      var burgletext %burgletext and nothing found.
    }
  }
  else var burgletext %burgletext.  No loot was kept.
  put #echo %alertwindow [Burgle]: %burgletext
  #if %arrested = 1 then
  #{
  #  pause 2
  #  put #echo %alertwindow Yellow [Burgle]: Arrested!  You plead guilty and your fine was %fine.
  #}
  #if %arrested = 2 then
  #{
  #  put #echo %alertwindow Yellow [Burgle]: Arrested by clan justice and had your hand chopped off!
  #}
  return


BURGLEGUARDCHECK:
  if matchre("$roomobjs","(%guards)") then
  {
    gosub MOVEANYROOM
  }
  else return
  goto BURGLEGUARDCHECK


BURGLETOOLGET:
  if ($Locksmithing.Ranks >= 1750) then var burgletoolchosen rope
  else
  {
    if ($Athletics.Ranks >= 1750) then var burgletoolchosen pick
  }
  if ("%burgletool" = "rope") then var burgletoolchosen rope
  if ("%burgletool" = "pick") then var burgletoolchosen pick
  if ("%burgletool" = "both") then
  {
    if ($Locksmithing.LearningRate < $Athletics.LearningRate) then var burgletoolchosen pick
    else var burgletoolchosen rope
  }
  if ("%burgletoolchosen" = "pick") then
  {
    if ("%burglepickworn" != "YES") then
    {
      var burgletoolchosen pick
      gosub GETITEM %burglepickitem
      if ("$righthandnoun" != "lockpick") then
      {
        put #echo %alertwindow Yellow Could not get the lockpick for burgling!  Please investigate!
      }
    }
  }
  if ("%burgletoolchosen" = "rope") then 
  {
    var burgletoolchosen rope
    gosub GETITEM %burgleropeitem
    if ("$righthandnoun" != "rope") then
    {
      put #echo %alertwindow Yellow Could not get the rope for burgling!  Please investigate!
    }
  }
  return
  

BURGLELOOP:
  if (%grabs >= %burglemaxgrabs) then var footsteps 1
  if ("%burglehide" = "YES") then
  {
    if (($invisible = 0) && ($hidden = 0)) then gosub HIDE
  }
  if (%footsteps = 1) then return
  if (%arrested = 1) then return
  if ("%burglehide" = "YES") then gosub HIDE
  gosub BURGLESEARCH
  if (%grabs >= %burglemaxgrabs) then var footsteps 1
  if (%footsteps = 1) then return
  if (%arrested = 1) then return
  gosub BURGLEMOVE
  if (%footsteps = 1) then return
  if (%arrested = 1) then return
  goto BURGLELOOP
  
BURGLEMOVE:
  if ("%footsteps" = 1) then return
  var priorgrab %moves
  var roomexits 0
  math moves add 1
  pause 0.1        
  if (($north = 1) && ("%reverse(%priorgrab)" != "north") && !matchre("%priorexit(%room)","north")) then
  {
    var direction(%moves) north
    var reverse(%moves) south
    var priorexit(%room) north|%priorexit(%room)
    var roomexits 1
  }
  if (($east = 1) && ("%reverse(%priorgrab)" != "east") && (%roomexits = 0) && !matchre("%priorexit(%room)","east")) then
  {
    var direction(%moves) east
    var reverse(%moves) west
    var priorexit(%room) east|%priorexit(%room)
    var roomexits 1
  }
  if (($south = 1) && ("%reverse(%priorgrab)" != "south") && (%roomexits = 0) && !matchre("%priorexit(%room)","south")) then
  {
    var direction(%moves) south
    var reverse(%moves) north
    var priorexit(%room) south|%priorexit(%room)
    var roomexits 1
  }
  if (($west = 1) && ("%reverse(%priorgrab)" != "west") && (%roomexits = 0) && !matchre("%priorexit(%room)","west")) then
  {
    var direction(%moves) west
    var reverse(%moves) east
    var priorexit(%room) west|%priorexit(%room)
    var roomexits 1
  }
  if (($northeast = 1) && ("%reverse(%priorgrab)" != "northeast") && (%roomexits = 0) && !matchre("%priorexit(%room)","northeast")) then
  {
    var direction(%moves) northeast
    var reverse(%moves) southwest
    var priorexit(%room) northeast|%priorexit(%room)
    var roomexits 1
  }
  if (($northwest = 1) && ("%reverse(%priorgrab)" != "northwest") && (%roomexits = 0) && !matchre("%priorexit(%room)","northwest")) then
  {
    var direction(%moves) northwest
    var reverse(%moves) southeast
    var priorexit(%room) northwest|%priorexit(%room)
    var roomexits 1
  }
  if (($southeast = 1) && ("%reverse(%priorgrab)" != "southeast") && (%roomexits = 0) && !matchre("%priorexit(%room)","southeast")) then
  {
    var direction(%moves) southeast
    var reverse(%moves) northwest
    var priorexit(%room) southeast|%priorexit(%room)
    var roomexits 1
  }
  if (($southwest = 1) && ("%reverse(%priorgrab)" != "southwest") && (%roomexits = 0) && !matchre("%priorexit(%room)","southwest")) then
  {
    var direction(%moves) southwest
    var reverse(%moves) northeast
    var priorexit(%room) southwest|%priorexit(%room)
    var roomexits 1
  }
  if (%roomexits = 0) then
  {
    if %moves = 1 then
    {
      echo north: $north
      echo northeast: $northeast
      echo east: $east
      echo southeast: $southeast
      echo south: $south
      echo southwest: $southwest
      echo west: $west
      echo northwest: $northwest
      echo direction: %direction
      echo reverse: %reverse
      echo room: %room
      echo priorgrab: %priorgrab
      echo reverse(priorgrab): %reverse(%priorgrab)
      echo priorexit(%room): %priorexit(%room)
      var footsteps 1
      put #echo %alertwindow Yellow [Burgle]: Did not find a valid exit in the first room!  Please investigate!
      return
    }
    else
    {
      var direction(%moves) %reverse(%priorgrab)
      var reverse(%moves) %direction(%priorgrab)
      var priorexit(%room) %reverse(%priorgrab)|%priorexit(%room)
    }
  }
  if $hidden != 1 then gosub MOVEROOMS %direction(%moves)
  else gosub SNEAKROOMS %direction(%moves)
  return

 
BURGLELEAVEP:
  pause 
BURGLELEAVE:
  if $hidden = 1 then gosub UNHIDE
  if %arrested != 0 then return
  pause .1
  if matchre("$roomname", "Kitchen") then return
  pause 0.1        
  gosub MOVEROOMS %reverse(%moves)
  math moves subtract 1
  goto BURGLELEAVE
 

BURGLESEARCH:
  gosub BURGLESTEAL
  if ("%burgleloot" = "YES") then
  {
    if ("$righthand" != "Empty") then
    {
      gosub TAPSHORTEN $righthand
      gosub PUTITEM my %shorttap in my %burglestorage
      if ("$righthand" = "Empty") then var
      {
        if ("%burglelootlist" = "0") then var burglelootlist %shorttap
        else var burglelootlist %burglelootlist|%shorttap
      }
      else
      {
        gosub DROPITEM $righthandnoun
        put #echo %alertwindow Yellow Unable to stow some loot during burgling.
        put #flash
        put #play JustArrived
      }
    }
  }
  #if %burglekeeplist != "none" then
  #{
  #  eval burglekeeplistnum count("%burglekeeplist", "|")
  #  var burglekeepcounter 0
  #  gosub MISCGET
  #}
  if ("$righthand" != "Empty") then gosub DROPITEM $righthandnoun
  if ("$lefthand" != "Empty") then gosub DROPITEM $lefthandnoun
  return

BURGLEKEEPLISTCHECK:
  if %burglekeepcounter > %burglekeeplistnum then return
  if matchre ("$righthand", "%burglekeeplist(%burglekeepcounter)") then
  {
    
  }
  math miscgetcounter add 1
  goto BURGLEKEEPLISTCHECK


ARRESTED:
  action (arrest) off
  if ($zoneid = 1) then var arresttown Crossing
  #if ($zoneid = 67) then var arresttown Leth
  #if ($zoneid = 67) then var arresttown Riverhaven
  #if ($zoneid = 67) then var arresttown Therenborough
  #if ($zoneid = 67) then var arresttown Fornsted
  #if ($zoneid = 67) then var arresttown Throne City
  if ($zoneid = 67) then var arresttown Shard
  put #echo %alertwindow Yellow [Justice]: Arrested in %arresttown!
  if ("%arrestaction" = "logout") then
  {
    put #echo %alertwindow Yellow You were arrested!  Logging out!
    put quit
    exit
  }
  if (%arrested = 1) then
  {
    matchre ARRESTEDPLEA ^The eyes of the court|\[PLEAD INNOCENT or PLEAD GUILTY\]|Your silence shall be taken|How do you plead
    matchwait
  }
  if (%arrested = 2) then
  {
    #clan_justice
    put #echo %alertwindow Yellow [Justice]: Arrested by clan justice and had your hand chopped off!
  }
  exit
  
ARRESTEDPLEAP:
  pause
ARRESTEDPLEA:
    matchre ARRESTEDPLEAP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
    #matchre ARRESTEDEND ^After a weighty pause\,
    match ARRESTEDPAID The bailiff rifles through your coin purse, taking out what you owe before handing it over to you with the rest of your things.
    match ARRESTEDNOTPAID The bailiff rifles through your coin purse briefly, until it is obvious you do not have the necessary cash.  He tosses it back to you.
    put plead guilty
    matchwait

ARRESTEDNOTPAID:
  #put #echo Yellow fine: %fine
  gosub MOVE teller
  gosub COINWITHDRAW %fine copper
  gosub MOVE debt
  gosub DEBTPAY %fine
  gosub MOVE guard
  gosub GETITEM $charactername sack
  put #echo %alertwindow Yellow [Justice]: Pled guilty.  Withdrew money to pay your fine of %fine.
  if ("$righthand" = "small sack") then goto ARRESTEDRECOVER
  else goto ARRESTEDFAIL

ARRESTEDFAIL:
  put #echo %alertwindow Yellow Failure to recover after being arrested!  Emergency!
ARRESTEDFAIL2:
  put #echo Yellow ===FAILED TO RECOVER FROM ARREST!===
  put #flash
  put #play Advance
  pause 5
  goto ARRESTEDFAIL2

ARRESTEDPAID:
  put #echo %alertwindow Yellow [Justice]: Pled guilty.  Paid your fine of %fine automatically.
  goto ARRESTEDRECOVER
  
ARRESTEDRECOVER:
  gosub OPENITEM my sack
  action (sack) on
  var sacklist -1
  gosub LOOKSACK
  pause 1
  #put #echo sacklist: %sacklist
  gosub Base.ListExtract sacklist NounList maxitemcount
  action (sack) off
  #put #echo sacklist: %sacklist
  #put #echo maxitemcount: %maxitemcount
  if (%sacklist != -1) then
  {
    var itemcount 1
    gosub ARRESTSACKGETLOOP
    var jailsackclean 0
  }
  gosub ARRESTSACKCHECK
  if (%jailsackclean = 0) then goto ARRESTEDPAID
  gosub DUMPITEM small sack
  put #echo %alertwindow Yellow [Justice]: Gear reacquired.  Restarting training.
  goto ARRESTEDRESTART
  
ARRESTEDRESTART:
  put .train %1 %2
  exit

LOOKSACK:
  match RETURN There is nothing in there.
  match RETURN In the
  put look in my small sack
  matchwait
  
    
ARRESTSACKGETLOOP:
  if (%itemcount > %maxitemcount) then return
  #echo NounList: %NounList
  gosub GETITEM %NounList(%itemcount) from my small sack
  gosub STOWITEM my %NounList(%itemcount)
  #put wear my %NounList(%itemcount)
  pause .5
  math itemcount add 1
  goto ARRESTSACKGETLOOP

ARRESTSACKCHECK:
  match ARRESTSACKCHECKRETURN There is nothing in there.
  match RETURN You glance 
  put look in my small sack
  put glance
  matchwait

ARRESTSACKCHECKRETURN:
  var jailsackclean 1
  return

BURGLEKHRI:
  if %burglekhrihasten = "YES" then
  {
    if $SpellTimer.KhriHasten.active != 1 then
    {
      gosub KHRI hasten
    }
  }
  if %burglekhriplunder = "YES" then
  {
    if $SpellTimer.KhriPlunder.active != 1 then
    {
      gosub KHRI plunder
    }
  }
  if %burglekhrisilence = "YES" then
  {
    if $SpellTimer.KhriSilence.active != 1 then
    {
      gosub KHRI silence
    }
  }
  if %burglekhrislight = "YES" then
  {
    if $SpellTimer.KhriSlight.active != 1 then
    {
      gosub KHRI slight
    }
  }
  if %burglekhrisight = "YES" then
  {
    if $SpellTimer.KhriSight.active != 1 then
    {
      gosub KHRI sight
    }
  }
  return

BURGLERFCAST:
  if ("%burglerf" = "YES") then
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

BURGLEEOTBCAST:
  if %burgleeotb = "YES" then
  {
    if (($SpellTimer.EyesoftheBlind.active = 0) || ($SpellTimer.EyesoftheBlind.duration < 2)) then
    {
      if %casting = 1 then
      {
        gosub RELSPELL
        gosub RELSYMBIOSIS
      }
      var spellprepping eotb
      var prepmana 5
      var addmana 0
      var casting 1
      gosub PREP
      pause %burgleeotbdelay
      gosub CAST
    }
  }
  return  
  
BURGLEKHRISTOP:
  if $SpellTimer.KhriPlunder.active = 1 then
  {
    gosub KHRISTOP Plunder
  }
  if $SpellTimer.KhriSilence.active = 1 then
  {
    gosub KHRISTOP Silence
  }
  if $SpellTimer.KhriSlight.active = 1 then
  {
    gosub KHRISTOP Slight
  }
  if %khrihasten != "YES" then
  { 
    if $SpellTimer.KhriHasten.active = 1 then
    {
      gosub KHRISTOP Hasten
    }
  }
  return

TRADINGSELLLOGIC:
  #put #echo >Log Yellow Tradingsell logic sub!
  if $Trading.LearningRate > 28 then var tradinglock 1
	if $Trading.LearningRate < 4 then var tradinglock 0
  if $Trading.Ranks >= 1750 then var tradinglock 1
  #put #echo >Log tradinglock: %tradinglock
  if (%tradinglock = 1) then
  {
    #BANK
    gosub MINMONEYLOGIC
    action (speech) on
    action (emote) on
    return
  }
  #put #echo >Log Before upkeepset
  gosub UPKEEPSET
  gosub STOWALL
  action (speech) off
  action (emote) off
  #put #echo >Log hasvault: %hasvault
  if (%hasvault != 1) then 
  {
    put #echo %alertwindow No vault is recognized in this town, so TradingSell cannot be completed!
    return
  }
  #put #echo >Log vaulttown: %vaulttown     townname: %townname
  if ("%vaulttown" != "%townname") then
  {
    put #echo %alertwindow Your vault is not set to be in this town, so TradingSell cannot be completed!
    return
  }
  else
  {
    if matchre("$roomobjs", "uniformed Dwarven attendant") then
    else
    {
      if %multizone = 1 then
      {
        var upkeepzone %vaultzone
        gosub UPKEEPZONEMOVE
      }
      gosub MOVE carousel
    }
    var hasvaultsuccess 0
    gosub ENTERVAULT
    if %vaultsuccess = 1 then
    {
      gosub GETITEM bundle from vault
      pause 1
      echo righthand: $righthand
      if ("$righthand" = "Empty") then
      {
        gosub GETITEM gem pouch from vault
        pause 1
        echo righthand: $righthand
        if ("$righthand" = "Empty") then
        {
          put #echo %alertwindow No bundles or pouches could be found, so TradingSell cannot be completed!  Turning off TradingSell.
          var tradingsell NO
          put #var tradingsell NO
          put #var save
          gosub EXITVAULT
          return
        }
      }
    }
    gosub EXITVAULT
    if (($zoneid = 150) && ($roomid = 0)) then move west
  }
  #put #echo >Log [Trading] Attempting to sell bundle or pouch.
  #BUNDLE_SELLING
  if ("$righthandnoun" = "bundle") then
  {
    if %furrier != "none" then
    {
      if ((matchre("$roomobjs" "%furrier")) || (matchre("$roomdesc" "%furrier"))) then
      else
      {
        if %multizone = 1 then
        {
          var upkeepzone %furrierzone
          gosub UPKEEPZONEMOVE
        }
        gosub MOVE bundle
      }
      put #echo >Log [Trading] Selling bundle.
      gosub SELLITEM bundle
      if ("$righthand" = "bundling rope") then gosub DUMPITEM bundling rope
    }
  }
  #GEMPOUCH_SELLING
  if ("$righthandnoun" = "pouch") then
  {
    if (%appraiser != "none") then
    {
      put #echo Yellow Selling gem pouches!
      var soldgem 0
      if ((matchre("$roomobjs" "%appraiser")) || (matchre("$roomdesc" "%appraiser"))) then
      else
      {
        if %multizone = 1 then
        {
          var upkeepzone %appraiserzone
          gosub UPKEEPZONEMOVE
        }
        gosub MOVE gem
      }
      put #echo >Log [Trading] Selling gem pouch.
      gosub GEMPOUCHSELL
    }
  }
  goto TRADINGSELLLOGIC
  

STUDYARTLOGIC:
  var artrooms 534|535|536|537|538
  eval artroomslen count("%artrooms", "|")
  var artroomscounter 0
  put #echo %alertwindow [Noncombat]: Studying art in Raven's Court.
  gosub ARTMOVELOOP
  var nextartstudy %t
  math nextartstudy add 108000
  put #var lastartstudy $unixtime
  return
  

TASKLOGIC:
  if $Trading.LearningRate > 33 then var tradinglock 1
	if $Trading.LearningRate < 4 then var tradinglock 0
  if $Trading.Ranks >= 1750 then var tradinglock 1
  if (%tradinglock = 1) then
  {
    var noncombattasksactive 0
    return
  }
  var forageitem 0
  var foragezone 7
  var forageroom 556
  gosub STOWALL
  gosub TASKFIND
  if (%forageitem = 0) then
  {
    gosub DEEPSLEEP
    gosub TASKMOVE
    gosub TASKASK
    pause 1
  }
  if ("%forageitem" = "branche") then var forageitem branch
  if ("%forageitem" = "berrie") then var forageitem berries
  if (matchre("%forageitem", "(\w+) branches")) then var forageitem $1 branch
  if (matchre("%forageitem", "(\w+) leave")) then var forageitem $1 leaf
  if (matchre("%forageitem", "riolur leaf")) then var forageitem riolur leaves
  if (matchre("%forageitem", "%badforagelist")) then
  {
    #put #echo >Log [Mags]: Bad ForageItem: %forageitem
    gosub TASKMOVE
    gosub TASKCANCEL
    goto TASKLOGIC
  }
  put #echo Yellow Quantity: %quantity
  put #echo Yellow Forageitem: %forageitem
  put #echo >Log [Mags]: ForageItem: %forageitem
  gosub CUSTOMFORAGEROOMS
  if ("$zoneid" != "%foragezone") then
  {
    if ("%foragezone" = "1") then gosub TRAVEL crossing
    if ("%foragezone" = "7") then gosub TRAVEL arthe
  }
  if ($roomid != %forageroom) then gosub MOVE %forageroom
  gosub AWAKE
  var heldquantity 0
  var foragesuccess 0
  gosub TASKFORAGELOOP
  if (%foragesuccess != 1) then
  {
    put #echo Yellow >Log [Mags]: Failed to forage %forageitem!
    gosub TASKMOVE
    gosub TASKCANCEL
    goto MAINLOOP
  }
  gosub TASKMOVE
  var givingdone 0
  gosub AWAKE
  gosub TASKGIVELOOP
  goto TASKLOGIC
  

CUSTOMFORAGEROOMS:
  if ("%forageitem" = "briarberry root") then
  {
    var foragezone 7
    var forageroom 116
  }
  if ("%forageitem" = "tea leaf") then
  {
    var foragezone 7
    var forageroom 313
  }
  return

COLLECTLOGIC:
  #put #echo Yellow Collectlogic
  if (%retreatdelay = "YES") then
  {
    if %evenleastnum < 7 then return
  }
  if ($Outdoorsmanship.LearningRate > 32) then var outdoorlock 1
  if ($Outdoorsmanship.LearningRate < 20) then var outdoorlock 0
  if ($Outdoorsmanship.Ranks >= 1750) then var outdoorlock 1
  if (%outdoorlock = 0) then
  {
    if (%t >= %nextcollect) then
    {
      math nextcollect set %t
  	  math nextcollect add %collecttimer
      gosub COLLECT
      if ($Outdoorsmanship.LearningRate > 33) then var outdoorlock 1
      #gosub KICK
    }
  }
  return


DBALOGIC:
  if %dbanum = 1 then var dbachoice 1
  else
  {
    if %dbanum = 2 then
    {
      if %dbanext = 1 then
      {
        var dbachoice 1
        var dbanext 2
      }
      else
      {
        var dbachoice 2
        var dbanext 1
      }
    }
    else
    {
      if %dbanext = 1 then
      {
        var dbachoice 1
        var dbanext 2
      }
      else
      {
        if %dbanext = 2 then
        {
          var dbachoice 2
          var dbanext 3
        }
        else
        {
          if %dbanext = 3 then
          {
            var dbachoice 3
            var dbanext 1
          }
        }
      }
    }
  }
  var spellprepping %dbaspell%dbachoice
  gosub SPELLSTATCHECK %spellprepping
  if (("%tattoo" = "YES") && ("%tattootype" = "runic") && ("%spellprepping" = "%tattoospell) then
  {
    var prepmana %tattooprepmana
    var tattoocast 1
  }
  else var prepmana %spellminmana  
  var addmana %dbaspell%dbachoicemana
  math addmana subtract %prepmana
  
  if ("%spellprepping" = "dr") then var tmcast 1
  var spellsymb 0
  var casting 1
  var scancel 0
  var prepped 0
  var charged 0
  var harnessed 0
  return 

EJOURNALLOGIC:
{
  #echo gametime: $gametime
  #echo nextejournal: $nextejournal
  if $gametime >= $nextejournal then  
  {
    gosub ESTATETEST
    #echo totalstates: %totalstates
    if %totalstates >= %ejournalstates then
    {
      gosub STOWALL
      gosub GETITEM %ejournalitem
      var ejournalused 0
      gosub WRITEJOURNAL
      if %ejournalused = 1 then
      {
        put #echo %alertwindow Used Epistemic Journal.
        var nextejournal $gametime
        math nextejournal add 86400
        put #var nextejournal %nextejournal
      }
      gosub STOWITEM %ejournalitem
    }
  }
  return
}

ESTATETEST:
  var totalstates $Alchemy.LearningRate
  math totalstates add $Appraisal.LearningRate
  math totalstates add $Arcana.LearningRate
  math totalstates add $Athletics.LearningRate
  math totalstates add $Attunement.LearningRate
  math totalstates add $Augmentation.LearningRate
  math totalstates add $Bow.LearningRate
  math totalstates add $Brawling.LearningRate
  math totalstates add $Brigandine.LearningRate
  math totalstates add $Chain_Armor.LearningRate
  math totalstates add $Crossbow.LearningRate
  math totalstates add $Debilitation.LearningRate
  math totalstates add $Defending.LearningRate
  math totalstates add $Enchanting.LearningRate
  math totalstates add $Engineering.LearningRate
  math totalstates add $Evasion.LearningRate
  math totalstates add $First_Aid.LearningRate
  math totalstates add $Forging.LearningRate
  math totalstates add $Heavy_Thrown.LearningRate
  math totalstates add $Large_Blunt.LearningRate
  math totalstates add $Large_Edged.LearningRate
  math totalstates add $Light_Armor.LearningRate
  math totalstates add $Light_Thrown.LearningRate
  math totalstates add $Locksmithing.LearningRate
  math totalstates add $Mechanical_Lore.LearningRate
  math totalstates add $Melee_Mastery.LearningRate
  math totalstates add $Missile_Mastery.LearningRate
  math totalstates add $Offhand_Weapon.LearningRate
  math totalstates add $Outdoorsmanship.LearningRate
  math totalstates add $Outfitting.LearningRate
  math totalstates add $Parry_Ability.LearningRate
  math totalstates add $Perception.LearningRate
  math totalstates add $Performance.LearningRate
  math totalstates add $Plate_Armor.LearningRate
  math totalstates add $Polearms.LearningRate
  math totalstates add $Primary_Magic.LearningRate
  math totalstates add $Scholarship.LearningRate
  math totalstates add $Shield_Usage.LearningRate
  math totalstates add $Skinning.LearningRate
  math totalstates add $Slings.LearningRate
  math totalstates add $Small_Blunt.LearningRate
  math totalstates add $Small_Edged.LearningRate
  math totalstates add $Sorcery.LearningRate
  math totalstates add $Staves.LearningRate
  math totalstates add $Stealth.LearningRate
  math totalstates add $Summoning.LearningRate
  math totalstates add $Tactics.LearningRate
  math totalstates add $Targeted_Magic.LearningRate
  math totalstates add $Thievery.LearningRate
  math totalstates add $Twohanded_Blunt.LearningRate
  math totalstates add $Twohanded_Edged.LearningRate
  math totalstates add $Utility.LearningRate
  math totalstates add $Warding.LearningRate
  return
  
TARANTULALOGIC:
  if %aiming = 1 then return
  if %t >= %nexttarantula then
  {
    #echo tskill: %tskill
    math tskill add 1
    if %tskill > 2 then var tskill 1
    #echo tskill: %tskill
    gosub GETITEM %tarantulaitem
    gosub TARANTULATURN
    if %turngood = 0 then goto TARANTULALOGIC
    gosub TARANTULARUB
    var nexttarantula %t
    math nexttarantula add 610
    gosub STOWITEM %tarantulaitem
  }
  return 

  
HUNTLOGIC:
  if ((%usingtactics = 1) || (%usingexpert = 1)) then return
  if $Perception.LearningRate > 32 then var perclock 1
  if $Perception.LearningRate < 20 then var perclock 0
  if $Perception.Ranks >= 1750 then var perclock 1
  if %perclock = 0 then
  {
    if (%t >= %nexthunt) then
    {
      math nexthunt set %t
      math nexthunt add %huntingtimer
      gosub HUNT
    }
  }
  return
  
NVSTEALTHLOGIC:
  if $monstercount > 0 then
  {
    gosub STEALTHCHECK
    #gosub ARMORCHECK
    if (%usingstealth = 1) then
    {
      gosub HIDELOGIC
      gosub UNHIDE
    }
  }
  return
  
NVTACTICSLOGIC:
  if $monstercount > 0 then
  {
    if %tacticslock = 1 then
    {
      if $Tactics.LearningRate < 20 then
      {
        var tacticslock 0
        if $stamina < 80 then var tmaneuver bob
        else var tmaneuver circle
        gosub NVTACTICS
      }
    }
    else
    {
      if $Tactics.LearningRate = 34 then var tacticslock 1
      else
      {
        if $stamina < 80 then var tmaneuver bob
        else var tmaneuver circle
        gosub NVTACTICS
      }
    }
  }
  return  

OMLOGIC:
  if (($SpellTimer.OsrelMeraud.active != 1) || ($SpellTimer.OsrelMeraud.duration <= 20)) then
  {
    var spellprepping om
    var prepmana %omprepmana
    var addmana %omaddmana
    var spellsymb 0
    var casting 1
    var scancel 0
    var prepped 0
    var charged 0
    var harnessed 0
    return
  }  
  #OMBUFFS
  if $SpellTimer.OsrelMeraud.active = 1 then
  {
    if %ombuffnum > 0 then
    {
      var buffing 0
      var ombuffloop 0
      gosub OMBUFFINGLOOP
    }
  }
  return

ICUTULOGIC:
  #echo t: %t
  #echo nextiztouch: %nextiztouch
  if %t >= %nextiztouch then
  { 
    #echo SpellTimer.IcutuZaharenela.active: $SpellTimer.IcutuZaharenela.active
    if $SpellTimer.IcutuZaharenela.active = 1 then
    {
      if $Targeted_Magic.LearningRate > 33 then var targetlock 1
      if $Targeted_Magic.LearningRate < 20 then var targetlock 0
      if $Targeted_Magic.Ranks >= 1750 then var targetlock 1
      if $Empathy.LearningRate > 33 then var empathylock 1
      if $Empathy.LearningRate < 20 then var empathylock 0
      if $Empathy.Ranks >= 1750 then var empathylock 1
      if ((%targetlock = 0) || (%empathylock = 0)) then
      {
        #echo mana: $mana
        #echo minmana: %minmana
        if $mana >= %minmana then
        {
          if %avoidshock = "YES" then
          {
            #echo GoodTarget: %goodtarget    CurrentCritter: %currentcritter    ShockCritter: %shockcritter
            if %goodtarget = 0 then gosub TARGETSELECT
            if %shockcritter != 1 then 
            {
              gosub ICUTUTOUCHING
            }
          }
          else
          {
            gosub ICUTUTOUCHING
          }
        }
      }
    }
  }
  return

MANIPLOGIC:
  if $Empathy.LearningRate > 33 then var empathylock 1
  if $Empathy.LearningRate < 20 then var empathylock 0
  if $Empathy.Ranks >= 1750 then var empathylock 1
  if %empathylock = 1 then return
  else
  {
    if %t > %nextlootmanip then
    {
      var deadcheck 1
      var nextlootmanip %t
      math nextlootmanip add 60
    }
    if %t > %nextmanip then
    {
      gosub MONSTERARRAY
      eval malength count("%monsterarray", "|")
      var manipcount 0
      var mlcounter 0
      gosub MANIPLOOP
      if %manipcount > 0 then
      {
        var manipadj first
        var maniptarget %mon1
        gosub MANIPULATE
        if %manipcount > 1 then
        {
          if %mon1 = %mon2 then var manipadj second
          else var manipadj first
          var maniptarget %mon2
          gosub MANIPULATE
        }
        var nextmanip %t
        math nextmanip add 75
        var justmanipulated 1
      }
      gosub TARGETSELECT
    }
  }
  return
 
MANIPLOOP:
  if %mlcounter > %malength then return
  if %manipcount > 1 then return
  eval montest element("%monsterarray", %mlcounter)
  if ((matchre ("%montest", "%ritualcritters")) && (!matchre ("%montest", "%allundead")) && (!matchre ("%montest", "%allconstruct"))) then
  {
    eval montest replace("%montest", " ", "|")
    eval arraylen count("%montest", "|")
    eval montest element("%montest", %arraylen)
    math manipcount add 1
    var mon%manipcount %montest
  }
  else
  {
    if matchre ("%montest", "%specialmanipulate") then
    {
      eval montest replace("%montest", " ", "|")
      eval arraylen count("%montest", "|")
      eval montest element("%montest", %arraylen)
      math manipcount add 1
      var mon%manipcount %montest
    }
  }
  math mlcounter add 1
  goto MANIPLOOP
  
PERCHEALTHLOGIC:
  if %t > %nextperchealth then
  {
    if $Empathy.LearningRate < 34 then
    {
      if %scriptmode = 1 then
      {
        if $monstercount > 0 then
        {
          var nextperchealth %t
          math nextperchealth add 275
          gosub PERCHEALTH
        } 
      }
      else
      {
        var nextperchealth %t
        math nextperchealth add 275
        gosub PERCHEALTH
      }
    }
  }
  return

PERFORMLOGIC:
  #dirtiness may affect your performance.
  if (%instrumentworn != "YES") then
  {
    if matchre ("$righthand", "%instrument") then
    else
    {
      if matchre ("$lefthand", "%instrument") then
      {
        gosub SWAP
      }
      else
      {
        gosub STOWALL
        gosub GETITEM %instrument
      }
    }
    if (%instrumentassess = "YES") then gosub ASSESSLOGIC
  }
  else
  {
    if %climbingrope = "YES" then
    {
      if ((matchre ("$righthand", "%instrument")) || (matchre ("$lefthand", "%instrument"))) then
      {
        gosub WEARITEM %instrument 
      }
    }
  }
  if %playing = 0 then
  {
    gosub PLAY
  }
  return

DEVOTIONLOGIC:
  if (("$guild" = "Cleric") && (%theurgy = "YES")) then
 	{
 	  #COMMUNE_DETECTION
 	  if ((%meraudcommune = "YES") || (%elunedcommune = "YES") || (%tamsinecommune = "YES")) then
    {
      if %firstcommsense = 1 then
      {
        gosub COMMSENSE
        var firstcommsense 0
        var nextcommsense %t
        math nextcommsense add 1200
        echo commgood: %commgood
        echo mercomup: %mercomup
        echo meraudgood: %meraudgood
      }
    }
    #PRAYER
    if ("%pray" = "YES") then
    {
      gosub PRAYLOGIC
      gosub STATUSCHECK
    }
    #PILGRIMBADGE
    if ("%pilgrimbadge" = "YES") then
    {
      gosub BADGELOGIC
      gosub STATUSCHECK
    }
    #ANLORALPIN
    if %anloralpin = "YES" then
    {
      gosub PINLOGIC
      gosub STATUSCHECK
    }
    #PRAYERMAT
    if %prayermat = "YES" then
    {
      gosub MATLOGIC
      gosub STATUSCHECK
    }
    #MERAUDCOMMUNE
    if ((%meraudcommune = "YES") || (%elunedcommune = "YES") || (%tamsinecommune = "YES")) then
    {
      gosub COMMUNELOGIC
      gosub STATUSCHECK
    }
    #RECITE
    if %recite = "YES" then
    {
      gosub RECITELOGIC
      gosub STATUSCHECK
    }
    #DANCE
    if %dance = "YES" then
    {
      gosub DANCELOGIC
      gosub STATUSCHECK
    }
  }
  RETURN


PINLOGIC:
  if (("$guild" = "Cleric") || ("$guild" = "Paladin")) then
  {
    if %t > %nextpin then
    {
      var pindirty 0
      gosub LOOKPIN
      put echo Yellow Pindirty: %pindirty
      if %pindirty = 1 then
      {     
        gosub STOWALL
        gosub GETITEM %anloralpinitem
        gosub GETITEM %watercontainer
        gosub CLEANPIN
        gosub STOWALL
        put #echo %alertwindow Anoral cleaned.
      }      
      var nextpin %t
      math nextpin add 3660
    }
  }
  return


COMMUNELOGIC:
  if (%t >= %nextcommsense) then
  {
    gosub COMMSENSE
    echo commgood: %commgood
 	  echo mercomup: %mercomup
 	  echo meraudgood: %meraudgood
 	  echo elunedgood: %elunedgood
    var nextcommsense %t
    math nextcommsense add 600
  }
  if ($Theurgy.Ranks >= 1750) then return
  if ($Theurgy.LearningRate > 9) then return
  if (%commgood = 1) then
  {
    gosub COMMUNEBASIC
    #MERAUD
    if ((%meraudcommune = "YES") && (%mercomup = 0) && (%meraudgood = 1) && ($Theurgy.LearningRate < 11) && (%devotion >= 4)) then
    {
      gosub GETITEM %watercontainer
      var sprinkleitem %watercontainer
      var sprinkletarget $charactername
      gosub SPRINKLE
      if (%goodsprinkle = 1) then
      {
        gosub STOWALL
        gosub GETITEM incense
        gosub SWAP
        if ("$lefthandnoun" != "incense") then
        {
          put #echo %alertwindow Yellow Out of incense!  Turning off Meraud commune.
          put #flash
          put #play JustArrived
          var meraudcommune NO
          return
        }
        if ("%lighter" = "YES") then
        {
          gosub GETITEM %lighteritem
          gosub DRAGONLIGHT
        }
        else
        {
          if ("%flint" = "YES") then
          {
            gosub GETITEM %steelitem
            gosub FLINTLIGHT incense
          }
          else
          {
            put #echo %alertwindow Yellow No lighter or flint!  Turning off Meraud commune.
            put #flash
            put #play JustArrived
            var meraudcommune NO
            return
          }
        }
        gosub WAVEINCENSE $charactername
        gosub SNUFFINC
        gosub STOWALL
        gosub RETREAT
        var commune meraud
        gosub COMMUNE
        gosub STAND
        var meraudgood 0
        var commgood 0
        var commsense %t
        math commsense add 600
        put #echo %alertwindow Meraud's commune used.
        return
      }
      else
      {
        #NO_HOLY_WATER_ELUNED?
        if ("%elunedcommune" = "YES") then
        {
          if (%elunedgood = 1) then
          {
            gosub STOWALL
            if ("%dirtstacker" = "YES") then
            {
              gosub DIRTPUSH
            }
            else
            {
              gosub GETITEM dirt
            }
            if ((matchre("$righthandnoun", "dirt")) || (matchre("$lefthandnoun", "dirt"))) then
            {
              gosub GETITEM %watercontainer
              var commune eluned
              gosub COMMUNE
              gosub STOWITEM %watercontainer
              var elunedgood 0
              var commgood 0
              var commsense %t
              math commsense add 600
              put #echo %alertwindow Eluned's commune used.
              return
            }
            else
            {
              put #echo %alertwindow Yellow Water container is out of holy water and no dirt is remaining!  Turning off Meraud, Eluned, and Tamsine commune.
              put #flash
              put #play JustArrived
              var meraudcommune NO
              var elunedcommune NO
              var tamsinecommune NO
              return
            }
          }
          else return
        }
        else
        {
          put #echo %alertwindow Yellow Water container is out of holy water!  Turning off Meraud and Tamsine commune.
          put #flash
          put #play JustArrived
          var meraudcommune NO
          var tamsinecommune NO
          return
        }
        return
      }

    }
    #ELUNED
    #put #echo %alertwindow Elunedgood: %elunedgood   Theurgy.LearningRate: $Theurgy.LearningRate
    if ((%elunedcommune = "YES") && (%elunedgood = 1) && ($Theurgy.LearningRate < 11) && (%devotion > 4)) then
    {
      #put #echo %alertwindow Eluned checking
      gosub COMMUNEELUNED
      return
    }
    #TAMSINE
    if ((%tamsinecommune = "YES") && (%tamcomup = 0) && (%tamsinegood = 1) && ($Theurgy.LearningRate < 11)) then
    {
      gosub GETITEM %watercontainer
      var sprinkleitem %watercontainer
      var sprinkletarget $charactername
      gosub SPRINKLE
      if %goodsprinkle != 1 then
      {
        if %elunedcommune = "YES" then
        {
          if %elunedgood = 1 then
          {
            gosub COMMUNEELUNED
            return
          }
        }
        else
        {
          put #echo %alertwindow Yellow Water container is out of holy water!  Turning off Tamsine and Meraud commune.
          put #flash
          put #play JustArrived
          var meraudcommune NO
          var tamsinecommune NO
        }
        return
      }
      gosub STOWALL
      var commune tamsine
      gosub COMMUNE
      gosub STAND
      var tamsinegood 0
      var commgood 0
      var commsense %t
      math commsense add 600
      put #echo %alertwindow Tamsine's commune used.
      return
    }
  }
  return

COMMUNEELUNED:
  gosub STOWALL
  if %dirtstacker = "YES" then gosub DIRTPUSH
  else
  {
    gosub GETITEM dirt
  }
  if ((matchre("$righthandnoun", "dirt")) || (matchre("$lefthandnoun", "dirt"))) then
  {
    gosub GETITEM %watercontainer
    var commune eluned
    gosub COMMUNE
    gosub STOWITEM %watercontainer
    var elunedgood 0
    var commgood 0
    var commsense %t
    math commsense add 600
    put #echo %alertwindow Eluned's commune used.
  }
  else
  {
    put #echo %alertwindow Yellow Water container is out of holy water and no dirt is remaining!  Turning off Meraud, Eluned, and Tamsine commune.
    put #flash
    put #play JustArrived
    var meraudcommune NO
    var elunedcommune NO
    var tamsinecommune NO
  }
  return

MATLOGIC:
  gosub GETITEM %prayermatitem
  if matchre ("$righthand", "%prayermatitem") then
  {
    gosub UNROLLMAT
    gosub KNEELMAT
    gosub KISSMAT
    gosub GETITEM wine
    if $righthandnoun = "wine" then
    {
      gosub BLESSCAST
      gosub POURWINE
      gosub STOWITEM wine
    }
    else echo No wine - skipping.
    if %lighter = "YES" then
    {
      gosub GETITEM incense
      if $righthandnoun = "incense" then
      {
        gosub GETITEM %lighteritem
        gosub DRAGONLIGHT
        var wavetarget mat
        gosub WAVEINC
        gosub SNUFFINC
        gosub STOWALL
      }
      else echo No incense - skipping.
    }
    gosub STAND
    var dancetarget %prayermatitem
    #if %dance = "YES" then 
    gosub DANCE
    gosub ROLLMAT
    gosub STOWITEM %prayermatitem
  }
  return
  
  
BLESSCAST:
  if %casting = 1 then
  {
	  gosub RELSPELL
	  gosub RELSYMBIOSIS
  }
  var spellprepping bless
	var prepmana 5
	var addmana 0
  var casting 1
  gosub PREP
  pause %blessdelay
  gosub CAST
  return


RECALLLOGIC:
  if ((%usingtactics = 1) || (%usingexpert = 1)) then return
  if (%t >= %nextrecall) then
  {
    if $Scholarship.LearningRate > 33 then var scholarlock 1
    if $Scholarship.LearningRate < 21 then var scholarlock 0
    if $Scholarship.Ranks >= 1750 then var scholarlock 1
	  if %scholarlock != 1 then
	  {
	    gosub RECALL
      math nextrecall set %t
	    math nextrecall add 1510
    }
  }
  return

POUNCELOGIC:
  if (%pounceready = 1) then
  {
    gosub MONSTERARRAY
    if matchre("%monsterarray", "%critters") then
    {
      #put #echo %alertwindow Pounced!
      gosub POUNCE
      var pounceready 0
    }
  }
  return

INVESTLOGIC:
  if (%t >= %nextinvest) then
  {
    gosub GETITEM tessera
    gosub INVEST
    gosub STOWITEM tessera
    var nextinvest %t
    math nextinvest add 1200
  }
  return

RESEARCHLOGIC:
  #RESEARCH_CHECKING
  if %researchtype = -1 then
  {
    gosub RESEARCHSTATUS
    pause 1
    echo Researching: %researching
    echo Researchtype: %researchtype
    echo RProjectActive: %rprojectactive
  }

  
  if $SpellTimer.GaugeFlow.active = 1 then
  {
    if %rprojectactive = 1 then
    {
      if %researching = 0 then
      {
        gosub RESEARCH %researchtype
      }
    }
    else
    {
      if %researching = 0 then
      { 
        gosub RESEARCHCHOOSE
        if %researchtype != "none" then
        {
          gosub RESEARCH %researchtype
        }
      }
    }
  }
  else
  {
    var spellprepping gaf
	  gosub SPELLSTATCHECK %spellprepping
    if (("%tattoo" = "YES") && ("%tattootype" = "runic") && ("%spellprepping" = "%tattoospell) then
    {
      var prepmana %tattooprepmana
      var tattoocast 1
    }
    else var prepmana %spellminmana  
    var addmana %gafmana
    math addmana subtract %prepmana
	  var casting 1
	  var scancel 0
	  var prepped 0
	  var charged 0
    var harnessed 0
  }
  return


RESEARCHCHOOSE:
  var researchcount 0
  var researchfirstloop 1
  gosub RESEARCHCHOOSELOOP
  if %resarchtype != "none" then
  {
    var researchtype %researchtype%researchcount
  }
  return

RESEARCHCHOOSELOOP:
  math researchcount add 1
  if %researchcount > %researchnum then
  {
    if %researchfirstloop = 1 then
    {
      var researchfirstloop 0
      var researchcount 0
      goto RESEARCHCHOOSELOOP
    }
    else
    {
      var researchtype none
      return
    }
  }
  if %researchtype%researchcount = "fundamental" then
  {
    if %researchfirstloop = 1 then
    {
      if $Arcana.LearningRate < 10 then return
    }
    else
    {
      if $Arcana.LearningRate < 34 then return
    }
  }
  if %researchtype%researchcount = "augmentation" then
  {
    if %researchfirstloop = 1 then
    {
      if $Augmentation.LearningRate < 10 then return
    }
    else
    {
      if $Augmentation.LearningRate < 34 then return
    }
  }
  if %researchtype%researchcount = "stream" then
  {
    if %researchfirstloop = 1 then
    {
      if $Attunement.LearningRate < 10 then return
    }
    else
    {
      if $Attunement.LearningRate < 34 then return
    }
  }
  if %researchtype%researchcount = "sorcery" then
  {
    if %researchfirstloop = 1 then
    {
      if $Sorcery.LearningRate < 10 then return
    }
    else
    {
      if $Sorcery.LearningRate < 34 then return
    }
  }
  if %researchtype%researchcount = "utility" then
  {
    if %researchfirstloop = 1 then
    {
      if $Utility.LearningRate < 10 then return
    }
    else
    {
      if $Utility.LearningRate < 34 then return
    }
  }
  if %researchtype%researchcount = "warding" then
  {
    if %researchfirstloop = 1 then
    {
      if $Warding.LearningRate < 10 then return
    }
    else
    {
      if $Warding.LearningRate < 34 then return
    }
  }
  if %researchtype%researchcount = "energy" then
  {
    if %researchfirstloop = 1 then
    {
      if $Attunement.LearningRate < 10 then return
    }
    else
    {
      if $Attunement.LearningRate < 34 then return
    }
  }
  if %researchtype%researchcount = "plane" then
  {
    if %researchfirstloop = 1 then
    {
      if $Astrology.LearningRate < 10 then return
    }
    else
    {
      if $Astrology.LearningRate < 34 then return
    }
  }  
  if %researchtype%researchcount = "field" then
  {
    if %researchfirstloop = 1 then
    {
      if (($Primary_Magic.LearningRate < 10) || ($Sorcery.LearningRate < 10) || ($Attunement.LearningRate < 10)) then return
    }
    else
    {
      if (($Primary_Magic.LearningRate < 34) || ($Sorcery.LearningRate < 34) || ($Attunement.LearningRate < 34)) then return
    }
  }
  if %researchtype%researchcount = "spell" then
  {
    if %researchfirstloop = 1 then
    {
      if (($Augmentation.LearningRate < 10) || ($Warding.LearningRate < 10) || ($Utility.LearningRate < 10)) then return
    }
    else
    {
      if (($Augmentation.LearningRate < 34) || ($Warding.LearningRate < 34) || ($Utility.LearningRate < 34)) then return
    }
  }
  if %researchtype%researchcount = "symbiosis strengthen" then return
  if %researchtype%researchcount = "symbiosis endure" then return
  if %researchtype%researchcount = "symbiosis avoid" then return
  if %researchtype%researchcount = "symbiosis spring" then return
  if %researchtype%researchcount = "symbiosis remember" then return
  if %researchtype%researchcount = "symbiosis resolve" then return
  if %researchtype%researchcount = "symbiosis impress" then return
  if %researchtype%researchcount = "symbiosis discern" then return
  if %researchtype%researchcount = "symbiosis explore" then return
  if %researchtype%researchcount = "symbiosis watch" then return
  if %researchtype%researchcount = "symbiosis harvest" then return
  if %researchtype%researchcount = "symbiosis heal" then return
  if %researchtype%researchcount = "symbiosis learn" then return
  if %researchtype%researchcount = "symbiosis examine" then return
  if %researchtype%researchcount = "symbiosis perform" then return
  if %researchtype%researchcount = "symbiosis cast" then return
  if %researchtype%researchcount = "symbiosis harness" then return
  if %researchtype%researchcount = "symbiosis activate" then return
  if %researchtype%researchcount = "plane" then return
  if %researchtype%researchcount = "planes" then return
  if %researchtype%researchcount = "road" then return
  goto RESEARCHCHOOSELOOP

	
	
MAINSPELLLOGIC:
  if (("$guild" = "Barbarian") || ("$guild" = "Thief")) then return
  if (%playing = 1) then return
  if ((("%scriptarea" = "combat") && (%scriptareachange = 0)) then
  else return
  if ((%noncombatactive = 1) || (%upkeepactive = 1)) then return
  if %t < %nextcast then return
  if (%combatperforming = 1) then return
  if ((%necrosafety = "YES") && ("$guild" = "Necromancer")) then
  {
    gosub NSAFETYCHECK
    if %necrogood != 1 then return
    if %riteofgrace = "YES" then
    {
      if $SpellTimer.RiteofGrace.active != 1 then
      {
        if %casting != 1 then  
        {
          var spellprepping rog
          var prepmana %rogprepmana
          var addmana 0
          var addmana 0
          var cycliccast 1
          var spellsymb 0
          var casting 1
          var scancel 0
          var prepped 0
          var charged 0
          var harnessed 0
          var nextcyc %t
          math nextcyc add 300
          return
        }
      }
      else
      {
        if %rogcycle = "YES" then
        {
          if %nextcyc = 0 then
          {
            var releaserog 1
            gosub RELCYCLIC
            gosub PERCSELF
            var releaserog 0
            gosub PERC
            goto MAINSPELLLOGIC
          }
          #echo Time: %t
          #echo NextCyc: %nextcyc
          if %t >= %nextcyc then
          {
            if %casting != 1 then
            {
              gosub RELCYCLIC
              gosub PERCSELF
              var spellprepping rog
              var prepmana %rogprepmana
              var addmana 0
              var cycliccast 1
              var spellsymb 0
              var casting 1
              var scancel 0
              var prepped 0
              var charged 0
              var harnessed 0
              var nextcyc %t
              math nextcyc add 300
              return
            }
          }
        }
      }
    }
  }
  if %casting != 1 then
  {
    #SELF_HEALING
    if "$guild" = "Empath" then
    {
      if %curedisease = "YES" then
      {
        if %infection = 1 then
        {
          if %casting != 1 then
          {
            var casting 1
            var scancel 0
            var spellsymb 0
            var prepped 0
            var charged 0
            var harnessed 0
            var spellprepping cd
            gosub SPELLSTATCHECK %spellprepping
            var prepmana %spellminmana 
            var addmana %cursediseasemana    
            math addmana subtract %prepmana
          }
        }
      }
      if ("%heal" = "YES") then
      {
        if ((%t > %nexthealcheck) || ($bleeding = 1)) then
        {
          #echo SpellTimer.Heal.active: $SpellTimer.Heal.active
          if ($SpellTimer.Heal.active != 1) then
          {
            if %casting != 1 then
            {
              if $mana >= %minmana then
              {
                gosub HEALTHCHECK
                var nexthealcheck %t
                math nexthealcheck add 120
                if %healthcheckgood != 1 then
                {
                  if %t >= %nexthealcast then
                  {
                    var casting 1
                    var scancel 0
                    var spellsymb 0
                    var prepped 0
                    var charged 0
                    var harnessed 0
                    var spellprepping heal
                    gosub SPELLSTATCHECK %spellprepping
                    var prepmana %spellminmana 
                    var addmana %healmana    
                    math addmana subtract %prepmana
                  }
                }
              }
            }
          }
        }
      }
      if ("%vitheal" = "YES") then
      {
        if $health <= 80 then
        {
          if %casting != 1 then
          {
            var casting 1
            var scancel 0
            var spellsymb 0
            var prepped 0
            var charged 0
            var harnessed 0
            var spellprepping vh
            gosub SPELLSTATCHECK %spellprepping
            var prepmana %spellminmana 
            var addmana %vithealmana    
            math addmana subtract %prepmana
          }
        }
      }
    }
    #SIPHON_VITALITY
    if ((%siphonvit = "YES" && ("$guild" = "Necromancer") && (%buffingonly != 1) && ($monstercount > 0)) then
    {
      if %necrostate != "redeemed" then
      {
        if $health <= %siphonvitnum then
        {
          if %casting != 1 then
          {
            if $monstercount > 0 then
            {
              var spellprepping sv
              var prepmana %siphonvitprepmana
              var addmana %siphonvitaddmana
              var spellsymb 0
              var tmcast 1
              var casting 1
              var scancel 0
              var prepped 0
              var charged 0
              var harnessed 0
            }
          }
        }
      }
    }
    if $mana < %minmana then return
    #CYCLICBUFF
    if %cyclicbuff = "YES" then
    {
      gosub SPELLCYCLOGIC
      if %casting = 1 then return
    }
    #BUFFING
    if %casting != 1 then
    {
      gosub BUFFLOGIC
      if %casting = 1 then return
    }
    #REDEEMED_SV
    if ((%siphonvit = "YES" && ("$guild" = "Necromancer") && (%buffingonly != 1) && ($monstercount > 0)) then
    {
      if %necrostate = "redeemed" then
      {
        if (($SpellTimer.EmuinsCandlelight.active = 1) && ($SpellTimer.SiphonVitality.active != 1)) then
        {
          if %casting != 1 then
          {
            if $monstercount > 0 then
            {
              var spellprepping sv
              var prepmana %siphonvitprepmana
              var addmana %siphonvitaddmana
              var spellsymb 0
              var tmcast 1
              var casting 1
              var scancel 0
              var prepped 0
              var charged 0
              var harnessed 0
            }
          }
        }
      }
    }
    #OM
    if %osrelmeraud = "YES" then
    {
      gosub OMLOGIC
      if %casting = 1 then return
    }
    #CYCLICS
    if ((%cyclic = "YES") || (%cyctm = "YES") || (%cycdebil = "YES")) then
    {
      if ("%cyclicpriorty" != "YES") then
      {
        gosub SPELLCYCLOGIC
        if %casting = 1 then return
      }
    }
    #DEBILASSIST
    if ((%debilassist = "YES") && (%buffingonly != 1) && ($monstercount > 0)) then
    {
      if matchre("%dbalist", "%weapontype") then
      {
        gosub DBALOGIC
      }
    }
    #ICUTU_ZAHARENLA
    if ((%iztouch = "YES") && ("$guild" = "Empath") && (%buffingonly != 1) && ($monstercount > 0)) then
    {
      if $SpellTimer.IcutuZaharenela.active != 1 then
      {
        if %casting != 1 then  
        {
          gosub RELCYCLIC
          gosub PERCSELF
          var spellprepping iz
          var prepmana %izmana
          var addmana 0
          var cycliccast 1
          var spellsymb 0
          var casting 1
          var scancel 0
          var prepped 0
          var charged 0
          var harnessed 0
        }
      }
      else gosub ICUTULOGIC
    }
    #STRAIGHT_SPELLCASTING
    if (("%spell" = "YES") || ("%tm" = "YES") || ("%debil" = "YES")) then
    {
      gosub SPELLCHOICELOGIC
      if %casting = 1 then return
    }
    #CHARGE_AFTER_LOCK
    if %chargeafterlock = "YES" then
    {
      var spellprepping %calspell
      var prepmana %calprepmana
      var addmana %caladdmana
      var spellsymb 0
      var casting 1
      var scancel 0
      var prepped 0
      var charged 0
      var harnessed 0
    }
  }
  return

MAINSPELLLOGICNC:
  if ((%casting != 1) && (%playing != 1) && (%researching != 1) && (%rprojectactive != 1)) then
  {
    if $mana < %minmana then return
    #OM
    if %osrelmeraud = "YES" then
    {
      gosub OMLOGIC
      gosub STATUSCHECK
      if %casting = 1 then return
    }
    #CYCLICS
    if %cyclic = "YES" then 
    {
      gosub SPELLCYCLOGIC
      gosub STATUSCHECK
      if %casting = 1 then return
    }
    #SPELLCASTING
    if %spell = "YES" then
    {
      gosub SPELLCHOICELOGIC
      gosub STATUSCHECK
      if %casting = 1 then return
    }
  }
  return

SPELLCYCLOGIC:
  #UPKEEP
  if ("%cyctm" = "YES") then
  {
    if (%t > %nextlootcyc) then
    {
      var deadcheck 1
      var nextlootcyc %t
      math nextlootcyc add 60
    }
  }
  
  if ("%performcyclic" = "YES") then
  {
    if ("%perform" = "YES") then
    {
      gosub CYCPERFCHECK  
    }
  }
  
  #DECISION_MAKING
  if (%casting != 1) then
  {
    #RECASTING_IF_UNDETECTED
    if (%currentcyc != 0) then
    {
      if (($%spellc%currentcycvar.active != 1) && (%playing != 1)) then 
      { 
        put #flash; put #play Echo;put #echo %alertwindow Yellow Replacing Cyclic because it's not being detected.
        if (%currentcyc < 4) then gosub CYCLICSET
        if (%currentcyc = 4) then gosub SPELLCYCTMSET
        if (%currentcyc = 5) then gosub SPELLCYCDBSET
        return
      }
    }
    if (%t >= %nextcyc) then
    {
      #put #echo Yellow Choosing a cyclic.
      #CYCLIC_CHOOSING
      gosub CYCFINDER
      if (%chosencyc = 0) then
      {
        var currentcyc 0
        if (($%spellc1var.active = 1) || ($%spellc2var.active = 1) || ($%spellc3var.active = 1) || ($%spellc4var.active = 1) || ($%spellc5var.active = 1)) then
        {
          gosub RELCYCLIC
          gosub PERCSELF
        }
        return
      }
      if (%chosencyc < 4) then
      {
        if ("%spellc%chosencyc" = "ac") then
        {
          if (%usingdebiltm = 1) then
          {
            #echo
            #echo Using TM.  Not casting AC.
            return
          }
        }
        gosub CYCLICSET
      }
      if (%chosencyc = 4) then
      {
        if (%lastcyc != 4) then 
        {
          if ($%spellc4var.active != 1) then gosub SPELLCYCTMSET
        }
        else
        {
          var currentcyc 4
          var nextcyc %t
          math nextcyc add 300
        }
      }
      if (%chosencyc = 5) then
      {
        if (%lastcyc != 5) then
        {
          if ($%spellc5var.active != 1) then gosub SPELLCYCDBSET
        }
        else
        {
          var currentcyc 5
          var nextcyc %t
          math nextcyc add 300
        }
      }
    }
  }
  return


SPELLCSKILLTEST:
  if (%cskillcount >= %spellcnum) then return
  math cskillcount add 1
  eval skill tolower(%spell%cskillcountskill)
  if %skill = "warding" then var spellcyc%cskillcountskill Warding
  if %skill = "utility" then var spellcyc%cskillcountskill Utility
  if %skill = "augmentation" then var spellcyc%cskillcountskill Augmentation
  if %skill = "sorcery" then var spellcyc%cskillcountskill Sorcery
  #put #echo Green spellc%cskillcountskill: %spellc%cskillcountskill
  goto SPELLCSKILLTEST
  


CYCFINDER:
  var lastcyc %currentcyc
  var currentcyc 0
  var chosencyc 0
  var cycfindleast 34
  if ($Augmentation.LearningRate > 33) then var augmentationlock 1
  if ($Augmentation.LearningRate < 20) then var augmentationlock 0
  if ($Augmentation.Ranks >= 1750) then var augmentationlock 1
  if ($Utility.LearningRate > 33) then var utilitylock 1
  if ($Utility.LearningRate < 20) then var utilitylock 0
  if ($Utility.Ranks >= 1750) then var utilitylock 1
  if ($Warding.LearningRate > 33) then var wardinglock 1
  if ($Warding.LearningRate < 20) then var wardinglock 0
  if ($Warding.Ranks >= 1750) then var wardinglock 1
  if ($Sorcery.LearningRate > 33) then var sorcerylock 1
  if ($Sorcery.LearningRate < 20) then var sorcerylock 0
  if ($Sorcery.Ranks >= 1750) then var sorcerylock 1
  if ($Targeted_Magic.LearningRate > 33) then var targetlock 1
  if ($Targeted_Magic.LearningRate < 20) then var targetlock 0
  if ($Targeted_Magic.Ranks >= 1750) then var targetlock 1
  if ($Debilitation.LearningRate > 32) then var debillock 1
  if ($Debilitation.LearningRate < 20) then var debillock 0
  if ($Debilitation.Ranks >= 1750) then var debillock 1 
      
  if (%cyclic = "YES") then
  {
    var cskillcount 0
    gosub SPELLCSKILLTEST
    if ("%cyclicbuff" = "YES") then
    {
      if (%spellcnum > 0) then
      {
        var chosencyc 1
        var cycfindleast $%spellcyc1skill.LearningRate
      }
      if (%spellcnum > 1) then
      {
        if ($%spellcyc2skill.LearningRate < %cycfindleast) then
        {
          var chosencyc 2
          var cycfindleast $%spellcyc2skill.LearningRate
        }
      }
      if (%spellcnum > 2) then
      {
        if ($%spellcyc3skill.LearningRate < %cycfindleast) then
        {
          var chosencyc 3
          var cycfindleast $%spellcyc3skill.LearningRate
        }
      }
    }
    else
    {
      if (%spellcnum > 0) then
      {
        eval testlock tolower(%spellcyc1skill)
        var testlock %%testlocklock
        
        #put #echo Yellow Testlock: %testlock
        if (($%spellcyc1skill.LearningRate < %cycfindleast) && (%testlock != 1)) then
        {
          var chosencyc 1
          var cycfindleast $%spellcyc1skill.LearningRate
        }
      }
      if (%spellcnum > 1) then
      {
        eval testlock tolower(%spellc2skill)
        var testlock %%testlocklock
        #put #echo Yellow Test$%spellcyc2skilllock: %testlock
        if (($%spellcyc2skill.LearningRate < %cycfindleast) && (%testlock != 1)) then
        {
          var chosencyc 2
          var cycfindleast $%spellcyc2skill.LearningRate
        }
      }
      if (%spellcnum > 2) then
      {
        eval testlock tolower(%spellc3skill)
        var testlock %%testlocklock
        #put #echo Yellow Testlock: %testlock
        if (($%spellcyc3skill.LearningRate < %cycfindleast) && (%testlock != 1)) then
        {
          var chosencyc 3
          var cycfindleast $%spellcyc3skill.LearningRate
        }
      }
    }
  }
  #TM_DEBIL
  if ((%combatperforming = 1) || (%scriptmode = 0)) then return
  if ("%cyctm" = "YES") then
  {
    if ($Targeted_Magic.LearningRate < %cycfindleast) then
    {
      if (%cyclicbuff = "YES") then
      {
        var chosencyc 4
      }
      else
      {
        if (%targetlock = 0) then var chosencyc 4
      }
    }
    if (%tmdbprior = "YES") then
    {      
      if ((%chosencyc < 4) && (%targetlock = 0)) then
      {
        var chosencyc 4
      }
    }
  }
  if ("%cycdebil" = "YES") then
  {
    if ($Debilitation.LearningRate < %cycfindleast) then
    {
      if (%cyclicbuff = "YES") then
      {
        var chosencyc 5
      }
      else
      {
        if (%debillock = 0) then var chosencyc 5
      }
    }
    if ("%tmdbprior" = "YES") then
    {
      if ((%chosencyc < 4) && (%debillock = 0)) then
      {
        var var chosencyc 5
      }
    }
  }
  return

CYCPERFCHECK:
  if (%combatperforming = 1) then
  {
    #echo Performing Cyclics.
    var spellcnum $pspellcnum
    if ($pspellcnum > 0) then
    {
      var spellc1 $pspellc1
      var skillc1 $pspellc1skill
      var spellc1skill $pspellc1skill
      var spellc1prepmana $pspellc1prepmana
    }
    if ($pspellcnum > 1) then
    {
      var spellc2 $pspellc2
      var skillc2 $pspellc2skill
      var spellc2skill $pspellc2skill
      var spellc2prepmana $pspellc2prepmana
    }
    if ($pspellcnum > 1) then
    {
      var spellc3 $pspellc3
      var skillc3 $pspellc3skill
      var spellc3skill $pspellc3skill
      var spellc3prepmana $pspellc3prepmana
    }
  }
  else
  {
    var spellcnum $spellcnum
    if ($spellcnum > 0) then
    {
      var spellc1 $spellc1
      var skillc1 $skillc1
      var spellc1skill $spellc1skill
      var spellc1prepmana $spellc1prepmana
    }
    if ($spellcnum > 1) then
    {
      var spellc2 $spellc2
      var skillc2 $skillc2
      var spellc2skill $spellc2skill
      var spellc2prepmana $spellc2prepmana
    }
    if ($spellcnum > 1) then
    {
      var spellc3 $spellc3
      var skillc3 $skillc3
      var spellc3skill $spellc3skill
      var spellc3prepmana $spellc3prepmana
    }
  }
  return

CYCLICSET:
   if ("%spellc%currentcyc" = "ac") then
   {
     if ("%tm" = "YES") then
     {
       if (%targetlock = 0) then return
     }
     else
     {
       if ("%cyctm" = "YES") then
       {
         if (%targetlock = 0) then return
       }
     }
   }
   gosub RELCYCLIC
   gosub PERCSELF
   var currentcyc %chosencyc
   var spellprepping %spellc%currentcyc
   var skill %skillc%currentcyc
   var prepmana %spellc%currentcycprepmana
   var addmana 0
   var cycliccast 1
   var casting 1
   var scancel 0
   math cyclic%currentcyccount add 1
   return
   
SPELLCYCDBSET:
  gosub RELCYCLIC
  gosub PERCSELF
  var spellprepping %spellcycdebil
  var skill %skillcdb
  var prepmana %spellcycdebilmana
  var addmana 0
  var cycliccast 1
  var currentcyc 5
  var casting 1
  var scancel 0
  math cycdbcount add 1
  return

  
SPELLCYCTMSET:
  gosub RELCYCLIC
  gosub PERCSELF
  var spellprepping %spellcyctm
  var skill %skillctm
  var prepmana %spellcyctmmana
  var addmana 0
  var cycliccast 1
  var currentcyc 4
  var casting 1
  var scancel 0
  math cyctmcount add 1
  return

SPELLCHOICELOGIC:
  if %buffing = 0 then
  {
    if %casting = 0 then
    {  
      var usingdebiltm 0
      var tmfocusinuse 0
      gosub SPELLSWITCH
      if %spellleast = 0 then return
      else
      {
        if %spellleast = 1 then
        {
          var tmcast 1
          var casting 1
          var scancel 0
          var prepped 0
          var charged 0
          var harnessed 0
          var usingdebiltm 1
          if %tmfocus = "YES" then var tmfocusinuse 1
          if (%paralysisuse = 1) then
          {
            var spellprepping paralysis
            gosub SPELLSTATCHECK %spellprepping
            var prepmana %spellminmana
            var addmana %paralysismana
            math addmana subtract %prepmana
          }
          else
          {
            var spellprepping %spelltm
            gosub SPELLSTATCHECK %spellprepping
            if (("%tattoo" = "YES") && ("%tattootype" = "runic") && ("%spellprepping" = "%tattoospell) then
            {
              var prepmana %tattooprepmana
              var tattoocast 1
            }
            else var prepmana %spellminmana  
            var addmana %spelltmmana
            math addmana subtract %prepmana
          }
        }
        if %spellleast = 2 then
        {
          var debilcast 1
          var casting 1
          var scancel 0
          var prepped 0
          var charged 0
          var harnessed 0
          var usingdebiltm 1
          var spellprepping %spelldebil
          gosub SPELLSTATCHECK %spellprepping
          if (("%tattoo" = "YES") && ("%tattootype" = "runic") && ("%spellprepping" = "%tattoospell) then
          {
            var prepmana %tattooprepmana
            var tattoocast 1
          }
          else var prepmana %spellminmana 
          var prepmana %spellminmana
          var addmana %spelldebilmana
          math addmana subtract %prepmana
          if %mindshout = "YES" then
          {
            if %heavytmready = 1 then
            {
              var spellprepping ms
              gosub SPELLSTATCHECK %spellprepping
              var prepmana %spellminmana
              var addmana %mindshoutmana
              math addmana subtract %prepmana
            }
          }
          if %spellprepping = "dr" then
          {
            var debilcast 0
            var tmcast 1
          }          
        }
        if %spellleast > 2 then
        {
          math spellleast subtract 2
          var spellprepping %spell%spellleast
          var skill %spell%spellleastskill
          gosub SPELLSTATCHECK %spellprepping
          if (("%tattoo" = "YES") && ("%tattootype" = "runic") && ("%spellprepping" = "%tattoospell") then
          {
            var prepmana %tattooprepmana
            var tattoocast 1
          }
          else var prepmana %spellminmana 
          var addmana %spell%spellleastmana     
          math addmana subtract %prepmana
          if %spell%spellleastsymb = "YES" then var spellsymb 1
          else var spellsymb 0
          var casting 1
          var scancel 0
          var prepped 0
          var charged 0
          var harnessed 0
        }
      }
    }
  }
  return

SPELLSWITCH:
  var spellleast 0
  var spellleastnum 0
  var paralysisuse 0
  #TARGETED_MAGIC
  if ("%tm" = "YES") then
  {
    if $monstercount > 0 then
    {
      if $Targeted_Magic.LearningRate > 33 then var targetlock 1
      if $Targeted_Magic.LearningRate < 20 then var targetlock 0
      if $Targeted_Magic.Ranks >= 1750 then var targetlock 1
      if $Sorcery.LearningRate > 33 then var sorcerylock 1
      if $Sorcery.LearningRate < 20 then var sorcerylock 0
      if $Sorcery.Ranks >= 1750 then var sorcerylock 1
      if ((%targetlock = 0) && (%tmskill = "tm")) then gosub SPELLSWITCHTM
      else
      {
        if ((%sorcerylock = 0) && (%tmskill = "sorcery")) then gosub SPELLSWITCHTM
      }
    }
  }
  #DEBILITATION
  if %debil = "YES" then
  {
    if $monstercount > 0 then
    {
      if $Debilitation.LearningRate > 32 then var debillock 1
      if $Debilitation.LearningRate < 20 then var debillock 0
      if $Debilitation.Ranks >= 1750 then var debillock 1
      if $Sorcery.LearningRate > 33 then var sorcerylock 1
      if $Sorcery.LearningRate < 20 then var sorcerylock 0
      if $Sorcery.Ranks >= 1750 then var sorcerylock 1
      if ((%debillock = 0) && (%debilskill = "debil")) then gosub SPELLSWITCHDB
      else
      {
        if ((%sorcerylock = 0) && (%debilskill = "sorcery")) then gosub SPELLSWITCHDB
      }
    }
  }
  #TMDBPRIOR_BREAKPOINT
  if %tmdbprior = "YES" then if %spellleast != 0 then return
  #NONCOMBAT_SPELLS
  if %spell = "YES" then
  {
    if %spellnum > 0 then
    {
      var skill %spell1skill
      gosub SPELLSKILLTEST
      if ((%skilltest < 34) && (%skillcap != 1)) then
      {
        if ((%spellleast = 0) || (%skilltest < %spellleastnum)) then
        {
          var spellleast 3
          var spellleastnum %skilltest
        }
      }
    }
    if %spellnum > 1 then
    {
      var skill %spell2skill
      gosub SPELLSKILLTEST
      if ((%skilltest < 34) && (%skillcap != 1)) then
      {
        if ((%spellleast = 0) || (%skilltest < %spellleastnum)) then
        {
          var spellleast 4
          var spellleastnum %skilltest
        }
      }
    }
    if %spellnum > 2 then
    {
      var skill %spell3skill
      gosub SPELLSKILLTEST
      if ((%skilltest < 34) && (%skillcap != 1)) then
      {
        if ((%spellleast = 0) || (%skilltest < %spellleastnum)) then
        {
          var spellleast 5
          var spellleastnum %skilltest
        }
      }
    }
    if %spellnum > 3 then
    {
      var skill %spell4skill
      gosub SPELLSKILLTEST
      if ((%skilltest < 34) && (%skillcap != 1)) then
      {
        if ((%spellleast = 0) || (%skilltest < %spellleastnum)) then
        {
          var spellleast 6
          var spellleastnum %skilltest
        }
      }
    }
  }
  return

SPELLSWITCHTM:
  gosub MONSTERARRAY
  if matchre("%monsterarray", "%critters") then
  {
    if %tmskill = "sorcery" then var tmtestskill $Sorcery.LearningRate
    else var tmtestskill $Targeted_Magic.LearningRate
    if ((%spellleast = 0) || (%tmtestskill < %spellleastnum)) then
    {
      var spellleast 1
      var spellleastnum %tmtestskill
      if %avoidshock = "YES" then
      {
        if %goodtarget = 0 then gosub TARGETSELECT
        if ((%shockcritter = 1) || (%specialmanipuse = 1)) then var paralysisuse 1
      }
    }
  }
  return

SPELLSWITCHDB:
  gosub MONSTERARRAY
  if matchre("%monsterarray", "%critters") then
  {
    if %debilskill = "sorcery" then var dbtestskill $Sorcery.LearningRate
    else var dbtestskill $Debilitation.LearningRate
    #echo debilitation: $Debilitation.LearningRate
    if ((%spellleast = 0) || (%dbtestskill < %spellleastnum)) then
    {
      var spellleast 2
      var spellleastnum %dbtestskill
    }
  }
  return

BARBVARRESET:
  if %berserkava = "YES" then put #var SpellTimer.Avalanche.active 0
  if %berserkfamine = "YES" then put #var SpellTimer.Famine.active 0
  if %meditatestaunch = "YES" then put #var SpellTimer.Staunch.active 0
  
  if %berserkblizzard = "YES" then put #var SpellTimer.Blizzard.active 0
  if %berserkcyclone = "YES" then put #var SpellTimer.Cyclone.active 0
  if %berserkdrought = "YES" then put #var SpellTimer.Drought.active 0
  if %berserkearthquake = "YES" then put #var SpellTimer.Earthquake.active 0
  if %berserkflashflood = "YES" then put #var SpellTimer.Flashflood.active 0
  if %berserkhurricane = "YES" then put #var SpellTimer.Hurricane.active 0
  if %berserklandslide = "YES" then put #var SpellTimer.Landslide.active 0
  if %berserktornado = "YES" then put #var SpellTimer.Tornado.active 0
  if %berserktsunami = "YES" then put #var SpellTimer.Tsunami.active 0
  if %berserkvolcano = "YES" then put #var SpellTimer.Volcano.active 0
  if %berserkwildfire = "YES" then put #var SpellTimer.Wildfire.active 0
 
  if %bearform = "YES" then put #var SpellTimer.Bear.active 0
  if %buffaloform = "YES" then put #var SpellTimer.Buffalo.active 0
  if %dragonform = "YES" then put #var SpellTimer.Dragon.active 0
  if %eagleform = "YES" then put #var SpellTimer.Eagle.active 0
  if %monkeyform = "YES" then put #var SpellTimer.Monkey.active 0
  if %owlform = "YES" then put #var SpellTimer.Owl.active 0
  if %pantherform = "YES" then put #var SpellTimer.Panther.active 0
  if %piranhaform = "YES" then put #var SpellTimer.Piranha.active 0
  if %pythonform = "YES" then put #var SpellTimer.Python.active 0
  if %wolverineform = "YES" then put #var SpellTimer.Wolverine.active 0
  
  if %meditatebastion = "YES" then put #var SpellTimer.Bastion.active 0
  if %meditatecontemplation = "YES" then put #var SpellTimer.Contemplation.active 0
  if %meditateserenity = "YES" then put #var SpellTimer.Serenity.active 0
  if %meditatetenacity = "YES" then put #var SpellTimer.Tenacity.active 0
  return

KHRIVARRESET:
  if %khriadaptation = "YES" then
  {
    put #var SpellTimer.KhriAdaptation.active 0
    put #var SpellTimer.KhriAdaptation.duration 0
  }
  if %khriavoidance = "YES" then
  {
    put #var SpellTimer.KhriAvoidance.active 0
    put #var SpellTimer.KhriAvoidance.duration 0
  }
  if %khricunning = "YES" then
  {
    put #var SpellTimer.KhriCunning.active 0
    put #var SpellTimer.KhriCunning.duration 0
  }
  if %khridampen = "YES" then
  {
    put #var SpellTimer.KhriDampen.active 0
    put #var SpellTimer.KhriDampen.duration 0
  }
  if %khridarken = "YES" then
  {
    put #var SpellTimer.KhriDarken.active 0
    put #var SpellTimer.KhriDarken.duration 0
  }
  if %khrielusion = "YES" then
  {
    put #var SpellTimer.KhriElusion.active 0
    put #var SpellTimer.KhriElusion.duration 0
  }
  if %khriendure = "YES" then
  {
    put #var SpellTimer.KhriEndure.active 0
    put #var SpellTimer.KhriEndure.duration 0
  }
  if %khrievanescence = "YES" then
  {
    put #var SpellTimer.KhriEvanescence.active 0
    put #var SpellTimer.KhriEvanescence.duration 0
  }
  if %khriflight = "YES" then
  {
    put #var SpellTimer.KhriFlight.active 0
    put #var SpellTimer.KhriFlight.duration 0
  }
  if %khrifright = "YES" then
  {
    put #var SpellTimer.KhriFright.active 0
    put #var SpellTimer.KhriFright.duration 0
  }
  if %khrifocus = "YES" then
  {
    put #var SpellTimer.KhriFocus.active 0
    put #var SpellTimer.KhriFocus.duration 0
  }
  if %khriharrier = "YES" then
  {
    put #var SpellTimer.KhriHarrier.active 0
    put #var SpellTimer.KhriHarrier.duration 0
  }
  if %khrihasten = "YES" then
  {
    put #var SpellTimer.KhriHasten.active 0
    put #var SpellTimer.KhriHasten.duration 0
  }
  if %khriinsight = "YES" then
  {
    put #var SpellTimer.KhriInsight.active 0
    put #var SpellTimer.KhriInsight.duration 0
  }
  if %khriguile = "YES" then
  {
    put #var SpellTimer.KhriGuile.active 0
    put #var SpellTimer.KhriGuile.duration 0
  }
  if %khriprowess = "YES" then
  {
    put #var SpellTimer.KhriProwess.active 0
    put #var SpellTimer.KhriProwess.duration 0
  }
  if %khriterrify = "YES" then
  {
    put #var SpellTimer.KhriTerrify.active 0
    put #var SpellTimer.KhriTerrify.duration 0
  }
  if %khrisagacity = "YES" then
  {
    put #var SpellTimer.KhriSagacity.active 0
    put #var SpellTimer.KhriSagacity.duration 0
  }
  if %khrisensing = "YES" then
  {
    put #var SpellTimer.KhriSensing.active 0
    put #var SpellTimer.KhriSensing.duration 0
  }
  if %khriserenity = "YES" then
  {
    put #var SpellTimer.KhriSerenity.active 0
    put #var SpellTimer.KhriSerenity.duration 0
  }
  if %khrishadowstep = "YES" then
  {
    put #var SpellTimer.KhriShadowstep.active 0
    put #var SpellTimer.KhriShadowstep.duration 0
  }
  if %khrisight = "YES" then
  {
    put #var SpellTimer.KhriSight.active 0
    put #var SpellTimer.KhriSight.duration 0
  }
  if %khristeady = "YES" then
  {
    put #var SpellTimer.KhriSteady.active 0
    put #var SpellTimer.KhriSteady.duration 0
  }
  if %khristrike = "YES" then
  {
    put #var SpellTimer.KhriStrike.active 0
    put #var SpellTimer.KhriStrike.duration 0
  }
  put #save
  return

SPELLVARRESET:
  if ("%buff" = "YES") then
  {
    var resettype buff
    var resetcount 1
    gosub SPELLVARRESETLOOP
  }
  #CYCLICS
  if ("%cyclic" = "YES") then
  {
    if (%spellcnum > 0) then
    {
      put #var %spellc1var.active 0
      put #var %spellc1var.duration 0
    }
    if (%spellcnum > 1) then
    {
      put #var %spellc2var.active 0
      put #var %spellc2var.duration 0
    }
    if (%spellcnum > 2) then
    {
      put #var %spellc3var.active 0
      put #var %spellc3var.duration 0
    }
  }
  if ("%cyctm" = "YES") then
  {
    put #var %spellc4var.active 0
    put #var %spellc4var.duration 0
  }
  if ("%cycdebil" = "YES") then
  {
    put #var %spellc5var.active 0
    put #var %spellc5var.duration 0
  }
    
  #OTHER_SPELLS_THAT_MIGHT_NEED_RESETTING
  if "$guild" = "Bard" then
  {
    if %eilliescry = "YES" then
    {
      put #var SpellTimer.EilliesCry.active 0
      put #var SpellTimer.EilliesCry.duration 0
    }
    if %misdirection = "YES" then
    {
      put #var SpellTimer.Misdirection.active 0
      put #var SpellTimer.Misdirection.duration 0
    }
  } 
  if "$guild" = "Cleric" then
  {
    if %osrelmeraud = "YES" then
    {
      put #var SpellTimer.OsrelMeraud.active 0
      put #var SpellTimer.OsrelMeraud.duration 0
    }
  }
  if "$guild" = "Empath" then
  {
    if ("%absolution" = "YES") then
    {
      put #var SpellTimer.Absolution.active 0
      put #var SpellTimer.Absolution.duration 0
    }
    if %curedisease = "YES" then
    {
      put #var SpellTimer.CureDisease.active 0
      put #var SpellTimer.CureDisease.duration 0
    }
    if %heal = "YES" then
    {
      put #var SpellTimer.Heal.active 0
      put #var SpellTimer.Heal.duration 0
    }
    if %iztouch = "YES" then
    {
      put #var SpellTimer.IcutuZaharenela.active 0
      put #var SpellTimer.IcutuZaharenela.duration 0
    }
    if ("%upkeepregen" = "YES") then
    {
      put #var SpellTimer.Regenerate.active 0
      put #var SpellTimer.Regenerate.duration 0
    }
  }
  if "$guild" = "Moon Mage" then
  {
    put #var SpellTimer.PiercingGaze.active 0
    put #var SpellTimer.PiercingGaze.duration 0
  }
  if "$guild" = "Necromancer" then
  {
    if %riteofgrace = "YES" then
    {
      put #var SpellTimer.RiteofGrace.active 0
      put #var SpellTimer.RiteofGrace.duration 0
    }
    if %siphonvit = "YES" then
    {
      put #var SpellTimer.SiphonVitality.active 0
      put #var SpellTimer.SiphonVitality.duration 0    
    }
  }
  return

SPELLVARRESETLOOP:
  if %resetcount > %%resettypenum then return
  put #var %%resettype%resetcountvar.active 0
  put #var %%resettype%resetcountvar.duration 0
  #echo %%resettype%resetcountvar.active: $%resettype%resetcountvar.active
  math resetcount add 1
  goto SPELLVARRESETLOOP

SYMBCLEAR:
  gosub PREPSYMBIOSIS
  gosub RELSYMBIOSIS
  return
  
STANCELOGIC:
  if %scriptmode = 1 then
  {
    gosub BOWSTANCECHECK
    if %usingbow != 1 then
    {
      if %stance = 0 then
      {
        if $Shield_Usage.Ranks > $Parry_Ability.Ranks then
        {
          var stance parry
          gosub STANCECHANGE
        }
        else
        {
          var stance shield
          gosub STANCECHANGE
        }
      }
      else
      {
        if $Shield_Usage.LearningRate > $Parry_Ability.LearningRate then
        {
          var stancetest $Shield_Usage.LearningRate
          math stancetest subtract $Parry_Ability.LearningRate
          if %stancetest > 5 then 
          {
            if %stance != "parry" then 
            {
              var stance parry
              gosub STANCECHANGE
            }
          }
        }
        else
        {
          var stancetest $Parry_Ability.LearningRate
          math stancetest subtract $Shield_Usage.LearningRate
          if %stancetest > 5 then 
          {
            if %stance != "shield" then 
            {
              var stance shield
              gosub STANCECHANGE
            }
          }
        }
      }
    }
    #echo Shield: $Shield_Usage.LearningRate  Parry: $Parry_Ability.LearningRate    Stance Chosen: %stance
  }
  return

SUMMWEAPONLOGIC:
  if ($Summoning.LearningRate > 33) then var summlock 1
  if ($Summoning.LearningRate < 20) then var summlock 0
  if ($Summoning.Ranks >= 1750) then var summlock 1
  if (%summlock != 1) then
  {
    if (%t >= %nextsumm) then
    {
      gosub PATHSENSE
      if (%elecharge >= 2) then
      {
        var nextsumm %t
        math nextsumm add %summonweapontimer 
        var summweaponname 0
        gosub SUMMONWEAPONTRAIN
        if (%summweaponname != 0) then gosub BREAKWEAPON %summweaponname
        if %summfull = 1 then var summfull 0         
      }
      else
      {
        var nextsumm %t
        math nextsumm add 60
      }
    }        
  }
  return


PATHWAYLOGIC:  
  if "$guild" != "Warrior Mage" then return
  if %elecharge = -1 then
  {
    gosub PATHSENSE
    pause 1
  }
  if %pathwayactive = -1 then gosub PATHCHECK
  if $Summoning.LearningRate < 34 then var summlock 1
  if $Summoning.LearningRate < 20 then var summlock 0
  if $Summoning.Ranks >= 1750 then var summlock 1
  if %summlock != 1 then
  {
    if %pathwayactive = 0 then 
    {
      if %t <= %nextpathway then return
      {
        var nextpathway %t
        math nextpathway add 30
        math nextpathway add 30
        gosub PATHSTART %pathwaytype
        if %summfull = 1 then var summfull 0         
      }
    }
    if %scriptmode != 1 then gosub SUMMON
  }
  else
  {
    if %pathwayactive = 1 then GOSUB PATHSTOP    
    if %scriptmode != 1 then gosub SUMMON
  }
  return

WHISTLELOGIC:
  if $Bardic_Lore.LearningRate > 33 then var bardlorelock 1
  if $Bardic_Lore.LearningRate < 20 then var bardlorelock 0
  if $Bardic_Lore.Ranks >= 1750 then var bardlorelock 1
  if %bardlorelock = 0 then
  {
    if (%t >= %nextwhistle) then
    {
      math nextwhistle set %t
  	  math nextwhistle add 130
      if $Bardic_Lore.LearningRate < 34 then
      {
         gosub WHISTLEPIERCE
         if $Bardic_Lore.LearningRate > 33 then var bardlorelock 1
      }
      else var bardlorelock 1
    }
  }
  return

SANOWRETLOGIC:
  if ((%sanowretready = 1) && ($concentration > 99)) then
  {
    if $Arcana.LearningRate < 20 then var arcanalock 0
    if $Arcana.LearningRate > 31 then var arcanalock 1
    if $Arcana.Ranks >= 1750 then var arcanalock 1
    if %arcanalock != 1 then gosub GAZESANOWRET
  }
  return

TOMEOFLORELOGIC:
  if ((!matchre ("$righthand", "%tomeofloreitem")) && (!matchre ("$lefthand", "%tomeofloreitem"))) then
  {
    if (%tomeofloreready = 0) then var tomeofloreready 1
  }
  if (%tomeofloreready = 1) then
  {
    if $Scholarship.LearningRate > 33 then var scholarlock 1
    if $Scholarship.LearningRate < 21 then var scholarlock 0
    if $Scholarship.Ranks >= 1750 then var scholarlock 1      
    if (($concentration > 99) && (%scholarlock != 1)) then
    {
      if (%playing = 1) then
      {
        if ("$righthand" = "Empty") then
        {
          gosub GETITEM %tomeofloreitem
          gosub SWAP
        }
        else gosub GETITEM %tomeofloreitem        
        gosub STUDYTOME
      }
    }
  }
  return


NONCOMBATCHECKS:
	var noncombatactive 0
	var noncombatperformactive 0
	var noncombatburgleactive 0
	var noncombatsellactive 0
	var noncombattasksactive 0
  #BURGLE_CHECKING
	if ("%burgle" = "YES") then
	{
	  if (($Athletics.Ranks < 1750) || ($Locksmithing.Ranks < 1750) || ($Thievery.Ranks < 1750) || ($Stealth.Ranks < 1750)) then
		{
      if ((%t >= %nextburgle) && (%killbeforeleave != 0) then
      {
        gosub BURGLERECALL
        if (%t >= %nextburgle) then
        {
          var noncombatactive 1
          var noncombatburgleactive 1
        }
      }
    }
    else
    {
	    var noncombatburgleactive 0
	  }
	}
	#PERFORM_CHECKING
	if ("%perform" = "YES") then
	{
		if ($Performance.LearningRate > 20) then var performlock 1
		if ($Performance.LearningRate < 4) then var performlock 0
		if ($Performance.Ranks >= 1750) then var performlock 1
		if (%performlock != 1) then
		{
			var noncombatactive 1
			var noncombatperformactive 1
		}
	}
  #CRAFT_CHECKING
	if ("%crafting" = "YES") then
	{
	  #FORGING_CHECKING
    if ("%forging" = "YES") then
    {
      if ($Forging.LearningRate > 20) then var forginglock 1
      if ($Forging.LearningRate < 4) then var forginglock 0
      if ($Forging.Ranks >= 1750) then var forginglock 1
      if (%forginglock != 1) then
      {
        #if (%killbeforeleave != 0) then put #echo %alertwindow Yellow Decided to forge at Forging.LearningRate: $Forging.LearningRate
        var noncombatactive 1
        var noncombatforgingactive 1
      }
    }
  }
	#TRADING_SELL_TASKS
	if ("$guild" = "Trader") then
	{ 
    #put #echo >Log Yellow tradingsell: %tradingsell
    if (("%tradingsell" = "YES") || ("%tradingtasks" = "YES")) then
    {
      if $Trading.LearningRate > 28 then var tradinglock 1
      if $Trading.LearningRate < 4 then var tradinglock 0
      if $Trading.Ranks >= 1750 then var tradinglock 1
      #put #echo >Log Yellow tradinglock: %tradinglock
      if (%tradinglock != 1) then
      {
        var noncombatactive 1
        if (("%tradingsell" = "YES") && ("%tradingselltown" != "none")) then var noncombatsellactive 1
        if ("%tradingtasks" = "YES") then var noncombattasksactive 1
      }
    }
	}
	return
	
NONCOMBATLOOP:
	#EXECUTING_NONCOMBAT_TRAIN
	gosub NONCOMBATCHOOSE
  if (%noncombatactive = 1) then
  {
    if ("%currentnoncombat" = "tradingsell") then
    {
      gosub NONCOMBATMOVEMENT
      var foundsellitem 0
      gosub TRADINGSELLLOGIC
      gosub NONCOMBATCHOOSE
    }
    if ("%currentnoncombat" = "tradingtasks") then
    {
      gosub NONCOMBATMOVEMENT
      gosub TASKLOGIC
      gosub NONCOMBATCHOOSE
    }
    if ("%currentnoncombat" = "burgle") then
    {
      gosub NONCOMBATMOVEMENT
      if (%onfire != 1) then
      {
        gosub BURGLELOGIC
        gosub BURGLERECALL
      }
      var noncombatburgleactive 0
      gosub RELINVIS
      gosub NONCOMBATCHOOSE
    }
    if ("%currentnoncombat" = "perform") then
    {
      gosub NONCOMBATMOVEMENT
      gosub MTPERFORMLOOP
      gosub NONCOMBATCHOOSE
    }
    if ("%currentnoncombat" = "studyart") then
    {
      gosub NONCOMBATMOVEMENT
      gosub STUDYARTLOGIC
      gosub NONCOMBATCHOOSE
    }
    if ("%currentnoncombat" = "forging") then
    {
      put #echo Here!
      gosub NONCOMBATMOVEMENT
      gosub STOWALL
      gosub MTFORGING
      gosub STOWALL
      gosub STORAGECHECKLOGIC
      gosub NONCOMBATCHOOSE
    }
  }
	goto MAINLOOP	
	

NONCOMBATCHOOSE:
  #put #echo Yellow noncombatactive: %noncombatactive
  #put #echo Yellow noncombatsellactive: %noncombatsellactive
  #put #echo Yellow noncombattasksactive: %noncombattasksactive
  #put #echo Yellow noncombatburgleactive: %noncombatburgleactive
  #put #echo Yellow noncombatperformactive: %noncombatperformactive
  #put #echo Yellow noncombatstudyartactive: %noncombatstudyartactive
  #put #echo Yellow noncombatforgingactive: %noncombatforgingactive
  var currentnoncombat 0
  if (%noncombatactive = 0) then return
  if (%noncombatsellactive = 1) then
  {
    var currentnoncombat tradingsell
    return
  }
  if (%noncombattasksactive = 1) then
  {
    var currentnoncombat tradingtasks
    return
  }
  if (%noncombatburgleactive) = 1 then
  {
    var currentnoncombat burgle
    return
  }
  if (%noncombatperformactive = 1) then
  {
    var currentnoncombat perform
    return
  }
  if (%noncombatstudyartactive = 1) then
  {
    var currentnoncombat studyart
    return
  }
  if (%noncombatforgingactive = 1) then
  {
    var currentnoncombat forging
    return
  }
  var noncombatactive 0
  gosub NEWAREADECISION
  return
  
NONCOMBATMOVEMENT:
  put #echo Yellow currentnoncombat: %currentnoncombat
  if (%noncombatactive = 1) then
  {
    #TRADING_SELL
    if ("%currentnoncombat" = "tradingsell") then
    {
      gosub NEWTOWNPRESET crossing tradingsell
    } 
    #TRADING_TASKS
    if ("%currentnoncombat" = "tradingtasks") then
    {
			gosub NEWTOWNPRESET crossing tradingtask
    }
    #BURGLING
    if ("%currentnoncombat" = "burgle") then
    {
			gosub NEWTOWNPRESET %burgletown burgle
    }
    #PERFORMANCE
    if ("%currentnoncombat" = "perform") then
    {
      gosub NEWTOWNPRESET %performtown perform
    }
    #STUDY_ART
    if ("%currentnoncombat" = "studyart") then
    {
      gosub NEWTOWNPRESET crossing studyart
    }
    #FORGING
    if ("%currentnoncombat" = "forging") then
    {
      gosub NEWTOWNPRESET %forgingtown forging
    }
    if (("%currentnoncombat" != "studyart") && ("%currentnoncombat" != "forging")) then
    {
      if (("$zoneid" != "%rtzone") || ("$roomid" != "%rttargetroom")) then
      {
        if ("%sleepontravel" = "YES") then gosub DEEPSLEEP
        gosub LEAVEROOM
        gosub ROOMTRAVEL
        gosub STOWALL
        gosub AWAKE
      }
    }
    else
    {
      put #echo Yellow zoneid: $zoneid  rtzone: %rtzone
      if ("$zoneid" != "%rtzone") then
      {
        if ("%sleepontravel" = "YES") then gosub DEEPSLEEP
        gosub LEAVEROOM
        gosub ROOMTRAVEL
        gosub STOWALL
        gosub AWAKE
      }
    }
  }
  return
  
  
STORAGECHECKLOGIC:
  gosub STOREDEFAULT %storage
  if (%storedefaultsuccess = 0) then
  {
    put #echo Yellow Could not find default storage container %rucksack!  Exiting.
    put #echo %alertwindow Yellow [TRAIN]: Could not find default storage container %rucksack!  Exiting.
    exit
  }
  if ("%craftingstoragelocation" = "portal") then
  {
    gosub FINDITEM %craftingstorage
    if (%finditemfound = 1) then
    {
      gosub REMITEM %craftingstorage
      gosub PUTITEM %craftingstorage in my portal
    }
  }
  return
  

TEACHINGLOGIC:
  if length("%teachtargets") = 0 then return
  eval teachnum count("%teachtargets", "|")
  eval roomplayerslength length("$roomplayers")
  if %roomplayerslength = 0 then return
  if %firstteach = 1 then
  { 
    var firstteach 0
    if %currentclass = 0 then gosub TEACHASSESS
    echo CurrentTeacher: %currentteacher
    echo CurrentClass: %currentclass    
  }
  if (("%currentteacher" = "SELF") && (%currentclass = 0)) then
  {
    #eval currentclass tolower(%currentclass)
    if matchre("%currentclass", "%teachskill") then
    {
      if %teachingonly = 1 then gosub STAYIN
    }
    else
    {
      #put #echo Yellow currentclass: %currentlcass
      #put #echo Yellow teachskill: %teachskill
      gosub TEACHSTOP
      var teachcounter 0
      gosub TEACHINGLOOP
      pause 5
    }
  }
  if ((%currentteacher = 0) && (%currentclass = 0)) then
  {
    var teachcounter 0
    gosub TEACHINGLOOP
  }
  return

TEACHINGLOOP:
  if %teachcounter > %teachnum then return
  #echo teachnum: %teachnum
  var teachtarget %teachtargets(%teachcounter)
  #echo teachtarget: %teachtarget
  gosub TEACH
  math teachcounter add 1
  goto TEACHINGLOOP


TEXTLOGIC:
  if %aiming = 1 then return
  #if (%retreatdelay = "YES") then
  #{
  #  if %evenleastnum < 7 then return
  #}
  if %t > %nexttext then
  {
    if $First_Aid.LearningRate > 33 then var firstaidlock 1
    if $First_Aid.LearningRate < 21 then var firstaidlock 0
    if $First_Aid.Ranks >= 1750 then var firstaidlock 1
    if $Scholarship.LearningRate > 33 then var scholarlock 1
    if $Scholarship.LearningRate < 21 then var scholarlock 0
    if $Scholarship.Ranks >= 1750 then var scholarlock 1
    if ((%firstaidlock = 0) || (%scholarlock = 0)) then
    {
      var textagain 0
      var nexttext %t
      math nexttext add %textbooktimer
      var textposition 0
      gosub TEXTCHOOSE
      if %textposition = -1 then
      {
        if ((matchre ("$righthand", "%textbookitem")) || (matchre ("$lefthand", "%textbookitem"))) then
        {
          gosub STOWITEM %textbookitem
        }
        return
      }
      if ((matchre ("$righthand", "%textbookitem")) || (matchre ("$lefthand", "%textbookitem"))) then
      else
      {
        gosub GETITEM %textbookitem
      }
      eval textmonster element("%textbooklist", %textposition)
      gosub TURNTEXT
      if %badtextturn = 1 then
      {
        put #echo %alertwindow Bad textbook entry - %textmonster!  Turning off textbooks!
        var textbook NO
        if ((matchre ("$righthand", "%textbookitem")) || (matchre ("$lefthand", "%textbookitem"))) then
        {
          gosub STOWITEM %textbookitem
        }
        return
      }
      gosub STUDYTEXT
      if %textagain = 1 then goto TEXTLOGIC
      #put #echo %alertwindow Studied Textbook.
      if $First_Aid.LearningRate > 33 then var firstaidlock 1
      if $Scholarship.LearningRate > 33 then var scholarlock 1
      if ((matchre ("$righthand", "%textbookitem")) || (matchre ("$lefthand", "%textbookitem"))) then
      {
        gosub STOWITEM %textbookitem
      }
    }
  }
  return

TEXTCHOOSE:
  eval textlistlength count("%textbooklist", "|")
  #echo TextListLength: %textlistlength
  #echo TextbookList: %textbooklist
  if %textposition > %textlistlength then
  {
    var textposition -1
    #echo No good textbook pages!
    return
  }
  #echo textlist%textpositionnext: %textlist%textpositionnext
  if %textlist%textpositionnext >= 0 then
  else var textlist%textpositionnext 0
  #echo textlist%textpositionnext: %textlist%textpositionnext
  #echo t: %t
  if  %t >= %textlist%textpositionnext then
  {
    #echo Good Textbook Entry!  Chose %textposition
    return
  }
  else
  {
    math textposition add 1
    goto TEXTCHOOSE
  }

LOWESTLOGIC:
  if %sorted = 0 then
  {
    var sorted 1
    put exp weapon all
    pause 1
    var wchecknum 0
    gosub WSKILLGET
    gosub LOWESTSORT
    var wchecknum 0
    gosub WSKILLGET
  }
  return
  
LOWESTSORT:
  var lowestcount 0
  var foundsort 0
  gosub LOWESTLOOP
  if %foundsort = 1 then goto LOWESTSORT
  else
  {
    var sorted 1
    return
  }

LOWESTLOOP:
  math lowestcount add 1
  if %lowestcount >= %weaponnum then return
  var lowestnext %lowestcount
  math lowestnext add 1
  #echo Is $%weaponskill%lowestcount.Ranks > $%weaponskill%lowestnext.Ranks
  if $%weaponskill%lowestcount.Ranks > $%weaponskill%lowestnext.Ranks then
  {
    var foundsort 1
    var tempweapon%lowestcount %weapon%lowestcount
    var weapon%lowestcount %weapon%lowestnext
    var weapon%lowestnext %tempweapon%lowestcount
    var wchecknum 0
    gosub WSKILLGET
  }
  goto LOWESTLOOP


WEAPONLOGIC:
  if (%scriptmode = 1) then
  {
    #LOWEST_FIRST_SORT
    if ("%lowestfirst" = "YES") then gosub LOWESTLOGIC
    else gosub WSKILLGET
    #TMFOCUS
    if (%tmfocusinuse = 1) then return
    #MONSTER_CHECK
    gosub MONSTERARRAY
    if (!matchre("%monsterarray", "%critters")) then
    {
      put #echo Yellow No good critters.  
      put look
      gosub MONSTERARRAY
      return
    }
    #AVOID_SHOCK
    if (%avoidshock = "YES") then
    {
      if ($SpellTimer.Absolution.active != 1) then return
      #put #echo Yellow GoodTarget: %goodtarget    CurrentCritter: %currentcritter    ShockCritter: %shockcritter
      if (%goodtarget = 0) then gosub TARGETSELECT
      if (%shockcritter = 1) then 
      {
        gosub TARGETSELECT
        #put #echo Yellow ShockCritter = 1! Returning.
        #return
      }
    }
    #WEAPON CHOOSING
    var currentweapon 0
    gosub EVENWEAPONSWITCH
    if ((%currentweapon = -1) || (%currentweapon > %weaponnum)) then
    {
      gosub WEAPONRESET
      if %killafterlock = "YES" then var currentweapon 1
      else return
    }
    #STOW_OLD_WEAPON
    if %lastweapon != %currentweapon then
    {
      var weapon%lastweaponcount 0
      var weapon%currentweaponcount 0
      gosub STOWALL
      if (matchre("%lastweapon", "%aimweapons")) then
      {
        var aimready 0
        var aiming 0
      }
    }
    #AIMING_CHECK
    if (%aiming = 1) then return
    #VARIABLE_RESET
    gosub WEAPONSET 
    #STEALTH_CHECK
    gosub STEALTHCHECK
    #MELEE_WEAPONS
    if (%weaponmode = "melee") then
    {
      gosub STATUSCHECK     
      gosub TACTICSEXPERTHANDCHECK    
      gosub WEAPONGET
      gosub STATUSCHECK
      gosub MOVECHOOSE
      gosub ATTACKMELEE
    }
    #THROWN_WEAPONS
    if (%weaponmode = "thrown") then
    {
      var hand right
      if ((%offhand = "YES") && (%%weapontypeoffhand = "YES")) then
			{
				if ($Offhand_Weapon.LearningRate > 32) then var offhandlock 1
				if ($Offhand_Weapon.LearningRate < 20) then var offhandlock 0
				if ($Offhand_Weapon.Ranks >= 1750) then var offhandlock 1
				if (%offhandlock = 0) then
				{
					if ((%weapontype = "lt") || (%weapontype = "ht") then var hand left
			  }
      }
      gosub WEAPONGET 
      gosub STATUSCHECK
      gosub ATTACKTHROWN
    }
    #AIMED_WEAPONS
    if (%weaponmode = "aimed") then
    {
      var hand right
      gosub WEAPONGET
      gosub STATUSCHECK
      gosub BOWAIM
  }
  return

LOCKSMITHLOGIC:
  if (%aiming = 1) then return
  if ($Locksmithing.LearningRate > 32) then var locksmithinglock 1
  if ($Locksmithing.LearningRate < 20) then var locksmithinglock 0
  if ($Locksmithing.Ranks >= 1750) then var locksmithinglock 1
  if (%t >= %nextlockbox) then
  {
    if (%locksmithinglock != 1) then
    {
      if (%firstlocksmith = 1) then
      {
        put study %locksmithboxitem
        pause 2
      }
      if (%picksleft > 0) then
      {
        gosub GETITEM %locksmithboxitem
        gosub PICKBOX
        gosub STOWITEM %locksmithboxitem
        var nextlockbox %t
        math nextlock add %locksmithboxtimer
      }
    }
  }
  return

SKINFATRAINERLOGIC:
  if %aiming = 1 then return
  if $First_Aid.LearningRate > 32 then var firstaidlock 1
  if $First_Aid.LearningRate < 20 then var firstaidlock 0
  if $First_Aid.Ranks >= 1750 then var firstaidlock 1
  if $Skinning.LearningRate > 32 then var skinninglock 1
  if $Skinning.LearningRate < 20 then var skinninglock 0
  if $Skinning.Ranks >= 1750 then var skinninglock 1
  if %t >= %nextskinfa then
  {
    if ((%skinninglock = 0) || (%firstaidlock = 0)) then
    {
      if %firstskinfatrain = 1 then
      {
        put study my %skinfatraineritem
        pause 2
      }
      if %skinsleft > 0 then
      {
        gosub GETITEM my %skinfatraineritem
        gosub SKINTRAINER
        gosub STOWITEM my %skinfatraineritem
        var nextskinfa %t
        math nextskinfa add %skinfatrainertimer
      }
    }
  }
  return


MULTITRAINLOGIC:
  #FINDING_LOWEST_SKILL
  gosub LOWESTSCAN 1
  var lowestskill1 %lowestskill
  var lowestpos1 %lowestlocation
  gosub LOWESTSCAN 2
  var lowestskill2 %lowestskill
  var lowestpos2 %lowestlocation
  #TESTING_IF_DONE
  if %multimode = 1 then
  {
    #echo lowestskill1: %lowestskill1 - mstarget: %mstarget
    if %lowestskill1 >= %mstarget then var mstarget 0
    if (%multiareapriority = 2) then
    {
      if %lowestskill2 = 0 then var mstarget 0
    }
  }
  if %multimode = 2 then
  {
    #echo lowestskill2: %lowestskill2 - mstarget: %mstarget
    if %lowestskill2 >= %mstarget then var mstarget 0
    if (%multiareapriority = 1) then
    {
      if %lowestskill1 = 0 then var mstarget 0
    }
  }
  #CHOOSING_NEW_MODE
  if %mstarget = 0 then
  {
    if (%multiareapriority = 2) then
    {
      if %lowestskill1 < %lowestskill2 then
      {
        #put #echo Yellow Skill1 <= Skill2
        var mstargetwork %lowestskill1
        math mstargetwork add %multimindstep
        if %mstargetwork > 34 then var mstargetwork 34
        var mstarget %mstargetwork
        #put #echo Yellow Current MS is %mode1list(%lowestpos1) - %lowestskill1.  New target is %mstarget.
        var multimode 1
        gosub MODETRANSITION
      }
      else
      {
        #put #echo Yellow Skill2 < Skill1
        var mstargetwork %lowestskill2
        math mstargetwork add %multimindstep
        if %mstargetwork > 34 then var mstargetwork 34
        var mstarget %mstargetwork
        #put #echo Yellow Current MS is %mode2list(%lowestpos2) - %lowestskill2.  New target is %mstarget.
        var multimode 2
        gosub MODETRANSITION
      }
    }
    else
    {
      if %lowestskill1 <= %lowestskill2 then
      {
        #put #echo Yellow Skill1 <= Skill2
        var mstargetwork %lowestskill1
        math mstargetwork add %multimindstep
        if %mstargetwork > 34 then var mstargetwork 34
        var mstarget %mstargetwork
        #put #echo Yellow Current MS is %mode1list(%lowestpos1) - %lowestskill1.  New target is %mstarget.
        var multimode 1
        gosub MODETRANSITION
      }
      else
      {
        #put #echo Yellow Skill2 < Skill1
        var mstargetwork %lowestskill2
        math mstargetwork add %multimindstep
        if %mstargetwork > 34 then var mstargetwork 34
        var mstarget %mstargetwork
        #put #echo Yellow Current MS is %mode2list(%lowestpos2) - %lowestskill2.  New target is %mstarget.
        var multimode 2
        gosub MODETRANSITION
      }
    }
  }
  return


MODETRANSITION:
  if %modestart = 0 then put #echo Yellow >$alertwindow [MultiArea] Mode %multimode Transition!  New target is %mstarget.
  else
  {
    var modeminutes %t
    math modeminutes subtract %modestart
    var minutesmod %modeminutes
    math minutesmod modulus 60
    math modeminutes subtract %minutesmod
    math modeminutes divide 60
    put #echo Yellow >$alertwindow [MultiArea] Mode %multimode Transition after %modeminutes minutes!  New target is %mstarget.
  }
  gosub LEAVEROOM
  var varset %multimode
  gosub SETUP
  var modestart %t
  return

LOWESTSCAN:
  var skilllist %mode$0list
  eval arraylen count("%skilllist", "|")
  var skillcount 0
  var lowestskill 35
  var lowestlocation -1
  goto LOWESTSCANLOOP

LOWESTSCANLOOP:
  if %skillcount > %arraylen then return
  gosub SKILLGET %skilllist(%skillcount)
  if %skillms < %lowestskill then
  {
    var lowestskill %skillms
    var lowestlocation %skillcount
  }
  math skillcount add 1
  goto LOWESTSCANLOOP


SKILLGET:
  if $0 = "brawl" then var skillms $Brawling.LearningRate
  if $0 = "se" then var skillms $Small_Edged.LearningRate
  if $0 = "le" then var skillms $Large_Edged.LearningRate
  if $0 = "the" then var skillms $Twohanded_Edged.LearningRate
  if $0 = "sb" then var skillms $Small_Blunt.LearningRate
  if $0 = "lb" then var skillms $Large_Blunt.LearningRate
  if $0 = "thb" then var skillms $Twohanded_Blunt.LearningRate
  if $0 = "stave" then var skillms $Staves.LearningRate
  if $0 = "pole" then var skillms $Polearms.LearningRate
  if $0 = "lt" then var skillms $Light_Thrown.LearningRate
  if $0 = "ht" then var skillms $Heavy_Thrown.LearningRate
  if $0 = "bow" then var skillms $Bow.LearningRate
  if $0 = "xbow" then var skillms $Crossbow.LearningRate
  if $0 = "sling" then var skillms $Slings.LearningRate
  if $0 = "parry" then var skillms $Parry_Ability.LearningRate
  
  if $0 = "tm" then var skillms $Targeted_Magic.LearningRate
  if $0 = "debil" then var skillms $Debilitation.LearningRate
  if $0 = "sorcery" then var skillms $Sorcery.LearningRate
  
  if $0 = "tactics" then var skillms $Tactics.LearningRate
  if $0 = "empathy" then var skillms $Empathy.LearningRate
  
  if $0 = "brigandine" then var skillms $Brigandine.LearningRate
  if $0 = "chain" then var skillms $Chain_Armor.LearningRate
  if $0 = "light" then var skillms $Light_Armor.LearningRate
  if $0 = "plate" then var skillms $Plate_Armor.LearningRate
  if $0 = "shield" then var skillms $Shield_Usage.LearningRate
  if $0 = "defending" then var skillms $Defending.LearningRate
  
  if $0 = "backstab" then var skillms $Backstab.LearningRate
  if $0 = "evasion" then var skillms $Evasion.LearningRate
  if $0 = "stealth" then var skillms $Stealth.LearningRate
  if $0 = "thanatology" then var skillms $Thanatology.LearningRate
  if $0 = "skinning" then var skillms $Skinning.LearningRate
  if $0 = "firstaid" then var skillms $First_Aid.LearningRate
  #echo $0: %skillms
  return
  
  
ROOMTRAVELCOMBAT:
  put #echo Yellow zone: %zone
  var rtzone %zone
  var rttravel %travel
  var rttraveldest %traveldest
  var rtmove %move
  var rtmovelist %movelist
  var rttargetroom %targetroom
  var rtfindroom %findroom
  if ("%armorcheck" = "YES") then gosub ARMORCHECK
  gosub LEAVEROOM
  gosub ROOMTRAVEL
  gosub AWAKE
  var stance %stancemain
  gosub STANCECHANGE
  var zephyractive 0
  if ("%necrosafety" = "YES") then gosub JUSTICECHECK    
  return
    

ROOMTRAVELUPKEEP:
  if ("%autype" = "ammo") then
  {
    gosub NEWTOWNPRESET %ammobuytown upkeep
    var fangcovevisit 0
    gosub LEAVEROOM
    gosub ROOMTRAVEL
    return
  }
  else
  {
    gosub NEWTOWNPRESET %upkeeptown upkeep
    if ("%upkeeptown" != "fangcove") then
    {
      var fangcovevisit 0
      gosub LEAVEROOM
      gosub ROOMTRAVEL
      return
    }
    else
    {
      #FANGCOVE
      var fangcovevist 0
      if ("%premiumring" = "YES") then
      {
        if (%t < %nextring) then return
        gosub LEAVEROOM
        gosub PREMIUMRINGGO
        if (%goodring = 1) then
        {
          var fangcovevisit 1
        }
        else
        {
          #FANGCOVE_PORTAL
          var fangcovevisit 2
          gosub NEWTOWNPRESET %nearestportaltown upkeep
          gosub LEAVEROOM
          gosub ROOMTRAVEL
          gosub MOVE portal
          move go meeting portal
        }    
      }
      else
      {
        #FANGCOVE_PORTAL
        var fangcovevisit 2
        gosub NEWTOWNPRESET %nearestportaltown upkeep
        gosub LEAVEROOM
        gosub ROOMTRAVEL
        gosub MOVE portal
        move go meeting portal
      }
      put #mapper reset
      pause 1
      move n
    }
  }
  return

ROOMTRAVEL:
  put #echo Yellow rtzone: %rtzone
  put #echo Yellow rttravel: %rttravel
  put #echo Yellow rttraveldest: %rttraveldest
  put #echo Yellow rtmove: %rtmove
  put #echo Yellow rtmovelist: %rtmovelist
  put #echo Yellow rttargetroom: %rttargetroom
  put #echo Yellow rtfindroom: %rtfindroom
  put #echo Yellow Here
  if (("$zoneid" = "1") && ("$roomid" = "388")) then
  {
    gosub MOVE 386
    gosub MOVE 145
  }
  if ("$zoneid" != "%rtzone") then
  {
    if (%rtzone != 0) then
		{
			if ("%rttravel" = "YES") then
			{
			  if ("$zoneid" = "150") then
			  {
          #FANGCOVE
          var fangcovevist 0
          if ("%premiumring" = "YES") then
          {
            gosub LEAVEROOM
            gosub PREMIUMRINGBACK portal
            if (%goodring != 1) then
            {
              #FANGCOVE_PORTAL
              gosub MOVE portal
              move go exit portal
            }    
          }
          else
          {
            #FANGCOVE_PORTAL
            gosub MOVE portal
            move go exit portal
          }
			  }
				gosub TRAVEL %rttraveldest
			}
			if ("%rtmove" = "YES") then
			{
				var mlmovetarget 0
				var mlstring %rtmovelist
				eval mlcount count("%rtmovelist","|")
				gosub MOVELOOP 
			}
			if ("%rttravel" = "YES") then
			{
			  if ("$zoneid" != "%rtzone") then goto ROOMTRAVEL
		  }
		}
  }
  #put #echo Yellow Zoneid: $zoneid
  #put #echo Yellow RTZone: %rtzone
  if ("$zoneid" != "%rtzone") then goto ROOMTRAVEL
  if (("$roomid" != "%rttargetroom") && ("%rttargetroom" != "0")) then
  {
    if (("$zoneid" = "1") && ("%rttargetroom" = "388")) then
    {
      gosub MOVE 145
      gosub MOVE 386
    }
    gosub MOVE %rttargetroom
    #if (("$roomid" != "%rttargetroom") && ("%rttargetroom" != "0")) then goto ROOMTRAVEL
  }
  if ("%rtfindroom" = "YES") then gosub FINDROOMLOGIC
  return
  

FINDROOMLOGIC:
  #TESTING_EXISTING_ROOM
  #put #echo Yellow roomid: $roomid
  #put #echo Yellow findroomlist: %findroomlist
  if contains("|%findroomlist|", "|$roomid|") then
  {
    eval roomplayerslength length("$roomplayers")
    #echo roomplayerslength: %roomplayerslength
    if %roomplayerslength = 0 then
    {
      if ("%prefergroup" != "YES") then
      {
        put #echo Yellow Room you were in was fine!  Choosing that.
        return
      }
    }
    else
    {
      var roomplayers $roomplayers
      gosub RPLAYERSCRUB
      var findcounter 0
      eval findwhitenum count("%whitelist", "|")
      eval rplayernum count("%roomplayers", "|")
      #TURNING_TO_LOWERCASE
      eval roomplayers tolower("%roomplayers")
      eval findwhitelist tolower("%whitelist")
      gosub FINDPLAYERSORT
      eval roomplayerslength length("%roomplayers")
      if %roomplayerslength = 0 then
      {
        if ("%prefergroup" = "YES") then
        {
          put #echo Yellow Room you were in was fine!  Choosing that.
          return
        }
      }
    }
  }
  #STARTING_SEARCHLOOP
  var findroomcount 0
  var findroomselect -1
  eval findroomnum count("%findroomlist", "|")
  gosub FINDROOMLOOP
  if %findroomselect = -1 then
  {
    put #echo Yellow No acceptable rooms first pass.
    #put #echo Yellow froomempty: %froomempty
    #put #echo Yellow froomally: %froomally
    #put #echo Yellow froomblack: %froomblack
    var findroomcount 0
    gosub FINDROOMLOOP2
    if %findroomselect = -1 then
    {
      put #echo Yellow No acceptable rooms second pass.
      var findroomcount 0
      gosub FINDROOMLOOP3
      if %findroomselect = -1 then
      {
        put #echo Yellow Every room has a blacklisted person.  Going to the first room.  YOLO!
        gosub MOVE %findroomlist(0)
      }
      else
      {
        put #echo Yellow Picked an occupied room without a blacklisted person.
      }
    }
    else
    {
      if ("%prefergroup" = "YES") then put #echo Yellow Found an empty room instead!
      else put #echo Yellow Found a room with an ally instead!
    }
  }
  else
  {
    #put #echo Yellow froomempty: %froomempty
    #put #echo Yellow froomally: %froomally
    if ("%prefergroup" = "YES") then put #echo Yellow Found a room with an ally!
    else put #echo Yellow Found an empty room!
  } 
  return
  
FINDROOMLOOP:
  if %findroomcount > %findroomnum then return
  #echo findroomlist(%findroomcount): %findroomlist(%findroomcount)
  gosub MOVE %findroomlist(%findroomcount)
  pause .5
  #echo roomplayers: $roomplayers
  eval roomplayerslength length("$roomplayers")
  #echo roomplayerslength: %roomplayerslength
  if %roomplayerslength = 0 then
  {
    if %findroomcount = 0 then var froomally 0
    else var froomally %froomally|0
    if %findroomcount = 0 then var froomempty 1
    else var froomempty %froomempty|1
    if %findroomcount = 0 then var froomblack 0
    else var froomblack %froomblack|0
    if ("%prefergroup" != "YES") then
    {
      var findroomselect %findroomcount
      return
    }
  }
  else
  {
    if %findroomcount = 0 then var froomempty 0
    else var froomempty %froomempty|0
    
    var roomplayers $roomplayers
    gosub RPLAYERSCRUB
    #echo post-scrub roomplayers: %roomplayers
    var findcounter 0
    eval findwhitenum count("%whitelist", "|")
    eval rplayernum count("%roomplayers", "|")
    #TURNING_TO_LOWERCASE
    eval roomplayers tolower("%roomplayers")
    eval findwhitelist tolower("%whitelist")
    gosub FINDPLAYERSORT
    eval roomplayerslength length("%roomplayers")
    eval blacklist tolower("%blacklist")
    if matchre("%roomplayers", "%blacklist") then
    {
      if %findroomcount = 0 then var froomblack 1
      else var froomblack %froomblack|1
    }
    else
    {
      if %findroomcount = 0 then var froomblack 0
      else var froomblack %froomblack|0
    }
    if %roomplayerslength = 0 then
    {
      if %findroomcount = 0 then var froomally 1
      else var froomally %froomally|1
      if ("%prefergroup" = "YES") then
      {
        if %froomblack(%findroomcount) != 1 then
        {
          var findroomselect %findroomcount
          return
        }
      }
    }
    else
    {
      if %findroomcount = 0 then var froomally 0
      else var froomally %froomally|0
    }
  }
  math findroomcount add 1
  goto FINDROOMLOOP
  
FINDROOMLOOP2:
  if %findroomcount > %findroomnum then return
  if ("%prefergroup" = "YES") then
  {
    if %froomempty(%findroomcount) = 1 then
    {
      var findroomselect %findroomcount
      gosub MOVE %findroomlist(%findroomcount)
      return
    }
  }
  else
  {
    if %froomally(%findroomcount) = 1 then
    {
      var findroomselect %findroomcount
      gosub MOVE %findroomlist(%findroomcount)
      return
    }
  }
  math findroomcount add 1
  goto FINDROOMLOOP2

FINDROOMLOOP3:
  if %findroomcount > %findroomnum then return
  if %froomblack(%findroomcount) = 0 then
  {
    var findroomselect %findroomcount
    gosub MOVE %findroomlist(%findroomcount)
    return
  }
  math findroomcount add 1
  goto FINDROOMLOOP3
  
FINDPLAYERSORT:
  if %findcounter > %findwhitenum then return
  if %rplayernum > 0 then eval roomplayers replace("%roomplayers", "%findwhitelist(%findcounter)|", "")
  else eval roomplayers replace("%roomplayers", "%findwhitelist(%findcounter)", "")
  math findcounter add 1
  goto FINDPLAYERSORT
  goto FINDPLAYERSORT

WINDBOARDLOGIC:
  if %windmounted = -1 then gosub WINDCHECK
  if %t >= %nextwind then
  {
    if $Athletics.LearningRate > 32 then var athleticslock 1
    if $Athletics.LearningRate < 20 then var athleticslock 0
    if $Athletics.Ranks >= 1750 then var athleticslock 1
    if %athleticslock = 0 then
    {
      if $windboardcharge > 3 then
      {
        #echo windmounted: %windmounted
        if %windmounted != 1 then
        {
          gosub STOWALL
          gosub GETITEM windboard
          pause .5
          gosub WINDMOUNT
        }
        gosub WINDTRICK
        var nextwind %t
        math nextwind add %windboardtimer
        if $Athletics.LearningRate > 32 then var athleticslock 1
        gosub WINDDISMOUNT
        pause .5
        gosub STOWITEM windboard     
      }
      else
      {
        if %windmounted = 1 then
        {
          gosub WINDDISMOUNT
          var windmounted 0
        }
        else
        {
          gosub GETITEM windboard
        }
        gosub WINDCHARGE
        gosub STOWITEM windboard
      }
    }
  }
  return

###SPELLCASTING###
SPELLSKILLTEST:
  eval skill tolower(%skill)
  var skillcap 0
  if %skill = "warding" then
  {
    if $Warding.Ranks >= 1750 then var skillcap 1
    var skilltest $Warding.LearningRate
  }
  if %skill = "utility" then
  {
    if $Utility.Ranks >= 1750 then var skillcap 1
    var skilltest $Utility.LearningRate
  }
  if %skill = "augmentation" then
  {
    if $Augmentation.Ranks >= 1750 then var skillcap 1
    var skilltest $Augmentation.LearningRate
  }
  if %skill = "sorcery" then
  {
    if $Sorcery.Ranks >= 1750 then var skillcap 1
    var skilltest $Sorcery.LearningRate
  }
  return
  
  
BARBBUFFLOGIC:
  #SPECIAL_BUFFS
  if (%playing = 1) then return
  if ((%berserkava = "YES") && ($SpellTimer.Avalanche.active != 1)) then
  {
		if ($stamina < %avafatigue) then
		{
  		gosub BERSERK Avalanche
		}
  }
  if ((%berserkfamine = "YES") && ($SpellTimer.Famine.active != 1)) then
  {
		if $health < %faminevit then
		{
			gosub BERSERK Famine
		}
  }
  if ((%meditatestaunch = "YES") && ($SpellTimer.Staunch.active != 1)) then
  {
		if $bleeding = 1 then
		{
			var meditationtype Staunch
			gosub MEDITATION
		}
  }
  #BERSERKS
  gosub BERSERKLOGIC Blizzard
  gosub BERSERKLOGIC Cyclone
  gosub BERSERKLOGIC Drought
  gosub BERSERKLOGIC Earthquake
  gosub BERSERKLOGIC Flashflood
  gosub BERSERKLOGIC Hurricane
  if ("%landslidetraining" = "YES") then
  {
    if ($Warding.LearningRate > 29) then var wardinglock 1
    if ($Warding.LearningRate < 20) then var wardinglock 0
    if ($Warding.Ranks >= 1750) then var wardinglock 1
    if (%wardinglock = 0) then
    {
      gosub BERSERKLOGIC Landslide
    }
  }
  else
  {  
    gosub BERSERKLOGIC Landslide
  }


  if ("%tornadotraining" = "YES") then
  {
    if ($Augmentation.LearningRate > 29) then var augmentationlock 1
    if ($Augmentation.LearningRate < 20) then var augmentationlock 0
    if ($Augmentation.Ranks >= 1750) then var augmentationlock 1
    if (%augmentationlock = 0) then
    {
      gosub BERSERKLOGIC Tornado
    }
  }
  else gosub BERSERKLOGIC Tornado
  gosub BERSERKLOGIC Tsunami
  gosub BERSERKLOGIC Volcano
  gosub BERSERKLOGIC Wildfire

  #FORMS
  gosub FORMLOGIC Bear
  gosub FORMLOGIC Buffalo
  gosub FORMLOGIC Dragon
  gosub FORMLOGIC Eagle
  gosub FORMLOGIC Monkey
  gosub FORMLOGIC Owl
  gosub FORMLOGIC Panther
  gosub FORMLOGIC Piranha
  gosub FORMLOGIC Python
  gosub FORMLOGIC Wolverine
	   
  
  if ((%meditatebastion = "YES") && ($SpellTimer.Bastion.active != 1)) then
  {
    var meditationtype Bastion
    gosub MEDITATION
  }
  if ((%meditatecontemplation = "YES") && ($SpellTimer.Contemplation.active != 1)) then
  {
    var meditationtype Contemplation
    gosub MEDITATION
  }
  if ((%meditateserenity = "YES") && ($SpellTimer.Serenity.active != 1)) then
  {
    var meditationtype Serenity
    gosub MEDITATION
  }
  if ((%meditatetenacity = "YES") && ($SpellTimer.Tenacity.active != 1)) then
  {
    var meditationtype Tenacity
    gosub MEDITATION
  }
  return
  
BERSERKLOGIC:
  if ($mana < %mininnerfire) then return
  var berserktype $0
  eval berserklower tolower("%berserktype")
  #put #echo berserk%berserklower: %berserk%berserklower   SpellTimer.%berserkype.active: $SpellTimer.%berserktype.active
  if ((%berserk%berserklower = "YES") && ($SpellTimer.%berserktype.active != 1)) then
  {
    gosub BERSERK %berserktype
  }
  return

FORMLOGIC:
  var formtype $0
  eval formlower tolower("%formtype")
  #put #echo %formlowerform: %%formlowerform   SpellTimer.%formtype.active: $SpellTimer.%formtype.active
  if ((%%formlowerform = "YES") && ($SpellTimer.%formtype.active != 1)) then
  {
    gosub FORM %formtype
  }
  else
  {
    if ((%%formlowerform = "NO") && ($SpellTimer.%formtype.active = 1)) then
    {
      echo going to formstop
      gosub FORMSTOP %formtype
    }
  }
  return
  
  
BARBROARLOGIC:
  if (%playing = 1) then return
  #COMBAT_ONLY_ROARS
  if (%scriptmode = 1) then
  {
    if (%roaranger = "YES") then
		{
			if (($Debilitation.LearningRate < 32) && (%t >= %nextroaranger) && ($monstercount > 0)) then
			{
				var roartype anger
				gosub ROAR
			}
		}
		if (%roarembrace = "YES") then
		{
			if (($Debilitation.LearningRate < 32) && (%t >= %nextroarembrace) && ($monstercount > 0)) then
			{
				var roartype embrace
				gosub ROAR
			}
		}
    if (%roarkuniyo = "YES") then
		{
			if (($Debilitation.LearningRate < 32) && (%t >= %nextroarkuniyo) && ($monstercount > 0)) then
			{
				var roartype kuniyo
				gosub ROAR
			}
		}
		if (%roarrage = "YES") then
		{
			if (($Debilitation.LearningRate < 32) && (%t >= %nextroarrage) && ($monstercount > 0)) then
			{
				var roartype rage
				gosub ROAR
			}
		}
		if (%roarscreech = "YES") then
		{
			if (($Debilitation.LearningRate < 32) && (%t >= %nextroarscreech) && ($monstercount > 0)) then
			{
				var roartype screech
				gosub ROAR
			}
		}
		if (%roarshriek = "YES") then
		{
			if (($Debilitation.LearningRate < 32) && (%t >= %nextroarshriek) && ($monstercount > 0)) then
			{
				var roartype shriek
				gosub ROAR
			}
		}
		if (%roarwail = "YES") then
		{
			if (($Debilitation.LearningRate < 32) && (%t >= %nextroarwail) && ($monstercount > 0)) then
			{
				var roartype wail
				gosub ROAR
			}
		}
  }
  return
  
KHRITEST:  
  eval khritype tolower($0)
  #echo khri%khritype: %khri%khritype
  if ("%khri%khritype" = "YES") then
  {
    #echo SpellTimer.Khri$0.active: $SpellTimer.Khri$0.active
    if ($SpellTimer.Khri$0.active != 1) then
    {
      eval khrilistchars length("%khrilist")
      if (%khrilistchars > 0) then var khrilist %khrilist|%khritype
      else var khrilist %khritype
    }
  }
  else
  { 
    #echo SpellTimer.Khri$0.active: $SpellTimer.Khri$0.active
    if ($SpellTimer.Khri$0.active = 1) then
    {
      eval khrilistchars length("%badkhrilist")
      if (%khrilistchars > 0) then var badkhrilist %badkhrilist|%khritype
      else var badkhrilist %khritype
    }
  }
  return

KHRILOGIC:
  if %combatperforming = 1 then return
  var khrilist
  var badkhrilist
  gosub KHRITEST Adaptation
  gosub KHRITEST Avoidance
  gosub KHRITEST Cunning
  gosub KHRITEST Darken
  gosub KHRITEST Dampen
  gosub KHRITEST Elusion
  gosub KHRITEST Endure
  gosub KHRITEST Evanescence
  gosub KHRITEST Flight
  gosub KHRITEST Fright
  gosub KHRITEST Focus
  gosub KHRITEST Guile
  gosub KHRITEST Harrier
  gosub KHRITEST Hasten
  gosub KHRITEST Insight
  gosub KHRITEST Plunder
  gosub KHRITEST Prowess
  gosub KHRITEST Terrify
  gosub KHRITEST Sagacity
  gosub KHRITEST Sensing
  gosub KHRITEST Serenity
  gosub KHRITEST Shadowstep
  gosub KHRITEST Sight
  gosub KHRITEST Steady
  gosub KHRITEST Strike
  
  #UNUSED_KHRI
  gosub KHRITEST Credence
  gosub KHRITEST Intimidate
  gosub KHRITEST Safe
  gosub KHRITEST Silence
  gosub KHRITEST Slight
  
  if %khridebil = "YES" then
  {
    if $Debilitation.LearningRate > 32 then var debillock 1
    if $Debilitation.LearningRate < 20 then var debillock 0 
    #echo debillock: %debillock
    if %debillock = 0 then
    {
      if $%khridebilvar.active != 1 then
      {
        var khritype %khridebiltype
        var khrilist %khrilist|%khritype
      }
    }
  }
  #CHOOSELOOP
  #put #echo Yellow khrilist: %khrilist
  eval khrilistchars length("%khrilist")
  if (%khrilistchars > 0) then
  {
    eval khrilen count("%khrilist", "|")
		var khricount 0
		var khristring
		gosub KHRICHOOSELOOP
  }
  
  #put #echo Yellow badkhrilist: %badkhrilist
  eval khrilen count("%badkhrilist", "|")
  if %khrilen > 0 then
  {
    #echo badkhrilist: %badkhrilist
    eval khristring replace("%badkhrilist", "|", " ")
    gosub KHRISTOP %khristring
  }
  return
  
  
KHRICHOOSELOOP:
  #echo khristring: %khristring
  eval spacecount count("%khristring", " ")
  #echo khricount: %khricount     khrilen: %khrilen
  #echo spacecount: %spacecount    khrimax: %khrimax
  if ((%khricount > %khrilen) || (%spacecount >= %khrimax)) then
  {
    #echo KHRISTART: %khristring
    gosub KHRI %khristring
    var khristring
    return
  }
  var khristring %khristring %khrilist(%khricount)
  math khricount add 1
  goto KHRICHOOSELOOP
  
BUFFLOGIC:
  if (%combatperforming = 1) then return
  if (%playing = 1) then return
  if ("%necrosafety" = "YES") then
  {
    gosub NSAFETYCHECK
    if %necrogood != 1 then return
  }
  var anybuff 0
	#ABSOLUTION
  if %casting != 1 then
  {
    if ("%absolution" = "YES") then
    {
      if (($SpellTimer.Absolution.active != 1) || ($SpellTimer.Absolution.duration < %buffbuffer)) then
      {
        var anybuff 1
        var casting 1
        var scancel 0
        var buffing 1
        var spellsymb 0
        var prepped 0
        var charged 0
        var harnessed 0
        var spellprepping absolution
        gosub SPELLSTATCHECK %spellprepping
        var prepmana %absolutionmana
        var addmana 0
        return
      }
    }  
  }
	#MISDIRECTION
  if %casting != 1 then
  {
    if ((%misdirection = "YES") && (%buffingonly != 1)) then
    {
      if %usingstealth = 1 then
      {
        if (($SpellTimer.Misdirection.active != 1) || ($SpellTimer.Misdirection.duration < %buffbuffer)) then
        {
          var anybuff 1
          var casting 1
          var scancel 0
          var buffing 1
          var spellprepping misdirection
          var spellprepping %symbiosisspell
          gosub SPELLSTATCHECK %spellprepping
          var prepmana %spellminmana
          var addmana %misdirectionmana
          math addmana subtract %prepmana
          return
        }
      }
    }
  }
  #ADAPTIVE_CURING_HEAL
  if %adcheal = "YES" then
  {
    if %casting != 1 then
    {
      if (($SpellTimer.Heal.active != 1) || ($SpellTimer.Heal.duration < %buffbuffer)) then
      {
        var anybuff 1
        var casting 1
        var scancel 0
        var buffing 1
        var spellsymb 0
        var prepped 0
        var charged 0
        var harnessed 0
        var spellprepping heal
        gosub SPELLSTATCHECK %spellprepping
        var prepmana %spellminmana 
        var addmana %healmana    
        math addmana subtract %prepmana
        return
      }
    }
  }
  if (%casting != 1) then
  {
	  #BUFFS
    if ("%buff" = "YES") then
    {
      var buffing 0
      var buffloop 0
      gosub BUFFINGLOOP
    }
  }
  #ADAPTIVE_CURING
  if %adcdisease = "YES" then 
  {
    if %casting != 1 then
    {
      if (($SpellTimer.CureDisease.active != 1) || ($SpellTimer.CureDisease.duration < %buffbuffer)) then
      {
        var anybuff 1
        var casting 1
        var scancel 0
        var buffing 1
        var spellsymb 0
        var prepped 0
        var charged 0
        var harnessed 0
        var spellprepping cd
        gosub SPELLSTATCHECK %spellprepping
        var prepmana %spellminmana 
        var addmana %curediseasemana    
        math addmana subtract %prepmana
        return
      }
    }
  }
  if %casting != 1 then
  {
    if %adcpoison = "YES" then
    {
      if (($SpellTimer.FlushPoisons.active != 1) || ($SpellTimer.FlushPoisons.duration < %buffbuffer)) then
      {
        var anybuff 1
        var casting 1
        var scancel 0
        var buffing 1
        var spellsymb 0
        var prepped 0
        var charged 0
        var harnessed 0
        var spellprepping fp
        gosub SPELLSTATCHECK %spellprepping
        var prepmana %spellminmana 
        var addmana %flushpoisonsmana    
        math addmana subtract %prepmana
        return
      }
    }
  }
  #PIERCING_GAZE
  if %casting != 1 then
  {
    if ("%piercinggaze" = "YES") then
    {
      if ((($SpellTimer.PiercingGaze.active = 1) && ($SpellTimer.PiercingGaze.duration < %buffbuffer)) || ($SpellTimer.PiercingGaze.active != 1)) then
      {
        var anybuff 1
        var casting 1
        var scancel 0
        var buffing 1
        var spellprepping pg
        gosub SPELLSTATCHECK %spellprepping
        var prepmana %spellminmana
        var addmana %piercinggazemana
        math addmana subtract %prepmana
      }  
    }
  }
  if %casting != 1 then
  {
    #SYMBIOSIS
    if ((%symbiosisbuff = "YES") && ("$guild" != "Thief") && ("$guild" != "Barbarian")) then
    {
      if ((($%symbiosisvar.active = 1) && ($%symbiosisvar.duration < %buffbuffer)) || ($%symbiosisvar.active != 1)) then
      {
        var anybuff 1
        var casting 1
        var scancel 0
        var buffing 1
        var spellsymb 1
        var spellprepping %symbiosisspell
        gosub SPELLSTATCHECK %spellprepping
        var prepmana %spellminmana
        var addmana %symbiosismana
        math addmana subtract %prepmana
        return
      }
    }
  }
  if %casting != 1 then
  {
    #TATTOO
    if ((%tattoobuff = "YES") && (%tattootype = "runic")) then
    {
			if ((($%tattoovar.active = 1) && ($%tattoovar.duration < %buffbuffer)) || ($%tattoovar.active != 1)) then
			{   
				var anybuff 1
				var casting 1
				var scancel 0
				var buffing 1
				var tattoocast 1
				var spellprepping %tattoospell
				var prepmana %tattooprepmana
				var addmana %tattooaddmana
				#echo ===Tattoo Buffing===
				#echo Prepping %tattoospell
				return
			}
    }
  }
  if %casting != 1 then
  {
    #GBUFFS
    if %gbuff = "YES" then
    {
      eval tempplayers tolower($roomplayers)
      if matchre("%tempplayers", "%gbufftarget") then
      {
        var buffing 0
        var gbuffloop 0
        gosub GBUFFINGLOOP
      }
    }
  }
  return

DEVICEBUFFLOGIC:
  #HEROIC_TATTOO
  if ((%tattoobuff = "YES") && (%tattootype = "heroic") && (%tattooactive != 1)) then
  {
    #put #echo Yellow t: %t     nexttattoo: %nexttattoo
		if (%t >= %nexttattoo) then
		{
		  #put #echo Yellow Attempting to invoke tattoo.
		  #put #echo >Log Attempting to invoke tattoo.
		  var anybuff 1
			gosub INVOKETATTOO
		}
  }
  #WAND
  if ("%wandbuff" = "YES") then
  {
    var wcounter 0
    gosub WANDBUFFLOOP
  }
  return
  
WANDBUFFLOOP:
  math wcounter add 1
  if (%wcounter > %wandbuffnum) then return
  if (%wandbuffnum > 0) then
  {
    if ($%wand%wcountervar.active != 1) then
    {
      #echo gametime: $gametime   wand%wcounternext: $wand%wcounternext
      var wandtest $wand%wcounternext
      math wandtest subtract $gametime
      #if ($gametime < $wand%wcounternext) then put #echo %alertwindow Yellow [WandBuff]: Wand %wcounter down, but still has a wait of %wandtest seconds
      #else
      #{
        #put #echo %wand%wcountervar.active: $%wand%wcountervar.active 
        var anybuff 1
        gosub STOWALL
        pause 1
        gosub GETITEM my %wand%wcounteritem in %wandstorage
        if (%wand%wcounternum > 1) then gosub GETITEM my %wand%wcounteritem in %wandstorage
        gosub WANDINVOKE first %wand%wcounteritem
        if (%wandinvokegood = 1) then
        {
          var temp $gametime
          math temp add 1810
          put #var wand%wcounternext %temp
          put #echo %alertwindow [WandBuff]: Successfully activated wand %wcounter.
        }
        else 
        {
          if (%wand%wcounternum = 2) then
          {
            gosub WANDINVOKE second %wand%wcounteritem
            if (%wandinvokegood = 1) then
            {
              var temp $gametime
              math temp add 1810
              put #var wand%wcounternext %temp
              put #echo %alertwindow [WandBuff]: Successfully activated second wand %wcounter.
            }
            else
            {
              var temp $gametime
              math temp add 10
              put #var wand%wcounternext %temp
              put #echo %alertwindow Yellow [WandBuff]: Unable to activate wand %wcounter.
            }
          }
          else
          {
            var temp $gametime
            math temp add 1810
            put #var wand%wcounternext %temp
            put #echo %alertwindow [WandBuff]: Wand %wcounter is down, but only one wand is available.
          }
        }
        gosub STOWALL
        gosub PERCSELF
      #}    
    }
  }
  goto WANDBUFFLOOP


BUFFINGLOOP:
  math buffloop add 1
  if %buffloop > %buffnum then
  {
    var anybuff 0
    return
  }
  #put #echo Yellow Abuffs: %abuffs
  #put #echo Yellow Spell: |%buff%buffloop|
  if (contains("%abuffs", "|%buff%buffloop|")) then
  { 
    if (%buffingonly = 1) then
    {
      goto BUFFINGLOOP
    }
    if ("%buff%buffloop" = "etf") then
    {
      put look
      eval fissure matchre ("$roomobjs", "fissure")
      if %fissure = 0 then
      {
        gosub BUFFINGFUNC
      }
    }
    if %buff%buffloop = "nexus" then
    {
      if %nexus = 0 then
      {
        gosub BUFFINGFUNC
      }
    }
    if %buff%buffloop = "rm" then
    {
      if %scriptmode = 1 then
      {
        if %nextrmlook < %t then
        {
          var nextrmlook %t
          math nextrmlook add 60
          var mist 0
          put look
          pause
          if %mist = 0 then
          {        
            gosub BUFFINGFUNC
          }
        }
      }
    }
    if ("%buff%buffloop" = "zephyr") then
    {
      if (%zephyractive != 1) then
      {
        gosub BUFFINGFUNC
      }
    }     
    if %casting = 1 then return
  }
  else
  {  
    if ((($%buff%buffloopvar.active = 1) && ($%buff%buffloopvar.duration < %buffbuffer)) || ($%buff%buffloopvar.active != 1)) then
    {
      if matchre ("%buff%buffloop", "%transnecro") then
      {  
        #echo Testing a Transcendental spell!
        if %necrosafety = "YES" then
        {
          if %justice = 1 then return
        }
      }
      if ("%buff%buffloop" = "iots") then
      {
        gosub WEATHER
        if (%inside = 1) then
        {
          goto BUFFINGLOOP
        }
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
      if (matchre("%buff%buffloop", "%staraura") then
      {
        if (%t > %nextstarcheck) then gosub STARLIGHTCHECK
        if (%starlight = 1) then gosub BUFFINGFUNC
        if (%casting = 1) then return
        else goto BUFFINGLOOP
      } 
      gosub BUFFINGFUNC
      if %casting = 1 then return
    }
  }
  goto BUFFINGLOOP
  
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

OMBUFFINGLOOP:
  math ombuffloop add 1
  if %ombuffloop <= %ombuffnum then
  {
    if $%ombuff%ombuffloopvar.active != 1 then
    {
      var anybuff 1
      var spellprepping %ombuff%ombuffloop
	    var omcast 1
	    var prepmana 0
	    var addmana 0
	    var casting 1
	    var scancel 0
	    var buffing 1
	    echo ===OM Buffing===
	    echo Prepping OMBuff%ombuffloop: %ombuff%ombuffloop
    }
    if %casting = 1 then return
  }
  else return
  goto OMBUFFINGLOOP

GBUFFINGLOOP:
  math gbuffloop add 1
  if %gbuffloop <= %gbuffnum then
  {
    if %t > %gbuff%gbuffloopnext then
    {
      var anybuff 1
      math gbuff%gbuffloopnext set %t
      math gbuff%gbuffloopnext add %gbuff%gbuffloopduration
      var spellprepping %gbuff%gbuffloop
	    var prepmana %gbuff%gbuffloopprepmana
	    var addmana %gbuff%gbuffloopaddmana
	    var %gbuff%gbuffloop %gbuff%gbuffloopduration
	    var casting 1
	    var scancel 0
	    var buffing 1
	    var ctoverride 1
	    var ctoverridevar %gbufftarget
	    echo ===Buffing===
	    echo Prepping GBuff%gbuffloop: %gbuff%gbuffloop
	  }
    if %casting = 1 then return
    else goto GBUFFINGLOOP
  }
  else return

###ASTROLOGY###
TELEOBJECTS:
  var teleobj merewalda
  gosub FINDTELEOBJ
  var teleobj ismenia
  gosub FINDTELEOBJ
  var teleobj morleena
  gosub FINDTELEOBJ
  var teleobj amlothi
  gosub FINDTELEOBJ
  var teleobj Er'qutra
  gosub FINDTELEOBJ
  return

FINDTELEOBJP:
  pause  
FINDTELEOBJ:
  match FINDTELEOBJ2 You are a bit too distracted to be observing something.
  matchre BADTELEOBJ That's a bit hard to do while inside.|turns up fruitless.|That's a bit hard to do here, since you cannot see the sky.
  matchre GOODTELEOBJ too faint for you to pick out with your naked eye.|too close to the sun to be properly viewed.
  matchre FINDTELEOBJP ...wait|type ahead|stunned|while entangled in a web
  put observe %teleobj in sky
  matchwait

BADTELEOBJ:
  if %teleobj = "Er'qutra" then var erqutra 0
  else var %teleobj 0
  return
  
GOODTELEOBJ:
  if %teleobj = "er'qutra" then var erqutra 1
  else var %teleobj 1
  return

FINDTELEOBJ2:
  gosub RETREAT
  goto FINDTELEOBJ
 	    
FINDBODYP:
  pause
FINDBODY:
  var dawgolesh 0
  var merewalda 0
  var szeldia 0
  var penhetia 0
  var yoakena 0
  var durgaulda 0
  var scales 0
  var brigantine 0
  var estrilda 0
  var toad 0
  var verena 0
  var hare 0
  var giant 0
  var spider 0
  var jackal 0
  var shrike 0
  var cow 0
  var weasel 0
  var nightingale 0
  var ram 0
  var triquetra 0
  var raccoon 0
  var welkin 0
  var goshawk 0
  var mongoose 0
  var dove 0
  var coyote 0
  var donkey 0
  var shark 0
  var albatross 0
  var wolverine 0
  var dolphin 0
  var ox 0
  var cobra 0
  var panther 0
  var boar 0
  var lion 0
  var magpie 0
  var cat 0
  var unicorn 0
  var raven 0
  var wolf 0
  var heart 0
  var sun 0
  var yavash 0
  var katamba 0
  var xibar 0
  var yavash 0
  action (bodies) on
  matchre RETURN You scan the sky from horizon to horizon.|You glance outside.
  match FINDBODY2 You are a bit too distracted to be observing something.
  match INSIDE That's a bit hard to do while inside.
  matchre FINDBODYP ...wait|type ahead|stunned|while entangled in a web
  put observe heavens
  matchwait

INSIDE:
  var astro NO
  return

FINDBODY2:
  gosub RETREAT
  goto FINDBODY

BODYSORT:
  pause 4
  #BEST
  if (%katamba = 1) then var lkatamba 1
  else var lkatamba 0
  if (%xibar = 1) then var lxibar 1
  else var lxibar 0
  if (%yavash = 1) then var lyavash 1
  else var lyavash 0
  if (%sun = 1) then var lsun 1
  else var lsun 0
  var nomoons 0
  if %lxibar = 0 then
  {
    if %lkatamba = 0 then
    {
      if %lyavash = 0 then var nomoons 1
    }
  }
  if (%gawgoles = 1) then
  {
    if ($circle >= 85) then
    {
      var body gawgoles
      return
    }
  }
  if (%szeldia = 1) then
  {
    if ($circle >= 60) then
    {
      var body szeldia
      return
    }
  }
  #top
  if (%penhetia = 1) then
  {
    if ($circle >= 55) then
    {
      var body penhetia
      return
    }
  }
  if (%yoakena = 1) then
  {
    if ($circle >= 52) then
    {
      var body yoakena
      return
    }
  }
  if (%durgaulda = 1) then
  {
    if ($circle >= 49) then
    {
      var body durgaulda
      return
    }
  }
  if (%scales = 1) then
  {
    if ($circle >= 48) then
    {
      var body scales
      return
    }
  }
  if (%brigantine = 1) then
  {
    if ($circle >= 47) then
    {
      var body brigantine
      return
    }
  }
  if (%estrilda = 1) then
  {
    if ($circle >= 46) then
    {
      var body estrilda
      return
    }
  }
  if (%verena = 1) then
  {
    if ($circle >= 43) then
    {
      var body verena
      return
    }
  }
  if (%hare = 1) then
  {
    if ($circle >= 42) then
    {
      var body hare
      return
    }
  }
  if (%jackal = 1) then
  {
    if ($circle >= 39) then
    {
      var body jackal
      return
    }
  }
  if (%shrike = 1) then
  {
    if ($circle >= 38) then
    {
      var body shrike
      return
    }
  }
  if (%cow = 1) then
  {
    if ($circle >= 34) then
    {
      var body cow
      return
    }
  }
  if (%weasel = 19) then
  {
    if ($circle >= 60) then
    {
      var body weasel
      return
    }
  }
  if (%nightingale = 1) then
  {
    if ($circle >= 15) then
    {
      var body nightingale
      return
    }
  }
  #mid
  if (%triquetra = 1) then
  {
    if ($circle >= 50) then
    {
      var body triquetra
      return
    }
  }
  if (%toad = 1) then
  {
    if ($circle >= 44) then
    {
      var body toad
      return
    }
  }
  if (%giant = 1) then
  {
    if ($circle >= 41) then
    {
      var body giant
      return
    }
  }
  if (%spider = 1) then
  {
    if ($circle >= 40) then
    {
      var body spider
      return
    }
  }
  if (%raccoon = 1) then
  {
    if ($circle >= 33) then
    {
      var body raccoon
      return
    }
  }
  if (%welkin = 1) then
  {
    if ($circle >= 32) then
    {
      var body welkin
      return
    }
  }
  if (%goshawk = 1) then
  {
    if ($circle >= 30) then
    {
      var body goshawk
      return
    }
  }
  if (%mongoose = 1) then
  {
    if ($circle >= 29) then
    {
      var body mongoose
      return
    }
  }
  if (%dove = 1) then
  {
    if ($circle >= 26) then
    {
      var body dove
      return
    }
  }
  if (%coyote = 1) then
  {
    if ($circle >= 25) then
    {
      var body coyote
      return
    }
  }
  if (%donkey = 1) then
  {
    if ($circle >= 24) then
    {
      var body donkey
      return
    }
  }
  if (%shark = 1) then
  {
    if ($circle >= 23) then
    {
      var body shark
      return
    }
  }
  if (%albatross = 1) then
  {
    if ($circle >= 22) then
    {
      var body albatross
      return
    }
  }
  if (%wolverine = 1) then
  {
    if ($circle >= 16) then
    {
      var body wolverine
      return
    }
  }
  if (%dolphin = 1) then
  {
    if ($circle >= 14) then
    {
      var body dolphin
      return
    }
  }
  if (%ram = 1) then
  {
    if ($circle >= 13) then
    {
      var body ram
      return
    }
  }
  if (%ox = 1) then
  {
    if ($circle >= 9) then
    {
      var body ox
      return
    }
  }
  if (%cobra = 1) then
  {
    if ($circle >= 8) then
    {
      var body cobra
      return
    }
  }
  if (%panther = 1) then
  {
    if ($circle >= 7) then
    {
      var body panther
      return
    }
  }
  if (%boar = 1) then
  {
    if ($circle >= 6) then
    {
      var body boar
      return
    }
  }
  if (%lion = 1) then
  {
    if ($circle >= 3) then
    {
      var body lion
      return
    }
  }
  #low
  if (%magpie = 1) then
  {
    if ($circle >= 18) then
    {
      var body magpie
      return
    }
  }
  if (%cat = 1) then
  {
    if ($circle >= 12) then
    {
      var body cat
      return
    }
  }
  if (%unicorn = 1) then
  {
    if ($circle >= 5) then
    {
      var body unicorn
      return
    }
  }
  if (%raven = 1) then
  {
    if ($circle >= 4) then
    {
      var body raven
      return
    }
  }
  if (%wolf = 1) then
  {
    if ($circle >= 2) then
    {
      var body wolf
      return
    }
  }
  if (%heart = 1) then
  {
    if ($circle >= 1) then
    {
      var body heart
      return
    }
  }
  if (%katamba = 1) then
  {
    if ($circle >= 1) then
    {
      var body katamba
      return
    }
  }
  if (%xibar = 1) then
  {
    if ($circle >= 1) then
    {
      var body xibar
      return
    }
  }  
  if (%yavash = 1) then
  {
    if ($circle >= 1) then
    {
      var body yavash
      return
    }
  }
  if (%sun = 1) then
  {
    if ($circle >= 1) then
    {
      var body sun
      return
    }
  }
   
    
OBSERVEP:
  pause
OBSERVE:
  var foundbody 1
  echo Body: %body
  matchre OBSSUCCESS You learned something useful from your observation\.|You have not pondered your last observation|While the sighting wasn't quite|Although you were nearly overwhelmed
  match OBSERVERETREAT You are a bit too distracted to be observing something.
  match OBSERVE You see nothing regarding the future.
  match OBSFULL Too many futures cloud your mind - you learn nothing.
  match BADOBS Clouds obscure the sky where
  matchre BADBODY turns up fruitless.|too close to the sun to be properly viewed|foiled by the daylight.|I could not find what you are referring to.|Your search for the Elanthian sun
  match INSIDE That's a bit hard to do here, since you cannot see the sky.
  matchre OBSERVEP ...wait|type ahead|stunned|while entangled in a web
  put observe %body in sky
  matchwait

ASTROCHECKP:
  pause
ASTROCHECK:
  matchre ASTROCHECKP ...wait|type ahead|stunned|while entangled in a web
  match ASTROCHECKRET You are far too occupied by present matters
  match RETURN Roundtime:
  put predict state all
  matchwait

ASTROCHECKRET:
  gosub retreat
  goto ASTROCHECK

OBSFULL:
  var checkastropool 1
  return

BADOBS:
  var badobserve 1
  return

BADBODY:
  var foundbody 0
  var badobserve 1
	gosub FINDBODY
	return

OBSERVERETREAT:
  gosub RETREAT
  goto OBSERVE

OBSSUCCESS:
  action (bodies) off
  var obsready 0
  #if %nomoons = 0 then gosub MOONALIGN
  return
 
MOONALIGNP:
  pause
MOONALIGN:
  matchre MOONALIGNP /...wait|type ahead|stunned|while entangled in a web./i
  matchre RETURN You are already in alignment
  if katamba = 1 then
  {
    put align moon katamba
  }
  else
  {
    if yavash = 1 then put align moon yavash
    else
    {
      if xibar = 1 then put align moon xibar
      else
      {
        return
      }
    }
  }
  matchwait
 
ALIGNP:
  pause
ALIGN:
  if (%lore = 1) then 
  {
    var predtarget lore
    var lore 0
    var predict 0
  }
  if (%magic = 1) then
  {
    var predtarget magic
    var magic 0
    var predict 0
  }
  if (%offense = 1) then
  {
    var predtarget offense
    var offense 0
    var predict 0
  }
  if (%defense = 1) then
  {
    var predtarget defense
    var defense 0
    var predict 0
  }
  if (%survival = 1) then
  {
    var predtarget survival
    var survival 0
    var predict 0
  }
  matchre ALIGNP 	...wait|type ahead|stunned|while entangled in a web
  match PREDICT You focus internally and align yourself
  put align %predtarget
  matchwait
  
PREDICTP:
  pause  
PREDICT:
  if %predictiontool != "none" then
  {
    if ((matchre("$righthand", "%predictiontoolitem")) || (matchre("$lefthand", "%predictiontoolitem"))) then
    else
    {
      gosub GETITEM %predictiontoolitem
    }
  }
  matchre PREDICTRET You are far too occupied by present matters to immerse yourself in matters of the future.|You're too distracted to do that!
  match ALIGN You realize you have not yet properly aligned yourself to perform a prediction.
  matchre PREDICTP 	...wait|type ahead|stunned|while entangled in a web
  matchre PREDICTRETURN You look inside yourself in an attempt to see beyond the now.|You gaze deeply into your mirror, opening|You gather your bones back up.
  matchre PREDICTBADTOOL You'll need to be holding
  if %predictiontool = "none" then put predict future $charactername
  if %predictiontool = "bones" then put roll my bones
  if %predictiontool = "mirror" then put gaze my mirror
  matchwait 

PREDICTBADTOOL:
  gosub GETITEM %predictiontoolitem
  goto PREDICT

PREDICTRETURN:
  if %predictiontool != "none" then
  {
    gosub STOWITEM %predictiontoolitem
  }
  return

PREDICTRET:
  gosub retreat
  goto predict


####WEAPON_SUBS####
  
  
WSKILLGET:
  math wchecknum add 1
  gosub WSKILLSET
  if %wchecknum > %weaponnum then return
  goto WSKILLGET

WSKILLSET:
  var wgettype tolower("%weapon%wchecknum")
  if %wgettype = "none" then var weaponskill%wchecknum NONE
  if %wgettype = "brawl" then var weaponskill%wchecknum Brawling
  if %wgettype = "se" then var weaponskill%wchecknum Small_Edged
  if %wgettype = "le" then var weaponskill%wchecknum Large_Edged
  if %wgettype = "the" then var weaponskill%wchecknum Twohanded_Edged
  if %wgettype = "sb" then var weaponskill%wchecknum Small_Blunt
  if %wgettype = "lb" then var weaponskill%wchecknum Large_Blunt
  if %wgettype = "thb" then var weaponskill%wchecknum Twohanded_Blunt
  if %wgettype = "stave" then var weaponskill%wchecknum Staves
  if %wgettype = "pole" then var weaponskill%wchecknum Polearms
  if %wgettype = "lt" then var weaponskill%wchecknum Light_Thrown
  if %wgettype = "ht" then var weaponskill%wchecknum Heavy_Thrown
  if %wgettype = "bow" then var weaponskill%wchecknum Bow
  if %wgettype = "xbow" then var weaponskill%wchecknum Crossbow
  if %wgettype = "sling" then var weaponskill%wchecknum Slings
  return

  
EVENWEAPONSWITCH:
  #echo EvenWeapon: %evenweapon    EvenWeaponTarget: %evenweapontarget    Weaponskill%evenweapon: $%weaponskill%evenweapon.LearningRate
  if ($%weaponskill%evenweapon.LearningRate >= %evenweapontarget) then
  {
    var alllockcheck 0
    var evencount 1
    var evenleast 0
    var evenleastnum 0
    gosub EVENWEAPONLOOP
  }
  else
  { 
    if ($%weaponskill%evenweapon.LearningRate != 34)  then var currentweapon %evenweapon
    else
    {
      var %weapon%evenweaponlock 1
      var evenweapontarget 0
      goto EVENWEAPONSWITCH
    }
  }
  return

EVENWEAPONLOOP:  
  if (%alllockcheck >= %weaponnum) then
  {
    #echo EvenTrain - All weapons locked.
    var currentweapon -1
    return
  }
  if (%evencount > %weaponnum) then
  {
    if (%evenleast = 0) then
    {
      var currentweapon -1
    }
    var evenweapon %evenleast
    var currentweapon %evenweapon
    var evenweapontarget $%weaponskill%evenweapon.LearningRate
    math evenweapontarget add %targetnum
    #echo EvenTrain - Lowest weapon: %evenweapon
    return
  }

  if $%weaponskill%evencount.LearningRate = 34 then var weapon%evencountlock 1
  if $%weaponskill%evencount.LearningRate < 25 then var weapon%evencountlock 0
  if $%weaponskill%evencount.Ranks >= 1750 then var weapon%evencountlock 1
  if (%weapon%evencountlock) = 1 then
  {
		#echo EvenTrain - Weapon%evencount locked.
		var weapon%evencountlock 1
		math alllockcheck add 1
		math evencount add 1
		goto EVENWEAPONLOOP
  }
  if %weapon%evencountlock != 1 then
  {
    if %evenleast = 0 then
    {
      var evenleast %evencount
      var evenleastnum $%weaponskill%evencount.LearningRate
    }
    if $%weaponskill%evencount.LearningRate < %evenleastnum then
    {
      var evenleast %evencount
      var evenleastnum $%weaponskill%evencount.LearningRate
    }
    #echo EvenTrain - WeaponSkill%evencount: $%weaponskill%evencount.LearningRate
  }
  math evencount add 1
  goto EVENWEAPONLOOP

WEAPONRESET:
  var weapon1count 0
  var weapon2count 0
  var weapon3count 0
  var weapon4count 0
  var weapon5count 0
  var weapon6count 0
  var weapon7count 0
  var weapon8count 0
  var weapon9count 0
  var weapon10count 0
  var weapon11count 0
  var weapon12count 0
  var weapon13count 0
  var weapon14count 0
  var weapon1lock 0
  var weapon2lock 0
  var weapon3lock 0
  var weapon4lock 0
  var weapon5lock 0
  var weapon6lock 0
  var weapon7lock 0
  var weapon8lock 0
  var weapon9lock 0
  var weapon10lock 0
  var weapon11lock 0
  var weapon12lock 0
  var weapon13lock 0
  var weapon14lock 0
  var currentweapon -1
  if %spell = "YES" then
  {
    if (($Warding.LearningRate > 28) && ($Utility.LearningRate > 28) && ($Augmentation.LearningRate > 28)) then
    { 
      var targetlock 0
      var debillock 0
    }
  }
  else
  {
    var targetlock 0
    var debillock 0
  }
  return

WEAPONSET:
  var weapontype %weapon%currentweapon
  eval weapontype tolower("%weapontype")
  var weaponname %%weapontypeweapon
  var lastweapon %currentweapon
  var lastweaponmode %weaponmode
	var usingacm 0
	var usingstealth 0
	var usingtactics 0
	var usingexpert 0
	var usingsmite 0
	var usingbackstab 0
	var usingwhirlwind 0
	#MELEE_WEAPONS
  if ((%weapontype = "brawl") || (%weapontype = "se") || (%weapontype = "le") || (%weapontype = "the") || (%weapontype = "sb") || (%weapontype = "lb") || (%weapontype = "thb") || (%weapontype = "stave") || (%weapontype = "pole")) then
  {
    var usingbow 0
    var weaponmode melee
  }
  #THROWN_WEAPONS
  if ((%weapontype = "lt") || (%weapontype = "ht")) then
  {
    var usingbow 0
    var weaponmode thrown
    var att %%weapontypeverb
  }
  #AIMED_WEAPONS
  if ((%weapontype = "bow") || (%weapontype = "xbow") || (%weapontype = "sling")) then
  {
    if %lastweapon != %currentweapon then
		{
			if %aiming = 1 then
			{
				echo Weapon switched.  Killing aiming just in case.
				var aiming 0
			}
		}
		var combonum 0
		var weaponmode aimed
		var usingbow 1
		if %weapontype = "xbow" then var ubowammo %xbowammo
		if %weapontype = "bow" then var ubowammo %bowammo
		if %weapontype = "sling" then var ubowammo %slingammo
		gosub BOWSTANCECHECK
  }
  return
  

WEAPONGET: 
  if %weapontype = "brawl" then
  {
    gosub STOWALL
    return
	}
	if %weaponname = "none" then
	{
	  gosub STOWALL
    return
	}
	if %hand = "left" then var otherhand right
	if %hand = "right" then var otherhand left
	if matchre ("$%otherhandhand", "%weaponname") then gosub SWAP
	if !matchre ("$%handhand", "%weaponname") then
	{
		if ("$%handhand" != "Empty") then
		{
			gosub STOW %hand
			if ("$%handhand" != "Empty") then
			{
			  put #echo %alertwindow Yellow [Weapons] Unable to clear desired hand when switching weapons!  Please investigate!
			  put #flash
			}
		}
		if ((%platring = "YES") && (matchre ("%weaponname", "%platringitem"))) then
		{
  		gosub PLATRING
	  	if %hand = "left" then gosub SWAP
		}
		else
		{
		  gosub WIELD %hand %weaponname
			if matchre ("$%otherhandhand", "%weaponname") then gosub SWAP
			if (%goupkeep = 1) then return
		}
		if !matchre ("$%handhand", "%weaponname") then
		{
		  put #echo %alertwindow Yellow [Weapons] Unable to wield the %weaponname in the desired %hand hand when switching weapons!  Please investigate!  
		  put #flash
    }
		if ((%weaponname = "%bastardsworditem") || (%%handhand = "%bastardsworditem")) then gosub SWAPSWORD %weaponname
		if ((%weaponname = "%barmaceitem") || (%%handhand = "%barmaceitem")) then gosub SWAPBARMACE %weaponname
		if ((%weaponname = "%holyiconitem") || (%%handhand = "%holyiconitem")) then gosub SWAPICON %weaponname
		if ((%weaponname = "%risteitem") || (%%handhand = "%risteitem")) then gosub SWAPRISTE %weaponname
		if ((%weaponname = "%hhristeitem") || (%%handhand = "%hhristeitem")) then gosub SWAPHHRISTE %weaponname
	}
  return

BOWSTANCECHECK:
  #Safety_Check
  #echo weaponskill%currentweapon: %weaponskill%currentweapon
  if tolower(%weaponskill%currentweapon) = "Bow" then var usingbow 1
  if tolower(%weaponskill%currentweapon) = "Crossbow" then var usingbow 1
  if tolower(%weaponskill%currentweapon) = "Sling" then var usingbow 1
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

SMITECHECK:
  if %smite = "YES" then
  {
    var usingsmite 0
    if %t > %nextsmite then
    {
      if $Conviction.LearningRate > 33 then var convictionlock 1
      if $Conviction.LearningRate < 20 then var convictionlock 0
      if $Conviction.Ranks >= 1750 then var convictionlock 1
      if %convictionlock = 0 then
      {
        gosub SMITETEST
        if ((%weapontype != "brawl") && (%smitesleft = 1)) then var usingsmite 1
      }
    }
  }
  return

STEALTHCHECK:
  if (%weaponmode = "thrown") then return
  if %stealth = "YES" then
  {
    var laststealth %usingstealth
    #echo stealthlock: %stealthlock
    if $Stealth.LearningRate > 33 then var stealthlock 1
    if $Stealth.LearningRate < 20 then var stealthlock 0
    if $Stealth.Ranks >= 1750 then var stealthlock 1
    if %stealthlock = 1 then var usingstealth 0
    else var usingstealth 1
    if (("$guild" = "Thief") && (%backstab = "YES")) then
    {
      if $Backstab.LearningRate > 33 then var backstablock 1
      if $Backstab.LearningRate < 20 then var backstablock 0
      if $Backstab.Ranks >= 1750 then var backstablock 1
      if %backstablock != 1 then
      {
        if ((%weapontype = "se") || (%weapontype = "sb")) then var usingstealth 1
      }
    }
  }
  return
  
TACTICSEXPERTHANDCHECK:
	if ($Backstab.LearningRate > 33) then var backstablock 1
	if ($Backstab.LearningRate < 20) then var backstablock 0
	if ($Backstab.Ranks >= 1750) then var backstablock 1
	if ($Expertise.LearningRate > 33) then var expertlock 1
	if ($Expertise.LearningRate < 20) then var expertlock 0
	if ($Expertise.Ranks >= 1750) then var expertlock 1
	if ($Offhand_Weapon.LearningRate > 32) then var offhandlock 1
	if ($Offhand_Weapon.LearningRate < 20) then var offhandlock 0
	if ($Offhand.Ranks >= 1750) then var offhandlock 1
	if ($Tactics.LearningRate > 29) then var tacticslock 1
	if ($Tactics.LearningRate < 20) then var tacticslock 0
	if ($Tactics.Ranks >= 1750) then var tacticslock 1
	
  var hand right
  if ((%offhand = "YES") && (%offhandlock != 1)) then 
  {
    if ("%%weapontypeoffhand" = "YES") then var hand left
  }
  
  var usingexpert 0
  if ((%expertise = "YES") && (%expertpause != 1)) then
  {
		if ((%expaccuracy = "YES") && (%eaccuracy != 1)) then
		{
			var usingexpert 1
			var usingtactics 0
			var eanalyzetype accuracy
			var hand right
			return
		}
		if ((%expdamage = "YES") && (%edamage != 1)) then
		{
			var usingexpert 1
			var usingtactics 0
			var eanalyzetype damage
			var hand right
			return
		}      
		if (%expertlock != 1) then
		{
			var usingexpert 1
			var usingtactics 0
			var hand right
			return  
		}  
  }
  var usingtactics 0
  if ((%tactics = "YES") && (%tacticslock = 0)) then
  {
		if (matchre("%weapontype", "sb|lb|thb|se|le|the|brawl|pole|stave")) then
		{
		  var usingtactics 1
			if (("$guild" = "Thief") && (%backstab = "YES") && (%backstablock = 0))  then
			{
			  if ((%weapontype = "se") || (%weapontype = "sb")) then var usingtactics 0
			}
		}
  }
  if ((%usingtactics = 1) && ("%hand" = "left")) then var hand right
  return

ARMORCHECKLOOPOLD:
  math armorloop add 1
  if %armorloop > %armornum then return
  if %usingstealth = 1 then
  {
    if %a%armorloopstealthrem = "YES" then
    {
      if %armor%armorloopworn = 1 then
      {
        gosub REMITEM %armor%armorloopname 
        gosub STOWITEM %armor%armorloopname
        var armor%armorloopworn 0
      } 
    }
    else
    {
      if %armor%armorloopworn = 0 then
      {
        gosub GETITEM %armor%armorloopname
        gosub WEARITEM %armor%armorloopname
        var armor%armorloopworn 1
      }
    }
  }
  else
  {
    if %armor%armorloopworn = 0 then
    {
      gosub GETITEM %armor%armorloopname
      gosub WEARITEM %armor%armorloopname
      var armor%armorloopworn 1
    }
  }
  goto ARMORCHECKLOOP
  
MOVECHOOSE:
  if %usingexpert = 1 then
  {
    if %expertdone = 1 then gosub EXPERTRESET
    if %eanalyzedone != 1 then
    {
      if ((%eanalyzetype = "accuracy") || (%eanalyzetype = "damage")) then
      else var eanalyzetype flame
      gosub EANALYZE
      var eanalyzetype flame
    }
    if (%expertmax = 0) then gosub EXPERTSET
    if (%expertdone = 1) then goto MOVECHOOSE
    if (%lasthit = 1) then
    {
      math emovenum add 1
      if %emovenum > %expertmax then
      {
        gosub EXPERTRESET
        goto MOVECHOOSE
      }
      #echo emove%emovenum: %emove%emovenum
      var att %emove%emovenum
      #echo Moves! %emove1, %emove2, %emove3, %emove4, %emove5.
      #echo Move%emovenum: %emove%emovenum
    }
  }
  if %usingtactics = 1 then
  {
    if %tacticsdone = 1 then gosub TACTICSRESET
    if %analyzedone != 1 then
    {
      gosub ANALYZE
      if $Tactics.LearningRate > 33 then var tacticslock 1
      if $Tactics.LearningRate < 20 then var tacticslock 0
      if %tacticslock = 1 then
      {
        var usingtactics 0
        goto MOVECHOOSE
      }
    }
    #echo tacticsmax: %tacticsmax
    if %tacticsmax = 0 then gosub TACTICSSET
    if %tacticsdone = 1 then goto MOVECHOOSE
    if %lasthit = 1 then
    {
      #echo movenum: %movenum
      math movenum add 1
      if %movenum > %tacticsmax then
      {
        gosub TACTICSRESET
        goto MOVECHOOSE
      }
      var att %tmove%movenum
      #echo Moves! %tmove1, %tmove2, %tmove3, %tmove4, %tmove5.
      #echo Move%movenum: %tmove%movenum
    }
  }
  if ((%usingtactics != 1) && (%usingexpert != 1)) then
  {
    #BACKSTAB
		if ((%backstab = "YES") && ("$guild" = "Thief") && (%usingstealth = 1)) then
		{
			if ((%weapontype = "se") || (%weapontype = "sb")) then 
			{
				var usingbackstab 1
			}
		}
		#ACM's
		If ((%acms = "YES") && (%usingtactics != 1) && (%usingexpert != 1) && (%usingstealth != 1) && (%usingsmite != 1) && (%usingbackstab != 1)) then
    {
      gosub ACMLOGIC
    }
    #WHIRLWIND
		if ((%whirlwind = "YES") && ("$guild" = "Barbarian")) then
		{
			if ((%usingstealth = 0) && (%usingexpert = 0) && (%usingtactics = 0) && (%weapontype != "brawl") && (%usingacm != 1)) then 
			{
			  var usingwhirlwind 1
			  if (%hand = "right") then var oppositehand left
			  else var oppositehand right
			  if ((%weapontype = "se") || (%weapontype = "le") || (%weapontype = "sb") || (%weapontype = "lb") || ((%weapontype = "stave") && (%staveoffhand = "YES"))) then
			  {
					var offhandchoosecount 1
					var offhandlowestms 35
					var offhandlowest 0
					gosub OFFHANDCHOOSE
					#echo offhandlowest - %offhandlowest: %offhandlowestms
					#echo goodoffhand: %goodoffhand
					if (%goodoffhand = 1) then
					{
						gosub STOW %oppositehand
						gosub WIELD %oppositehand %%offhandlowestweapon
					}
			  }
        return
			}
		}
    #REGULAR_ATTACKS
    if %weapontype = "brawl" then gosub BRAWLCOMBO
		if %weapontype = "se" then
		{
			if %secombo = "slice" then gosub EDGEDCOMBO
			else gosub PIERCECOMBO
		}
		if %weapontype = "le" then gosub EDGEDCOMBO
		if %weapontype = "the" then gosub EDGEDCOMBO
		if %weapontype = "sb" then gosub BLUNTCOMBO
		if %weapontype = "lb" then gosub BLUNTCOMBO
		if %weapontype = "thb" then gosub BLUNTCOMBO
		if %weapontype = "stave" then gosub BLUNTCOMBO
		if %weapontype = "pole" then
		{
			if %polecombo = "slice" then gosub EDGEDCOMBO
			else gosub PIERCECOMBO
		}
		#echo Balance: %balance    Fatigue: $stamina%
		if ((%balance = "off") || (%balance = "badly") || (%balance = "solidly") || (%balance = "extremely") || (%balance = "hopelessly") || (%balance = "completely") then
		{
			var att %lowattack
			return
		}
		if $stamina < 80 then
		{
			var att %lowfatattack
			return
		}
		if ((%balance = "incredibly") && ($stamina > 90)) then
		{
			var att %highattack
			return
		} 
		if ((%balance = "nimbly") || (%balance = "adeptly") || (%balance = "solidly")) then
		{
			var att %medattack
			return
		}
		var att %lowattack
		#SMITE
    if ((%smite = "YES") && ("$guild" = "Paladin")) then gosub SMITECHECK
    if %usingsmite = 1 then
    {
      var att smite %att
      var nextsmite %t
      math nextsmite add 62
      return
    }
  }
  return


ACMLOGIC:
  var usingacm 0
  if (%hand = "right") then
	{
    if ((%weapontype = "se") || (%weapontype = "le") || (%weapontype = "the")) then
    {
      if %t >= %nextacmcleave then
      {
        var acmtype cleave 
        var usingacm 1
      }
    }
    if ((%weapontype = "sb") || (%weapontype = "lb") || (%weapontype = "thb")) then
    {
      if (%t >= %nextacmcrash) then
      {
        var acmtype crash
        var usingacm 1
      }
    }
		if (%weapontype = "pole") then
		{
			if (%t >= %nextacmimpale) then
			{
			  var acmtype impale
				var usingacm 1
			}
		}
		if (%weapontype = "brawl") then
		{
			if (%t >= %nextacmpalmstrike then
			{
			  var acmtype palmstrike
				var usingacm 1
			}
		}
		if (%weapontype = "stave") then
		{
			if (%t >= %nextacmtwirl) then
			{
				var acmtype twirl
				var usingacm 1
			}
		}
		if (%offhand = "YES") then
		{
			if ((%weapontype = "sb") || (%weapontype = "lb") || (%weapontype = "se") || (%weapontype = "le") || ((%weapontype = "stave") && (%staveoffhand = "YES"))) then
			{
			  #put #echo >Log weaponname: %weaponname  ||  bastardsworditem: %bastardsworditem ||  barmaceitem: %barmaceitem || holyiconitem: %holyiconitem || risteitem: %risteitem || %hhristeitem: %hhristeitem
			  if ((%weaponname != "%bastardsworditem") && (%weaponname != "%barmaceitem") && (%weaponname != "%holyiconitem") && (%weaponname != "%risteitem") && (%weaponname != "%hhristeitem")) then
			  {
					if (%t >= %nextacmdoublestrike) then
					{
						gosub OFFHANDCHOOSE
						if %goodoffhand = 1 then
						{
							if ("%hand" = "right") then
							{
								gosub STOW left
								gosub WIELD left %%offhandlowestweapon
							}
							else
							{
								gosub STOW right
								gosub WIELD right %%offhandlowestweapon
							}
							var acmtype doublestrike
							var usingacm 1
						}
					}
			  }
			}
		}
	}
	else
	{
		if (%offhand = "YES") then
		{
			if ((%weapontype = "sb") || (%weapontype = "lb") || (%weapontype = "se") || (%weapontype = "le") || ((%weapontype = "stave") && (%staveoffhand = "YES"))) then
			{
				if (%t >= %nextacmdoublestrike) then
				{
					gosub OFFHANDCHOOSE
					if (%goodoffhand = 1) then
					{
						gosub STOW right
						gosub WIELD right %%offhandlowestweapon
						var acmtype doublestrike
						var usingacm 1
					}
				}
			}
		}
	}
	return


OFFHANDCHOOSE:
  var goodoffhand 0
  var offhandlist
  if (%offhand = "YES") then
  {
    if ((%weapontype != "se") && (%seoffhand = "YES")) then 
    {
      if ((%seweapon != "%bastardsworditem") && (%seweapon != "%barmaceitem") && (%seweapon != "%holyiconitem") && (%seweapon != "%risteitem") && (%seweapon != "%hhristeitem")) then var offhandlist %offhandlist|se
	  }
		if ((%weapontype != "sb") && (%seoffhand = "YES")) then 
		{
		  if ((%sbweapon != "%bastardsworditem") && (%sbweapon != "%barmaceitem") && (%sbweapon != "%holyiconitem") && (%sbweapon != "%risteitem") && (%sbweapon != "%hhristeitem")) then var offhandlist %offhandlist|sb
		}
		if ((%weapontype != "stave") && (%staveoffhand = "YES")) then
		{
		  if ((%staveweapon != "%bastardsworditem") && (%staveweapon != "%barmaceitem") && (%staveweapon != "%holyiconitem") && (%staveweapon != "%risteitem") && (%staveweapon != "%hhristeitem")) then var offhandlist %offhandlist|stave  
		}
		if ("$guild" = "Barbarian") then
		{
			if ((%weapontype != "le") && (%leoffhand = "YES")) then
			{
			  if ((%leweapon != "%bastardsworditem") && (%leweapon != "%barmaceitem") && (%leweapon != "%holyiconitem") && (%leweapon != "%risteitem") && (%leweapon != "%hhristeitem")) then var offhandlist %offhandlist|le
			}
			if ((%weapontype != "lb") && (%lboffhand = "YES")) then 
			{
			  if ((%lbweapon != "%bastardsworditem") && (%lbweapon != "%barmaceitem") && (%lbweapon != "%holyiconitem") && (%lbweapon != "%risteitem") && (%lbweapon != "%hhristeitem")) then var offhandlist %offhandlist|lb
		  }
		}
  }
  eval offhandlistlength length("%offhandlist")
  eval offhandlistitems count("%offhandlist", "|")
  #put #echo Yellow offhandlist: %offhandlist
  #echo offhandlistlength: %offhandlistlength
  #echo offhandlist: %offhandlist
  #echo offhandlistitems: %offhandlistitems
  #EMPTY_LIST_CHECK
  if (%offhandlistlength = 0) then return
  
  var offhandchoosecount 1
  var offhandlowestms 35
  var offhandlowest 0
  gosub OFFHANDCHOOSELOOP
  #echo offhandlowest - %offhandlowest: %offhandlowestms
  if (%offhandlowest != 0) then var goodoffhand 1
  #echo offhandlowest: %offhandlowest
  #put #echo Yellow Goodoffhand: %goodoffhand
  return

OFFHANDCHOOSELOOP:
  if %offhandchoosecount > %offhandlistitems then return
  var offhandteststate 35
  if ("%offhandlist(%offhandchoosecount)" = "se") then
  {
    if $Small_Edged.Ranks < 1750 then var offhandteststate $Small_Edged.LearningRate
  }
  if ("%offhandlist(%offhandchoosecount)" = "sb") then
  {
    if $Small_Blunt.Ranks < 1750 then var offhandteststate $Small_Blunt.LearningRate
  }
  if ("%offhandlist(%offhandchoosecount)" = "le") then
  {
    if $Large_Edged.Ranks < 1750 then var offhandteststate $Large_Edged.LearningRate
  }
  if ("%offhandlist(%offhandchoosecount)" = "lb") then
  {
    if $Large_Blunt.Ranks < 1750 then var offhandteststate $Large_Blunt.LearningRate
  }
  if ("%offhandlist(%offhandchoosecount)" = "stave") then
  {
    if $Staves.Ranks < 1750 then var offhandteststate $Staves.LearningRate
  }
  #echo --
  #echo %offhandlist(%offhandchoosecount): %offhandteststate
  #echo offhandlowestms: %offhandlowestms
  if %offhandteststate < %offhandlowestms then
  {
    var offhandlowestms %offhandteststate
    var offhandlowest %offhandlist(%offhandchoosecount)
    #echo new lowest: %offhandlowestms
  }
  math offhandchoosecount add 1
  goto OFFHANDCHOOSELOOP




TACTICSSET:
  var movenum 0
  if "%tmove5" != "none" then
  {
    var tacticsmax 5
    return
  }
  if "%tmove4" != "none" then
  {
    var tacticsmax 4
    return
  }
  if "%tmove3" != "none" then
  {
    var tacticsmax 3
    return
  }
  if "%tmove2" != "none" then
  {
    var tacticsmax 2
    return
  }
  if "%tmove1" = "none" then var tacticsdone 1
  var tacticsmax 1
  return
  
EXPERTSET:
  var emovenum 0
  if "%emove5" != "none" then
  {
    var expertmax 5
    return
  }
  if "%emove4" != "none" then
  {
    var expertmax 4
    return
  }
  if "%emove3" != "none" then
  {
    var expertmax 3
    return
  }
  if "%emove2" != "none" then
  {
    var expertmax 2
    return
  }
  if "%emove1" = "none" then var expertdone 1
  var expertmax 1
  return

TACTICSRESET:
  var tmove1 none
  var tmove2 none
  var tmove3 none
  var tmove4 none
  var tmove5 none
  var tacticsdone 0
  var analyzedone 0
  var movenum 1
  var tacticsmax 0
  return

EXPERTRESET:
  var emove1 none
  var emove2 none
  var emove3 none
  var emove4 none
  var emove5 none
  var expertdone 0
  var eanalyzedone 0
  var emovenum 1
  var expertmax 0
  return

#==============DEAD_MONSTER==============  
MONTEST:
  if %t < %nextmontest then return
  if %avoidshock = "YES" then
  {
    if matchre ("$roomobjs", "(%absnoshockcritters) ((which|that) appears dead|\(dead\))") then
	  {
	    var goodtarget 0
      var shockcritter 1
      var currentcritter 0
    }
  }
  if ((%deadcheck = 1) || (%lootalldead = "YES")) then
  {
    var deadcheck 0
    if matchre ("$roomobjs", "(%ritualcritters) ((which|that) appears dead|\(dead\))") then
    {
      if ("$guild" = "Necromancer") then
      {
        gosub NRITUAL
        if (matchre("$roomobjs", "(%skinnablecritters) ((which|that) appears dead|\(dead\))") then
        {
          if ("%skinning" = "YES") then gosub SKINNINGLOGIC
        }
      }
      else
      {
        if (matchre("$roomobjs", "(%skinnablecritters) ((which|that) appears dead|\(dead\))") then
        {
          if ($First_Aid.LearningRate > 33) then var firstaidlock 1
          if ($First_Aid.LearningRate < 21) then var firstaidlock 0
          if ($First_Aid.Ranks >= 1750) then var firstaidlock 1   
          if (("%dissect" = "YES") && ($circle >= 10)) then
          {
            if ("%skinning" = "YES") then
            {
              if (%firstaidlock = 1) then gosub SKINNINGLOGIC
              else
              {
                if ($Skinning.Ranks >= 1750) then gosub DISSECTLOGIC
                else
                {
                  if ($Skinning.LearningRate > $First_Aid.LearningRate) then gosub DISSECTLOGIC
                  else gosub SKINNINGLOGIC
                }
              }
            }
            else
            {
              if (%firstaidlock = 0) then gosub DISSECTLOGIC
            }
          }
          else
          {
            if ("%skinning" = "YES") then gosub SKINNINGLOGIC
          }
        }
        else
        {
          if (("%dissect" = "YES") && (%firstaidlock = 0)) then gosub DISSECTLOGIC
        }
      }
    }
    else
    {
      if (matchre("$roomobjs", "(%skinnablecritters) ((which|that) appears dead|\(dead\))") then
      {
        if ("%skinning" = "YES") then gosub SKINNINGLOGIC
      }
    }
    
    if matchre("$roomobjs", "(%critters) ((which|that) appears dead|\(dead\))") then
    {
      var killbeforeleave 1
      var goodtarget 0
      var shockcritter 1
      gosub LOOT
      gosub LOOTCHECK
    }
    var nextmontest %t
    math nextmontest add 3
  }
  return

DISSECTLOGIC:
  #var dissected 1
  if matchre ("$roomobjs", "(\w+) ((which|that) appears dead|\(dead\))") then var ritualmonster $1
  gosub DISSECT
  return

SKINNINGLOGIC:
  pause .5
  if (%necroskin = 1) then
  {
    var necroskin 0
    return
  }
  if ("%skinning" = "NO") then return
  
  var badskin 0
  var noskin 0
  if (%arrange > 0) then
  {
    if ($Skinning.LearningRate >= 30) then
    {
      if %arrangeforpart = "YES" then
      {
        var arrangetype for part
        var arrcount 1
        gosub ARRANGE
      }
      if %skinafterlock = "NO" then var badskin 1
    }
    else
    {
      var arrcount %arrange
      if %arrangeforpart = "YES" then var arrangetype for part
      else var arrangetype for skin
      gosub ARRANGE
    }
  }
  if (%badskin = 0) then
  {
    gosub SKINNING
    if (%currentweapon = -1) then
    {
      if (("$lefthand" != "Empty") || ("$righthand" != "Empty")) then gosub BUNDLELOGIC
    }
    else
    {
      if tolower("%weapon%currentweapon") != "brawl" then
      {
        if (matchre("$lefthandnoun", "%weaponname") then
        {
          if ("$righthand" != "Empty") then gosub BUNDLELOGIC      
        }
        else 
        {
          if (matchre("$righthandnoun", "%weaponname") then
          {
            if ("$lefthand" != "Empty") then gosub BUNDLELOGIC
          }
          else if (("$righthand" != "Empty") && ("$lefthand" != "Empty")) then gosub BUNDLELOGIC
        }
      }
      else
      {
        if (("$lefthand" != "Empty") || ("$righthand" != "Empty")) then gosub BUNDLELOGIC
      }
    }
  }
  return
  

BUNDLELOGIC:
  #SWAPPING_SKINS_OUT
  var lowereditem -1
  gosub BUNDLESWAP
  if ("%appsaveitem" != "none") then
  {
    var lbundlecount 0
    var tbundlecount 0
    action (bundlecount) math lbundlecount add 1 when lumpy bundle
    action (bundlecount) math tbundlecount add 1 when tight bundle
    put inv %appsaveitemstorage
    pause 3
    action (bundlecount) off
  }
  #REMOVING_BUNDLE_AND_STORING
  gosub REMITEM tight bundle  
  if (($righthand = "tight bundle") || ($lefthand = "tight bundle")) then
  {
    if ((%appsaveitem = "tight") && (%tbundlecount = 0)) then
    {
      gosub PUTITEM my tight bundle in my %appsaveitemstorage
    }
    else
    {
      gosub STOWITEM tight bundle
      if (($righthand = "tight bundle") || ($lefthand = "tight bundle")) then
      {
        put #echo >$alertwindow Yellow Tried to stow full bundle but failed!  Please address!
        put #flash
        put #play Advance
        if ("%bugout" = "YES") then goto BUGOUT
        else goto BUNDLESTOWFAILED
      }
    }
  }
  if (($righthand = "lumpy bundle") || ($lefthand = "lumpy bundle")) then
  {
    if ((%appsaveitem = "lumpy") && (%lbundlecount = 0)) then
    {
      gosub PUTITEM my lumpy bundle in my %appsaveitemstorage
      var lbundlecount 1
    }
    else
    {
      gosub BUNDLETIE
      if ((%appsaveitem = "tight") && (%tbundlecount = 0)) then
      {
        gosub PUTITEM my tight bundle in my %appsaveitemstorage
      }
      else
      {
        gosub STOWITEM lumpy bundle
      }
    }
  }
  #MAKING_NEW_BUNDLE
  if ((%lowereditem != -1) && (%lowereditem != 0)) then gosub GETITEM my %lowereditem
  gosub BUNDLEMAKE
  if ((matchre("$righthandnoun", "bundle")) || (matchre("$lefthandnoun", "bundle"))) then
  {
    if ((%appsaveitem = "lumpy") && (%lbundlecount = 0)) then
    {
      gosub WEARITEM bundle
    }
    else
    {
      gosub BUNDLETIE
      gosub BUNDLEADJUST
      gosub WEARITEM bundle
    }
  }
  gosub STOWFEET
  return
  
BUNDLESTOWFAILED:
  put #echo Yellow ===FAILED TO STOW TIGHT BUNDLE!===
  put #flash
  put #play Advance
  pause 5
  goto BUNDLESTOWFAILED
  
LEAVEROOM:
  gosub DEFSTANCE
  gosub MONSTERARRAY
  if (matchre("%monsterarray", "%critters")) then  
  {
    if ("%movescream" = "YES") then gosub SCREAMDEFIANCE
    if ("%movewhistle" = "YES") then gosub WHISTLEPIERCE
    if ("%movevanish" = "YES") then gosub KHRI vanish
  }
  if ($sitting = 1) then gosub STAND
  if ($kneeling = 1) then gosub STAND
  if ($prone = 1) then gosub STAND
  if %bugoutnostow != 1 then gosub STOWALL
  gosub STOWFEET
  gosub COLLECTINGAMMO
  if ("%necrosafety" = "YES") then
  {
    if $SpellTimer.RiteofGrace.active != 1 then
    {
      gosub RELCYCLIC
      gosub PERCSELF
    }
    if ($SpellTimer.PhilosophersPreservation.active) = 1 then
    {
      gosub RELNSPELL php
    }
  }
  else
  {
    gosub RELCYCLIC
    gosub PERCSELF
  }
  gosub SPELLCANCEL
  gosub UNHIDE
  gosub FLEERETREAT
  #BARB_SHUTOFF
  if ("$guild" = "Barbarian") then
  {
    gosub BERSERKSTOPALL
    gosub FORMSTOPALL
  }
  return


BUGOUT:
  put #flash
  put #play Soul
  put #echo %alertwindow Yellow [Bugout]: Bugging Out!
  var buggingout 1
  if %collectammo = "YES" then gosub COLLECTINGAMMO
  gosub LEAVEROOM

  gosub MOVEANYROOM
  gosub MOVE %bugoutroom
  gosub RELSPELL
  if ("$guild" = "Barbarian") then
  {
    gosub BERSERKSTOPALL
    gosub FORMSTOPALL
  }
  gosub RELALL
  gosub CASTRESET
  if ("%sleepontravel" = "YES") then gosub DEEPSLEEP
  if %rpastatus = 1 then gosub RPATOGGLE
  goto BUGOUTLOOP

BUGOUTLOOP:
  #gosub BUGOUTCUSTOM
  if ($bleeding = 1) then
  {
    if (%t > %nextbleed) then gosub TENDCHECK
  }
  pause 1
  goto BUGOUTLOOP

END: