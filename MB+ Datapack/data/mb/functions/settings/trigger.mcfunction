############################################################
# Description: Controls settings with trigger
############################################################

# Difficulty
execute as @a[scores={MB.settings=100}] run function mb:settings/return_page/difficulty/normal
execute as @a[scores={MB.settings=101}] run function mb:settings/return_page/difficulty/master

# Speedrun Timer
execute as @a[scores={MB.settings=200}] run function mb:settings/return_page/speedrun_timer/on
execute as @a[scores={MB.settings=201}] run function mb:settings/return_page/speedrun_timer/off

# Technical
function mb:settings/settings_pages/page_1
scoreboard players enable @a MB.settings
scoreboard players set @a MB.settings 0