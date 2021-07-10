############################################################
# Description: Generate loot
############################################################

execute at @s[scores={MB.rng.output=0}] run loot spawn ~ ~ ~ loot mb:item/queen_bee/bumbrella
execute at @s[scores={MB.rng.output=1}] run loot spawn ~ ~ ~ loot mb:item/queen_bee/pollinator
execute at @s[scores={MB.rng.output=2}] run loot spawn ~ ~ ~ loot mb:item/queen_bee/venom_quiver
execute at @s[scores={MB.rng.output=3}] run loot spawn ~ ~ ~ loot mb:item/queen_bee/flower_on_a_stick
execute at @s[scores={MB.rng.output=4}] run loot spawn ~ ~ ~ loot mb:item/queen_bee/hive_rattle_full
execute at @s[predicate=mb:chance/one_fiftieth] run loot spawn ~ ~ ~ loot mb:item/queen_bee/mysterious_script