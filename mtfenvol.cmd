#debug 10
include library.cmd

action var puzzle_done 1 when A bright flash of amber light temporarily blinds

####
var repeat 0
var storage brambles
####

if_1 then
{
  if (%1 > 0) then
  {
    var repeat %1
    put #echo >Log Lime *** Running %repeat times!
  }
}


<%
var poemCaptureActive = false;
var poemCaptureLines = [];
var roomScanLines = [];
var exploreFrames = [];

function trimText(text) {
  return String(text || "").replace(/^\s+|\s+$/g, "");
}

function normalizeText(text) {
  return trimText(
    String(text || "")
      .toLowerCase()
      .replace(/[^a-z0-9\s\-]/g, " ")
      .replace(/\s+/g, " ")
  );
}

function resetPoemCapture() {
  poemCaptureActive = false;
  poemCaptureLines = [];
  setVar("poem_done", "0");
  setVar("poem_text", "");
}

function capturePoemLine(line) {
  line = String(line || "");

  if (!poemCaptureActive) {
    if (/Among the shelves/i.test(line)) {
      poemCaptureActive = true;
      poemCaptureLines.push(line);
    }
    return;
  }

  if (/You notice additional/i.test(line)) {
    setVar("poem_text", normalizeText(poemCaptureLines.join(" ")));
    setVar("poem_done", "1");
    return;
  }

  if (/^\s*"?\s*(?:-\s*){5,}"?\s*$/.test(line)) return;
  if (/^\s*>?\s*$/.test(line)) return;

  poemCaptureLines.push(line);
}

function resetRoomScan() {
  roomScanLines = [];
  setVar("room_text", "");
  setVar("exits", "");
  setVar("scan_done", "0");
}

function parseExits(text) {
  text = String(text || "").replace(/^.*Obvious exits?:\s*/i, "");
  var parts = text.split(/,\s*/);
  var exits = "";

  for (var i = 0; i < parts.length; i++) {
    var exitName = trimText(parts[i]).replace(/\W+$/, "");
    if (exitName && !/\bnone\b/i.test(exitName)) {
      if (exits) exits = exits + "|";
      exits = exits + exitName;
    }
  }

  return exits;
}

function captureRoomLine(line) {
  line = String(line || "");

  if (/^Obvious exits?:/i.test(line)) {
    setVar("exits", parseExits(line));
    setVar("room_text", normalizeText(roomScanLines.join(" ")));
    setVar("scan_done", "1");
    return;
  }

  if (/^\s*>?\s*$/.test(line)) return;
  if (/^\[.*\]$/.test(line)) return;

  roomScanLines.push(line);
}

function checkShelfContainer() {
  var text = " " + normalizeText(getVar("room_text") || "") + " ";
  text = text.replace(/ top shelf /g, " ");
  text = text.replace(/ bottom shelf /g, " ");

  if (text.indexOf(" shelf ") >= 0) {
    setVar("has_shelf_container", "1");
  } else {
    setVar("has_shelf_container", "0");
  }
}

function checkItemInPoem() {
  var phrase = normalizeText(getVar("item_text") || "");
  phrase = phrase.replace(/^(a|an|the)\s+/, "");

  var poem = normalizeText(getVar("poem_text") || "");

  if (poem.indexOf(phrase) >= 0) {
    setVar("in_poem", "1");
    return;
  }

  setVar("in_poem", "0");
}

function setItemNoun() {
  var phrase = normalizeText(getVar("item_text") || "");
  phrase = phrase.replace(/^(a|an|the)\s+/, "");

  var parts = phrase.split(/\s+/);
  setVar("item_noun", parts[parts.length - 1] || phrase);
}

function pushExploreFrame() {
  exploreFrames.push({
    exits: getVar("exits") || "",
    origin_room: getVar("origin_room") || "",
    exit_index: getVar("exit_index") || "0",
    exit_last: getVar("exit_last") || "0",
    current_exit: getVar("current_exit") || "",
    back_dir: getVar("back_dir") || ""
  });
}

function popExploreFrame() {
  var frame = exploreFrames.pop();
  if (!frame) return;

  setVar("exits", frame.exits);
  setVar("origin_room", frame.origin_room);
  setVar("exit_index", frame.exit_index);
  setVar("exit_last", frame.exit_last);
  setVar("current_exit", frame.current_exit);
  setVar("back_dir", frame.back_dir);
}
%>

