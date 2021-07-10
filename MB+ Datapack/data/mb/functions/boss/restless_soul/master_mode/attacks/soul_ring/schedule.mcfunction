############################################################
# Description: Schedules Soul Ring
############################################################

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mb.soul_ring","mb.restless_soul.cleanup"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:200004}}]}

function mb:boss/restless_soul/master_mode/attacks/soul_ring/tick
schedule function mb:boss/restless_soul/master_mode/attacks/soul_ring/schedule_clear 4s append
schedule function mb:boss/restless_soul/master_mode/attacks/soul_ring/end 4.2s append

execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run function mb:boss/restless_soul/technical/model/casting
execute at @e[type=minecraft:wandering_trader,tag=mb.restless_soul] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run schedule function mb:boss/restless_soul/technical/model/uncasting 1s append

schedule function mb:boss/restless_soul/master_mode/attacks/soul_ring/schedule 15s append