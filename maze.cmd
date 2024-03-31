# useful variables: $roomid, $roomexits, $roomobjs

#
# Korya's Duskruin Maze Do-er Version 1.2
#

#
# Usage: Open the Automapper window before entering the maze.
# Click New Map, Record, and Allow Duplicate Labels
# Have dueling slip/rat token in your hand.
# Run the script, follow instructions if outside the maze
#
# Updated by Saragos
#  Added a command line option for incidentals only - .maze inc
#  Added a look at the beginning to make sure the first exits are set.
#  Script will also now start searching rooms again if it thinks it's exhausted all of the rooms.
#  Fixed broken timer logic.  If the script is restarted, it should also now recognize that it's continuing a run and keep the existing timer.
#  Fixed pet noun (sack to crate).
#  Added missing text for having already searched a room.
#  Search counting will now only decrement if you actually find something.
#  Script will now report anything it finds to the log window, not just a pet.
#  At the 5 minutes remaining warning, script will now just search for incidentals.


######################## USER VARIABLES ##############################

var PACK duffel bag

## ** IMPORTANT! Set PACK properly! **

var MAZE_LIMIT 100
var PET 1
var INCIDENTAL 0

## Set PET to 0 to test mapping without waiting for pigs/rats/etc  ##
## Set INCIDENTAL to 1 to just go ham grabbing stuff instead       ##

#debug 10

var DEBUG 0
# Level 1 = List the room ID that the script's "Automapper to the last unexplored branch" routine tried to go to
# Level 2 = List all the found rooms and exits that are left
# Level 3 = SLOW mode, prompts for input before moving

############################# SETUP ##################################

action put #echo >Log yellow Map reset!; goto START when (no longer certain of your directions\!$|^Shaking off the momentary surprise|scurries off before you can catch it\!$)
action math RESET add 1 when ^Shaking off the momentary surprise
action math RESET add 1 when longer certain of your directions\!$
action math RESET add 1 when scurries off before you can catch it\!$
action put #echo >Log yellow WARNING! 5 minutes left! when ^You only have about 5 minutes left in the labyrinth\!
action var WARNING 1 when ^You only have about 5 minutes
action var FOUND 1 when claiming your new pet\.$
action var NEWEXITS $1 when ^(Obvious exits.*)
action var NEWEXITS $1 when ^(Obvious paths.*)

var DIR northwest|north|northeast|east|southeast|south|southwest|west|up|down
var PREV_DIR southeast|south|southwest|west|northwest|north|northeast|east|down|up

var PATTER run|go|canter|cartwheel|dance|drift|duck|glide|hobble|hop|jog|limp|lope|lurch|lumber|march|meander|mosey|pad|parade|patter|plod|prance|ramble|rove|run|rush|sashay|saunter|scamper|scramble|shamble|shuffle|skip|slink|slog|slouch|sprint|stagger|stomp|stride|stroll|strut|stumble|swagger|traipse|tramp|tread|trek|troop|trot|trudge|walk|wander

if_1 then
{
  if (matchre("%1", "inc")) then var INCIDENTAL 1
}

var SEARCHCOUNT 10
var TOTAL 0
var RESET 0
var WARNING 0
var FOUND 0

if ("$roomname" = "Duskruin, Darkened Antechamber") then 
{
	put #echo
	put #echo aqua Go portcullis to start!
	put #echo aqua IMPORTANT! Make sure automapper is open, RECORD (red circle) and ALLOW DUPLICATE NODES (green and black box) are pressed!
	put #echo
	waitforre ^The guard finally stops and says
}

if ("$roomname" = "Duskruin, Underground Labyrinth") then
{
  var timetest $gametime
  math timetest subtract $mazestart
  echo timetest: %timetest
  if (%timetest < 3600) then
  {
    put #echo >Log aqua Restarting the maze!
  }
  else
  {
    put #var mazestart $gametime
    put #echo >Log aqua Starting the maze!
  }
}
else
{
  put #var mazestart $gametime
  put #echo >Log aqua Starting the maze!
}

START:
  gosub NEW_MAP
  var MOVE 0
  var FULLPATH 0
  var CHECKED 0
  var COMPLETED 0
  var LAST_DIR 0

  if matchre ("$righthand","slip|token") then gosub ACTION stow r
  if matchre ("$lefthand","slip|token") then gosub ACTION stow l
  gosub ACTION look
  pause 1
  # does this block only have to happen if roomid = 0?
  if ($roomid = 0) then
  {
    eval EXITS replacere("%NEWEXITS","\, ","|")
    eval EXITS replacere("%EXITS","(^Obvious (exits|paths)\: |\.)","")
    echo exits: %EXITS
    var ROOM_$roomid %EXITS
    gosub CHOOSE_PATH
    if %DEBUG > 2 then gosub SLOW
    gosub ACTION %NEXT_DIR
    var LAST_DIR 0
  }

########################### MAIN LOOP ################################