START:
  gosub STOWALL
  if ("$zoneid" != "522") then
  {
    echo Wrong zone!
    exit
  }
  if (matchre("$roomname", "Fenvol's Folly")) then
  {
    gosub GETITEM my library card
    if (("$righthand" != "library card") && ("$righthand" != "library cards") then
    {
      if ($roomid != 4) then gosub MOVE 4
      gosub BUYCARD
    }
    if ($roomid != 7) then gosub MOVE 7
    gosub REDEEMCARD
    if ("$righthand" != "Empty") then gosub STOW right
    gosub TOUCHDOOR
    goto MAIN 
  }
  #ALREADY_INSIDE
  if (matchre("$roomname", "Fenvol's Library")) then
  {
    goto MAIN
  }
  exit

BUYCARD:
  match BUYCARD2 You are about to purchase a library card for 100 SimuCoins.  If you are sure, ACCEPT PURCHASE.  To cancel the purchase CANCEL PURCHASE.
  put buy library card
  matchwait

BUYCARD2:
  match BUYCARD3  *** WARNING: You are buying a library card for 100 SimuCoins.  If you are sure you want to purchase this, ACCEPT PURCHASE CONFIRM.
  match BUYCARDBAD A sales clerk says, "That will be 100 SimuCoins."  You realize you don't have that much.  Visit http://store.play.net/store/purchase/DR to get more coins.
  put accept purchase
  matchwait
  
BUYCARD3:
  match RETURN You decide to purchase the card, and pay a sales clerk 100 SimuCoins.
  put accept purchase confirm
  matchwait

BUYCARDBAD:
  put #echo >Log Yellow ****** Out of Simucoins!  Please address!
  exit

REDEEMCARD:
  match REDEEMCARD2 Once you redeem this, you'll have 1 instance access to the Fenvol's Folly Grounds.  If you're prepared to immediately begin, repeat the command within 10 seconds.
  put redeem my library card
  matchwait

REDEEMCARD2:
  match RETURN [You have just redeemed 1 instance of access to a chance to earn inkbits by completing tasks within Fenvol's Library.]
  put redeem my library card
  matchwait

TOUCHDOOR: 
  match TOUCHDOOR2 [This will consume a library card for the Fenvol's Folly event.  If you are sure you wish to proceed, TOUCH again within 15 seconds.]
  put touch door
  matchwait
  
TOUCHDOOR2:
  match RETURN You hand your card to the butler and move towards the library proper.  As your fingertips meet the sigil-carved door, the world unravels into a whirl of color then snaps back into place inside of a book-lined room with no trace of how you arrived.
  put touch door
  matchwait

MAIN:
  var notecard_noun notecards
  var puzzle_done 0
  var poem_text
  var poem_done 0
  var visited_rooms
  var containers
  var exits
  var room_key
  var startTime 0
  var totalTime 0

  var startTime $gametime
  echo DEBUG: Script started.
  put #echo >Log Lime *** Run Started
  gosub ReadPoem

  echo DEBUG: Returned from ReadPoem.
  echo DEBUG: Poem text is: %poem_text

  if "%poem_text" = "" then
    {
    echo DEBUG: Poem text is blank. Stopping before exploration.
    exit
    }

  gosub Explore
  if (%repeat > 0) then
  {
    goto START
  }
  else
  {
    echo DEBUG: Explore returned. Script ending.
    exit
  }


ReadPoem:
  echo DEBUG: Entered ReadPoem.
  var poem_done 0
  var poem_text

  js resetPoemCapture()

  action (poem) js capturePoemLine("$1") when ^(.*)$
  action (poem) on

  echo DEBUG: Sending READ command.
  send read %notecard_noun

  echo DEBUG: Waiting for poem_done.
  waiteval %poem_done = 1

  action (poem) off

  echo DEBUG: Poem capture completed.
  echo DEBUG: Parsed poem text: %poem_text
  return


Explore:
  echo DEBUG: Entered Explore.

  var room_key $roomname
  echo DEBUG: Current room key: %room_key

  if contains("|%visited_rooms|", "|%room_key|") then
    {
    echo DEBUG: Room already visited. Returning.
    return
    }

  echo DEBUG: Marking room visited.
  var visited_rooms %visited_rooms|%room_key

  echo === %room_key ===

  gosub ScanRoom
  gosub SolveRoom
  if (%puzzle_done = 1) then return
  gosub ExploreExits
  if (%puzzle_done = 1) then return
  return


ScanRoom:
  echo DEBUG: Entered ScanRoom.

  var room_text
  var room_words
  var exits
  var containers
  var scan_done 0
  var has_shelf_container 0

  js resetRoomScan()

  action (scan) js captureRoomLine("$1") when ^(.*)$
  action (scan) on

  echo DEBUG: Sending LOOK.
  send look

  echo DEBUG: Waiting for scan_done.
  waiteval %scan_done = 1

  action (scan) off

  echo DEBUG: Raw room text: %room_text

  var containers
  var room_words %room_text

  if contains(" %room_words ", " armoire ") then var containers %containers|armoire
  if contains(" %room_words ", " barrel ") then var containers %containers|barrel
  if contains(" %room_words ", " bin ") then var containers %containers|bin
  if contains(" %room_words ", " bookcase ") then var containers %containers|bookcase
  if contains(" %room_words ", " bookshelf ") then var containers %containers|bookshelf
  if contains(" %room_words ", " box ") then var containers %containers|box
  if contains(" %room_words ", " bucket ") then var containers %containers|bucket
  if contains(" %room_words ", " caddy ") then var containers %containers|caddy
  if contains(" %room_words ", " canister ") then var containers %containers|canister
  if contains(" %room_words ", " cart ") then var containers %containers|cart
  if contains(" %room_words ", " carton ") then var containers %containers|carton
  if contains(" %room_words ", " case ") then var containers %containers|case
  if contains(" %room_words ", " cask ") then var containers %containers|cask
  if contains(" %room_words ", " cellaret ") then var containers %containers|cellaret
  if contains(" %room_words ", " chest ") then var containers %containers|chest
  if contains(" %room_words ", " coffin ") then var containers %containers|coffin
  if contains(" %room_words ", " coffer ") then var containers %containers|coffer
  if contains(" %room_words ", " crate ") then var containers %containers|crate
  if contains(" %room_words ", " credenza ") then var containers %containers|credenza
  if contains(" %room_words ", " cupboard ") then var containers %containers|cupboard
  if contains(" %room_words ", " desk ") then var containers %containers|desk
  if contains(" %room_words ", " drawer ") then var containers %containers|drawer
  if contains(" %room_words ", " dresser ") then var containers %containers|dresser
  if contains(" %room_words ", " footlocker ") then var containers %containers|footlocker
  if contains(" %room_words ", " hamper ") then var containers %containers|hamper
  if contains(" %room_words ", " hutch ") then var containers %containers|hutch
  if contains(" %room_words ", " locker ") then var containers %containers|locker
  if contains(" %room_words ", " lockbox ") then var containers %containers|lockbox
  if contains(" %room_words ", " ottoman ") then var containers %containers|ottoman
  if contains(" %room_words ", " planter ") then var containers %containers|planter
  if contains(" %room_words ", " sack ") then var containers %containers|sack
  if contains(" %room_words ", " strongbox ") then var containers %containers|strongbox
  if contains(" %room_words ", " trunk ") then var containers %containers|trunk
  if contains(" %room_words ", " vanity ") then var containers %containers|vanity
  if contains(" %room_words ", " wardrobe ") then var containers %containers|wardrobe

  js checkShelfContainer()
  if %has_shelf_container = 1 then var containers %containers|shelf

  if startswith("%containers", "|") then
    {
    eval containers substr("%containers", 1, 9999)
    }

  echo DEBUG: Containers found: %containers
  echo DEBUG: Exits found: %exits

  return


SolveRoom:
  echo DEBUG: Entered SolveRoom.

  if "%containers" = "" then
    {
    echo No matching containers found in this room.
    return
    }

  echo Found containers: %containers

  var container_index 0
  eval container_last count("%containers","|")

ContainerLoop:
  if %container_index > %container_last then return

  eval container_noun element("%containers", %container_index)

  if "%container_noun" = "cart" then
  {
    if contains("|%containers|", "|carton|") then
    {
      put #echo Lime *** WARNING: Both cart and carton found.
      #put #echo >Log Lime *** WARNING: Both cart and carton found. Skipping cart to avoid parser ambiguity.
      #math container_index add 1
      #goto ContainerLoop
      gosub CARTANDCARTONTEST
    }
    else var current_container %container_noun
  }
  else var current_container %container_noun


  echo DEBUG: Solving container: %current_container
  gosub SolveContainer
  if (%puzzle_done = 1) then return
  math container_index add 1
  goto ContainerLoop

CARTANDCARTONTEST:
  matchre CARTANDCARTONFIRST You tap (a|an) \w+ \w+ cart\.
  matchre CARTANDCARTONSECOND You tap (a|an) \w+ \w+ carton\.
  matchre CARTANDCARTONFIRST You tap (a|an) \w+ \w+\-\w+ cart\.
  matchre CARTANDCARTONSECOND You tap (a|an) \w+ \w+\-\w+ carton\.
  matchre CARTANDCARTONFIRST You tap (a|an) \w+\-\w+ \w+ cart\.
  matchre CARTANDCARTONSECOND You tap (a|an) \w+\-\w+ \w+ carton\.
  put tap first cart
  matchwait
  
CARTANDCARTONFIRST:
  var current_container first cart
  return
  
CARTANDCARTONSECOND:
  var current_container second cart
  return


SolveContainer:
  echo DEBUG: Entered SolveContainer for %current_container.

  match ContainerOpenFailed What were you referring to
  match ContainerOpenFailed You cannot
  match ContainerOpened You open
  match ContainerOpened That is already open
  match ContainerOpened already open
  match ContainerOpened swings open
  send open %current_container
  matchwait 5

  echo DEBUG: Open timed out for %current_container. Trying look anyway.
  goto ContainerOpened

ContainerOpened:
  echo DEBUG: Looking in %current_container.

  matchre ContainerHasItem (?i).*you see (.+)
  matchre ContainerEmpty (?i).*nothing in there.*
  matchre ContainerEmpty (?i).*is empty.*
  matchre ContainerEmpty (?i).*What were you.*
  send look in %current_container
  matchwait 5

  echo DEBUG: Look in %current_container timed out. Treating as empty.
  goto ContainerEmpty

ContainerHasItem:
  var item_text $1
  eval item_text replacere("%item_text", "[.!]+$", "")
  echo DEBUG: Found item text: %item_text

  var in_poem 0
  js checkItemInPoem()
  echo DEBUG: in_poem = %in_poem

  if %in_poem = 1 then
  {
    js setItemNoun()
    echo %current_container: "%item_text" -- IN POEM, turning.
    send turn %item_noun in %current_container
    pause 1

    if (%puzzle_done = 1) then
    {
      echo Puzzle complete!
      evalmath totalTime ($gametime - %startTime)
      evalmath totalTime round((%totalTime),2)
      if (%totalTime > 300) then var totalTime 300
      if (%maxtime = 1) then var totalTime 300
      put #echo >Log #ffff00 **** Incidental! - $righthand
      gosub PUTITEM my $righthand in my %storage
      put #echo >Log Lime *** Run Time: %totalTime seconds
	    math repeat subtract 1
	    if (%repeat > 0) then
	    {
	      put #echo >Log Lime *** Running %repeat more times!
	      return
      }
      exit
    }
  }
  else
  {
    echo %current_container: "%item_text" -- not in poem.
  }

  return

ContainerEmpty:
  echo %current_container: empty.
  return

ContainerOpenFailed:
  echo %current_container: could not open -- skipping.
  return


ExploreExits:
  echo DEBUG: Entered ExploreExits.

  if "%exits" = "" then
    {
    echo DEBUG: No exits found.
    return
    }

  var origin_room %room_key
  var exit_index 0
  eval exit_last count("%exits","|")

ExitLoop:
  if %exit_index > %exit_last then return

  eval current_exit element("%exits", %exit_index)

  var back_dir

  if "%current_exit" = "north" then var back_dir south
  if "%current_exit" = "south" then var back_dir north
  if "%current_exit" = "east" then var back_dir west
  if "%current_exit" = "west" then var back_dir east
  if "%current_exit" = "northeast" then var back_dir southwest
  if "%current_exit" = "southwest" then var back_dir northeast
  if "%current_exit" = "northwest" then var back_dir southeast
  if "%current_exit" = "southeast" then var back_dir northwest
  if "%current_exit" = "up" then var back_dir down
  if "%current_exit" = "down" then var back_dir up
  if "%current_exit" = "in" then var back_dir out
  if "%current_exit" = "out" then var back_dir in

  echo DEBUG: Moving %current_exit. Back direction is %back_dir.

  js pushExploreFrame()

  send %current_exit
  wait

  gosub Explore
  if (%puzzle_done = 1) then return
  js popExploreFrame()

  if "%back_dir" != "" then
    {
    if "$roomname" != "%origin_room" then
      {
      echo DEBUG: Returning via %back_dir.
      send %back_dir
      wait
      }
    }

  math exit_index add 1
  goto ExitLoop