############################################################
# Description: Clears Soulbound effect
############################################################

# Title picture
title @s times 20 20 40
title @s title {"text":"쀁","font":"mb:soulbound","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}

# Teleports to origin
scoreboard players operation .search mb.soulboun.UUID = @s mb.soulboun.UUID
execute as @e[type=armor_stand,tag=mb.soulbound.link] if score @s mb.soulboun.UUID = .search mb.soulboun.UUID run tag @s add mb.soulbound.tp
execute at @e[type=armor_stand,tag=mb.soulbound.tp] run tp @s ~ ~ ~
kill @e[type=armor_stand,tag=mb.soulbound.tp]

tag @s remove mb.soulbound.tagged
playsound mb:item.potion_of_soulbounding.teleport master @a[distance=..16]

# Technical
tag @s add mb.soulbound.chunk
schedule function mb:item/potion_of_soulbounding/forceload_remove 5t append