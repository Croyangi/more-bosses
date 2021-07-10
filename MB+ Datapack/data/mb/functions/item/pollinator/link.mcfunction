############################################################
# Description: Links the player to armorstand
############################################################

# Summons Pollinator link
execute at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["pollinator"]}
scoreboard players add .id UUID.link 1
scoreboard players operation @s UUID.link = .id UUID.link
execute at @s run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=pollinator] UUID.link = @s UUID.link

# Ability
summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:60,Radius:4f,Duration:100,Effects:[{Id:10b,Amplifier:2b,Duration:60,ShowParticles:0b}]}
summon area_effect_cloud ~ ~.3 ~ {Particle:"item poppy",Radius:4f,Duration:100}