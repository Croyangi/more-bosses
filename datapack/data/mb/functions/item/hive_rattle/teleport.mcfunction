############################################################
# Description: Hive Rattle teleport tick
############################################################

scoreboard players operation .search mb.hive_rat.UUID = @s mb.hive_rat.UUID
execute as @a if score @s mb.hive_rat.UUID = .search mb.hive_rat.UUID run tag @s add mb.hive_rattle.owner
execute at @a[tag=mb.hive_rattle.owner,limit=1] run tp @s ~ ~ ~
tag @e remove mb.hive_rattle.owner