############################################################
# Description: Links the player to Bee Mount
############################################################

# Summon Bee Mount UUID link
execute as @s[scores={flowerStick.rng=0}] run summon armor_stand ~ ~1 ~ {Small:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Tags:["beeMountRoot","beeMountNormal"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Passengers:[{id:"minecraft:pig",Silent:1b,Invulnerable:1b,DeathLootTable:"null",PersistenceRequired:1b,NoAI:1b,Herngh:1f,Saddle:1b,Tags:["beeMount"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133018}}]}
execute as @s[scores={flowerStick.rng=1}] run summon armor_stand ~ ~1 ~ {Small:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Tags:["beeMountRoot","beeMountCool"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Passengers:[{id:"minecraft:pig",Silent:1b,Invulnerable:1b,DeathLootTable:"null",PersistenceRequired:1b,NoAI:1b,Herngh:1f,Saddle:1b,Tags:["beeMount"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133019}}]}
scoreboard players add .id UUID.link 1
scoreboard players operation @s UUID.link = .id UUID.link
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=beeMountRoot] UUID.link = @s UUID.link
scoreboard players operation @e[type=pig,limit=1,sort=nearest,tag=beeMount] UUID.link = @s UUID.link