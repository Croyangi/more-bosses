############################################################
# Description: Controls all reset functions
############################################################

function mb:boss/impostor/technical/reset/cleanup
schedule function mb:boss/impostor/technical/reset/schedule_clear 1t append
function mb:boss/technical/speedrun_timer/reset

bossbar set mb:impostor visible false

advancement revoke @a only mb:technical/boss/impostor/normal_second_phase
advancement revoke @a only mb:technical/boss/impostor/master_second_phase

advancement revoke @a only mb:technical/boss/impostor/hurt_impostor

tag @a remove mb.impostor.active