include library.cmd

action goto EXITWAIT when ^Breakthrough!
action put #echo >Log Learned $1 and $2. when From this outgrowth, the (.*) and (.*) spells commit themselves to your memory\.
action put #echo >Log Learned $1. when From this outgrowth, the (.*) spell commits itself to your memory\.

action goto EXIT when ^You don't find it worthwhile to embark on that research project right now.
action var researching 0;echo Research break! when ^You make definite progress in your project
action var researching 0; var researchtype -1 when ^Your eyes briefly darken.  When you regain sight, the graphs and sigils previously impressed upon your vision have disappeared.

action var researching 1;var researchtype $2 when ^You believe that you're (\S+)% complete with a portion of research about (\S+) Research.  You estimate that you will complete it
action var researching 1; var rprojectactive 1; var researchtype $2 when ^You believe that you're (\S+)% complete with a portion of research about (\S+) Patterns Research.  You estimate that you will complete it
action var researching 1; var rprojectactive 1; var researchtype $2 when ^You have completed (\S+)% of a project about (\S+) Research.  You believe that you're 
action var researching 1; var rprojectactive 1; var researchtype $2 when ^You have completed (\S+)% of a project about (\S+) Patterns Research.  You believe that you're 

action var researching 0; var rprojectactive 1; var researchtype $2 when ^You have completed (\S+)% of a project about (\S+) Research.
action var researching 0; var rprojectactive 1; var researchtype $2 when ^You have completed (\S+)% of a project about (\S+) Patterns Research.
action var researching 1; var rprojectactive 1; var researchtype $2 when ^You have completed (\d+)% of a project about Wild Magic\.  You believe that
action var researching 1; var rprojectactive 1; var researchtype $2 when You believe that you're (\d+)% complete with a portion of research about Wild Magic.  You estimate that
action var researching 0; var rprojectactive 1; var researchtype wild when ^You have completed (\d+)% of a project about Wild Magic\.

var rprojectactive -1
gosub PERCSELF
if (($SpellTimer.GaugeFlow.active != 1) || ($SpellTimer.GaugeFlow.duration < 20)) then
{
  put .p gaf 20
  waitfor PCASTING COMPLETE!
}


MAIN:
  if (%rprojectactive = -1) then gosub RESEARCHSTATUS
  if (%rprojectactive = 1) then
  {
    if (%researching = 0) then gosub RESEARCH wild
  }
  else gosub RESEARCH wild
  pause 10
  goto MAIN
  
EXITWAIT:
  pause 2
  put #echo >Log Yellow Research complete.
  exit