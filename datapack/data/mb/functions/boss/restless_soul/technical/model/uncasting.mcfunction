############################################################
# Description: Restless Soul finishes casting
############################################################

attribute @e[tag=mb.restless_soul,limit=1] minecraft:generic.movement_speed modifier remove 0-2-0-3-3
item replace entity @e[tag=mb.restless_soul] weapon.mainhand with leather_horse_armor{CustomModelData:200001}
tag @e[tag=mb.restless_soul] remove mb.restless_soul.animated