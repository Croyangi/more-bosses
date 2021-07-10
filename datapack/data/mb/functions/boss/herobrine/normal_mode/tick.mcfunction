############################################################
# Description: Tick active
############################################################

# Smite markers
scoreboard players remove @e[type=armor_stand,tag=smite.marker,tag=smite.used] MBbossDummy 1
execute at @e[type=armor_stand,tag=smite.marker,scores={MBbossDummy=..0}] run summon lightning_bolt
kill @e[type=armor_stand,tag=smite.marker,scores={MBbossDummy=..0}]

# Spike markers
execute as @e[type=armor_stand,tag=spike.tp,nbt={OnGround:1b}] at @s run function mb:boss/herobrine/normal_mode/attacks/spike_tag
execute as @e[type=armor_stand,tag=spike.tp,scores={MBbossDummy=1..}] at @s run tp @s ~ ~.2 ~
scoreboard players remove @e[type=armor_stand,tag=spike.tp,tag=spike.used,scores={MBbossDummy=1..}] MBbossDummy 1

# Second phase initiate
execute as @s[scores={MBbossHealth=1..199}] run advancement grant @s only mb:boss/herobrine/normal_mode/second_phase

# Third phase initiate
execute as @s[scores={MBbossHealth=1..49}] run advancement grant @s only mb:boss/herobrine/normal_mode/third_phase