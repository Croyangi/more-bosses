############################################################
# Description: Used Pollinator
############################################################

# Technical
tag @s add pollinator
scoreboard players operation @s pollinator.cool = @s MBitemCooldown

function mb:item/pollinator/link

# Effects
playsound mb:item.pollinator.used master @s ~ ~ ~ 1 1 1
particle minecraft:cloud ~ ~ ~ 0 0 0 .3 30 normal
particle block honey_block ~ ~ ~ 0 0 0 1 30 normal

schedule function mb:item/pollinator/loop 1t append