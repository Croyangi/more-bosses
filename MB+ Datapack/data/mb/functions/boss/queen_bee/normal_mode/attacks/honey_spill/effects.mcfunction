############################################################
# Description: Summons Honey Spill
############################################################

kill @s
summon area_effect_cloud ~ ~ ~ {Particle:"block honey_block",ReapplicationDelay:1,Radius:1f,RadiusPerTick:.02f,Duration:160,Effects:[{Id:2b,Amplifier:6b,Duration:20,ShowParticles:0b}]}
particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 normal