############################################################
# Description: Shattered Mirror active used
############################################################

execute as @s[tag=mb.restless_soul.active] run function mb:entity/player/tellraw/boss_active
clear @s[tag=!mb.restless_soul.active] minecraft:carrot_on_a_stick{CustomModelData:133007} 1

tag @s add mb.boss.summon
execute as @e[type=player,tag=!mb.restless_soul.active,tag=mb.boss.summon] at @s run function mb:boss/restless_soul/technical/summon
tag @s remove mb.boss.summon