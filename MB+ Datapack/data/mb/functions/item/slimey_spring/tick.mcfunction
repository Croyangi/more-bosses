############################################################
# Description: Slimey Spring tick
############################################################

execute as @s[scores={slimeSpring.fx=..1}] run tag @s remove slimeySpringFx
scoreboard players remove @s slimeSpring.fx 1

execute at @e[type=!#mb:friendly_fire,distance=..10,limit=10] run particle block slime_block ~ ~ ~ 0.0 0.0 0.0 1 10 normal

schedule function mb:item/slimey_spring/tick_loop 1t replace