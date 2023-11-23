action math numshop add 1;var stand%numshop $1 $2 when ^  (?:a|an|some) (\w+) (\w+)$
action math numshop add 1;var stand%numshop $2 $3 when ^  (?:a|an|some) (\w+) (\w+) (\w+)$
action var platconvert $2;math platconvert divide 1000; put #echo >Log Yellow %stand%shopstand: $1 - %platconvert when ^  (.*) for (\d+) copper Kronars$
action put #echo >Log Yellow %stand%shopstand: $1 - $2 when ^  (.*) for ([\w\.]+) platinum Kronars$

var numshop 0

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
  }
  math shoploopcount add 1
  goto SHOPLOOPMAIN

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

RETURN:
  return