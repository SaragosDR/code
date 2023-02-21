include library.cmd

action var healing 1; var healtarget $1 when (\S+) whispers, "Heal me, please\."
action var nowounds 1 when \.\.\. no injuries to speak of\.

var regeneratemana 24


var healing 0
var nowounds 0

MAIN:
  if (%healing = 1) then gosub HEALTARGET
  pause .1
  goto MAIN

HEALTARGET:
  gosub EMPATHTOUCH
  pause 1
  if (%nowounds != 1) then gosub EMPATHTAKEWOUNDS
  else
  {
    put whisper %healtarget All clean.
    var nowounds 0
  }
  var healing 0
  return

EMPATHTOUCHP:
  pause
EMPATHTOUCH:
  matchre EMPATHTOUCHP %waitstring
  match RETURN You touch
  put touch %healtarget
  matchwait
  
EMPATHTAKEWOUNDSP:
  pause
EMPATHTAKEWOUNDS:
  matchre EMPATHTAKEWOUNDSP %waitstring
  match EMPATHMONITOR You feel the transfer beginning as a cold stillness settles in the center of your being and you steel yourself for the impending explosion of pain.
  put take %healtarget all
  matchwait

EMPATHMONITOR:
  pause 5
  gosub EMPATHTOUCH
  if (%nowounds = 0) then goto EMPATHMONITOR
  else
  {
    put whisper %healtarget All clean.
    var healing 0
    var nowounds 0
    return
  }