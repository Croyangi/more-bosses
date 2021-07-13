############################################################
# Description: Links the player to Wispy
############################################################

summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"mb.entity",DeathLootTable:"null",PersistenceRequired:1b,Tags:["mb.entity","mb.royal_jello.prince_slime"],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b}]}
scoreboard players add .id royal_jello.UUID 1
scoreboard players operation @s royal_jello.UUID = .id royal_jello.UUID
scoreboard players operation @e[type=slime,limit=1,sort=nearest,tag=mb.royal_jello.prince_slime] royal_jello.UUID = @s royal_jello.UUID