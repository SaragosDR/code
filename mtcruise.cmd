# Start this script while standing next to the cruise coordinator with a pass or passes in your possession.
# Will STOW your pass(es) and coupon after the mystery is solved.

include library.cmd

setvariable suspect NotFound
setvariable weapon NotFound
setvariable murderRoom NotFound

setvariable passName pass

START:
if ("$roomname" != "The Morada, Morgue") then
{
  gosub GETITEM multiplier
  put redeem multiplier
	gosub STOWITEM multiplier
	pause .5

	gosub GETITEM %passName
	put redeem %passName
	put redeem %passName
	gosub STOWITEM %passName
	put ask coordinator about access
  pause .5
}

Morgue:
  match Corkscrew oddly curved puncture
  match Comb odd perforations of the skin
  match Baton soft tissue damage and internal bleeding
  match Zills clean edges
  match Cleaver chop marks that reveal flesh and bone
  match Knife outlined by ragged edges
  match Bottle severe lacerations
  match Paintbrush deep and lethal puncture
  match Logbook gashes and severe blunt trauma
  put study corpse
matchwait

Foredeck:
  pause 1
  setvariable currentRoom foredeck
  setvariable nextRoom promenade
  put up
goto investigate

Promenade:
  setvariable nextRoom Buffet
  put aft
goto investigate

Buffet:
  setvariable nextRoom quarterdeck
  put port
goto investigate

Quarterdeck:
  setvariable nextRoom Lounge
  put starboard
  put up
goto investigate

Lounge:
  setvariable nextRoom bar
  put down
  put starboard
goto investigate

Bar:
  setvariable nextRoom end
  put aft
goto investigate

Investigate:
  match FoundRoom damp stickiness
  match IdentifyPerson fails to turn up
  put search
matchwait

FoundRoom:
  setvariable murderRoom %currentRoom
  setvariable 1 Found

IdentifyPerson:
  echo Identify Person
  match Director director.
  match Artist artist.
  match Beautician beautician.
  match Entertainer entertainer.
  match Steward steward.
  match Bartender bartender.
  match Chef chef.
  match Boatswain boatswain.
  match Deckhand deckhand.
  put look
matchwait

Interrogate:
  echo Interrogate
  match Guilty shifty
  match Guilty blinking
  match Guilty awkwardly
  match Guilty tugging
  match Guilty nervous tic
  match Guilty fingers tapping
  match Guilty pacing back and forth
  match Guilty trembling hands
  match Guilty flushed face
  match NotGuilty says
  pause
  put ask %person about alibi
matchwait

Guilty:
  setvariable suspect %person
  setvariable 2 Found
NotGuilty:
  setvariable currentRoom %nextRoom
  pause 1
goto %currentRoom

#Weapons
Corkscrew:
  setvariable weapon corkscrew
goto Foredeck

Comb: 
  setvariable weapon comb
goto Foredeck

Baton:
  setvariable weapon baton
goto Foredeck

Zills:
  setvariable weapon zills
goto Foredeck

Cleaver:
  setvariable weapon cleaver
goto Foredeck

Knife:
  setvariable weapon knife
goto Foredeck

Bottle: 
  setvariable weapon bottle 
goto Foredeck

Paintbrush:
  setvariable weapon paintbrush
goto Foredeck

Logbook:
  setvariable weapon logbook
goto Foredeck

#People
Artist:
  setvariable person artist
goto interrogate

Bartender:
  setvariable person bartender 
goto interrogate

Beautician:
  setvariable person beautician
goto interrogate

Boatswain:
  setvariable person boatswain
goto interrogate

Chef:
  setvariable person chef
goto interrogate

Director:
  setvariable person director
goto interrogate

Entertainer:
  setvariable person entertainer
goto interrogate

Steward:
  setvariable person steward
goto interrogate

Deckhand:
  setvariable person deckhand
goto interrogate

End:
  put accuse %suspect with %weapon in %murderRoom
  put stow coupon
  put stow %passName
  pause .5
  goto START