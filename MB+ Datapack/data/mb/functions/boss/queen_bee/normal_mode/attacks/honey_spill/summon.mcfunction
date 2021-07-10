############################################################
# Description: Summons Honey Spill
############################################################

execute at @e[type=bee,tag=mb.queen_bee.AI] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mb.honey_spill","mb.queen_bee.cleanup"],ArmorItems:[{},{},{},{id:"minecraft:honey_block",Count:1b}]}

schedule function mb:boss/queen_bee/normal_mode/attacks/honey_spill/summon 15s append