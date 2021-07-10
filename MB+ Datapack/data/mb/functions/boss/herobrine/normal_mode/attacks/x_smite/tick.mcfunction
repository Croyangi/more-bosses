############################################################
# Description: Tick function X Smite
############################################################

schedule function mb:boss/herobrine/normal_mode/attacks/x_smite/tick 1t append

# Summon Smite markers
execute if score x_smite MBbossDummy matches 60 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~1 ~ ~1 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 58 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~2 ~ ~2 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 56 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~3 ~ ~3 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 54 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~4 ~ ~4 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}

execute if score x_smite MBbossDummy matches 60 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~-1 ~ ~1 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 58 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~-2 ~ ~2 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 56 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~-3 ~ ~3 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 54 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~-4 ~ ~4 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}

execute if score x_smite MBbossDummy matches 60 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~1 ~ ~-1 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 58 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~2 ~ ~-2 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 56 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~3 ~ ~-3 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 54 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~4 ~ ~-4 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}

execute if score x_smite MBbossDummy matches 60 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~-1 ~ ~-1 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 58 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~-2 ~ ~-2 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 56 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~-3 ~ ~-3 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
execute if score x_smite MBbossDummy matches 54 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ~-4 ~ ~-4 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}

scoreboard players remove x_smite MBbossDummy 1
execute if score x_smite MBbossDummy matches ..0 run schedule clear mb:boss/herobrine/normal_mode/attacks/x_smite/tick

# Animation change
execute if score x_smite MBbossDummy matches ..0 run tag @e[type=wandering_trader,tag=herobrine] remove herobrine.animation
execute if score x_smite MBbossDummy matches ..0 run data merge entity @e[type=wandering_trader,tag=herobrine,limit=1] {Invulnerable:0b}
item replace entity @e[type=minecraft:wandering_trader,tag=herobrine] weapon.mainhand with leather_horse_armor{CustomModelData:400003}

schedule function mb:boss/herobrine/normal_mode/attacks/smite_tag 1t append