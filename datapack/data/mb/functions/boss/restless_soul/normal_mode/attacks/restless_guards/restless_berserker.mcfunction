############################################################
# Description: Summons Restless Berserker
############################################################

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon stray ~2 ~-1 ~ {DeathLootTable:"mb:entities/restless_soul/restless_guards",Team:"MB.boss",PersistenceRequired:1b,Health:20f,Motion:[0.0,0.8,0.0],Tags:["mb.restless_berserker","mb.restless_soul.cleanup","mb.restless_soul.minion"],CustomName:'{"text":"Restless Berserker","color":"dark_purple"}',HandItems:[{id:"minecraft:netherite_axe",Count:1b},{id:"minecraft:netherite_axe",Count:1b}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:200001}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:0.3}]}

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run function mb:boss/restless_soul/technical/model/casting
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run schedule function mb:boss/restless_soul/technical/model/uncasting 1s append

schedule function mb:boss/restless_soul/normal_mode/attacks/restless_guards/restless_leader 15s