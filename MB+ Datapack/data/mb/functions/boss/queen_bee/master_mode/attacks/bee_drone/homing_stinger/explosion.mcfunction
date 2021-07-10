############################################################
# Description: Homing Stinger explodes
############################################################

kill @s
summon area_effect_cloud ~ ~1 ~ {Radius:2f,Duration:20,Effects:[{Id:19b,Amplifier:3b,Duration:100,ShowParticles:1b}]}
particle explosion ~ ~ ~ 0 0 0 1 1 normal
playsound mb:entity.stinger.explode master @a[distance=..16] ~ ~ ~