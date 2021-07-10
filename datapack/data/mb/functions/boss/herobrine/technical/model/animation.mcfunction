############################################################
# Description: Execute as Herobrine
############################################################

# Model
execute store result entity @s WanderTarget.X int 1 run data get entity @p Pos[0]
execute store result entity @s WanderTarget.Y int 1 run data get entity @p Pos[1]
execute store result entity @s WanderTarget.Z int 1 run data get entity @p Pos[2]

item replace entity @s[tag=!herobrine.animation] weapon.mainhand with leather_horse_armor{CustomModelData:400000}
item replace entity @s[tag=!herobrine.animation,predicate=mb:moving] weapon.mainhand with leather_horse_armor{CustomModelData:400001}
item replace entity @s[tag=!herobrine.animation] armor.head with leather_horse_armor{CustomModelData:400002}

effect give @s invisibility 999999 0 true

# HurtTime
execute if entity @s[nbt={HurtTime:10s}] run function mb:boss/herobrine/technical/model/hurt
execute if entity @s[nbt={HurtTime:0s}] run function mb:boss/herobrine/technical/model/unhurt