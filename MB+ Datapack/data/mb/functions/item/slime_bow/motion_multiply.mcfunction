############################################################
# Description: Slime Bow motion multiply
############################################################

execute store result entity @s Motion[0] double 0.00130 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.00130 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double 0.00130 run data get entity @s Motion[2] 1000

tag @s add mb.slime_bow.arrow.used