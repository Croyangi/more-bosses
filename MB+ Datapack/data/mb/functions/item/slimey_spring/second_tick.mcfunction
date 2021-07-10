############################################################
# Description: Slimey Spring second tick
############################################################

execute as @s[scores={slimeSpring.cool=..1}] run tag @s remove slimeySpring
scoreboard players remove @s slimeSpring.cool 1

schedule function mb:item/slimey_spring/second_loop 1s replace