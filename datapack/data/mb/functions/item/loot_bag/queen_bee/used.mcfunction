############################################################
# Description: Used Queen Bee Lootbag
############################################################

playsound mb:item.loot_bag.used master @a[distance=..16]
function mb:item/loot_bag/queen_bee/rng
clear @s carrot_on_a_stick{CustomModelData:133023} 1