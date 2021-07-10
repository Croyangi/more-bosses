############################################################
# Description: Tick function when boss is active
############################################################

# Normal Mode
execute as @s[scores={MB.difficulty=0}] run function mb:boss/herobrine/normal_mode/tick

# Master mode
execute as @s[scores={MB.difficulty=1}] run function mb:boss/herobrine/master_mode/tick

# Boss death detect
execute at @e[predicate=mb:dropcraft/herobrine] run function mb:boss/herobrine/technical/herobrine_death

# Boss failed detect
execute as @a[scores={MB.deaths=2..}] run scoreboard players set @s MB.deaths 1
scoreboard players set total.deaths MBdeaths 0
scoreboard players operation total.deaths MBdeaths += @a MB.deaths
execute if score total.deaths MBdeaths = @s MBplayers run function mb:boss/herobrine/technical/fail

# Bossbar
execute store result score @s MBbossHealth run bossbar get minecraft:herobrine value
execute store result bossbar minecraft:herobrine value run data get entity @e[type=minecraft:wandering_trader,tag=herobrine,limit=1] Health

# Technical
data modify entity @e[type=wandering_trader,tag=herobrine,limit=1] WanderTarget set value {X:0,Y:0,Z:0}
execute as @e[type=wandering_trader,tag=herobrine] at @s run function mb:boss/herobrine/technical/model/animation

execute at @e[type=wandering_trader,tag=herobrine] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace #mb:all_leaves
data merge entity @e[type=minecraft:wandering_trader,tag=herobrine,limit=1] {Fire:-20}