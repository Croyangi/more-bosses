############################################################
# Description: Used Soul Leech
############################################################

scoreboard players set @s mb.soul_lee.cool 400
scoreboard players set @s mb.soul_lee.time 100
scoreboard players add @s mb.global_cool 1

particle minecraft:soul ~ ~1 ~ 0 0 0 .1 30 normal
playsound mb:item.soul_leech.used master @a[distance=..16]