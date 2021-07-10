############################################################
# Description: Calculates cooldown
############################################################

scoreboard players set @s MBitemCooldown 20
scoreboard players set @s MB.dummy1 1
execute if score @s eyeSpy.cool >= @s MB.dummy1 run function mb:entity/player/tellraw/item_cooldown
execute if score @s eyeSpy.cool matches 0 at @s run function mb:item/eye_spy/used