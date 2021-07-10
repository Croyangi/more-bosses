############################################################
# Description: Tick function for Homing Stinger
############################################################

execute anchored eyes facing entity @p[gamemode=!creative,gamemode=!spectator] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~
execute anchored eyes if entity @a[distance=..1] run function mb:boss/queen_bee/master_mode/attacks/bee_drone/homing_stinger/explosion
execute anchored eyes unless block ^ ^ ^ #mb:all_air run function mb:boss/queen_bee/master_mode/attacks/bee_drone/homing_stinger/explosion