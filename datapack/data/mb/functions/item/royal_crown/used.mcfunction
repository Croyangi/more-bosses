############################################################
# Description: Royal Crown active used
############################################################

execute as @s[tag=mb.king_slime.active] run function mb:entity/player/tellraw/boss_active
clear @s[tag=!mb.king_slime.active,nbt={Dimension:"minecraft:overworld"}] minecraft:carrot_on_a_stick{CustomModelData:100000} 1

tag @s add mb.boss.summon
execute as @e[type=player,tag=!mb.king_slime.active,tag=mb.boss.summon,nbt={Dimension:"minecraft:overworld"}] at @s run function mb:boss/king_slime/technical/summon
tag @s remove mb.boss.summon