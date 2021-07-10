############################################################
# Description: Tick function Spikes
############################################################

schedule function mb:boss/herobrine/normal_mode/attacks/spikes/tick 1t append

# Summon Smite markers
execute if score spikes MBbossDummy matches 20 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^ ^3 ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 18 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^.5 ^3 ^2 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 16 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^-.5 ^3 ^3 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 14 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^1.3 ^3 ^4 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 12 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^ ^3 ^4.5 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 10 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^-1.6 ^3 ^5 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 8 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^.3 ^3 ^5.5 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 6 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^-.6 ^3 ^6.5 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 4 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^1 ^3 ^7 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp"],DisabledSlots:4144959}
execute if score spikes MBbossDummy matches 2 at @e[type=wandering_trader,tag=herobrine] run summon armor_stand ^ ^3 ^9 {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["spike.tp","spike.tp.large"],DisabledSlots:4144959}

scoreboard players remove spikes MBbossDummy 1
execute if score spikes MBbossDummy matches ..0 run schedule clear mb:boss/herobrine/normal_mode/attacks/spikes/tick

# Animation change
execute if score spikes MBbossDummy matches ..0 run tag @e[type=wandering_trader,tag=herobrine] remove herobrine.animation
execute if score spikes MBbossDummy matches ..0 run data merge entity @e[type=wandering_trader,tag=herobrine,limit=1] {Invulnerable:0b}
item replace entity @e[type=minecraft:wandering_trader,tag=herobrine] weapon.mainhand with leather_horse_armor{CustomModelData:400003}