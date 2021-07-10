############################################################
# Description: Used Soul Leech
############################################################

# Technical
tag @s add soulLeech
tag @s add soulLeechFx
scoreboard players operation @s soulLeech.cool = @s MBitemCooldown
scoreboard players set @s soulLeech.fx 100

# Effects
particle minecraft:soul ~ ~1 ~ 0 0 0 .1 30 normal
playsound mb:item.soul_leech.used master @s ~ ~ ~ 1 1 1

# Technical
schedule function mb:item/soul_leech/tick_loop 1t append
schedule function mb:item/soul_leech/second_loop 1t append