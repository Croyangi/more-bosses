############################################################
# Description: Staff of Smiting tick
############################################################

execute as @s[scores={smite.cool=..1}] run tag @s remove staffOfSmiting
scoreboard players remove @s smite.cool 1

schedule function mb:item/staff_of_smiting/loop 1s replace