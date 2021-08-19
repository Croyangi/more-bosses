############################################################
# Description: Summon King Slime
############################################################

tag @a add mb.impostor.active

function mb:boss/technical/boss/global_summon

title @a times 10 10 100
title @a title [{"text":"\ub012","font":"mb:boss","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

playsound mb:entity.impostor.summon master @a ~ ~ ~ 1 1 1

execute as @a[scores={mb.difficulty=0}] run bossbar set mb:impostor max 500
execute as @a[scores={mb.difficulty=0}] run bossbar set mb:impostor name {"text":"\ub010","font":"mb:boss"}
execute as @a[scores={mb.difficulty=1}] run bossbar set mb:impostor max 1000
execute as @a[scores={mb.difficulty=1}] run bossbar set mb:impostor name {"text":"\ub011","font":"mb:boss"}
bossbar set mb:impostor visible true

execute at @s[scores={mb.difficulty=0}] run summon husk ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"mb:entities/impostor/death",Health:500f,IsBaby:0b,CanBreakDoors:1b,Tags:["mb.impostor","mb.impostor.cleanup"],CustomName:'{"text":"Impostor","color":"red"}',ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133010}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:500},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:0.7},{Name:"generic.movement_speed",Base:0.5},{Name:"generic.attack_damage",Base:20}]}
execute at @s[scores={mb.difficulty=1}] run summon husk ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"mb:entities/impostor/death",Health:1000f,IsBaby:0b,CanBreakDoors:1b,Tags:["mb.impostor","mb.impostor.cleanup"],CustomName:'{"text":"Impostor","color":"red"}',ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133010}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:1.0},{Name:"generic.movement_speed",Base:0.5},{Name:"generic.attack_damage",Base:40}]}

tellraw @a [{"translate":"chat.mb.impostor","color":"red","bold":true},{"text":" "},{"translate":"chat.mb.boss.summon","color":"white"}]
playsound mb:entity.boss.summon master @a ~ ~ ~ 1 1 1

execute as @s[scores={mb.difficulty=0}] run function mb:boss/impostor/normal_mode/tick
execute as @s[scores={mb.difficulty=1}] run function mb:boss/impostor/master_mode/tick

execute as @s[scores={mb.difficulty=0}] run function mb:boss/impostor/normal_mode/schedule_attacks
execute as @s[scores={mb.difficulty=1}] run function mb:boss/impostor/master_mode/schedule_attacks

function mb:boss/technical/speedrun_timer/schedule

function mb:boss/impostor/technical/tick