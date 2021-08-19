############################################################
# Description: Venom Quiver tick
############################################################

execute at @s[scores={mb.used_bow=1..}] run tag @e[type=arrow,distance=..5,sort=nearest,limit=1] add mb.venom_quiver.arrow
scoreboard players set @s mb.used_bow 0
execute as @e[type=arrow,distance=..5,tag=mb.venom_quiver.arrow,sort=nearest,limit=1] run data modify entity @s Potion set value "minecraft:poison"