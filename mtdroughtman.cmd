include library.cmd

var storage cloud


MAIN:
  gosub STOWALL
  gosub GETITEM my runner's pass
  gosub REDEEMPASS
  gosub STOWALL
  gosub ASKACCESS
  gosub GOMAZE
  gosub LEAVEMAZE
  gosub OPENITEM my runner's package
  gosub GETCOINS
  gosub PACKLOOTCHECK
  gosub DUMPITEM my runner's package
  move out
  goto MAIN
  
  
REDEEMPASSP:
  pause
REDEEMPASS:
  matchre REDEEMPASSP %waitstring
  match REDEEMPASS Once you redeem this, you'll have 1 instance access to the Droughtman's Maze.  If you're prepared to immediately begin, repeat the command within 10 seconds.
  match RETURN The maze spieler takes your passes.
  match RETURN The maze spieler takes one of your passes.
  put redeem my pass
  matchwait
  
ASKACCESSP:
  pause
ASKACCESS:
  matchre ASKACCESSP %waitstring
  match RETURN Almost faster than you can blink, you notice dozens of floating hands suddenly appear and snatch away all of your possessions.  
  put ask spieler about access
  matchwait
  
GOMAZEP:
  pause
GOMAZE:
  matchre GOMAZEP %waitstring
  match GOMAZE Are you sure you're ready to enter the maze?  If so, repeat the the command in the next 15 seconds.
  match RETURN The door closes behind you as you pass through it, sealing you inside a tiny pitch-black chamber or the other side!  
  put go door
  matchwait

LEAVEMAZEP:
  pause
LEAVEMAZE:
  matchre LEAVEMAZEP %waitstring
  match LEAVEMAZE WARNING!  Going through the black door will end your time in the maze early, awarding you a single incidental and 5 indicia.
  match RETURN You have earned 5 Droughtman's indicia and a maze runner's package, which an attendant places in your hand with a courteous smile.
  put go black door
  matchwait

GETCOINSP:
  pause
GETCOINS:
  matchre GETCOINSP %waitstring
  match GETCOINS You pick up 
  match RETURN What were you referring to?
  match GETCOINSTOW You get
  put get coin from my package
  matchwait
  
GETCOINSTOW:
  put #echo >Log Yellow Found $lefthand!
  gosub PUTITEM $lefthand in my %storage
  goto GETCOINS
  
PACKLOOTCHECKP:
  pause
PACKLOOTCHECK:
	matchre PACKLOOTCHECKP \.\.\.wait|type ahead|stunned|while entangled in a web\.
  matchre PACKLOOTGET In the runner's package you see (?:.*) (\w+)\.
  matchre PACKLOOTGET In the runner's package you see a purple gold (.+)\.
  match RETURN There is nothing in there.
	put look in my runner's package
	matchwait


PACKLOOTGET:
  var lootitem $1
  gosub GETITEM %lootitem from my runner's package
  put #echo >Log Yellow Found $lefthand!
  gosub PUTITEM %lootitem in my %storage
  return