############################################################
# Description: Main tick function
############################################################

# Trigger settings menu
execute as @s[scores={MB.settings=1..}] run function mb:settings/trigger

# Reschedule when joining the world
execute as @s[scores={MB.join.world=1..}] run function mb:technical/restart

# Holding anything
execute as @s[predicate=mb:holding_anything] run function mb:entity/player/holding_item

# Boing boots
execute as @s[predicate=mb:items/boing_boots/wearing] run function mb:item/boing_boots/tick

# Soulbounding
execute if entity @e[type=armor_stand,tag=mb.soulbound.link] as @s run function mb:item/potion_of_soulbounding/tick

# Dropcraft tick
execute if entity @e[type=item] as @e[predicate=mb:dropcraft] run function mb:item/technical/dropcraft_tick

# Item cooldown
execute if entity @s[scores={mb.global_cool=1..}] run function mb:entity/item/tick

# Entity tick
execute if entity @e[tag=mb.entity] as @e[tag=mb.entity] run function mb:entity/miscellaneous/tick