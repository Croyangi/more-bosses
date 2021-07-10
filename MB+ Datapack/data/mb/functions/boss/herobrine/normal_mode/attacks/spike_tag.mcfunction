############################################################
# Description: Spike scoreboard set
############################################################

execute as @s[tag=spike.tp,tag=!spike.tp.large,tag=!spike.used] run scoreboard players set @s MBbossDummy 20
execute as @s[tag=spike.tp.large,tag=!spike.used] run scoreboard players set @s MBbossDummy 60

data merge entity @s {NoGravity:1b}

tp @s[tag=spike.tp,tag=!spike.tp.large,tag=!spike.used] ~ ~-4 ~
tp @s[tag=spike.tp.large,tag=!spike.used] ~ ~-12 ~

data merge entity @s[tag=spike.tp,tag=!spike.tp.large] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400003}}]}
data merge entity @s[tag=spike.tp.large] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:400004}}]}

tag @s add spike.used