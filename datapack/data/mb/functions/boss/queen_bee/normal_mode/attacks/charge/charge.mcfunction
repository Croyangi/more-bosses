############################################################
# Description: Charge attack
############################################################

execute as @e[type=bee,tag=mb.queen_bee.AI] at @s anchored eyes facing entity @p[distance=..30,gamemode=!creative,gamemode=!spectator] eyes run tp ~ ~ ~
execute as @e[type=bee,tag=mb.queen_bee.AI] at @s if block ^ ^ ^1 #mb:all_air run tp @s ^ ^ ^.6 ~ 0

execute as @e[type=bee,tag=mb.queen_bee.AI] at @s unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..1] run schedule function mb:boss/queen_bee/normal_mode/attacks/charge/charge 1t append