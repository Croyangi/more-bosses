############################################################
# Description: Spirit Blade effects
############################################################

effect give @s[predicate=mb:items/spirit_blade/holding] minecraft:regeneration 1 2 true
effect give @s[predicate=mb:items/spirit_blade/holding] speed 3 0 true
execute at @s[predicate=mb:items/spirit_blade/holding] run particle soul ~ ~1 ~ 0 0 0 .05 10 normal
advancement revoke @s only mb:technical/item/spirit_blade/killed_entity