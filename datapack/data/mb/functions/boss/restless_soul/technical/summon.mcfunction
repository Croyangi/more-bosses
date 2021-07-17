############################################################
# Description: Summon Restless Soul
############################################################

tag @a add mb.restless_soul.active

function mb:boss/technical/boss/global_summon

execute as @a[scores={MB.difficulty=0}] run bossbar set mb:restlesssoul max 400
execute as @a[scores={MB.difficulty=0}] run bossbar set mb:restlesssoul name {"text":"\ub003","font":"mb:boss"}
execute as @a[scores={MB.difficulty=1}] run bossbar set mb:restlesssoul max 500
execute as @a[scores={MB.difficulty=1}] run bossbar set mb:restlesssoul name {"text":"\ub004","font":"mb:boss"}
bossbar set mb:restlesssoul visible true

execute at @s[scores={MB.difficulty=0}] run summon wandering_trader ~ ~ ~ {Silent:1b,Team:"MB.boss",DeathLootTable:"mb:entities/restless_soul/death",PersistenceRequired:1b,Health:400f,Tags:["mb.restless_soul","mb.restless_soul.cleanup"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133000}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133002}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:400},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:.5},{Name:"generic.movement_speed",Base:.7}],Offers:{}}
execute at @s[scores={MB.difficulty=1}] run summon wandering_trader ~ ~ ~ {Silent:1b,Team:"MB.boss",DeathLootTable:"mb:entities/restless_soul/death",PersistenceRequired:1b,Health:500f,Tags:["mb.restless_soul","mb.restless_soul.cleanup"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133000}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:133002}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:500},{Name:"generic.follow_range",Base:100},{Name:"generic.knockback_resistance",Base:.5},{Name:"generic.movement_speed",Base:.7}],Offers:{}}

tellraw @a [{"translate":"chat.mb.restless_soul","color":"dark_purple","bold":true},{"text":" "},{"translate":"chat.mb.boss.summon","color":"white"}]
playsound mb:entity.boss.summon master @a ~ ~ ~ 1 1 1

execute as @s[scores={MB.difficulty=0}] run function mb:boss/restless_soul/normal_mode/tick
execute as @s[scores={MB.difficulty=1}] run function mb:boss/restless_soul/master_mode/tick

execute as @s[scores={MB.difficulty=0}] run function mb:boss/restless_soul/normal_mode/schedule_attacks
execute as @s[scores={MB.difficulty=1}] run function mb:boss/restless_soul/master_mode/schedule_attacks

function mb:boss/technical/speedrun_timer/schedule

function mb:boss/restless_soul/technical/tick