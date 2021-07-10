############################################################
# Description: Counts up how many Wither Skeletons killed
############################################################

scoreboard players add @s shatteredMirror 1
particle soul ~ ~1 ~ 0 0 0 .1 30 normal

execute as @s[scores={shatteredMirror=10..}] at @s run function mb:item/shattered_mirror/shattered_mirror