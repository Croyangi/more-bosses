############################################################
# Description: Voodoo Doll tick
############################################################

execute as @s[scores={voodoo.cool=..1}] run tag @s remove voodooDoll.loop
scoreboard players remove @s voodoo.cool 1

schedule function mb:item/voodoo_doll/loop 1s replace