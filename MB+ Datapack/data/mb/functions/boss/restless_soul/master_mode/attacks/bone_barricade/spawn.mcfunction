############################################################
# Description: Generates Bone Barricade loop
############################################################

execute at @e[type=wandering_trader,tag=mb.restless_soul] at @p[distance=..20,gamemode=!creative,gamemode=!spectator] run spreadplayers ~ ~ 1.5 4 false @e[type=armor_stand,tag=mb.bone_barricade.marker]
execute at @e[type=armor_stand,tag=mb.bone_barricade.marker] if block ~ ~ ~ #mb:all_air if block ~ ~1 ~ #mb:all_air if block ~ ~2 ~ #mb:all_air run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:0b,Invisible:1b,Tags:["mb.restless_soul.cleanup","mb.bone_barricade.block"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:200008}}]}
execute at @e[type=armor_stand,tag=mb.bone_barricade.marker] if block ~ ~ ~ #mb:all_air if block ~ ~1 ~ #mb:all_air if block ~ ~2 ~ #mb:all_air run particle block bone_block ~ ~ ~ 0 2 0 1 50 normal
execute at @e[type=armor_stand,tag=mb.bone_barricade.marker] if block ~ ~ ~ #mb:all_air if block ~ ~1 ~ #mb:all_air if block ~ ~2 ~ #mb:all_air run fill ~ ~ ~ ~ ~2 ~ barrier
execute at @e[type=armor_stand,tag=mb.bone_barricade.marker] run playsound mb:block.place.bone_barricade master @a[distance=..16] ~ ~ ~