############################################################
# Description: Amogus teleport tick
############################################################

scoreboard players operation .search amogus.UUID = @s amogus.UUID
execute as @a if score @s amogus.UUID = .search amogus.UUID run tag @s add mb.amogus.owner
execute at @a[tag=mb.amogus.owner,limit=1] run tp @s ~ ~ ~
tag @e remove mb.amogus.owner