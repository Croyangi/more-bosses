############################################################
# Description: Runs when boss is active
############################################################

# Clears unnecessary entities
execute store result score queen_bee.minion.count MB.dummy1 if entity @e[tag=mb.queen_bee.minion]
execute if score queen_bee.minion.count MB.dummy1 matches 15.. as @e[tag=mb.queen_bee.minion,limit=1,sort=random] run function mb:boss/queen_bee/technical/despawn_minions
execute at @e[tag=mb.queen_bee] as @e[tag=mb.queen_bee.minion,distance=30..,limit=1,sort=furthest] run function mb:boss/queen_bee/technical/despawn_minions

# Second phase
execute if score queen_bee.health MB.dummy1 matches 1..149 run advancement grant @a only mb:technical/boss/queen_bee/normal_second_phase

# Bee Drones
execute as @e[type=item,nbt={Item:{tag:{mb:{id:mb.bee_drone}}}}] at @s run function mb:boss/queen_bee/normal_mode/attacks/bee_drone/death
execute as @e[type=husk,tag=mb.bee_drone] at @s facing entity @p[distance=..30,gamemode=!creative,gamemode=!spectator] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=mb.homing_stinger] at @s run function mb:boss/queen_bee/normal_mode/attacks/bee_drone/homing_stinger/tick

# Honey Spill effects
execute as @e[type=armor_stand,tag=mb.honey_spill,nbt={OnGround:1b}] at @s run function mb:boss/queen_bee/normal_mode/attacks/honey_spill/effects

# Stinger Rain
execute as @e[type=armor_stand,tag=mb.stinger_rain,nbt={OnGround:1b}] at @s run function mb:boss/queen_bee/normal_mode/attacks/stinger_rain/explosion


schedule function mb:boss/queen_bee/normal_mode/tick 1t append