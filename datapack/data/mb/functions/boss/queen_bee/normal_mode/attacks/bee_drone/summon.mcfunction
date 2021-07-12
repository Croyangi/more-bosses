############################################################
# Description: Summons Bee Drone
############################################################

execute at @e[type=bee,tag=mb.queen_bee.AI] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon husk ~ ~3 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"mb:entities/queen_bee/bee_drone",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:5f,Tags:["mb.queen_bee.minion","mb.bee_drone","mb.queen_bee.cleanup"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133014}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:5}]}

schedule function mb:boss/queen_bee/normal_mode/attacks/bee_drone/summon 15s append