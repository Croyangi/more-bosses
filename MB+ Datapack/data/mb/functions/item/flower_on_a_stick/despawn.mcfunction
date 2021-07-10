############################################################
# Description: Bee Mount despawn
############################################################

# Technical
scoreboard players operation .search UUID.link = @s UUID.link
execute as @e[type=pig,tag=beeMount] if score @s UUID.link = .search UUID.link run data merge entity @s {Saddle:0b}
execute as @e[type=pig,tag=beeMount] if score @s UUID.link = .search UUID.link run kill @s
execute as @e[type=armor_stand,tag=beeMountRoot] if score @s UUID.link = .search UUID.link run kill @s

tag @s remove flowerStick
scoreboard players set @s flowerStick.tog 0

# Effects
playsound mb:item.flower_on_a_stick.despawn master @s ~ ~ ~ 1 1 1