############################################################
# Description: Schedules Jumpscare attack
############################################################

schedule function mb:boss/herobrine/normal_mode/attacks/jumpscare/schedule 20s append

schedule function mb:boss/herobrine/normal_mode/attacks/jumpscare/jumpscare_1 1t append
schedule function mb:boss/herobrine/normal_mode/attacks/jumpscare/jumpscare_1 3t append
schedule function mb:boss/herobrine/normal_mode/attacks/jumpscare/jumpscare_1 6t append
schedule function mb:boss/herobrine/normal_mode/attacks/jumpscare/jumpscare_1 9t append
schedule function mb:boss/herobrine/normal_mode/attacks/jumpscare/jumpscare_2 12t append

execute at @e[type=wandering_trader,tag=herobrine] run effect give @a[distance=..10] blindness 4 0 true

execute at @e[type=wandering_trader,tag=herobrine] run function mb:boss/herobrine/normal_mode/attacks/clones/schedule