############################################################
# Description: Schedules Smite attack 2
############################################################

schedule function mb:boss/herobrine/normal_mode/attacks/smite/schedule_2 10t append

execute at @e[type=wandering_trader,tag=herobrine] run execute at @p run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["smite.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400000}}]}
schedule function mb:boss/herobrine/normal_mode/attacks/smite_tag 1t append