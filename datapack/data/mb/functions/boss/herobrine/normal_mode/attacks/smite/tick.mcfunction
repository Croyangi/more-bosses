############################################################
# Description: Smite Marker tick
############################################################

scoreboard players remove @s mb.dummy1 1
execute as @s[scores={mb.dummy1=..0}] at @s run summon lightning_bolt ~ ~ ~
kill @s[scores={mb.dummy1=..0}]