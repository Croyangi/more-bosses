############################################################
# Description: Summons fangs
############################################################

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon evoker_fangs ~ ~ ~2
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon evoker_fangs ~1.3 ~ ~1.3
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon evoker_fangs ~2 ~ ~
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon evoker_fangs ~1.3 ~ ~-1.3
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon evoker_fangs ~ ~ ~-2
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon evoker_fangs ~-1.3 ~ ~-1.3
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon evoker_fangs ~-2 ~ ~
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon evoker_fangs ~-1.3 ~ ~1.3

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run function mb:boss/restless_soul/technical/model/casting
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run schedule function mb:boss/restless_soul/technical/model/uncasting 1s append

schedule function mb:boss/restless_soul/normal_mode/attacks/ring_of_fangs 2s