############################################################
# Description: Schedules attacks
############################################################

execute as @e[type=wandering_trader,tag=mb.herobrine] run function mb:boss/herobrine/technical/model/model_set

# Static Pool
schedule function mb:boss/herobrine/normal_mode/attacks/static_pool/summon 10s replace

# Smite
schedule function mb:boss/herobrine/normal_mode/attacks/smite/summon 5s replace