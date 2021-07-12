############################################################
# Description: Summons Restless Leader
############################################################

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon stray ~-2 ~-1 ~ {Team:"MB.boss",DeathLootTable:"mb:entities/restless_soul/restless_guards",PersistenceRequired:1b,Health:40f,Motion:[0.0,0.8,0.0],Tags:["mb.restless_leader","mb.restless_soul.cleanup","mb.restless_soul.cleanup"],CustomName:'{"text":"Restless Leader","color":"dark_purple"}',HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133004}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:0.25}]}

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run function mb:boss/restless_soul/technical/model/casting
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run schedule function mb:boss/restless_soul/technical/model/uncasting 1s append

schedule function mb:boss/restless_soul/normal_mode/attacks/restless_guards/restless_archer 15s