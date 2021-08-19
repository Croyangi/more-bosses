############################################################
# Description: Main tick function
############################################################

# Trigger settings menu
execute as @s[scores={mb.settings=1..}] run function mb:settings/trigger

# Reschedule when joining the world
execute as @s[scores={mb.join.world=1..}] run function mb:technical/restart

# Holding anything
execute as @s[predicate=mb:holding_anything] run function mb:entity/player/holding_item

# Boing boots
execute as @s[predicate=mb:items/boing_boots/wearing] run function mb:item/boing_boots/tick

# Item cooldown
execute if entity @s[scores={mb.global_cool=1..}] run function mb:entity/item/tick