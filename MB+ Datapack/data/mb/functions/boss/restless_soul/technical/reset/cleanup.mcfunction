############################################################
# Description: Cleans up leftover entities
############################################################

execute at @e[type=armor_stand,tag=mb.bone_barricade.marker] run fill ~ ~ ~ ~ ~2 ~ air
kill @e[type=armor_stand,tag=mb.bone_barricade.block]
kill @e[type=armor_stand,tag=mb.bone_barricade.marker]
tp @e[tag=mb.restless_soul.cleanup] ~ -1000 ~