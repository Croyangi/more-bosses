############################################################
# Description: Soulbound effect tick
############################################################

execute as @s[scores={soulbound.time=..1}] at @s run function mb:item/potion_of_soulbounding/clear
scoreboard players remove @s soulbound.time 1

execute at @s run particle enchant ~ ~1 ~ 0 0 0 1 5 normal

schedule function mb:item/potion_of_soulbounding/loop 1s replace