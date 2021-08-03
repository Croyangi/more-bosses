############################################################
# Description: Applies Soulbound effect
############################################################

# Actionbar picture
title @s actionbar [{"text":"쀁","font":"mb:soulbound","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" (5:00)","font":"minecraft:default","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

# Technical
forceload add ~ ~
scoreboard players set @s mb.soulboun.time 100
playsound mb:item.potion_of_soulbounding.drink master @a[distance=..16]
tag @s add mb.soulbound.tagged

execute at @s run function mb:item/potion_of_soulbounding/link

advancement revoke @s only mb:technical/item/potion_on_soulbounding/drink