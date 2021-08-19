############################################################
# Description: Summon Restless Soul
############################################################

tag @a add mb.herobrine.active

function mb:boss/technical/boss/global_summon

execute as @a[scores={mb.difficulty=0}] run bossbar set mb:herobrine max 400
execute as @a[scores={mb.difficulty=0}] run bossbar set mb:herobrine name {"text":"\ub007","font":"mb:boss"}
execute as @a[scores={mb.difficulty=1}] run bossbar set mb:herobrine max 500
execute as @a[scores={mb.difficulty=1}] run bossbar set mb:herobrine name {"text":"\ub008","font":"mb:boss"}
bossbar set mb:herobrine visible true

execute at @s[scores={mb.difficulty=0}] run summon wandering_trader ~ ~ ~ {Silent:1b,Team:"MB.boss",DeathLootTable:"mb:entities/herobrine/death",PersistenceRequired:1b,Health:400f,Tags:["mb.herobrine","mb.herobrine.cleanup"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133000}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133008}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:400},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:.5},{Name:"generic.movement_speed",Base:.7}],Offers:{}}
execute at @s[scores={mb.difficulty=1}] run summon wandering_trader ~ ~ ~ {Silent:1b,Team:"MB.boss",DeathLootTable:"mb:entities/herobrine/death",PersistenceRequired:1b,Health:500f,Tags:["mb.herobrine","mb.herobrine.cleanup"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133000}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133008}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:500},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:.5},{Name:"generic.movement_speed",Base:.7}],Offers:{}}

tellraw @a [{"translate":"chat.mb.herobrine","color":"red","bold":true},{"text":" "},{"translate":"chat.mb.boss.summon","color":"white"}]
playsound mb:entity.boss.summon master @a ~ ~ ~ 1 1 1

execute as @s[scores={mb.difficulty=0}] run function mb:boss/herobrine/normal_mode/tick
execute as @s[scores={mb.difficulty=1}] run function mb:boss/herobrine/master_mode/tick

execute as @s[scores={mb.difficulty=0}] run function mb:boss/herobrine/normal_mode/schedule_attacks
execute as @s[scores={mb.difficulty=1}] run function mb:boss/herobrine/master_mode/schedule_attacks

function mb:boss/technical/speedrun_timer/schedule

function mb:boss/herobrine/technical/tick