############################################################
# Description: Mini Crewmate tick
############################################################

execute unless entity @a[distance=..10] run function mb:item/amogus/teleport

item replace entity @s weapon.mainhand with diamond_hoe{CustomModelData:133028}
item replace entity @s[tag=mb.amogus.drip] weapon.mainhand with diamond_hoe{CustomModelData:133029}

data modify entity @s WanderTarget.X set from entity @p Pos[0]
data modify entity @s WanderTarget.Y set from entity @p Pos[1]
data modify entity @s WanderTarget.Z set from entity @p Pos[2]