############################################################
# Description: Summons Static Pool
############################################################

execute at @e[type=wandering_trader,tag=mb.herobrine] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["mb.static_pool", "mb.herobrine.cleanup"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133032}}]}

schedule function mb:boss/herobrine/normal_mode/attacks/static_pool/summon 30s replace