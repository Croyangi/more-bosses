############################################################
# Description: Custom crafting for the Shattered Mirror
############################################################

# Technical
recipe take @s mb:shattered_mirror
advancement revoke @s only mb:recipe/shattered_mirror

loot spawn ~ ~ ~ loot mb:item/restless_soul/shattered_mirror_inactive
clear @s knowledge_book