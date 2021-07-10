############################################################
# Description: Drop crafting for Mysterious Doll
############################################################

# Technical
function mb:commands/summon/herobrine/mysterious_doll

# Kill leftover items
kill @e[predicate=mb:dropcraft/gelatinous_matter,distance=..1,limit=1,sort=nearest]
kill @e[predicate=mb:dropcraft/hive_mind,distance=..1,limit=1,sort=nearest]
kill @e[predicate=mb:dropcraft/possessed_skull,distance=..1,limit=1,sort=nearest]

# Effects
particle totem_of_undying ~ ~ ~ 0 0 0 .3 50 normal
particle explosion ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2 1
playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 1 1

# Advancement
advancement grant @p only mb:minecraft/a_package_deal