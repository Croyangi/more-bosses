############################################################
# Description: Used Slimey Spring
############################################################

# Technical
tag @s add slimeySpring
tag @s add slimeySpringFx
scoreboard players operation @s slimeSpring.cool = @s MBitemCooldown
scoreboard players set @s slimeSpring.fx 10

execute at @s run function mb:item/slimey_spring/ability

schedule function mb:item/slimey_spring/tick_loop 1t append
schedule function mb:item/slimey_spring/second_loop 1t append