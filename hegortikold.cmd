var gortikdoor other door
var gortikstand stand

waitforre went through a curtained door
put go curtain door
delay .1
gosub LOOKSTAND first
gosub LOOKSTAND second
gosub LOOKSTAND third


exit

LOOKSTAND:
  var looklocation $0
  goto LOOKSTANDMAIN
LOOKSTANDP:
  pause
LOOKSTANDMAIN:
  matchre LOOKSTANDP ^\.\.\.wait|^Sorry\, you may only type ahead|^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|Between the ringing in your head
  matchre LOOKRETURN On the .* you see (.*)\.
  match RETURN I could not find what you were referring to.  
  match RETURN You see nothing unusual.
  match RETURN There is nothing on there.
  put look on %looklocation stand
  matchwait

LOOKRETURN:
  put #echo >Log Yellow %looklocation: $1
  return
  
RETURN:
  return
