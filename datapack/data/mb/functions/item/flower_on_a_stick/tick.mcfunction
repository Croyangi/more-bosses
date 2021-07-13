############################################################
# Description: Flower on a Stick tick
############################################################

execute at @s[predicate=mb:items/flower_on_a_stick/mounted,predicate=mb:items/flower_on_a_stick/holding] positioned ~ ~-1.20 ~ if block ^ ^ ^1.5 #mb:passable_blocks run tp @e[predicate=mb:items/flower_on_a_stick/bee_mount,limit=1,sort=nearest] ^ ^ ^.2 ~ ~
execute at @e[type=armor_stand,tag=mb.flower_on_a_stick.bee_mount.root] unless block ~ ~1 ~ #mb:passable_blocks if block ~ ~1 ~ #mb:liquid run function mb:item/flower_on_a_stick/despawn