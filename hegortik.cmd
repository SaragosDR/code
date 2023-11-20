action math numshop add 1;var stand%numshop $2 $3 when ^  (a|an|some) (\w+) (\w+)$
action math numshop add 1;var stand%numshop $3 $4 when ^  (a|an|some) (\w+) (\w+) (\w+)$
action var platconvert $2;math platconvert divide 1000; put #echo >Log Yellow %stand%shopstand: $1 - %platconvert when ^  (.*) for (\d+) copper Kronars$
action put #echo >Log Yellow %stand%shopstand: $1 - $2 when ^  (.*) for (\d+) platinum Kronars$

var numshop 0

if ("$roomname" != "Limited Treasures, Sales Floor") then gosub ENTERSALES
gosub SHOPWINDOW
if (%numshop > 0) then gosub SHOPSTAND 1
if (%numshop > 1) then gosub SHOPSTAND 2
if (%numshop > 2) then gosub SHOPSTAND 3
if (%numshop > 3) then gosub SHOPSTAND 4
if (%numshop > 4) then gosub SHOPSTAND 5
if (%numshop > 5) then gosub SHOPSTAND 6
if (%numshop > 6) then gosub SHOPSTAND 7
if (%numshop > 7) then gosub SHOPSTAND 8
if (%numshop > 8) then gosub SHOPSTAND 9
exit

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
  var shopstand $0
SHOPSTANDMAIN:
  matchre SHOPSTANDMAIN ^\.\.\.wait|^Sorry\, you may only type ahead|^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|^Between the ringing in your head
  match SHOPSTANDEMPTY There's nothing for sale attached to the
  match RETURN [Type SHOP [GOOD] or click an item to see some details about it.]
  match RETURN I could not find what you were referring to.
  put shop %stand%shopstand
  matchwait
  
SHOPSTANDEMPTY:
  put #echo >Log Yellow %stand%shopstand: Empty
  return

RETURN:
  return