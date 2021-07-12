############################################################
# Description: Starts Soul Dragon attack
############################################################

execute at @e[type=wandering_trader,tag=mb.restless_soul] run function mb:boss/restless_soul/normal_mode/attacks/soul_dragon/summon
execute at @e[type=wandering_trader,tag=mb.restless_soul] run playsound mb:entity.soul_dragon.spawn master @a[distance=..16]

function mb:boss/restless_soul/normal_mode/attacks/soul_dragon/tick