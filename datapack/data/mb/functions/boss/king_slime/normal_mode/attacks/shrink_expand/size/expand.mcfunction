############################################################
# Description: Expands King Slime
############################################################

execute store result score mb.king_slime.size mb.dummy1 run data get entity @s Size
execute store result entity @s Size int 1 run scoreboard players operation mb.king_slime.size mb.dummy1 += mb.const.1 mb.dummy1