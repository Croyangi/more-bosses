############################################################
# Description: Soul Leech calculate
############################################################

execute as @s[scores={mb.soul_lee.cool=1..}] run function mb:entity/player/tellraw/item_cooldown
execute as @s[scores={mb.soul_lee.cool=..0}] run function mb:item/soul_leech/used