############################################################
# Description: Tick function when boss is active
############################################################

execute as @e[type=item,nbt={Item:{tag:{mb.boss.death.detect:2b}}}] at @s run function mb:boss/restless_soul/technical/death

execute store result score restless_soul.health mb.dummy1 run data get entity @e[type=minecraft:wandering_trader,tag=mb.restless_soul,limit=1] Health
execute store result bossbar mb:restlesssoul value run scoreboard players get restless_soul.health mb.dummy1

scoreboard players set player.count mb.dummy1 0
execute as @a run scoreboard players add player.count mb.dummy1 1
scoreboard players set @a[scores={MB.deaths=2..}] MB.deaths 1
scoreboard players set total.deaths MB.deaths 0
scoreboard players operation total.deaths MB.deaths += @a MB.deaths
execute if score total.deaths MB.deaths >= player.count mb.dummy1 run function mb:boss/restless_soul/technical/fail

# Model
execute as @e[type=wandering_trader,tag=mb.restless_soul] at @s run function mb:boss/restless_soul/technical/model/tick

schedule function mb:boss/restless_soul/technical/tick 1t append