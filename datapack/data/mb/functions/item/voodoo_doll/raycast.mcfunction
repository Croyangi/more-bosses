############################################################
# Description: Voodoo Doll raycast
############################################################

# Raycast
scoreboard players add @s voodoo.raycast 1

execute as @e[type=!#mb:friendly_fire,tag=!voodoo.raycast.immune,distance=0..2,sort=nearest,limit=1] run tag @s add voodooDoll.link
execute if entity @e[type=!#mb:friendly_fire,tag=!voodoo.raycast.immune,distance=0..2] run function mb:item/voodoo_doll/raycast_reset

execute as @s[scores={voodoo.raycast=..60}] if block ^ ^ ^ #mb:all_air unless entity @e[type=!#mb:friendly_fire,tag=!voodoo.raycast.immune,distance=0..2] positioned ^ ^ ^.1 run function mb:item/voodoo_doll/raycast

# Reset
execute as @s[scores={voodoo.raycast=60..}] run function mb:item/voodoo_doll/raycast_reset