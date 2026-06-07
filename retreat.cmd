include library.cmd


action var retreat 1 when ^\w+ closes to pole weapon range on you!
action var retreat 1 when ^\w+ closes to melee range on you!
action var retreat 1 when ^\w+ angles (his|her) .* at you and charges forwards!
#POUNCE
action var retreat 1 when ^\w+ springs towards you, with (the speed of a tiger|the strength of a lion|the cunning of a cougar)\.
#WARSTOMP
action var retreat 1 when ^As a terrible, burning rage fills \w+'s eyes, (he|she) bunches (his|her) muscles for a high leap\.  Barreling through the air like an angry catapult boulder, \w+ all but crashes onto you!
action var retreat 1 when ^\w+ rushes toward you, (his|her) feet pounding a furious rhythm as (he|she) closes the distance, then channels (his|her) momentum into a skyward leap, bearing down on you with ruinous intent\.
action var retreat 1 when Dashing forward with increasing speed and length of stride, \w+ throws (himself|herself) forward into a series of handsprings, roundoffs and backflips before launching (himself|herself) skyward, feet-first towards you!
action var retreat 1 when ^\w+ advances toward you with disciplined aggression, closing the distance in controlled strides until the moment comes to commit the full force of (his|her) charge to a leaping attack\.
action var retreat 1 when ^\w+ barrels forward with the savage momentum of a charging boar, (his|her) path veering unpredictably before (he|she) springs upward toward you in a vicious attack\.
action var retreat 1 when ^\w+ surges forward in a storm of destructive fury, (his|her) path jagging like lightning through a blackened sky until the final swerve sends (him|her) vaulting skyward toward you\.


var retreat 0

MAIN:
  gosub FACEASSESS
  
  if ($prone = 1) then gosub STAND
  if ($kneeling = 1) then gosub STAND
  if ($sitting = 1) then gosub STAND
  if (%retreat = 1) then
  {
    gosub RETREAT
    var retreat 0
  }
  pause .1
  goto MAIN
  