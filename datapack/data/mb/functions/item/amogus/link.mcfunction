############################################################
# Description: Links the player to Mini Crewmate
############################################################

execute if score amogus.rng mb.dummy1 matches 0 run summon wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"mb.entity",DeathLootTable:"null",PersistenceRequired:1b,Tags:["mb.amogus.mini_crewmate","mb.entity"],HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133028}},{}],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Offers:{}}
execute if score amogus.rng mb.dummy1 matches 1 run summon wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"mb.entity",DeathLootTable:"null",PersistenceRequired:1b,Tags:["mb.amogus.mini_crewmate","mb.amogus.drip","mb.entity"],HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133029}},{}],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Offers:{}}
scoreboard players add .id mb.amogus.UUID 1
scoreboard players operation @s mb.amogus.UUID = .id mb.amogus.UUID
scoreboard players operation @e[type=wandering_trader,limit=1,sort=nearest,tag=mb.amogus.mini_crewmate] mb.amogus.UUID = @s mb.amogus.UUID