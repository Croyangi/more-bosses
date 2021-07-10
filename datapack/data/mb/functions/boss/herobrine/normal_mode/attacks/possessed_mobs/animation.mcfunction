############################################################
# Description: Plays Herobrine animation
############################################################

item replace entity @e[type=minecraft:wandering_trader,tag=herobrine] weapon.mainhand with leather_horse_armor{CustomModelData:400003}
schedule function mb:boss/herobrine/normal_mode/attacks/possessed_mobs/animation 1t append