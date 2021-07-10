############################################################
# Description: Generate loot
############################################################

execute at @s[scores={MB.rng.output=0}] run loot spawn ~ ~ ~ loot mb:item/restless_soul/etherealm
execute at @s[scores={MB.rng.output=1}] run loot spawn ~ ~ ~ loot mb:item/restless_soul/soul_leech
execute at @s[scores={MB.rng.output=2}] run loot spawn ~ ~ ~ loot mb:item/restless_soul/spirit_blade_unlit
execute at @s[scores={MB.rng.output=3}] run loot spawn ~ ~ ~ loot mb:item/restless_soul/wisp_in_a_lantern_full
execute at @s[predicate=mb:chance/one_fiftieth] run loot spawn ~ ~ ~ loot mb:item/restless_soul/cursed_calcium

loot spawn ~ ~ ~ loot mb:item/restless_soul/potion_of_soulbounding_loot