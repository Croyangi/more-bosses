############################################################
# Description: Rattled Hive active used
############################################################

execute as @s[tag=mb.queen_bee.active] run function mb:entity/player/tellraw/boss_active
clear @s[tag=!mb.queen_bee.active] minecraft:carrot_on_a_stick{CustomModelData:300002} 1

tag @s add mb.boss.summon
execute as @e[type=player,tag=!mb.queen_bee.active,tag=mb.boss.summon] at @s run function mb:boss/queen_bee/technical/summon
tag @s remove mb.boss.summon