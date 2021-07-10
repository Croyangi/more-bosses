############################################################
# Description: Tick function when boss is active
############################################################

execute as @e[type=item,nbt={Item:{tag:{mb.boss.death.detect:1b}}}] at @s run function mb:boss/king_slime/technical/death

execute store result score king_slime.health MB.dummy1 run data get entity @e[type=minecraft:slime,tag=mb.king_slime,limit=1] Health
execute store result bossbar mb:kingslime value run scoreboard players get king_slime.health MB.dummy1

scoreboard players set player.count MB.dummy1 0
execute as @a run scoreboard players add player.count MB.dummy1 1
scoreboard players set @a[scores={MB.deaths=2..}] MB.deaths 1
scoreboard players set total.deaths MB.deaths 0
scoreboard players operation total.deaths MB.deaths += @a MB.deaths
execute if score total.deaths MB.deaths >= player.count MB.dummy1 run function mb:boss/king_slime/technical/fail

# Crown model rotation lock
data modify entity @e[type=minecraft:armor_stand,tag=mb.king_slime.crown,limit=1] Rotation set from entity @e[type=minecraft:slime,tag=mb.king_slime,limit=1] Rotation

# No fall damage
effect give @e[type=minecraft:slime,tag=mb.king_slime] minecraft:jump_boost 999999 100 true

schedule function mb:boss/king_slime/technical/tick 1t append