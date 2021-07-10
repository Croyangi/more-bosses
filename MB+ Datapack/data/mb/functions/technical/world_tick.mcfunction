############################################################
# Description: Controls all of the tick functions
############################################################

# Main tick
execute as @a[sort=arbitrary] at @s run function mb:technical/tick

# Item tick
execute as @a[sort=arbitrary] at @s run function mb:item/technical/tick