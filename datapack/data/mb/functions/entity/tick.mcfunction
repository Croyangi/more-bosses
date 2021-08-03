############################################################
# Description: Runs ticks as one
############################################################

# Entity tick
execute if entity @e[tag=mb.entity] as @e[tag=mb.entity] at @s run function mb:entity/wandering_trader/tick

# Dropcraft tick
execute if entity @e[type=item] as @e[predicate=mb:dropcraft] run function mb:item/technical/dropcraft_tick

# Potion of Soulbounding
execute if entity @e[type=armor_stand,tag=mb.soulbound.link] as @a[tag=mb.soulbound.tagged] run function mb:item/potion_of_soulbounding/tick