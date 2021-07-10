############################################################
# Description: Eye Spy stun tick
############################################################

execute as @s[scores={eyeSpy.stun=..1}] run tag @s remove eyeSpy.stun
execute as @s[scores={eyeSpy.stun=..1}] run data merge entity @s {NoAI:0b}
scoreboard players remove @s eyeSpy.stun 1

particle minecraft:wax_off ~ ~1 ~ 0 0 0 10 1 normal

schedule function mb:item/eye_spy/stun/loop 1t replace