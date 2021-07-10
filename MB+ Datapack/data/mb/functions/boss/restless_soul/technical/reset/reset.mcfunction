############################################################
# Description: Controls all reset functions
############################################################

function mb:boss/restless_soul/technical/reset/cleanup
function mb:boss/restless_soul/technical/reset/schedule_clear
function mb:boss/technical/speedrun_timer/reset

bossbar set mb:restlesssoul visible false

advancement revoke @a only mb:technical/boss/restless_soul/normal_second_phase
advancement revoke @a only mb:technical/boss/restless_soul/master_second_phase

advancement revoke @a only mb:technical/boss/restless_soul/hurt_restless_soul

tag @a remove mb.restless_soul.active