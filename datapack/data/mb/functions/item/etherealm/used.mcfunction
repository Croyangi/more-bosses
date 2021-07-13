############################################################
# Description: Used Etherealm
############################################################

scoreboard players set @s mb.ethereal.cool 600
scoreboard players add @s mb.global_cool 1

playsound mb:item.etherealm.used master @a[distance=..16]

effect give @s resistance 4 0 true
effect give @s invisibility 4 0 true
effect give @s speed 4 3 true
title @s times 10 20 80
title @s title [{"text":"\ua001","font":"mb:etherealm_overlay","bold":false,"italic":false}]