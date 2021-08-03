############################################################
# Description: Sets the angry model items in arrays, im pretty sure there is a better way to do this
############################################################

data remove storage mb:storage root.DisplayItems.Herobrine

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133006}
data modify storage mb:storage root.DisplayItems.Herobrine append from entity @s HandItems[0]

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133007}
data modify storage mb:storage root.DisplayItems.Herobrine append from entity @s HandItems[0]

item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:133009}
data modify storage mb:storage root.DisplayItems.Herobrine append from entity @s HandItems[0]