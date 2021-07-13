############################################################
# Description: Runs when boss is active
############################################################

# Clears unnecessary entities
execute store result score restless_soul.minion.count mb.dummy1 if entity @e[tag=mb.restless_soul.minion]
execute if score restless_soul.minion.count mb.dummy1 matches 15.. as @e[tag=mb.restless_soul.minion,limit=1,sort=random] run function mb:boss/restless_soul/technical/despawn_minions
execute at @e[tag=mb.restless_soul] as @e[tag=mb.restless_soul.minion,distance=30..,limit=1,sort=furthest] run function mb:boss/restless_soul/technical/despawn_minions

# Soul Storm
execute as @e[type=armor_stand,tag=mb.soul_storm] at @s run function mb:boss/restless_soul/master_mode/attacks/soul_storm/tick

# Second phase
execute if score restless_soul.health mb.dummy1 matches 1..249 run advancement grant @a only mb:technical/boss/restless_soul/master_second_phase

schedule function mb:boss/restless_soul/master_mode/tick 1t append