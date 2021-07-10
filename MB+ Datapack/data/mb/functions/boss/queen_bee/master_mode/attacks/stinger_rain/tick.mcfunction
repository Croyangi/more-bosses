############################################################
# Description: Loops for summoning Stinger Rain
############################################################

tag @e[type=armor_stand,tag=mb.stinger_rain.marker,tag=!this,sort=random,limit=1] add this
execute at @e[type=armor_stand,tag=this,tag=!not_this,limit=1] run summon armor_stand ~ ~10 ~ {Small:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mb.stinger_rain","mb.queen_bee.cleanup"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:300002}}]}
tag @e[type=armor_stand,tag=mb.stinger_rain.marker,tag=this] add not_this
execute if entity @e[type=armor_stand,tag=mb.stinger_rain.marker] run schedule function mb:boss/queen_bee/master_mode/attacks/stinger_rain/tick .1s append