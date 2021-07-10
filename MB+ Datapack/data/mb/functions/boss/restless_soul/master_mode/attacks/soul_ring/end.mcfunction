############################################################
# Description: Ends Soul Ring
############################################################

execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~ ~ ~
execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~ ~ ~1
execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~.75 ~ ~.75
execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~1 ~ ~
execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~.75 ~ ~-.75
execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~ ~ ~-1
execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~-.75 ~ ~-.75
execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~-1 ~ ~
execute at @e[type=armor_stand,tag=mb.soul_ring] run summon evoker_fangs ~-.75 ~ ~.75

kill @e[type=armor_stand,tag=mb.soul_ring]