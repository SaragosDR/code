include library.cmd
include helibrary.cmd

########CHARACTER_SETTINGS########
var maxpumpkins 10
var container tote

var empath YES
var fpprepmana 15
var fpaddmana 8
var healprepmana 15
var healaddmana 8
var cambrinth NO
var chargemax 20
var harnessing YES
var harnessmax 20
var minconcentration 80
################################



var pumpkinnum 0
var needhealing 0
var needflush 0
var needleeching 0
var hasleech 1

action (rummage) var rummagestring $2 when You rummage through (.+) and see (.+)

action var head 1;var hasleech 1 when a small black sand leech on your head
action var neck 1;var hasleech 1 when a small black sand leech on your neck
action var chest 1;var hasleech 1 when a small black sand leech on your chest
action var abdomen 1;var hasleech 1 when a small black sand leech on your abdomen
action var back 1;var hasleech 1 when a small black sand leech on your back
action var tail 1;var hasleech 1 when a small black sand leech on your tail
action var rightarm 1;var hasleech 1 when a small black sand leech on your right arm
action var leftarm 1;var hasleech 1 when a small black sand leech on your left arm
action var righthand 1;var hasleech 1 when a small black sand leech on your right hand
action var lefthand 1;var hasleech 1 when a small black sand leech on your left hand
action var rightleg 1;var hasleech 1 when a small black sand leech on your right leg
action var leftleg 1;var hasleech 1 when a small black sand leech on your left leg
action var righteye 1;var hasleech 1 when a small black sand leech on your right eye
action var lefteye 1;var hasleech 1 when a small black sand leech on your left eye

action var ready 0;var scancel 1 when Your concentration slips for a moment, and your spell is lost.
action var ready 1 when You feel fully prepared to cast your spell.


START:
  gosub PRESET
  gosub STOWALL
  var rummageitem %container
  gosub RUMMAGE
  pause 1
  action (rummage) off
  eval rummagestring replace("%rummagestring", ",", "|")
  eval rummagecount count("%rummagestring", "|")
  var countpos 0
  gosub COUNTLOOP
  echo PumpkinNum: %pumpkinnum
  if %pumpkinnum > 0 then
  {
    if $roomid = 249 then goto BREAKLOOP
    else goto COLLECTLOOP
  }
  else goto COLLECTLOOP


COLLECTLOOP:
  if $roomid != 382 then
  {
    var roomtarget 382
    gosub MOVE
  }
  if %needhealing = 1 then gosub HEALING
  if %pumpkinnum >= %maxpumpkins then goto BREAKLOOP
  gosub GETPUMPKIN
  if matchre("$righthand", "pumpkin") then 
  {
    math pumpkinnum add 1
    echo PumpkinNum: %pumpkinnum
    var putitemname pumpkin
    var putlocation %container
    gosub PUTITEM
  }
  goto COLLECTLOOP
  
  
BREAKLOOP:
  if $roomid != 249 then
  {
    var roomtarget 249
    gosub MOVE
  }
  #echo needhealing %needhealing
  #echo needflush %needflush
  #echo needleeching %needleeching
  if ((%needhealing = 1) || (%needleeching = 1) || (%needflush = 1)) then gosub HEALING
  var getitemname pumpkin
  gosub GETITEM
  if matchre("$righthand", "pumpkin") then 
  {
    gosub BREAKPUMPKIN
    put glance
    pause 2
    if matchre("$righthand", "%keeplist") then
    {
      put #echo >Conversation Found $righthand!
      var putitemname $righthandnoun
      var putlocation my %container
      gosub PUTITEM
    }
    else
    {
      var putitemname $righthandnoun
      var putlocation bucket
      gosub PUTITEM
    }
  }
  else
  {
    var pumpkinnum 0
    goto COLLECTLOOP
  }
  goto BREAKLOOP

  
  
########

HEALING:
  if $roomid != 249 then
  {
    var roomtarget 249
    gosub MOVE
  }
  if %needleeching = 1 then
  {
    gosub HEALTHCHECK
    pause 1
    if %hasleech = 1 then gosub TENDLEECH
  }
  if %needflush = 1 then
  {
    if %empath = "YES" then
    {
      var spell fp
      var prepmana %fpprepmana
      var addmana %fpaddmana
      var casting 1
      gosub CASTLOOP
      var needflush 0
    }
    else
    {
      echo Need Flush Poison!
      put #play JustArrived
      exit
    }
  }
  if %needhealing = 1 then
  {
    if %empath = "YES" then
    {
      var spell heal
      var prepmana %healprepmana
      var addmana %healaddmana
      var casting 1
      gosub CASTLOOP
      var needhealing 0
    }
    else
    {
      echo Need healing!
      put #play JustArrived
      exit
    }
  }
  
  return

CASTLOOP:
  if %casting = 1 then gosub CASTINGLOGIC
  pause 1
  if ((%scancel = 1) || (%casting = 0)) then return
  goto CASTLOOP

COUNTLOOP:
  if %countpos > %rummagecount then return
  if matchre("%rummagestring(%countpos)", "(a|an) (\w+) pumpkin") then
  {
    #echo rummagestring(%countpos): %rummagestring(%countpos)
    math pumpkinnum add 1
  }
  if matchre("%rummagestring(%countpos)", "(a|an) (\w+) (\w+) pumpkin") then
  {
    if matchre("%rummagestring(%countpos)", "(a|an) (\w+) (\w+) pumpkin (.+)") then
    else
    {
      math pumpkinnum add 1
    }
  }
  math countpos add 1
  goto COUNTLOOP
  
