############################################################
# Description: Soul Dragon tick
############################################################

execute as @e[type=armor_stand,tag=mb.soul_dragon.head] at @s anchored eyes facing entity @p[distance=..30,gamemode=!creative,gamemode=!spectator] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.1] at @s anchored eyes facing entity @e[tag=mb.soul_dragon.head] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.2] at @s anchored eyes facing entity @e[type=armor_stand,tag=mb.soul_dragon.1] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.3] at @s anchored eyes facing entity @e[type=armor_stand,tag=mb.soul_dragon.2] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.4] at @s anchored eyes facing entity @e[type=armor_stand,tag=mb.soul_dragon.3] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.5] at @s anchored eyes facing entity @e[type=armor_stand,tag=mb.soul_dragon.4] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.6] at @s anchored eyes facing entity @e[type=armor_stand,tag=mb.soul_dragon.5] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.7] at @s anchored eyes facing entity @e[type=armor_stand,tag=mb.soul_dragon.6] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.8] at @s anchored eyes facing entity @e[type=armor_stand,tag=mb.soul_dragon.7] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~
execute as @e[type=armor_stand,tag=mb.soul_dragon.tail] at @s anchored eyes facing entity @e[type=armor_stand,tag=mb.soul_dragon.8] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.13 ~ ~

execute at @e[type=armor_stand,tag=mb.soul_dragon] run effect give @a[distance=..1] wither 2 0 false
execute at @e[type=armor_stand,tag=mb.soul_dragon.head] run particle soul_fire_flame ^ ^1.3 ^-1.2 0 0 0 .01 1 normal

execute if entity @e[type=armor_stand,tag=mb.soul_dragon] run schedule function mb:boss/restless_soul/normal_mode/attacks/soul_dragon/tick 1t append