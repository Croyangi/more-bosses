############################################################
# Description: Soulbound effect tick
############################################################

execute as @s[scores={mb.soulboun.time=..1}] at @s run function mb:item/potion_of_soulbounding/clear
scoreboard players remove @s mb.soulboun.time 1
particle enchant ~ ~1 ~ 0 0 0 1 1 normal