############################################################
# Description: Schedules Stinger Rain attack
############################################################

execute at @e[type=bee,tag=mb.queen_bee.AI] run function mb:boss/queen_bee/master_mode/attacks/stinger_rain/summon_markers

schedule function mb:boss/queen_bee/master_mode/attacks/stinger_rain/spread_markers 1t append
schedule function mb:boss/queen_bee/master_mode/attacks/stinger_rain/tick 1s append
schedule function mb:boss/queen_bee/master_mode/attacks/stinger_rain/clear_remaining 5s append

schedule function mb:boss/queen_bee/master_mode/attacks/stinger_rain/schedule 10s append