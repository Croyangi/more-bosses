############################################################
# Description: Schedules attacks when half health
############################################################

function mb:boss/herobrine/technical/dialogue/3rd_phase/rng

schedule clear mb:boss/herobrine/normal_mode/attacks/smite/schedule
schedule function mb:boss/herobrine/normal_mode/attacks/smite/schedule_2 10t append