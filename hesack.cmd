include library.cmd



var sack_full 1
var sack_adjective green
var boostprocess 0
if_1 then 
{
  if ("%1" != "boost") then var sack_adjective %1
  else
  {
    var boostprocess 1
    var sack_adjective canvas
  }
}


#For processing 'a dark green sack made of desiccated kelp.' Gets the sack, opens it, takes out coins, puts gems into gem pouch, and waits for you to get out anything left (if you want it) before you approve it dumping the sack.
#DO NOT USE if you have another green sack on you. 
#Use only near a bucket-like dumping receptacle.
#Use only if wearing a gem pouch with some room for gems.

START:
  gosub STOWALL
  gosub BOOSTCRAFTING
  

MAIN:
  gosub GET-SACK
  gosub OPEN-SACK
  gosub CHECK-CONTENTS

  if (%sack_full = 1) then
  {
    gosub GET-COINS
    gosub GET-GEMS
    gosub BUCKET-APPROVE
  }
  gosub BUCKET
  goto MAIN


GET-SACK:
  gosub GETITEM my %sack_adjective sack
  if $righthand = "Empty" then
    goto END
  else
    return

OPEN-SACK:
  match RETURN as you open it.
  match RETURN That is already open.
  put open my %sack_adjective sack
  matchwait

CHECK-CONTENTS:
  match EMPTY There's nothing inside
  match RETURN Inside a
  put inv my %sack_adjective sack
  matchwait

EMPTY:
  var sack_full 0
  return

GET-COINS:
  match GET-COINS You pick up
  match RETURN What were you referring to?
  put get coin in my %sack_adjective sack
  matchwait

GET-GEMS:
  match RETURN You fill your gem pouch
  match RETURN There aren't any
  match GET-GEMSTIE You open your
  put fill my gem pouch with my %sack_adjective sack
  matchwait

GET-GEMSTIE:
  gosub TIEPOUCH
  goto GET-GEMS

BUCKET-APPROVE:
  #Waits for the user to get out anything interesting, then input YES to go ahead and dump the sack.
  put #echo Yellow Get out anything interesting. Input YES when ready to put the sack into the bucket.
  put inv my %sack_adjective sack
  waitfor A good positive attitude never hurts.
  return

BUCKET:
  gosub DUMPITEM %sack_adjective sack
  return

END:
  exit
