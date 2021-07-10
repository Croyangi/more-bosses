############################################################
# Description: Grants advancements after boss deaths
############################################################

# Coup D'etat
execute as @a[advancements={mb:minecraft/royal_overthrow=true,mb:minecraft/sting_operation=true}] run advancement grant @s only mb:minecraft/coup_detat

# Boss Rushed
execute if score seconds MB.timer matches ..29 run advancement grant @a only mb:minecraft/boss_rushed