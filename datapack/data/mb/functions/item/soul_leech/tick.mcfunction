############################################################
# Description: Soul Leech tick
############################################################

scoreboard players remove @s mb.soul_lee.cool 1
scoreboard players remove @s[scores={mb.soul_lee.time=1..}] mb.soul_lee.time 1
scoreboard players remove @s[scores={mb.soul_lee.cool=..0}] mb.global_cool 1

execute as @s[scores={mb.soul_lee.time=1..}] run function mb:item/soul_leech/ability