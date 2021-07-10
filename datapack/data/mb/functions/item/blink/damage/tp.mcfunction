############################################################
# Description: Blink damage
############################################################

execute at @a[tag=blink.damage] run tp @e[type=slime,tag=blink.slime,limit=1,sort=nearest] ~ ~ ~
tag @a remove blink.damage

schedule function mb:item/blink/damage/kill_slime 1t append