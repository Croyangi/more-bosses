############################################################
# Description: Royal Jello teleport tick
############################################################

scoreboard players operation .search royal_jello.UUID = @s royal_jello.UUID
execute as @a if score @s royal_jello.UUID = .search royal_jello.UUID run tag @s add mb.royal_jello.owner
execute at @a[tag=mb.royal_jello.owner,limit=1] run tp @s ~ ~ ~
tag @e remove mb.royal_jello.owner