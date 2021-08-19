############################################################
# Description: Tick function when boss is active
############################################################

execute as @e[type=item,nbt={Item:{tag:{mb.boss.death.detect:3b}}}] at @s run function mb:boss/queen_bee/technical/death

execute store result score queen_bee.health mb.dummy1 run data get entity @e[type=minecraft:slime,tag=mb.queen_bee,limit=1] Health
execute store result bossbar mb:queenbee value run scoreboard players get queen_bee.health mb.dummy1

scoreboard players set player.count mb.dummy1 0
execute as @a run scoreboard players add player.count mb.dummy1 1
scoreboard players set @a[scores={mb.deaths=2..}] mb.deaths 1
scoreboard players set total.deaths mb.deaths 0
scoreboard players operation total.deaths mb.deaths += @a mb.deaths
execute if score total.deaths mb.deaths >= player.count mb.dummy1 run function mb:boss/queen_bee/technical/fail

# Bee model rotation lock
execute as @e[tag=mb.queen_bee] run data modify entity @s Rotation set from entity @e[type=minecraft:bee,tag=mb.queen_bee.AI,limit=1] Rotation

# Anger modify
execute as @e[tag=mb.queen_bee.bee_modify] at @s run function mb:boss/queen_bee/technical/bee_modify

# Queen Bee effects
execute at @e[type=minecraft:bee,tag=mb.queen_bee.AI] run particle block honey_block ~ ~ ~ 0 0 0 1 1 normal

# HurtTime
execute as @e[type=slime,tag=mb.queen_bee.hitbox,nbt={HurtTime:10s}] at @s run function mb:boss/queen_bee/technical/model/hurt
execute as @e[type=slime,tag=mb.queen_bee.hitbox,nbt={HurtTime:0s}] at @s run function mb:boss/queen_bee/technical/model/unhurt

schedule function mb:boss/queen_bee/technical/tick 1t append