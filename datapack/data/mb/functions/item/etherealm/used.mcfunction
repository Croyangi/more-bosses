############################################################
# Description: Used Etherealm
############################################################

# Technical
tag @s add etherealm
scoreboard players operation @s etherealm.cool = @s MBitemCooldown

playsound mb:item.etherealm.used master @s ~ ~ ~ 1 1 1

execute at @s run function mb:item/etherealm/ability

schedule function mb:item/etherealm/loop 1t append