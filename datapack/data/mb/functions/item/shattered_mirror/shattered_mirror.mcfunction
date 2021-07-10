############################################################
# Description: Advancement for killing Wither Skeletons
############################################################

# Technical
clear @s carrot_on_a_stick{CustomModelData:200000} 1
execute at @s run function mb:commands/summon/restless_soul/shattered_mirror_active
scoreboard players set @s shatteredMirror 0

# Effects
playsound minecraft:entity.wither.ambient master @s ~ ~ ~ .5 1 1

# Advancement
advancement grant @s only mb:minecraft/man_in_the_mirror