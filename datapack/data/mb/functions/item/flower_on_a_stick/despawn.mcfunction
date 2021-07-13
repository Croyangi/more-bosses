############################################################
# Description: Bee Mount despawn
############################################################

scoreboard players operation .search UUID.link = @s UUID.link
execute as @e[type=pig,tag=mb.flower_on_a_stick.bee_mount.ride] if score @s UUID.link = .search UUID.link run data merge entity @s {Saddle:0b}
execute as @e[type=pig,tag=mb.flower_on_a_stick.bee_mount.ride] if score @s UUID.link = .search UUID.link run kill @s
execute as @e[type=armor_stand,tag=mb.flower_on_a_stick.bee_mount.root] if score @s UUID.link = .search UUID.link run kill @s
scoreboard players set @s mb.floweroas.tog 0

playsound mb:item.flower_on_a_stick.despawn master @a[distance=..16]