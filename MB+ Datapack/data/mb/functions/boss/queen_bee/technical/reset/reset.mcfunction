############################################################
# Description: Controls all reset functions
############################################################

schedule function mb:boss/queen_bee/technical/reset/cleanup 1.3s append
function mb:boss/queen_bee/technical/reset/schedule_clear
function mb:boss/technical/speedrun_timer/reset

bossbar set mb:queenbee visible false

advancement revoke @a only mb:technical/boss/queen_bee/normal_second_phase
advancement revoke @a only mb:technical/boss/queen_bee/master_second_phase

advancement revoke @a only mb:technical/boss/queen_bee/hurt_queen_bee

tag @a remove mb.queen_bee.active