############################################################
# Description: Schedules Smite attack
############################################################

schedule function mb:boss/herobrine/normal_mode/attacks/x_smite/schedule 20s append

scoreboard players set x_smite MBbossDummy 60
data merge entity @e[type=wandering_trader,tag=herobrine,limit=1] {Invulnerable:1b}

effect give @e[type=wandering_trader,tag=herobrine] slowness 2 255 true
tag @e[type=wandering_trader,tag=herobrine] add herobrine.animation

function mb:boss/herobrine/normal_mode/attacks/x_smite/tick