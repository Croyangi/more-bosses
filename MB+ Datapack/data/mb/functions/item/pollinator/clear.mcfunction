############################################################
# Description: Kills UUID armorstand
############################################################

scoreboard players operation .search UUID.link = @s UUID.link
execute as @e[type=armor_stand,tag=pollinator] if score @s UUID.link = .search UUID.link run kill @s