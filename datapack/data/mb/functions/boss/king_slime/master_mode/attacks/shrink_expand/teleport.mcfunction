############################################################
# Description: Shrink Expand teleport
############################################################

effect give @s invisibility 999999 0 true
execute at @e[type=armor_stand,tag=mb.king_slime.marker] run tp @s ~ ~ ~ 0 ~
data merge entity @s {Silent:0b}