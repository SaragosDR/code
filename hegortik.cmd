var gortikdoor other door
var gortikstand stand

waitforre went through a curtained silversteel door
move go %gortikdoor
gosub LOOKSHOP first %gortikstand
gosub LOOKSHOP second %gortikstand
gosub LOOKSHOP third %gortikstand
exit

LOOKSHOP:
  var looklocation $0
  goto LOOKSTANDMAIN
LOOKSHOPP:
  pause
LOOKSTANDMAIN:
  matchre LOOKSHOPP ^\.\.\.wait|^Sorry\, you may only type ahead|^You are still stunned|^You can\'t do that while|^You don\'t seem to be able|Between the ringing in your head
  matchre LOOKRETURN On the .* you see (.*)\.
  match RETURN I could not find what you were referring to.  
  match RETURN You see nothing unusual.
  put look on %looklocation
  matchwait

LOOKRETURN:
  put #echo >Log Orange %looklocation: $1
  return
  
RETURN:
  return
