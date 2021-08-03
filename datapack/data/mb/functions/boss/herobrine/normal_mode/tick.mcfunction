############################################################
# Description: Runs when boss is active
############################################################

# Clears unnecessary entities
execute store result score herobrine.minion.count mb.dummy1 if entity @e[tag=mb.herobrine.minion]
execute if score herobrine.minion.count mb.dummy1 matches 15.. as @e[tag=mb.herobrine.minion,limit=1,sort=random] run function mb:boss/herobrine/technical/despawn_minions
execute at @e[tag=mb.herobrine] as @e[tag=mb.herobrine.minion,distance=30..,limit=1,sort=furthest] run function mb:boss/herobrine/technical/despawn_minions

# Static Pools
execute as @a at @s if entity @e[type=armor_stand,tag=mb.static_pool,distance=..1.5] if entity @s[nbt={OnGround:1b}] run function mb:boss/herobrine/normal_mode/attacks/static_pool/effect

# Static Hearts
execute at @e[type=wandering_trader,tag=mb.herobrine] as @a[distance=..30] run function mb:boss/herobrine/normal_mode/attacks/static_hearts

# Smite
execute as @e[type=armor_stand,tag=mb.smite_marker] at @s run function mb:boss/herobrine/normal_mode/attacks/smite/tick

schedule function mb:boss/herobrine/normal_mode/tick 1t append