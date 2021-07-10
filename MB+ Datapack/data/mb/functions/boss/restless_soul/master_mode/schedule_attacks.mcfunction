############################################################
# Description: Schedules attacks
############################################################

execute at @e[type=wandering_trader,tag=mb.restless_soul] run summon stray ~ ~ ~ {Team:"MB.boss",DeathLootTable:"mb:entities/restless_soul/restless_guards",PersistenceRequired:1b,Health:50f,Motion:[0.0,0.8,0.0],Tags:["mb.restless_leader","mb.restless_soul.cleanup","mb.restless_soul.cleanup"],CustomName:'{"text":"Restless Leader","color":"dark_purple"}',HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:200002}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:50},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:0.25}]}

# Ring of Fangs attack
schedule function mb:boss/restless_soul/master_mode/attacks/ring_of_fangs 1s append

# Restless Guards
schedule function mb:boss/restless_soul/master_mode/attacks/restless_guards/restless_archer 15s append

# Soul Storms
schedule function mb:boss/restless_soul/master_mode/attacks/soul_storm/summon 15s append

