############################################################
# Description: Drop crafting for the Rattled Hive
############################################################

loot spawn ~ ~ ~ loot mb:item/queen_bee/rattled_hive
kill @e[predicate=mb:dropcraft/bruce,distance=..1,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:honey_bottle",Count:1b}},distance=..1,limit=1,sort=nearest]

particle block honey_block ~ ~ ~ 0 0 0 1 50 normal
particle explosion ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2 1
playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 1 1

advancement grant @a[sort=nearest,limit=1] only mb:minecraft/they_grow_up_so_fast