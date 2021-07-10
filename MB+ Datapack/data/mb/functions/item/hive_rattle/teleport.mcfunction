############################################################
# Description: Hive Rattle teleport tick
############################################################

scoreboard players operation .search hive_rattle.UUID = @s hive_rattle.UUID
execute as @a if score @s hive_rattle.UUID = .search hive_rattle.UUID run tag @s add mb.hive_rattle.owner
execute at @a[tag=mb.hive_rattle.owner,limit=1] run tp @s ~ ~ ~
tag @e remove mb.hive_rattle.owner