############################################################
# Description: Slime Bow tick
############################################################

execute at @s[scores={mb.used_bow=1..}] run tag @e[type=arrow,distance=..5,sort=nearest,limit=1] add mb.slime_bow.arrow
scoreboard players set @s mb.used_bow 0
execute as @e[type=arrow,tag=mb.slime_bow.arrow,tag=!mb.slime_bow.arrow.used] run function mb:item/slime_bow/motion_multiply