############################################################
# Description: Tick for Soul Ring
############################################################

execute as @e[type=armor_stand,tag=mb.soul_ring] at @s run tp @s ~ ~ ~ ~7 ~
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] as @a[distance=..30,gamemode=!creative,gamemode=!spectator] at @s run tp @e[type=armor_stand,tag=mb.soul_ring] ~ ~ ~

schedule function mb:boss/restless_soul/master_mode/attacks/soul_ring/tick 1t append