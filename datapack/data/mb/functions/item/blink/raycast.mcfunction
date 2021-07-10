############################################################
# Description: Blink raycast
############################################################

# Raycast
scoreboard players add @s blink.raycast 1

execute as @s[scores={blink.raycast=..70}] if block ^ ^ ^ #mb:all_air positioned ^ ^ ^.1 run function mb:item/blink/raycast
execute as @s[scores={blink.raycast=70..}] if block ^ ^ ^ #mb:all_air positioned ^ ^ ^.1 run tp @e[type=marker,tag=blink.raycast] ~ ~ ~

# Teleport
execute at @e[type=marker,tag=blink.raycast] run tp @s[scores={blink.raycast=70..}] ~ ~ ~
execute as @s[scores={blink.raycast=70..}] run kill @e[type=marker,tag=blink.raycast]

# Reset
execute as @s[scores={blink.raycast=70..}] run function mb:item/blink/raycast_reset