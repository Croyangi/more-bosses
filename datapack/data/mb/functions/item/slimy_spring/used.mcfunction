############################################################
# Description: Used slimy Spring
############################################################

scoreboard players set @s mb.slimy_s.cool 300
scoreboard players add @s mb.global_cool 1

execute as @e[type=!#mb:friendly_fire,distance=..10] run data merge entity @s {Motion:[0.0,1.2,0.0]}
playsound mb:item.slimy_spring.used master @a[distance=..16]