############################################################
# Description: Explodes Stinger Rain
############################################################

summon area_effect_cloud ~ ~ ~ {Radius:2f,Duration:20,Effects:[{Id:19b,Amplifier:3b,Duration:100,ShowParticles:1b}]}
particle explosion ~ ~ ~ 0 0 0 1 1 normal
playsound mb:entity.stinger.explode master @a[distance=..16] ~ ~ ~
kill @e[type=armor_stand,tag=mb.stinger_rain.marker,distance=...1]
kill @s