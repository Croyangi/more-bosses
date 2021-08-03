############################################################
# Description: Restless Soul starts casting
############################################################

attribute @e[tag=mb.restless_soul,limit=1] minecraft:generic.movement_speed modifier add 0-2-0-3-3 "slowness" -100 add
item replace entity @e[tag=mb.restless_soul] weapon.mainhand with leather_horse_armor{CustomModelData:133003}
tag @e[tag=mb.restless_soul] add mb.restless_soul.animated