############################################################
# Description: Mini Crewmate teleport tick
############################################################

execute unless entity @a[distance=..10] run function mb:item/amogus/teleport

item replace entity @s weapon.mainhand with diamond_hoe{CustomModelData:500100}
item replace entity @s[tag=mb.amogus.mini_crewmate.drip] weapon.mainhand with diamond_hoe{CustomModelData:500101}

data modify entity @s WanderTarget.X set from entity @p Pos[0]
data modify entity @s WanderTarget.Y set from entity @p Pos[1]
data modify entity @s WanderTarget.Z set from entity @p Pos[2]

schedule function mb:item/amogus/loop 1t replace