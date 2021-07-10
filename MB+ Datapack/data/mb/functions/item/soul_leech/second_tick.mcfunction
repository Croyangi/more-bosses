############################################################
# Description: Soul Leech second tick
############################################################

# Technical
execute as @s[scores={soulLeech.cool=..1}] run tag @s remove soulLeech
scoreboard players remove @s soulLeech.cool 1

# Heal ability
execute as @s[scores={soulLeech.cool=15..}] if entity @e[type=!#mb:non_soul_leech,distance=..5] run effect give @s regeneration 2 2 true

# Techical
schedule function mb:item/soul_leech/second_loop 1s replace