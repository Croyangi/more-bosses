############################################################
# Description: Summons Smite Marker
############################################################

execute at @e[type=wandering_trader,tag=mb.herobrine] at @p[distance=..30,gamemode=!creative,gamemode=!spectator] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["mb.herobrine.cleanup","mb.smite_marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133020}}]}
scoreboard players set @e[type=armor_stand,tag=mb.smite_marker] mb.dummy1 40

schedule function mb:boss/herobrine/normal_mode/attacks/smite/summon 5s replace