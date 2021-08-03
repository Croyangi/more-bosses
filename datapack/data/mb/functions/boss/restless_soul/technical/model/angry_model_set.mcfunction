############################################################
# Description: Sets the angry model items in arrays, im pretty sure there is a better way to do this
############################################################

data remove storage mb:storage root.DisplayItems.RestlessSoul

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133011}
data modify storage mb:storage root.DisplayItems.RestlessSoul append from entity @s HandItems[0]

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133012}
data modify storage mb:storage root.DisplayItems.RestlessSoul append from entity @s HandItems[0]

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133013}
data modify storage mb:storage root.DisplayItems.RestlessSoul append from entity @s HandItems[0]