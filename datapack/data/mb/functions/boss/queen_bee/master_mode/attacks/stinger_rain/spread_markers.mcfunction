############################################################
# Description: Spreads Stinger Rain markers
############################################################

execute at @e[type=bee,tag=mb.queen_bee.AI] at @p[distance=..30,gamemode=!creative,gamemode=!spectator] run spreadplayers ~ ~ 1 6 false @e[type=armor_stand,tag=mb.stinger_rain.marker]
execute at @e[type=bee,tag=mb.queen_bee.AI] unless entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run spreadplayers ~ ~ 1 6 false @e[type=armor_stand,tag=mb.stinger_rain.marker]