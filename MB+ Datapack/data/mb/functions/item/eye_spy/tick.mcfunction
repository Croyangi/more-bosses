############################################################
# Description: Eye Spy tick
############################################################

execute as @s[scores={eyeSpy.cool=..1}] run tag @s remove eyeSpy
scoreboard players remove @s eyeSpy.cool 1

schedule function mb:item/eye_spy/loop 1s replace