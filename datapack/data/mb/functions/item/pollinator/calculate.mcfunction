############################################################
# Description: Pollinator calculate
############################################################

execute as @s[scores={mb.pollinat.cool=1..}] run function mb:entity/player/tellraw/item_cooldown
execute as @s[scores={mb.pollinat.cool=..0}] run function mb:item/pollinator/used