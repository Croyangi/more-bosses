############################################################
# Description: Generate rng
############################################################

scoreboard players set @s MB.rng.input 3
function mb:technical/rng_generate
function mb:item/loot_bag/herobrine/loot

execute as @s[scores={MB.difficulty=1}] run function mb:technical/rng_generate
execute as @s[scores={MB.difficulty=1}] run function mb:item/loot_bag/herobrine/loot