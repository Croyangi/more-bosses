############################################################
# Description: Herobrine starts casting
############################################################

attribute @e[tag=mb.herobrine,limit=1] minecraft:generic.movement_speed modifier add 0-2-0-3-3 "slowness" -100 add
item replace entity @e[tag=mb.herobrine] weapon.mainhand with leather_horse_armor{CustomModelData:133009}
tag @e[tag=mb.herobrine] add mb.herobrine.animated