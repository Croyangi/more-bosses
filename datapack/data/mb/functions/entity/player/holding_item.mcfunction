############################################################
# Description: Runs when a player is holding an item
############################################################

# Right click detection
execute as @s[scores={mb.coas=1..}] run function mb:item/technical/right_click_detect

# Bumbrella
effect give @s[predicate=mb:items/bumbrella/holding,predicate=!mb:has_slow_falling] slow_falling 1 0 true

# Venom Quiver
execute as @s[predicate=mb:items/venom_quiver/holding] run function mb:item/venom_quiver/tick

# Slime Bow
execute as @s[predicate=mb:items/slime_bow/holding] run function mb:item/slime_bow/tick

# Flower on a Stick
execute as @s[predicate=mb:items/flower_on_a_stick/holding] at @s run function mb:item/flower_on_a_stick/tick