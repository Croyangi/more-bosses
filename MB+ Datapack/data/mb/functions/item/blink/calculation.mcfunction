############################################################
# Description: Calculates cooldown
############################################################

scoreboard players set @s MB.dummy1 1
scoreboard players set item.cooldown MB.dummy1 3
execute if score @s blink.cool >= @s MB.dummy1 run function mb:entity/player/tellraw/item_cooldown
execute if score @s blink.cool matches 0 run execute at @s run function mb:item/blink/used