############################################################
# Description: Links the player to armorstand
############################################################

# Kills existing soulbound links
scoreboard players operation .search UUID.link = @s UUID.link
execute as @e[type=armor_stand,tag=soulbound.link] if score @s UUID.link = .search UUID.link run kill @s

# Summons soulbound tp link
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["soulbound.link"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:200100}}]}
scoreboard players add .id UUID.link 1
scoreboard players operation @s UUID.link = .id UUID.link
execute at @s run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=soulbound.link] UUID.link = @s UUID.link