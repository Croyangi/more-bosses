############################################################
# Description: Advancement for killing Wither Skeletons
############################################################

execute if predicate mb:items/shattered_mirror/holding run function mb:item/shattered_mirror/count
advancement revoke @s only mb:technical/item/shattered_mirror/killed_wither_skeleton