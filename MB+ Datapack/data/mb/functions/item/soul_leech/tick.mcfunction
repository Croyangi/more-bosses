############################################################
# Description: Soul Leech tick
############################################################

# Technical
execute as @s[scores={soulLeech.fx=..1}] run tag @s remove soulLeechFx
scoreboard players remove @s soulLeech.fx 1

# Ability
execute as @e[type=!#mb:non_soul_leech,distance=..5] run effect give @s minecraft:wither 2 0 true
execute at @e[type=!#mb:non_soul_leech,distance=..5] run particle soul ~ ~1 ~ 0 0 0 .1 1 normal

# Effects
particle minecraft:soul ~ ~1 ~ 3 3 3 .001 2 normal
particle minecraft:soul_fire_flame ~ ~1 ~ 3 3 3 .001 2 normal

# Technical
schedule function mb:item/soul_leech/tick_loop 1t replace