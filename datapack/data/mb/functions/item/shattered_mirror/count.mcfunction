############################################################
# Description: Counts up how many Wither Skeletons killed
############################################################

scoreboard players add @s mb.shatter_mirro 1
particle soul ~ ~1 ~ 0 0 0 .1 10 normal

execute as @s[scores={mb.shatter_mirro=10..}] at @s run function mb:item/shattered_mirror/shattered_mirror