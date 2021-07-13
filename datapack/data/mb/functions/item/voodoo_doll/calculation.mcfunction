############################################################
# Description: Calculates cooldown
############################################################

scoreboard players set @s mb.dummy1 1
scoreboard players set item.cooldown mb.dummy1 20
execute if score @s voodoo.cool >= @s mb.dummy1 run function mb:entity/player/tellraw/item_cooldown
execute if score @s voodoo.cool matches 0 run execute at @s run function mb:item/voodoo_doll/used