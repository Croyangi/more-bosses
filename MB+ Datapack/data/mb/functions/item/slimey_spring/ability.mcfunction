############################################################
# Description: Slimey Spring ability
############################################################

execute as @e[type=!#mb:friendly_fire,distance=..10] run data merge entity @s {Motion:[0.0,1.5,0.0]}
playsound mb:item.slimey_spring.used master @s ~ ~ ~ 1 1 1