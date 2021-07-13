############################################################
# Description: Calculates cooldown
############################################################

# Etherealm
execute as @s[scores={MBitemID=200002}] run execute if score @s etherealm.cool >= @s mb.dummy1 run function mb:entity/player/tellraw/item_cooldown
execute as @s[scores={MBitemID=200002}] run execute if score @s etherealm.cool matches 0 run execute at @s run function mb:item/etherealm/used

# Pollinator
execute as @s[scores={MBitemID=300003}] run execute if score @s pollinator.cool >= @s mb.dummy1 run function mb:entity/player/tellraw/item_cooldown
execute at @s[scores={MBitemID=300003}] run execute if score @s pollinator.cool matches 0 run function mb:item/pollinator/used

# Soul Leech
execute as @s[scores={MBitemID=200006}] run execute if score @s soulLeech.cool >= @s mb.dummy1 run function mb:entity/player/tellraw/item_cooldown
execute as @s[scores={MBitemID=200006}] run execute if score @s soulLeech.cool matches 0 run execute at @s run function mb:item/soul_leech/used

# Spirit Blade
execute as @s[scores={MBitemID=200004}] run execute if score @s spiritBlade.cool >= @s mb.dummy1 run function mb:entity/player/tellraw/item_cooldown
execute as @s[scores={MBitemID=200004}] run execute if score @s spiritBlade.cool matches 0 run execute at @s run function mb:item/spirit_blade/used