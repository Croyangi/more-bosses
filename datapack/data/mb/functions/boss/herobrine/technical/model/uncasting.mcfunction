############################################################
# Description: Herobrine finishes casting
############################################################

attribute @e[tag=mb.herobrine,limit=1] minecraft:generic.movement_speed modifier remove 0-2-0-3-3
item replace entity @e[tag=mb.herobrine] weapon.mainhand with leather_horse_armor{CustomModelData:133009}
tag @e[tag=mb.herobrine] remove mb.herobrine.animated