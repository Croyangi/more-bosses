############################################################
# Description: Links the player to Voodoo Doll mob
############################################################

tag @e remove voodooDoll.linked
scoreboard players add .id UUID.link 1
scoreboard players operation @s UUID.link = .id UUID.link
scoreboard players operation @e[tag=voodooDoll.link] UUID.link = @s UUID.link
tag @e[tag=voodooDoll.link] add voodooDoll.linked
tag @e remove voodooDoll.link