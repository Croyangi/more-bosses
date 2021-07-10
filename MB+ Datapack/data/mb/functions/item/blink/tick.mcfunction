############################################################
# Description: Blink tick
############################################################

execute as @s[scores={blink.cool=..1}] run tag @s remove blink
scoreboard players remove @s blink.cool 1

schedule function mb:item/blink/loop 1s replace