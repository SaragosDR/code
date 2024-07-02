
include library.cmd

action var tickettime 1 when Attendant (\w+) places a roll of raffle tickets out on a (.*) counter.
action var buckettime 1 when Raffle Attendant (\w+) exclaims, "Congratulations to all our winners!
action goto END when Raffle Attendant (\w+) exclaims, "Congratulations to all our winners!  Please put your winning tickets on the counter to claim your prize.  That will be our last raffle for the evening.  Thank you for participating!"
action var claimtime 1;put #play Echo when $charactername's name appears on the result board!
action put #echo >Conversation You won $1! when Raffle Attendant (\w+) examines your ticket and exclaims, "Congratulations!"  He smiles broadly as he takes the ticket and hands you (.+)\.


if ((matchre("$righthandnoun", "ticket")) || (matchre("$righthandnoun", "ticket"))) then var tickettime 0
else var tickettime 1
var buckettime 0

RAFFLEMAIN:
  if %tickettime = 1 then
  {
    gosub GETTICK
    var tickettime 0
  }
  if %claimtime = 1 then
  {
    gosub PUTITEM ticket on counter
    put #echo >Conversation You won!
    #gosub STOWALL
    var claimtime 0
    exit
  }
  if %buckettime = 1 then
  {
    if ((matchre("$righthandnoun", "ticket")) || (matchre("$lefthandnoun", "ticket"))) then
    {
      gosub PUTITEM ticket in bucket
    }
    var buckettime 0
  }
  pause 1
  goto RAFFLEMAIN

GETTICK:
  matchre RETURN You tear off|What were you referring to?|Greedy!  You've already gotten a ticket for this drawing!
  match GETTICKBAD What were you referring to?
  put get ticket on counter
  matchwait

GETTICKBAD:
  var tickettime 0
  goto RAFFLEMAIN

END:
  exit
  