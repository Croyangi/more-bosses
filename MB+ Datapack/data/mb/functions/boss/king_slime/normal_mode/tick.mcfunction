############################################################
# Description: Runs when boss is active
############################################################

# Clears unnecessary entities
tag @e[type=slime,name="Minion Slime"] add mb.king_slime.minion
tag @e[type=slime,name="Springy Slime"] add mb.king_slime.minion
execute store result score king_slime.minion.count MB.dummy1 if entity @e[type=slime,tag=mb.king_slime.minion]
execute if score king_slime.minion.count MB.dummy1 matches 30.. as @e[type=slime,tag=mb.king_slime.minion,limit=1,sort=random] run function mb:boss/king_slime/technical/despawn_minions
execute at @e[type=slime,tag=mb.king_slime] as @e[type=slime,tag=mb.king_slime.minion,distance=40..,limit=1,sort=furthest] run function mb:boss/king_slime/technical/despawn_minions

# Second phase
execute if score king_slime.health MB.dummy1 matches 1..99 run advancement grant @a only mb:technical/boss/king_slime/normal_second_phase

schedule function mb:boss/king_slime/normal_mode/tick 1t append