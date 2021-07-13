############################################################
# Description: Etherealm calculate
############################################################

execute as @s[scores={mb.ethereal.cool=1..}] run function mb:entity/player/tellraw/item_cooldown
execute as @s[scores={mb.ethereal.cool=..0}] run function mb:item/etherealm/used