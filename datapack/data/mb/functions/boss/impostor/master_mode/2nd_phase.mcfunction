############################################################
# Description: Runs when boss reaches 2nd phase
############################################################

execute at @e[type=husk,tag=mb.impostor] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run function mb:boss/impostor/normal_mode/attacks/2nd_phase_summon
playsound mb:entity.impostor.summon_crewmate master @a[distance=..16]

stopsound @a master
title @a times 0 560 20
title @a title [{"text":"\ub013","font":"mb:boss","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
playsound mb:entity.impostor.spotify_ad master @a ~ ~ ~ 1 1 1