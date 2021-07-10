############################################################
# Description: Initiates reseting boss fight
############################################################

schedule function mb:boss/king_slime/technical/reset/cleanup 1.3s append
function mb:boss/king_slime/technical/reset/schedule_clear

function mb:boss/technical/speedrun_timer/reset

bossbar set mb:kingslime visible false

advancement revoke @a only mb:technical/boss/king_slime/normal_second_phase
advancement revoke @a only mb:technical/boss/king_slime/master_second_phase

advancement revoke @a only mb:technical/boss/king_slime/hurt_king_slime

tag @a remove mb.king_slime.active