############################################################
# Description: Amogus teleport tick
############################################################

scoreboard players operation .search mb.amogus.UUID = @s mb.amogus.UUID
execute as @a if score @s mb.amogus.UUID = .search mb.amogus.UUID run tag @s add mb.amogus.owner
execute at @a[tag=mb.amogus.owner,limit=1] run tp @s ~ ~ ~
tag @e remove mb.amogus.owner