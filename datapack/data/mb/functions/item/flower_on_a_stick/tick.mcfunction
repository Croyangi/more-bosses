############################################################
# Description: Flower on a Stick tick
############################################################

# Tp fly
execute at @s[predicate=mb:items/flower_on_a_stick/mounted,predicate=mb:items/flower_on_a_stick/holding] positioned ~ ~-1.20 ~ if block ^ ^ ^1.5 #mb:passable_blocks run tp @e[predicate=mb:items/flower_on_a_stick/bee_mount,limit=1,sort=nearest] ^ ^ ^.2 ~ ~
execute at @e[type=armor_stand,tag=beeMountRoot] if block ~ ~1 ~ #mb:liquid run function mb:item/flower_on_a_stick/despawn
execute at @e[type=armor_stand,tag=beeMountRoot] unless block ~ ~1 ~ #mb:passable_blocks run function mb:item/flower_on_a_stick/despawn

schedule function mb:item/flower_on_a_stick/loop 1t replace