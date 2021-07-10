############################################################
# Description: Custom crafting for Royal Crown
############################################################

# Technical
recipe take @s mb:royal_crown
advancement revoke @s only mb:recipe/royal_crown

loot spawn ~ ~ ~ loot mb:item/king_slime/royal_crown
clear @s knowledge_book

# Advancement
advancement grant @s only mb:minecraft/fit_for_a_king