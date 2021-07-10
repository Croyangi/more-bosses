############################################################
# Description: Resets boss fight
############################################################

function mb:boss/herobrine/technical/reset/cleanup
schedule function mb:boss/herobrine/technical/reset/schedule_clear 1t append
function mb:boss/technical/speedrun_timer/reset

bossbar set minecraft:herobrine visible false
time set day

advancement revoke @a only mb:boss/herobrine/summon
advancement revoke @a only mb:boss/herobrine/normal_mode/second_phase
advancement revoke @a only mb:boss/herobrine/normal_mode/third_phase
advancement revoke @a only mb:boss/herobrine/master_mode/second_phase
advancement revoke @a only mb:boss/herobrine/master_mode/third_phase