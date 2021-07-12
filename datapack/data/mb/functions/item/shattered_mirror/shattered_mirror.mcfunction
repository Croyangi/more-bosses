############################################################
# Description: Advancement for killing Wither Skeletons
############################################################

# Technical
clear @s carrot_on_a_stick{CustomModelData:133006} 1
loot spawn ~ ~ ~ loot mb:item/restless_soul/shattered_mirror_active
scoreboard players set @s shatteredMirror 0

# Effects
playsound minecraft:entity.wither.ambient master @a[distance=..16]

# Advancement
advancement grant @s only mb:minecraft/man_in_the_mirror