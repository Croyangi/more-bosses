############################################################
# Description: Generate rng
############################################################

scoreboard players set @s mb.rng.input 3
function mb:technical/rng_generate
function mb:item/loot_bag/impostor/loot

execute as @s[scores={mb.difficulty=1}] run function mb:technical/rng_generate
execute as @s[scores={mb.difficulty=1}] run function mb:item/loot_bag/impostor/loot