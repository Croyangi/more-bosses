############################################################
# Description: Herobrine Model
############################################################

data modify entity @s WanderTarget.X set from entity @p[gamemode=!creative,gamemode=!spectator] Pos[0]
data modify entity @s WanderTarget.Y set from entity @p[gamemode=!creative,gamemode=!spectator] Pos[1]
data modify entity @s WanderTarget.Z set from entity @p[gamemode=!creative,gamemode=!spectator] Pos[2]

execute as @s[tag=!mb.herobrine.animated] run data modify entity @s HandItems[0] set from storage mb:storage root.DisplayItems.Herobrine[0]
execute as @s[tag=!mb.herobrine.animated,predicate=mb:moving] run data modify entity @s HandItems[0] set from storage mb:storage root.DisplayItems.Herobrine[1]
execute as @s[tag=mb.herobrine.animated] run data modify entity @s HandItems[0] set from storage mb:storage root.DisplayItems.Herobrine[2]
execute at @s[tag=mb.herobrine.animated] run playsound mb:entity.herobrine.cast master @a[distance=..16] ~ ~ ~ .2 1 1

effect give @s invisibility 999999 0 true
data merge entity @s {Fire:-1s}

# HurtTime
execute if entity @s[nbt={HurtTime:10s}] run function mb:boss/herobrine/technical/model/hurt
execute if entity @s[nbt={HurtTime:0s}] run function mb:boss/herobrine/technical/model/unhurt