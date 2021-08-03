############################################################
# Description: Sets the model items in arrays, im pretty sure there is a better way to do this
############################################################

data remove storage mb:storage root.DisplayItems.RestlessSoul

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133000}
data modify storage mb:storage root.DisplayItems.RestlessSoul append from entity @s HandItems[0]

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133001}
data modify storage mb:storage root.DisplayItems.RestlessSoul append from entity @s HandItems[0]

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133003}
data modify storage mb:storage root.DisplayItems.RestlessSoul append from entity @s HandItems[0]