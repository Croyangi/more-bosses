############################################################
# Description: Schedules Shrink Expand attack
############################################################

execute at @e[type=slime,tag=mb.king_slime] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run function mb:boss/king_slime/normal_mode/attacks/shrink_expand/check_players

schedule function mb:boss/king_slime/normal_mode/attacks/shrink_expand/schedule 15s append