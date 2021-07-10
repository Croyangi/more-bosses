############################################################
# Description: Drop crafting tick
############################################################

execute store result score @s MB.itemnbt run data get entity @s Item.tag.craftNbt
execute if entity @s[scores={MB.itemnbt=1..}] run function mb:item/technical/dropcraft/dropcraft_tick