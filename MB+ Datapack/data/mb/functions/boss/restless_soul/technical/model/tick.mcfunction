############################################################
# Description: Restless Soul Model
############################################################

data modify entity @s WanderTarget.X set from entity @p[gamemode=!creative,gamemode=!spectator] Pos[0]
data modify entity @s WanderTarget.Y set from entity @p[gamemode=!creative,gamemode=!spectator] Pos[1]
data modify entity @s WanderTarget.Z set from entity @p[gamemode=!creative,gamemode=!spectator] Pos[2]

item replace entity @s[tag=!mb.restless_soul.animated] weapon.mainhand with leather_horse_armor{CustomModelData:200000}
item replace entity @s[tag=!mb.restless_soul.animated,predicate=mb:moving] weapon.mainhand with leather_horse_armor{CustomModelData:200001}
item replace entity @s[tag=mb.restless_soul.animated] weapon.mainhand with leather_horse_armor{CustomModelData:200003}
execute at @s[tag=mb.restless_soul.animated] run playsound mb:entity.restless_soul.cast master @a[distance=..16] ~ ~ ~ .2 1 1

particle soul_fire_flame ~ ~.2 ~ 0 0 0 .05 1 normal
effect give @s invisibility 999999 0 true

# HurtTime
execute if entity @s[nbt={HurtTime:10s}] run function mb:boss/restless_soul/technical/model/hurt
execute if entity @s[nbt={HurtTime:0s}] run function mb:boss/restless_soul/technical/model/unhurt