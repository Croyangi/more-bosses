############################################################
# Description: Runs when Bee Barracks is defeated
############################################################

kill @s
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1 normal
playsound mb:entity.bee_drone.death master @a[distance=..16] ~ ~1 ~
particle block honey_block ~ ~1 ~ 0 0 0 1 50 normal