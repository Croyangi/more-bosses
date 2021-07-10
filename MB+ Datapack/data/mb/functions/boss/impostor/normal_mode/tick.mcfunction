############################################################
# Description: Runs when boss is active
############################################################

# Clears unnecessary entities
execute store result score impostor.minion.count MB.dummy1 if entity @e[tag=mb.impostor.minion]
execute if score impostor.minion.count MB.dummy1 matches 10.. as @e[tag=mb.impostor.minion,limit=1,sort=random] run function mb:boss/impostor/technical/despawn_minions
execute at @e[tag=mb.impostor] as @e[tag=mb.impostor.minion,distance=30..,limit=1,sort=furthest] run function mb:boss/impostor/technical/despawn_minions

# Second phase
execute if score impostor.health MB.dummy1 matches 1..249 run advancement grant @a only mb:technical/boss/impostor/normal_second_phase

schedule function mb:boss/impostor/normal_mode/tick 1t append