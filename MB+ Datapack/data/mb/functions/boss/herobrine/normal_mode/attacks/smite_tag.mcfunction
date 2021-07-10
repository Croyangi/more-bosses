############################################################
# Description: Smite scoreboard set
############################################################

execute as @e[type=armor_stand,tag=smite.marker,tag=!smite.used] run scoreboard players set @s MBbossDummy 40
execute as @e[type=armor_stand,tag=smite.marker] run tag @s add smite.used