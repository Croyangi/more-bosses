############################################################
# Description: Drop crafting for Mysterious Doll
############################################################

# Technical
loot spawn ~ ~ ~ loot mb:item/herobrine/mysterious_doll

# Kill leftover items
kill @e[predicate=mb:items/gelatinous_matter/this,distance=..1,limit=1,sort=nearest]
kill @e[predicate=mb:items/hive_mind/this,distance=..1,limit=1,sort=nearest]
kill @e[predicate=mb:items/possessed_skull/this,distance=..1,limit=1,sort=nearest]

# Effects
particle totem_of_undying ~ ~ ~ 0 0 0 .3 50 normal
particle explosion ~ ~ ~ 0 0 0 1 1 normal

# Advancement
advancement grant @p only mb:minecraft/highly_flammable