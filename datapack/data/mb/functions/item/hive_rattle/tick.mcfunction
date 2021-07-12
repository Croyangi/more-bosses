############################################################
# Description: Hive Rattle teleport tick
############################################################

execute unless entity @a[distance=..10] run function mb:item/hive_rattle/teleport

item replace entity @s weapon.mainhand with diamond_hoe{CustomModelData:133017}

data modify entity @s WanderTarget.X set from entity @p Pos[0]
data modify entity @s WanderTarget.Y set from entity @p Pos[1]
data modify entity @s WanderTarget.Z set from entity @p Pos[2]

schedule function mb:item/hive_rattle/loop 1t replace