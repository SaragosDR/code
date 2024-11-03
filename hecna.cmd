var scripttag CNA
include library.cmd
include helibrary.cmd

action var lootreceived $1 when Among your winnings you find (.*), which is now in your (right|left) hand!
var betamount 5001
var startroom 98
var suits anchor|crown|heart|ship|trident
eval suitcount count("%suits", "|")

gosub LOCATIONCHECK
gosub GOROOM first curtain

MAIN:
  var betsuit 0
  put #echo suitcount: %suitcount
  var moneyneeded %suitcount
  math moneyneeded add 1
  echo moneyneeded: %moneyneeded
  math moneyneeded multiply %betamount
  echo moneyneeded: %moneyneeded
  gosub WEALTHCHECK
  echo totalkro: %totalkro
  if (%totalkro < %moneyneeded) then
  {
    put #echo >Log Yellow [%scripttag] Out of money.  Withdrawing more.
    gosub GOROOM venue
    gosub GOROOM archway
    gosub MOVE teller
    gosub HECOINWITHDRAW 10 platinum kronars
    gosub MOVE %startroom
    gosub GOROOM first curtain
  }
  gosub BET
  waitfor The libik scoops the dice off the table and returns them to the brass sphere.
  math totalattempts add 1
  gosub HANDLELOOT
  waitfor "Place your bets!  Place your bets!"
  goto MAIN


BETP:
  pause
BET:
  if %betsuit > %suitcount then return
  matchre BETP \.\.\.wait|type ahead|stunned|while entangled in a web\.|You don't seem to be able to move
  match BETWAIT You can't bet right now.  Wait until the libik calls for bets.
  #match BETOUTOFMONEY You don't have that many kronars!
  matchre BETNEXT You bet \d+ on \S+\.
  put bet %betamount on %suits(%betsuit)
  matchwait
  
BETWAIT:
  waitfor "Place your bets!  Place your bets!"
  var betsuit 0
  goto BET

BETNEXT:
  math betsuit add 1
  goto BET
  
BETOUTOFMONEY: