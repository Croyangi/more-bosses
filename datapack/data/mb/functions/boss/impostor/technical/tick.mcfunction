############################################################
# Description: Tick function when boss is active
############################################################

execute as @e[type=item,nbt={Item:{tag:{mb.boss.death.detect:5b}}}] at @s run function mb:boss/impostor/technical/death

execute store result score impostor.health mb.dummy1 run data get entity @e[type=minecraft:husk,tag=mb.impostor,limit=1] Health
execute store result bossbar mb:impostor value run scoreboard players get impostor.health mb.dummy1

scoreboard players set player.count mb.dummy1 0
execute as @a run scoreboard players add player.count mb.dummy1 1
scoreboard players set @a[scores={mb.deaths=2..}] mb.deaths 1
scoreboard players set total.deaths mb.deaths 0
scoreboard players operation total.deaths mb.deaths += @a mb.deaths
execute if score total.deaths mb.deaths = player.count mb.dummy1 run function mb:boss/impostor/technical/fail

# HurtTime
execute as @e[type=husk,tag=mb.impostor,nbt={HurtTime:10s}] at @s run function mb:boss/impostor/technical/model/hurt
execute as @e[type=husk,tag=mb.impostor,nbt={HurtTime:0s}] at @s run function mb:boss/impostor/technical/model/unhurt

schedule function mb:boss/impostor/technical/tick 1t append