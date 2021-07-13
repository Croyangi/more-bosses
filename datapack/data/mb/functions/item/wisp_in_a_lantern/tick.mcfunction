############################################################
# Description: Wisp in a Lantern teleport tick
############################################################

execute unless entity @a[distance=..10] run function mb:item/wisp_in_a_lantern/teleport

particle soul_fire_flame ~ ~.4 ~ 0 0 0 .01 1 normal