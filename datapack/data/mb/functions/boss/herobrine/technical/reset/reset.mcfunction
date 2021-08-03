############################################################
# Description: Controls all reset functions
############################################################

function mb:boss/herobrine/technical/reset/cleanup
function mb:boss/herobrine/technical/reset/schedule_clear
function mb:boss/technical/speedrun_timer/reset

bossbar set mb:herobrine visible false

advancement revoke @a only mb:technical/boss/herobrine/normal_second_phase
advancement revoke @a only mb:technical/boss/herobrine/master_second_phase
advancement revoke @a only mb:technical/boss/herobrine/hurt_herobrine

tag @a remove mb.herobrine.active