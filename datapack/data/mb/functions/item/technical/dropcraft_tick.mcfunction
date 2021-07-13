############################################################
# Description: Drop crafting sorting system
###########################################################

# Rattled Hive
#execute at @e[predicate=mb:items/bruce] if entity @e[distance=..1,limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:honey_bottle",Count:1b}}] run function mb:item/rattled_hive/dropcraft

# Mysterious Doll
execute at @e[predicate=mb:items/gelatinous_matter/this] if entity @e[distance=..1,limit=1,sort=nearest,predicate=mb:items/hive_mind/this] if entity @e[distance=..1,limit=1,sort=nearest,predicate=mb:items/possessed_skull/this] run function mb:item/mysterious_doll/summon

# Summon Herobrine
execute at @e[predicate=mb:items/mysterious_doll/this] if block ~ ~ ~ fire if block ~ ~-1 ~ netherrack if block ~ ~-1 ~1 redstone_torch if block ~ ~-1 ~-1 redstone_torch if block ~1 ~-1 ~ redstone_torch if block ~-1 ~-1 ~ redstone_torch if block ~ ~-2 ~ gold_block if block ~ ~-2 ~1 gold_block if block ~ ~-2 ~-1 gold_block if block ~1 ~-2 ~ gold_block if block ~-1 ~-2 ~ gold_block if block ~1 ~-2 ~1 gold_block if block ~-1 ~-2 ~1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~-1 gold_block run function mb:boss/herobrine/technical/summon_animation

say tick