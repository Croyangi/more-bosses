############################################################
# Description: Etherealm tick
############################################################

execute as @s[scores={etherealm.cool=..1}] run tag @s remove etherealm
scoreboard players remove @s etherealm.cool 1

schedule function mb:item/etherealm/loop 1s replace