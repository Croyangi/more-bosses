############################################################
# Description: Counts miliseconds
############################################################

scoreboard players add miliseconds MB.timer 1
execute if score miliseconds MB.timer matches 10 run scoreboard players set miliseconds MB.timer 0

schedule function mb:boss/technical/speedrun_timer/miliseconds .1s append