############################################################
# Description: Apply stun
############################################################

data merge entity @s {NoAI:1b}
scoreboard players set @s eyeSpy.stun 100
tag @s add eyeSpy.stun

particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 normal