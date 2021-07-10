############################################################
# Description: Pollinator tick
############################################################

execute as @s[scores={pollinator.cool=..15}] run function mb:item/pollinator/clear
execute as @s[scores={pollinator.cool=..1}] run tag @s remove pollinator
scoreboard players remove @s pollinator.cool 1

schedule function mb:item/pollinator/loop 1s replace