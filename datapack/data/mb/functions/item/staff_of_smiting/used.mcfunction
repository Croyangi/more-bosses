############################################################
# Description: Used Blink
############################################################

# Technical
tag @s add staffOfSmiting
scoreboard players operation @s smite.cool = item.cooldown mb.dummy1

# Effects
playsound mb:item.staff_of_smiting.used master @s ~ ~ ~ 1 1 1

# Raycast
tag @s add smite.raycast.immune
scoreboard players set @s smite.raycast 0
execute at @s anchored eyes run function mb:item/staff_of_smiting/raycast

function mb:item/staff_of_smiting/loop