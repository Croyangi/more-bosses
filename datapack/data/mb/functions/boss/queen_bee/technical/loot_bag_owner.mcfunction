############################################################
# Description: Assigns owner NBT to loot bags
############################################################

# Temporary tags
tag @a[tag=mb.queen_bee.player_attacked,limit=1,sort=random] add mb.loot_bag.owner
tag @e[tag=!mb.loot_bag.has_owner,type=item,nbt={Item:{tag:{mb:{id:queen_bee_loot_bag}}}},limit=1,sort=random] add mb.loot_bag.modify

# Assign tagged entities
execute as @e[tag=mb.loot_bag.modify,type=item,nbt={Item:{tag:{mb:{id:queen_bee_loot_bag}}}},limit=1] run data modify entity @s Owner set from entity @a[tag=mb.loot_bag.owner,limit=1] UUID
tag @e[tag=mb.loot_bag.modify,type=item,nbt={Item:{tag:{mb:{id:queen_bee_loot_bag}}}},limit=1] add mb.loot_bag.has_owner

# Remove temporary tags and add filtering tags
tag @e[type=item,tag=mb.loot_bag.modify] remove mb.loot_bag.modify

tag @a[tag=mb.loot_bag.owner] remove mb.queen_bee.player_attacked
tag @a[tag=mb.loot_bag.owner] remove mb.loot_bag.owner

# Loop
execute if entity @e[type=item,tag=!mb.loot_bag.has_owner,nbt={Item:{tag:{mb:{id:queen_bee_loot_bag}}}}] run function mb:boss/queen_bee/technical/loot_bag_owner