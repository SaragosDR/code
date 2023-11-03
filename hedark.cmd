var scripttag DARK
include library.cmd
include helibrary.cmd

action var lootreceived $2 when As you remove your hand from the Darkbox you see (a|an|some) (.*) in your grasp\!
action var needshealing 1 when Unfortunately, your wounds make it impossible for you to play the Darkbox
#action var timetofind 1 when Without warning, the Darkbox simply vanishes.


var gems1 agate|alexandrite|amber|amethyst|andalusite|aquamarine|bead|beryl|bloodgem|bloodstone|carnelian|chrysoberyl|carnelian|chalcedony
var gems2 chrysoberyl|chrysoprase|citrine|coral|crystal|diamond|diopside|emerald|egg|eggcase|garnet|gem|goldstone|glossy malachite
var gems3 (chunk of|some|piece of).*granite|hematite|iolite|ivory|jade|jasper|kunzite|lapis lazuli|malachite stone|minerals|moonstone|morganite|onyx
var gems4 opal|pearl|pebble|peridot|quartz|ruby|sapphire|spinel|star-stone|(waermodi|lasmodi|sjatmal|lantholite) stones|sunstone|talon|tanzanite|tooth|topaz|tourmaline|tsavorite|turquoise|zircon
var allgems %gems1|%gems2|%gems3|%gems4|%gems5

var badloot \S+ kelp|\S+ rockweed|\S+ \S+ rockweed|piece of \S+ sharkskin|\S+ root|\S+ flowers|shark's tooth|burlap cloth|felt cloth|bear-pelt moccasins threaded with white leather laces|cobalt-blue leather belt studded with iron|doeskin moccasins threaded with brown leather laces|embossed leather belt with a gold-washed buckle|fawn-brown leather belt decorated with steel studs|green leather eye patch|light grey leather belt studded with circles of polished amber|pleated deep green wool breeches cross-gartered from ankle to knee with brown leather|purple leather eye patch|seal-pelt moccasins threaded with black leather laces|bear tooth necklace strung on a leather thong|gryphon feather necklace strung on a leather thong|leatherfoot steak

var goodloot infuser stone|potency crystal|\S+ powder|.* cloth|.* stack|.* leather|.* bar|.* nugget|.* fragment|.* lump|.* tear|.* shard|.* ingot|.* pebble|.* rock|.* stone|.* boulder|.* deed|bulging pouch|small pouch|%lootkeeplist

var searchlist 8|10|11|12|13|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|37|49|50|51|52|53|54|55|56|77|78|73|74|76|79|80|81|82|83|84|85|86|87|88|89|90

var needshealing 0
#var timetofind 0
var startroom 3

gosub STOWALL
gosub LOCATIONCHECK

MAIN:
  if (($bleeding = 1) || (%needshealing = 1)) then
  {
    var needshealing 1
    gosub GETHEALED
  }
  if !contains("$roomobjs", "the Darkbox") then gosub FINDDARKBOX
  gosub PLAYDARKBOX
  goto MAIN
  exit


FINDDARKBOX:
  var searchnum 0
  eval searchlength count("%searchlist", "|")
  gosub FINDDARKBOXLOOP
  if contains("$roomobjs", "the Darkbox") then echo FOUND IT!
  else echo DIDN'T FIND IT!
  return
  
FINDDARKBOXLOOP:
  if %searchnum > %searchlength then return
  gosub MOVE %searchlist(%searchnum)
  if contains("$roomobjs", "the Darkbox") then return
  math searchnum add 1
  goto FINDDARKBOXLOOP
  
PLAYDARKBOXP:
  pause
PLAYDARKBOX:
  math totalattempts add 1
  matchre PLAYDARKBOXP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match BADPLAY You fish around in the unseen depths of the Darkbox but you find nothing and remove your hand in disappointment.
  match GOODPLAY And you find something!
  match BADPLAY Before your hand is completely free of the Darkbox a hissing creature darts from the depths of the box and crushes your hand!
  match RETURN Unfortunately, your wounds make it impossible for you to play the Darkbox
  match RETURN Play on what instrument?
  match RETURN What type of song did you want to play?
  match OUTOFMONEY You try to play the Darkbox, but realize you don't have the 200 Kronars required.  How depressing.
  put play darkbox
  matchwait

OUTOFMONEY:
  var currentroom $roomid
  gosub MOVE teller
  gosub HECOINWITHDRAW 10 platinum kronars
  gosub MOVE %currentroom
  goto PLAYDARKBOX

GOODPLAY:
  gosub HANDLELOOT
  return
  
BADPLAY:
  goto PLAYDARKBOX
  
 