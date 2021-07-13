############################################################
# Description: Soul Leech ability
############################################################

execute as @e[type=!#mb:non_soul_leech,distance=..5] run effect give @s minecraft:wither 2 0 true
execute at @e[type=!#mb:non_soul_leech,distance=..5] run particle soul ~ ~1 ~ 0 0 0 .05 1 normal

execute run particle minecraft:soul ~ ~1 ~ 3 3 3 .001 2 normal
execute run particle minecraft:soul_fire_flame ~ ~1 ~ 3 3 3 .001 2 normal