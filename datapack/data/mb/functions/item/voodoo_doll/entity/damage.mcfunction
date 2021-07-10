############################################################
# Description: Damages mobs by a heart
############################################################

scoreboard players set voodoo.damage MB.dummy1 1
execute as @e[type=!#mb:friendly_fire,distance=1..5] store result score @s voodoo.health run data get entity @s Health
execute as @e[type=!#mb:friendly_fire,distance=1..5] store result entity @s Health int 1 run scoreboard players operation @s voodoo.health -= voodoo.damage MB.dummy1
execute at @e[type=!#mb:friendly_fire,distance=1..5] run particle angry_villager ~ ~2 ~ 0 0 0 1 1 normal