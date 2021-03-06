############################################################
# Description: Schedules Bone Barricade
############################################################

# Remove blocks
execute at @e[type=armor_stand,tag=mb.bone_barricade.marker] run fill ~ ~ ~ ~ ~2 ~ air
kill @e[type=armor_stand,tag=mb.bone_barricade.block]
kill @e[type=armor_stand,tag=mb.bone_barricade.marker]

# Sets blocks
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..20,gamemode=!creative,gamemode=!spectator] run function mb:boss/restless_soul/master_mode/attacks/bone_barricade/summon_markers
function mb:boss/restless_soul/master_mode/attacks/bone_barricade/spawn

# Spell cast animation
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..20,gamemode=!creative,gamemode=!spectator] run function mb:boss/restless_soul/technical/model/casting
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..20,gamemode=!creative,gamemode=!spectator] run schedule function mb:boss/restless_soul/technical/model/uncasting 1s append

schedule function mb:boss/restless_soul/master_mode/attacks/bone_barricade/schedule 15s append