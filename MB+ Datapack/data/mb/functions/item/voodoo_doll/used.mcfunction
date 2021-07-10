############################################################
# Description: Used Voodoo Doll
############################################################

# Technical
tag @s add voodooDoll.loop
scoreboard players operation @s voodoo.cool = item.cooldown MB.dummy1

# Effects
playsound mb:item.voodoo_doll.used master @s ~ ~ ~ 1 1 1

# Raycast
tag @s add voodoo.raycast.immune
scoreboard players set @s voodoo.raycast 0
execute at @s anchored eyes run function mb:item/voodoo_doll/raycast

function mb:item/voodoo_doll/loop
function mb:item/voodoo_doll/entity/loop