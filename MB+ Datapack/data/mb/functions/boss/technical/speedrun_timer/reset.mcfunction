############################################################
# Description: Reset Speedrun Timer
############################################################

scoreboard players set seconds MB.timer 0
scoreboard players set miliseconds MB.timer 0

schedule clear mb:boss/technical/speedrun_timer/seconds
schedule clear mb:boss/technical/speedrun_timer/miliseconds