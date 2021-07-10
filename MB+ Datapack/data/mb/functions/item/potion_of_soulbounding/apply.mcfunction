############################################################
# Description: Applies Soulbound effect
############################################################

# Actionbar picture
title @s actionbar [{"text":"쀁","font":"mb:soulbound","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" (5:00)","font":"minecraft:default","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

# Technical
tag @s add soulbound
forceload add ~ ~
scoreboard players set @s soulbound.time 10
playsound mb:item.potion_of_soulbounding.drink master @s ~ ~ ~ 1 1 1

function mb:item/potion_of_soulbounding/link

advancement revoke @s only mb:technical/item/potion_on_soulbounding/drink

schedule function mb:item/potion_of_soulbounding/loop 1t append