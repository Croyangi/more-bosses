############################################################
# Description: Clears Soulbound effect
############################################################

# Title picture
title @s times 20 20 40
title @s title {"text":"쀁","font":"mb:soulbound","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}

# Teleports to origin
scoreboard players operation .search UUID.link = @s UUID.link
execute as @e[type=armor_stand,tag=soulbound.link] if score @s UUID.link = .search UUID.link run tag @s add soulbound.tp
execute at @e[type=armor_stand,tag=soulbound.tp] run tp @s ~ ~ ~
kill @e[type=armor_stand,tag=soulbound.tp]

playsound mb:item.potion_of_soulbounding.teleport master @s ~ ~ ~ 1 1 1

# Technical
tag @s remove soulbound
tag @s add soulbound.chunk
schedule function mb:item/potion_of_soulbounding/forceload_remove 5t append