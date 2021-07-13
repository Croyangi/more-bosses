############################################################
# Description: Slimey Spring calculate
############################################################

execute as @s[scores={mb.slimey_s.cool=1..}] run function mb:entity/player/tellraw/item_cooldown
execute as @s[scores={mb.slimey_s.cool=..0}] run function mb:item/slimey_spring/used