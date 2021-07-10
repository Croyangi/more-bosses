############################################################
# Description: Summons Homing Stinger at Bee Barrack
############################################################

execute at @e[type=husk,tag=mb.bee_drone] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["mb.homing_stinger","mb.queen_bee.cleanup"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:300000}}]}

schedule function mb:boss/queen_bee/normal_mode/attacks/bee_drone/homing_stinger/summon 10s append