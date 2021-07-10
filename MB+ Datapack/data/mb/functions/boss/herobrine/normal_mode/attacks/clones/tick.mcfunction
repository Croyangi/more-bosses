############################################################
# Description: Tick for Herobrine clones
############################################################

# Model
data modify entity @e[type=wandering_trader,tag=herobrineClone,limit=1] WanderTarget set value {X:0,Y:0,Z:0}
execute as @e[type=wandering_trader,tag=herobrineClone] at @s run function mb:boss/herobrine/normal_mode/attacks/clones/animation

# Technical
schedule function mb:boss/herobrine/normal_mode/attacks/clones/tick 1t append