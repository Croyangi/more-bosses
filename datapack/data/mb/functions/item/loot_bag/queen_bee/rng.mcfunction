############################################################
# Description: Generate rng
############################################################

scoreboard players set @s mb.rng.input 5
function mb:technical/rng_generate
function mb:item/loot_bag/queen_bee/loot

execute as @s[scores={mb.difficulty=1}] run function mb:technical/rng_generate
execute as @s[scores={mb.difficulty=1}] run function mb:item/loot_bag/queen_bee/loot

loot spawn ~ ~ ~ loot mb:item/queen_bee/hive_mind