NEW_ROOM:
  gosub clear
  if matchre ("$roomname","Duskruin, Darkened Antechamber") then goto END_SEARCH
  if %WARNING != 0 then gosub CHECK_TIMER
  eval EXITS replacere("%NEWEXITS","\, ","|")
  eval EXITS replacere("%EXITS","(^Obvious (exits|paths)\: |\.)","")

  ## see if this is a new room!                                       ##

  if $roomid > %MOVE then 
	{
    var ROOM_$roomid %EXITS|none
    var CHECKED %CHECKED|$roomid
    math TOTAL add 1
    math MOVE add 1
    gosub SEARCHLOGIC
	}

  if %MOVE = %MAZE_LIMIT then goto END

  if !matchre ("%ROOM_$roomid","COMPLETED") then 
	{
	  eval ROOM_$roomid replacere("%ROOM_$roomid","(\|\b%LAST_DIR\b|\b%LAST_DIR\b\||\b%LAST_DIR\b|)","")
	}
  gosub CHECK_COMPLETE_ROOM

  if matchre ("%ROOM_$roomid","COMPLETED") then goto PREV_BRANCH
  goto CONTINUE_ROOM

CONTINUE_ROOM:
  gosub CHOOSE_PATH
  if %LAST_DIR = 1 then goto PREV_BRANCH
  gosub ACTION %NEXT_DIR

  ## pause for the mapper to add the new node if necessary            ##
  pause 0.05
  var FULLPATH %FULLPATH|%LAST_DIR
  if %DEBUG > 0 then put #echo To return: %FULLPATH

  ## With the script updates, this shouldn't proc at all!             ##
  if $roomid <= %MOVE then put #echo yellow Been here before!

  if %DEBUG > 1 then gosub LIST_ROOMS
  if %DEBUG > 2 then gosub SLOW
  goto NEW_ROOM


########################## PATHFINDING ###############################


PREV_BRANCH:
if %MOVE = 1 then goto CONTINUE_ROOM
var LAST_DIR 0
gosub FIND_LAST_ROOM
if %LIST = 0 then goto START
var GOING %LIST
gosub MAPPER
if %DEBUG > 0 then put #echo yellow Automapper to %GOING
if %DEBUG > 1 then gosub LIST_ROOMS
if %DEBUG > 2 then gosub SLOW
goto NEW_ROOM

FIND_LAST_ROOM:
var LIST %MOVE

FIND_LAST_ROOM_LOOP:
if !matchre ("%ROOM_%LIST","COMPLETED") then return
math LIST subtract 1
if %LIST = 0 then 
	{
	goto ERROR_NOWHERE_LEFT
	}
goto FIND_LAST_ROOM_LOOP

CHOOSE_PATH:
var PATH 0
goto FIND_PATH

NEXT_PATH:
math PATH add 1
if %PATH = 10 then 
	{
	if %LAST_DIR = 0 then 
		{
		var LAST_DIR 1
		return
		}
	var LAST_DIR 0
	var PATH 0
	}

FIND_PATH:
eval NEXT_DIR element("%DIR","%PATH")
if !matchre ("%ROOM_$roomid","\b%NEXT_DIR\b") then goto NEXT_PATH
if %LAST_DIR = %NEXT_DIR then goto NEXT_PATH
eval LAST_DIR element("%PREV_DIR","%PATH")
eval ROOM_$roomid replacere("%ROOM_$roomid","(\|\b%NEXT_DIR\b|\b%NEXT_DIR\b\||\b%NEXT_DIR\b|)","")
gosub CHECK_COMPLETE_ROOM
return

CHECK_COMPLETE_ROOM:
if %ROOM_$roomid = none then
	{
	var ROOM_$roomid %EXITS|COMPLETED
	var COMPLETED %COMPLETED|$roomid
	}
return

NEW_MAP:
put #mapper clear
put #var roomid 0
put #mapper record true
#put #mapper allowdupes true

var LIST %MAZE_LIMIT

ROOM_RESET:
  var ROOM_%LIST
  if %LIST = 0 then return
  math LIST subtract 1
  goto ROOM_RESET


########################### DEBUGGING ################################


SLOW:
put #link Continue? #parse BOOP
waitforre ^BOOP
return

LIST_ROOMS:
var LIST 1

LIST_ROOMS_LOOP:
put #echo Room %LIST exits left: %ROOM_%LIST
math LIST add 1
if %LIST > %MOVE then return
goto LIST_ROOMS_LOOP


############################ ACTIONS #################################


SEARCHLOGIC:
  action instant goto END_SEARCH when ^\[Duskruin\, Darkened Antechamber\]
  if %INCIDENTAL = 1 then goto DO_SEARCH
  if %PET = 0 then return
  put #echo Waiting for a critter to show...
  put #echo
  matchre DO_SEARCH scurrying around the area\.$
  matchre RETURN ^A small .* scurries (%DIR)\!$
  matchwait

DO_SEARCH:
  gosub SEARCH
  if (%PET = 1) then
  {
    if matchre ("$righthand|$lefthand","crate") then
    {
      var PET 0
      var INCIDENTAL 1
    }
  }
  if !matchre ("$righthand","Empty") then gosub ACTION put my $righthandnoun in my %PACK
  if !matchre ("$lefthand","Empty") then gosub ACTION put my $lefthandnoun in my %PACK
  if %SEARCHCOUNT = 0 then goto END
  return

