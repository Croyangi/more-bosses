############################################################
# Description: slimy Spring calculate
############################################################

execute as @s[scores={mb.slimy_s.cool=1..}] run function mb:entity/player/tellraw/item_cooldown
execute as @s[scores={mb.slimy_s.cool=..0}] run function mb:item/slimy_spring/used