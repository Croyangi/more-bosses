############################################################
# Description: 2nd Phase of Restless Soul
############################################################

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon stray ~ ~-1 ~2 {DeathLootTable:"mb:entities/restless_soul/restless_guards",Team:"MB.boss",PersistenceRequired:1b,Health:20f,Motion:[0.0,0.8,0.0],Tags:["mb.restless_berserker","mb.restless_soul.cleanup","mb.restless_soul.minion"],CustomName:'{"text":"Restless Berserker","color":"dark_purple"}',HandItems:[{id:"minecraft:netherite_axe",Count:1b},{id:"minecraft:netherite_axe",Count:1b}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133003}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:0.3}]}
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon stray ~ ~-1 ~-2 {DeathLootTable:"mb:entities/restless_soul/restless_guards",Team:"MB.boss",PersistenceRequired:1b,Health:20f,Motion:[0.0,0.8,0.0],Tags:["mb.restless_berserker","mb.restless_soul.cleanup","mb.restless_soul.minion"],CustomName:'{"text":"Restless Berserker","color":"dark_purple"}',HandItems:[{id:"minecraft:netherite_axe",Count:1b},{id:"minecraft:netherite_axe",Count:1b}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133003}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:0.3}]}

# Soul Ring
schedule function mb:boss/restless_soul/normal_mode/attacks/soul_ring/schedule 1s append

# Bone Barricade
schedule function mb:boss/restless_soul/normal_mode/attacks/bone_barricade/schedule 5s append

# Soul Dragon
schedule function mb:boss/restless_soul/normal_mode/attacks/soul_dragon/start 15s append