SEARCHP:
  pause
SEARCH:
  matchre SEARCHP ^\.\.\.wait|^Sorry\,|^You are still stunned|^You are so overburdened|^You are already
  match SEARCHNOPUPPY You search around the area and find a small puppy, but it scurries off before you can catch it!
  matchre SEARCHRETURN You search around and find (.*)!
  match RETURN You've recently searched this area, try again in a bit or try somewhere else.
  matchre PET_FOUND claiming your new pet\.$
  put search
  matchwait
  
SEARCHNOPUPPY:
  math SEARCHCOUNT subtract 1
  put #echo >Log No puppy found.  %SEARCHCOUNT searches left!
  return
  
SEARCHRETURN:
  math SEARCHCOUNT subtract 1
  put #echo >Log Found $1!  %SEARCHCOUNT searches left!
  return

PET_FOUND:
  math SEARCHCOUNT subtract 1
  put #flash
  put #echo
  put #echo
  put #echo lime Found a pet!
  put #echo
  put #echo
  put #echo >Log yellow Pet found in room $roomid! -- Total moves: %TOTAL -- Maze resets: %RESET
  put #echo >Log %SEARCHCOUNT searches left!
  gosub TIME
  var PET 0
  var INCIDENTAL 1
  gosub ACTION stow crate
  return

ACTION:
  var ACTION $0
DO_ACTION:
  pause 0.1
  put %ACTION
  matchre DO_ACTION ^\.\.\.wait|^Sorry\,|^You are still stunned|^You are so overburdened|^You are already
  matchre RETURN ^You (%PATTER|stand|put|search around and find)|^\[Duskruin|Obvious|You've recently searched this area, try again in a bit or try somewhere else\.
  matchre ADJUST_EXITS ^You can't go there
  matchre PET_FOUND claiming your new pet\.$
  matchre STAND ^You can't do that while lying
  matchwait

ADJUST_EXITS:
gosub ACTION look
eval EXITS replacere("%NEWEXITS","\, ","|")
eval EXITS replacere("%EXITS","(^Obvious (exits|paths)\: |\.)","")
goto CONTINUE_ROOM

STAND:
var BACKUP %ACTION
gosub ACTION stand
var ACTION %BACKUP
goto DO_ACTION

MAPPER:
pause 0.1
put #goto %GOING
matchre MAPPER ^\.\.\.wait|^Sorry\,|^You are still stunned
matchre RETURN ^YOU HAVE ARRIVED
matchwait

RETURN:
return


########################### END RESULTS ###############################


CHECK_TIMER:
  if %WARNING = 1 then
  {
    var INCIDENTAL 1
    var PET 0
    goto START
  }
  return

TIME:
  var timetest $gametime
  math timetest subtract $mazestart
  var TIME %timetest
  math TIME divide 60
  if matchre ("%TIME","^\d\.") then var TIME 0%TIME
  eval TIME replacere ("%TIME","((?<=\d\d\.\d\d).*)","")
  pause 0.05
  put #echo >Log Minutes spent in maze: %TIME
  return

END_SEARCH:
  eval COMPLETED replacere ("%COMPLETED","^0\|","")
  put #flash
  put #echo
  put #echo lime Grabbed some junk!
  put #echo
  put #echo aqua Rooms fully exhausted: %COMPLETED
  if %FOUND = 1 then put #echo >Log lime Found a pet! Total moves: %TOTAL -- Maze resets: %RESET
  else put #echo >Log yellow Did not find pet! Total moves: %TOTAL -- Maze resets: %RESET
  gosub TIME
  exit

END:
eval COMPLETED replacere ("%COMPLETED","^0\|","")
put #flash
put #echo
put #echo lime Whoops! There's nowhere else to go!
put #echo
put #echo aqua Rooms fully exhausted: %COMPLETED
if %FOUND = 1 then put #echo >Log lime Found a pet! Total moves: %TOTAL -- Maze resets: %RESET
else put #echo >Log yellow Did not find pet! Total moves: %TOTAL -- Maze resets: %RESET
gosub TIME
exit

ERROR:
  eval COMPLETED replacere ("%COMPLETED","^0\|","")
  put #flash
  put #echo
  put #echo red No exits left?
  put #echo
  put #echo aqua Rooms fully exhausted: %COMPLETED
  put #echo yellow Total moves: %TOTAL -- Maze resets: %RESET
  gosub TIME
  math RESET add 1
  goto START

ERROR_NOWHERE_LEFT:
  eval COMPLETED replacere ("%COMPLETED","^0\|","")
  put #flash
  put #echo
  put #echo red Everything has been explored?
  put #echo
  #put #echo aqua Rooms fully exhausted: %COMPLETED
  #put #echo yellow Total moves: %TOTAL -- Maze resets: %RESET
  put #echo >Log Explored all rooms with nothing found.  Searching again until map resets.
  goto START
