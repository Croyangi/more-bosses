############################################################
# Description: Links the player to Wispy
############################################################

summon wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"null",PersistenceRequired:1b,Tags:["mb.entity","mb.royal_jello.prince_slime"],HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133030}},{}],HandDropChances:[0.000F,0.000F],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Offers:{}}
scoreboard players add .id royal_jello.UUID 1
scoreboard players operation @s royal_jello.UUID = .id royal_jello.UUID
scoreboard players operation @e[type=wandering_trader,limit=1,sort=nearest,tag=mb.royal_jello.prince_slime] royal_jello.UUID = @s royal_jello.UUID