############################################################
# Description: Links the player to Wispy
############################################################

summon vex ~ ~2 ~ {Silent:1b,Invulnerable:1b,Team:"MB.pets",DeathLootTable:"null",PersistenceRequired:1b,Tags:["mb.wisp_in_a_lantern.wispy"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133012}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}]}
scoreboard players add .id wisp_lan.UUID 1
scoreboard players operation @s wisp_lan.UUID = .id wisp_lan.UUID
scoreboard players operation @e[type=vex,limit=1,sort=nearest,tag=mb.wisp_in_a_lantern.wispy] wisp_lan.UUID = @s wisp_lan.UUID