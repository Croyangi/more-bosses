############################################################
# Description: Boing Boots tick
############################################################

# Ability
effect give @s jump_boost 1 3 true

# Effects
execute as @s[scores={MBjump=1..}] run function mb:item/boing_boots/effects
scoreboard players set @s MBjump 0
