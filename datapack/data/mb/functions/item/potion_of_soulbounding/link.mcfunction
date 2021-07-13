############################################################
# Description: Links the player to armorstand
############################################################

# Kills existing soulbound links
scoreboard players operation .search mb.soulboun.UUID = @s mb.soulboun.UUID
execute as @e[type=armor_stand,tag=mb.soulbound.link] if score @s mb.soulboun.UUID = .search mb.soulboun.UUID run kill @s

# Summons soulbound tp link
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mb.soulbound.link","mb.entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133011}}]}
scoreboard players add .id mb.soulboun.UUID 1
scoreboard players operation @s mb.soulboun.UUID = .id mb.soulboun.UUID
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=mb.soulbound.link] mb.soulboun.UUID = @s mb.soulboun.UUID