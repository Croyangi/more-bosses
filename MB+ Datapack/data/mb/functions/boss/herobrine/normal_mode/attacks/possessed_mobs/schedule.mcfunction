############################################################
# Description: Schedules Possesed Mobs attack
############################################################

schedule function mb:boss/herobrine/normal_mode/attacks/possessed_mobs/schedule 25s append

# Animation change
effect give @e[type=wandering_trader,tag=herobrine] slowness 2 255 true
tag @e[type=wandering_trader,tag=herobrine] add herobrine.animation
function mb:boss/herobrine/normal_mode/attacks/possessed_mobs/animation
schedule function mb:boss/herobrine/normal_mode/attacks/possessed_mobs/animation_stop 2s append

execute at @e[type=wandering_trader,tag=herobrine] positioned ~1 ~ ~1 run function mb:boss/herobrine/normal_mode/attacks/possessed_mobs/possessed_skeleton
execute at @e[type=wandering_trader,tag=herobrine] positioned ~-1 ~ ~-1 run function mb:boss/herobrine/normal_mode/attacks/possessed_mobs/possessed_skeleton
execute at @e[type=wandering_trader,tag=herobrine] positioned ~1 ~ ~-1 run function mb:boss/herobrine/normal_mode/attacks/possessed_mobs/possessed_zombie
execute at @e[type=wandering_trader,tag=herobrine] positioned ~-1 ~ ~1 run function mb:boss/herobrine/normal_mode/attacks/possessed_mobs/possessed_zombie