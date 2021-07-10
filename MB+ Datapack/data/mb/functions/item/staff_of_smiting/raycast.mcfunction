############################################################
# Description: Smite raycast
############################################################

# Raycast
scoreboard players add @s smite.raycast 1

execute at @e[type=!#mb:friendly_fire,tag=!smite.raycast.immune,distance=0..2,sort=nearest,limit=1] run summon lightning_bolt
execute if entity @e[type=!#mb:friendly_fire,tag=!smite.raycast.immune,distance=0..2] run function mb:item/staff_of_smiting/raycast_reset

execute as @s[scores={smite.raycast=..100}] if block ^ ^ ^ #mb:all_air unless entity @e[type=!#mb:friendly_fire,tag=!smite.raycast.immune,distance=0..2] positioned ^ ^ ^.1 run function mb:item/staff_of_smiting/raycast

# Reset
execute as @s[scores={smite.raycast=100..}] run function mb:item/staff_of_smiting/raycast_reset

particle minecraft:electric_spark ~ ~ ~ 0 0 0 .1 1 normal