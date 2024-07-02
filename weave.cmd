include library.cmd
include craftlibrary.cmd

var craftaction weave

gosub WEAVE
exit

WEAVE:
  match RETURN You snip off the bolt of fabric and are left with
  match WEAVEWEAVE Roundtime
  match WEAVEPUSH The cloth threads begin to unravel along the fell and need pushing together.
  match WEAVETURN Several weft threads bunch together from a tight turn in the fabric.
  match WEAVECLEAN You notice some dust and debris obstructing the pirn of the shuttle.
  put %craftaction loom
  matchwait
  
WEAVEWEAVE:
  var craftaction WEAVE
  goto WEAVE
  
WEAVEPUSH:
  var craftaction push
  goto WEAVE

WEAVECLEAN:
  var craftaction clean
  goto WEAVE
  
WEAVETURN:
  var craftaction turn
  goto WEAVE