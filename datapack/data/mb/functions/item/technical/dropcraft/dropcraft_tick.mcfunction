############################################################
# Description: Drop crafting sorting system
###########################################################

# Rattled Hive
execute at @e[predicate=mb:dropcraft/bruce] if entity @e[distance=..1,limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:honey_bottle",Count:1b}}] run function mb:item/rattled_hive/dropcraft

# Mysterious Doll
execute at @e[predicate=mb:dropcraft/gelatinous_matter] if entity @e[distance=..1,limit=1,sort=nearest,predicate=mb:dropcraft/hive_mind] if entity @e[distance=..1,limit=1,sort=nearest,predicate=mb:dropcraft/possessed_skull] run function mb:item/mysterious_doll/summon

# Summon Herobrine
execute at @e[predicate=mb:dropcraft/mysterious_doll] if block ~ ~ ~ fire if block ~ ~-1 ~ netherrack if block ~ ~-1 ~1 redstone_torch if block ~ ~-1 ~-1 redstone_torch if block ~1 ~-1 ~ redstone_torch if block ~-1 ~-1 ~ redstone_torch if block ~ ~-2 ~ gold_block if block ~ ~-2 ~1 gold_block if block ~ ~-2 ~-1 gold_block if block ~1 ~-2 ~ gold_block if block ~-1 ~-2 ~ gold_block if block ~1 ~-2 ~1 gold_block if block ~-1 ~-2 ~1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~-1 gold_block run function mb:boss/herobrine/technical/summon_animation