############################################################
# Description: Main tick function
############################################################

# Creeper was here
# Right click detection
execute as @s[scores={MB.coas=1..}] run function mb:item/technical/right_click_detect

# Trigger settings menu
execute as @s[scores={MB.settings=1..}] run function mb:settings/trigger

# Reschedule when joining the world
execute as @s[scores={MB.join.world=1..}] run function mb:technical/restart
