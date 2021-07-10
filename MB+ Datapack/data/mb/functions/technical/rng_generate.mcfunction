############################################################
# Description: Generates a random number based on input
############################################################

# This code was provided by The Creeper's Code, I stole it.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mb.rng"],Duration:1}
execute positioned ~ ~ ~ store result score @s MB.rng.output run data get entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,tag=mb.rng,distance=..1] UUID[0] 1
scoreboard players operation @s MB.rng.output %= @s MB.rng.input
kill @e[type=area_effect_cloud,sort=arbitrary,tag=mb.rng]