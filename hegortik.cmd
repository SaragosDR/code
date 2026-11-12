action (shop) math numshop add 1;var stand%numshop $1 $2 when ^  (?:a|an|some) (\w+) (\w+)$
action (shop) math numshop add 1;var stand%numshop $2 $3 when ^  (?:a|an|some) (\w+) (\w+) (\w+)$
action (shop) math numshop add 1;var stand%numshop $1 $2 when ^  (?:a|an|some) (\w+) (\w+) labeled .*
action (shop) math numshop add 1;var stand%numshop $2 $3 when ^  (?:a|an|some) (\w+) (\w+) (\w+) labeled .*
action var standlist %standlist|$1; var platconvert $2;math platconvert divide 10000; put #echo >Log Yellow %stand%shopstand: $1 - %platconvert when ^  (.*) for (\d+) copper Kronars$
action var standlist %standlist|$1; var platconvert $2;math platconvert divide 1000; put #echo >Log Yellow %stand%shopstand: $1 - %platconvert when ^  (.*) for ([\w\.]+) bronze Kronars$
action var standlist %standlist|$1; var platconvert $2;math platconvert divide 100; put #echo >Log Yellow %stand%shopstand: $1 - %platconvert when ^  (.*) for ([\w\.]+) silver Kronars$
action var standlist %standlist|$1; var platconvert $2;math platconvert divide 10; put #echo >Log Yellow %stand%shopstand: $1 - %platconvert when ^  (.*) for ([\w\.]+) gold Kronars$
action var standlist %standlist|$1; put #echo >Log Yellow %stand%shopstand: $1 - $2 when ^  (.*) for ([\w\.]+) platinum Kronars$
action put #echo >Log Yellow --INSIDE: $1 when You open the .* briefly to take a quick peek inside and see (.*)\.  You quickly close it back before an attendant tackles you for tampering with the merchandise.
action (shop) off
var numshop 0

#####
var autopurchaselist none
#####


if ("$roomname" != "Limited Treasures, Sales Floor") then gosub ENTERSALES
gosub SHOPWINDOW
gosub SHOPLOOP
exit



SHOPLOOP:
  var shoploopcount 1
SHOPLOOPMAIN:
  if (%shoploopcount > %numshop) then return
  if (%numshop >= %shoploopcount) then
  {
    var standlist 0
    gosub NUMBERSTANDLOOP %shoploopcount
    if (%numberstand = 1) then gosub SHOPSTAND first %shoploopcount
    if (%numberstand = 2) then gosub SHOPSTAND second %shoploopcount
    if (%numberstand = 3) then gosub SHOPSTAND third %shoploopcount
    if (%numberstand = 4) then gosub SHOPSTAND fourth %shoploopcount
    if (%numberstand = 5) then gosub SHOPSTAND fifth %shoploopcount
    if (%numberstand = 6) then gosub SHOPSTAND sixth %shoploopcount
    if (%numberstand = 7) then gosub SHOPSTAND seventh %shoploopcount
    if (%numberstand = 8) then gosub SHOPSTAND eighth %shoploopcount
    if (%numberstand = 9) then gosub SHOPSTAND ninth %shoploopcount
    if ("%standlist" != "0") then gosub STANDLISTPROCESSING
  }
  math shoploopcount add 1
  goto SHOPLOOPMAIN

STANDLISTPROCESSING:
  eval standlist replace("%standlist", "0|", "")
  eval standlistloopcount count("%standlist","|")
  var standlistloopcounter 0
  gosub STANDLISTLOOP
  return

STANDLISTLOOP:
  if (%standlistloopcounter > %standlistloopcount) then return
  gosub NOUNSHORTEN %standlist(%standlistloopcounter)
  #put #echo Yellow open %nounonly on %stand%currentstand
  if ("%autopurchaselist" != "none") && (matchre("%standlist(%standlistloopcounter)", "%autopurchaselist"))) then
  {
    put #echo >Log Yellow Bought %standlist(%standlistloopcounter) automatically!
  }
  else
  {
    put open %nounonly on %stand%currentstand
  }
  math standlistloopcounter add 1
  if (%standlistloopcounter <= %standlistloopcount) then pause .2
  goto STANDLISTLOOP
  
  
NUMBERSTANDLOOP:
  var numberstand 1
  var currentstand $0
  var nsloopcount 1
NUMBERSTANDLOOPMAIN:
  if (%nsloopcount >= %currentstand) then return
  if ("%stand%nsloopcount" = "%stand%currentstand") then
  {
    math numberstand add 1
  }
  math nsloopcount add 1
  goto NUMBERSTANDLOOPMAIN

ENTERSALES:
  match RETURN [Limited Treasures, Sales Floor]
  match ENTERGOSILVERSTEEL went through a silversteel door.
  matchre ENTERGOCURT ^((?!smiles|frowns|ponders)[\w']+ ){1,4}went through a curtained door\.$
  matchre ENTERGO ^((?!smiles|frowns|ponders)[\w']+ ){1,4}went through a (.*) door\.$
  matchwait

ENTERGOSILVERSTEEL:
  goto ENTERSALES

ENTERGO:
  gosub ENTERROOM $1
  return 
 
ENTERGOCURT:
  gosub ENTERROOM curtained
  return
  
ENTERROOM:
  var doorstring $0
ENTERROOMMAIN:
  matchre ENTERROOMMAIN ^\.\.\.wait|^Sorry\, you may only type ahead|^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|^Between the ringing in your head
  match RETURN [Limited Treasures, Sales Floor]
  put go %doorstring door
  matchwait

SHOPWINDOW:
  action (shop) on
  matchre SHOPROOM ^\.\.\.wait|^Sorry\, you may only type ahead|^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|^Between the ringing in your head
  match RETURN The following items contain goods for sale:
  match RETURN There is nothing to buy here.
  match RETURN [Type SHOP [ITEM] to see what's on it or SHOP WINDOW.]
  put shop window
  matchwait
  
SHOPSTAND:
  var standpos $1
  var shopstand $2
SHOPSTANDMAIN:
  matchre SHOPSTANDMAIN ^\.\.\.wait|^Sorry\, you may only type ahead|^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|^Between the ringing in your head
  match SHOPSTANDEMPTY There's nothing for sale attached to the
  match RETURN [Type SHOP [GOOD] or click an item to see some details about it.]
  match RETURN I could not find what you were referring to.
  put shop %standpos %stand%shopstand
  matchwait
  
SHOPSTANDEMPTY:
  put #echo >Log Yellow %stand%shopstand: Empty
  return

NOUNSHORTEN:
  var tap $0
  eval tap replace("%tap", "a flask of ", "")
  eval tap replace("%tap", " ", "|")
  eval tap replacere("%tap", "\ba\b\|", "")
  eval tap replacere("%tap", "\ban\b\|", "")
  eval tap replacere("%tap", "\bsome\b\|", "")
  eval taplength count("%tap","|")
  var nounonly %tap(%taplength)
  return  

OPENONSTAND:
  var openitem $0
OPENONSTANDMAINP:
  pause
OPENONSTANDMAIN:
  matchre OPENONSTANDMAINP %waitstring
  match RETURN You can't open that!
  match RETURN What were you referring to?
  matchre OPENONSTANDOUTPUT You open the .* briefly to take a quick peek inside and see (.*)\.  You quickly close it back before an attendant tackles you for tampering with the merchandise.
  put open %openitem
  matchwait

OPENONSTANDOUTPUT:
  put #echo Yellow $0
  return


RETURN:
  return