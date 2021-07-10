############################################################
# Description: Links the player to Bruce
############################################################

summon wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"null",PersistenceRequired:1b,Tags:["mb.hive_rattle.bruce"],HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:300004}},{}],HandDropChances:[0.085F,0.085F],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Offers:{}}
scoreboard players add .id hive_rattle.UUID 1
scoreboard players operation @s hive_rattle.UUID = .id hive_rattle.UUID
scoreboard players operation @e[type=wandering_trader,limit=1,sort=nearest,tag=mb.hive_rattle.bruce] hive_rattle.UUID = @s hive_rattle.UUID