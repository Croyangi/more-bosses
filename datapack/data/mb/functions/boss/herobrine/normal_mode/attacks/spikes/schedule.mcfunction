############################################################
# Description: Schedules Spikes attack
############################################################

tp @e[type=armor_stand,tag=spikes.tp] ~ -1000 ~

schedule function mb:boss/herobrine/normal_mode/attacks/spikes/schedule 10s append

scoreboard players set spikes MBbossDummy 20

effect give @e[type=wandering_trader,tag=herobrine] slowness 2 255 true
tag @e[type=wandering_trader,tag=herobrine] add herobrine.animation

function mb:boss/herobrine/normal_mode/attacks/spikes/tick