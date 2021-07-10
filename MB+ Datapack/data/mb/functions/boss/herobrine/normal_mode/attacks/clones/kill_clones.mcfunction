############################################################
# Description: Clears Herobrine clones
############################################################

schedule clear mb:boss/herobrine/normal_mode/attacks/clones/tick

execute at @e[type=wandering_trader,tag=herobrineClone] run particle smoke ~ ~1 ~ 0 0 0 .1 50 normal
tp @e[type=wandering_trader,tag=herobrineClone] ~ -1000 ~