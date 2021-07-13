############################################################
# Description: Item cooldown tick function
############################################################

# Slimey Spring
execute as @s[scores={mb.slimey_s.cool=1..}] at @s run function mb:item/slimey_spring/tick

# Etherealm
execute as @s[scores={mb.ethereal.cool=1..}] at @s run function mb:item/etherealm/tick

# Soul Leech
execute as @s[scores={mb.soul_lee.cool=1..}] at @s run function mb:item/soul_leech/tick

# Pollinator
execute as @s[scores={mb.pollinat.cool=1..}] at @s run function mb:item/pollinator/tick