############################################################
# Description: Used Pollinator
############################################################

scoreboard players set @s mb.pollinat.cool 300
scoreboard players add @s mb.global_cool 1

summon area_effect_cloud ~ ~.3 ~ {Particle:"item poppy",ReapplicationDelay:60,Radius:4f,Duration:100,Effects:[{Id:10b,Amplifier:2b,Duration:60,ShowParticles:0b}]}

playsound mb:item.pollinator.used master @a[distance=..16]
particle minecraft:cloud ~ ~ ~ 0 0 0 .3 30 normal
particle block honey_block ~ ~ ~ 0 0 0 1 30 normal