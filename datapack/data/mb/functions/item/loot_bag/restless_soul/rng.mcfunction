############################################################
# Description: Generate rng
############################################################

scoreboard players set @s mb.rng.input 4
function mb:technical/rng_generate
function mb:item/loot_bag/restless_soul/loot

execute as @s[scores={mb.difficulty=1}] run function mb:technical/rng_generate
execute as @s[scores={mb.difficulty=1}] run function mb:item/loot_bag/restless_soul/loot

loot spawn ~ ~ ~ loot mb:item/restless_soul/possessed_skull