GETPUMPKINP:
  pause
GETPUMPKIN:
  matchre GETPUMPKINP ...wait|type ahead|stunned|while entangled in a web.
  matchre RETURN Roundtime
  matchre GETSTAND As you reach into the enormous vat to grab a pumpkin, two slender hands latch onto your arms and pull you in!|Perhaps that would work better if you were standing.
  matchre GETWOUNDED You reach into the enormous vat and feel teeth clamp onto your hand!  As you struggle to pull your arm free, you can see the glint of scales and a large sinuous body within the water.  With a last surge of strength, you pull your bleeding hand free, counting your fingers to make sure that they are all there.|You are too injured to get a pumpkin.|Grasping the ripe pumpkin firmly, you bring it up swiftly into your forehead.  With a grimace, you wipe off pumpkin residue on the back of your forearm.  A bright flash of light barely gives you enough warning to attempt to shield yourself with your arms before the ripe pumpkin explodes, throwing you backward and to the ground!
  matchre GETSTOW You must have your right hand free to do that.
  put grab vat
  matchwait

GETSTOW:
  var putlocation my %container
  gosub PUTALL
  return

GETSTAND:
  gosub STAND
  return

GETWOUNDED:
  var needhealing 1
  return 
  
BREAKPUMPKIN:
  matchre RETURN Noticing something in the pumpkin debris, you reach down and pick up (.+)
  matchre BREAKPOISON As you search through the remains of the (.+) pumpkin, you detect a slight nutty smell.
  matchre BREAKPOISON The (.+) pumpkin releases a small dusty cloud that leaves you coughing for a moment.
  matchre BREAKPOISON The (.+) pumpkin releases a small dusty cloud that leaves you coughing for a moment.  You feel a like you're developing a headache.
  matchre BREAKHEAL The (.+) pumpkin releases a small dusty cloud that leaves you coughing for a moment.  You feel like your headache is getting worse.
  matchre BREAKHEAL A bright flash of light barely gives you enough warning to attempt to shield yourself with your arms before the (.+) pumpkin explodes, throwing you backward and to the ground!
  matchre BREAKLEECH Grasping the (.+) pumpkin firmly, you bring it up swiftly into your forehead.  With a grimace, you wipe off pumpkin residue on the back of your forearm.  Fragments from the (.+) pumpkin fly upwards through the air, only to rain down around you afterwards.
  matchre BREAKSTAND Perhaps that would work better if you were standing.
  put break pumpkin
  matchwait
#Grasping the (.+) pumpkin firmly, you bring it up swiftly into your forehead.  With a grimace, you wipe off pumpkin residue on the back of your forearm.  


BREAKSTAND:
  gosub STAND
  goto BREAKPUMPKIN

BREAKPOISON:
  var needflush 1
  return
  
BREAKHEAL:
  var needhealing 1
  return
  
BREAKLEECH:
  var needleeching 1
  return
  
TENDLEECH:
  if %head = 1 then
  {
    var tendtarget head
    gosub TEND
    var %tendtarget 0
  }
  if %neck = 1 then
  {
    var tendtarget neck
    gosub TEND
    var %tendtarget 0
  }
  if %abdomen = 1 then
  {
    var tendtarget abdomen
    gosub TEND
    var %tendtarget 0
  }
  if %back = 1 then
  {
    var tendtarget back
    gosub TEND
    var %tendtarget 0
  }
  if %tail = 1 then
  {
    var tendtarget tail
    gosub TEND
    var %tendtarget 0
  }
  if %rightarm = 1 then
  {
    var tendtarget rightarm
    gosub TEND
    var %tendtarget 0
  }
  if %leftarm = 1 then
  {
    var tendtarget leftarm
    gosub TEND
    var %tendtarget 0
  }
  if %righthand = 1 then
  {
    var tendtarget righthand
    gosub TEND
    var %tendtarget 0
  }
  if %lefthand = 1 then
  {
    var tendtarget lefthand
    gosub TEND
    var %tendtarget 0
  }
  if %rightleg = 1 then
  {
    var tendtarget rightleg
    gosub TEND
    var %tendtarget 0
  }
  if %leftleg = 1 then
  {
    var tendtarget leftleg
    gosub TEND
    var %tendtarget 0
  }
  if %righteye = 1 then
  {
    var tendtarget righteye
    gosub TEND
    var %tendtarget 0
  }
  if %lefteye = 1 then
  {
    var tendtarget lefteye
    gosub TEND
    var %tendtarget 0
  }
  var hasleech 0
  var needleeching 0
  return

TENDP:
  pause
TEND:
  matchre TENDP ...wait|type ahead|stunned|while entangled in a web.
  matchre RETURN ^You work|^That area|^Look again|^Your .+ too injured|TEND {MY|<character>} {area}|You are a bit too busy performing to do that.|^You fumble|The sand leech slips free and quickly disappears.
  put tend my %tendtarget
  matchwait
  
PRESET:
  var cambcharge 0
  var cambcharge1 0
  var cambcharge2 0
  var ready 0
  var prepped 0
  var charged 0
  var harnessed 0
  var spell
  var prepmana 0
  var cambmana 0
  var harnmana 0
  var harntapped 0
  var cambmana1 0
  var cambmana2 0
  var tmcast 0
  var debilcast 0
  var cycliccast 0
  var casting 0
  var othercast 0
  var spellsymb 0
  var cambtapped 0
  var cambsplitting 0
  var splittingmana 0
  var splitcount 0
  var multicast 0
  var scancel 0
  return