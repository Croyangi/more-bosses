############################################################
# Description: Wisp in a Lantern teleport tick
############################################################

scoreboard players operation .search wisp_lan.UUID = @s wisp_lan.UUID
execute as @a if score @s wisp_lan.UUID = .search wisp_lan.UUID run tag @s add mb.wisp_in_a_lantern.owner
execute at @a[tag=mb.wisp_in_a_lantern.owner,limit=1] run tp @s ~ ~2 ~
tag @e remove mb.wisp_in_a_lantern.owner

data modify entity @s BoundX set from entity @a[tag=mb.wisp_in_a_lantern.owner,limit=1] Pos[0]
data modify entity @s BoundY set from entity @a[tag=mb.wisp_in_a_lantern.owner,limit=1] Pos[1]
data modify entity @s BoundZ set from entity @a[tag=mb.wisp_in_a_lantern.owner,limit=1] Pos[2]

tag @e remove mb.wisp_in_a_lantern.owner