############################################################
# Description: Royal Jello teleport tick
############################################################

execute unless entity @a[distance=..10] run function mb:item/royal_jello/teleport

item replace entity @s weapon.mainhand with diamond_hoe{CustomModelData:133030}

data modify entity @s WanderTarget.X set from entity @p Pos[0]
data modify entity @s WanderTarget.Y set from entity @p Pos[1]
data modify entity @s WanderTarget.Z set from entity @p Pos[2]

execute as @s[predicate=mb:moving,nbt={OnGround:1b}] run function mb:item/royal_jello/bounce