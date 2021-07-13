############################################################
# Description: Used Slimey Spring
############################################################

scoreboard players set @s mb.slimey_s.cool 300
scoreboard players add @s mb.global_cool 1

execute as @e[type=!#mb:friendly_fire,distance=..10] run data merge entity @s {Motion:[0.0,1.2,0.0]}
playsound mb:item.slimey_spring.used master @a[distance=..16]