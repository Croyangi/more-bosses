############################################################
# Description: Links the player to Bee Mount
############################################################

# Summon Bee Mount UUID link
execute if score bee_mount.rng mb.dummy1 matches 0 run summon armor_stand ~ ~1 ~ {Small:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Tags:["mb.flower_on_a_stick.bee_mount.root"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Passengers:[{id:"minecraft:pig",Silent:1b,Invulnerable:1b,DeathLootTable:"null",PersistenceRequired:1b,NoAI:1b,Health:1f,Saddle:1b,Tags:["mb.flower_on_a_stick.bee_mount.ride"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133018}}]}
execute if score bee_mount.rng mb.dummy1 matches 1 run summon armor_stand ~ ~1 ~ {Small:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Tags:["mb.flower_on_a_stick.bee_mount.root"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Passengers:[{id:"minecraft:pig",Silent:1b,Invulnerable:1b,DeathLootTable:"null",PersistenceRequired:1b,NoAI:1b,Health:1f,Saddle:1b,Tags:["mb.flower_on_a_stick.bee_mount.ride"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133019}}]}
scoreboard players add .id UUID.link 1
scoreboard players operation @s UUID.link = .id UUID.link
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=mb.flower_on_a_stick.bee_mount.root] UUID.link = @s UUID.link
scoreboard players operation @e[type=pig,limit=1,sort=nearest,tag=mb.flower_on_a_stick.bee_mount.ride] UUID.link = @s UUID.link