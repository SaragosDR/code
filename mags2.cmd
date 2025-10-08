include library.cmd


MAIN:
  var forageitem stick
  gosub FORAGE
  gosub TASKGIVEMAGS
  goto MAIN