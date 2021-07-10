############################################################
# Description: Runs when King Slime is defeated
############################################################

kill @s
function mb:boss/technical/boss/global_defeat

tellraw @a [{"translate":"chat.mb.king_slime","color":"green","bold":true},{"text":" "},{"translate":"chat.mb.boss.defeat","color":"white"}]
playsound mb:entity.boss.dies master @a ~ ~ ~ 1 1 1

execute as @a[scores={mb.speedrunTimer=1}] run tellraw @s [{"translate":"chat.mb.boss.timer","color":"white","bold":true},{"text":" "},{"translate":"chat.mb.king_slime","color":"green"},{"text":": ","color":"white"},{"score":{"name":"seconds","objective":"MB.timer"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"miliseconds","objective":"MB.timer"},"color":"yellow"},{"text":"s","color":"yellow"}]

execute as @a[scores={MB.difficulty=0}] run advancement grant @s only mb:minecraft/royal_overthrow
execute as @a[scores={MB.difficulty=1}] run advancement grant @s only mb:minecraft/de-throned
execute as @a[advancements={mb:technical/player_hurt=false}] run advancement grant @s only mb:minecraft/flawless_king_slime

tag @a[advancements={mb:technical/boss/king_slime/hurt_king_slime=true}] add mb.king_slime.player_attacked
execute as @a[tag=mb.king_slime.player_attacked] run loot spawn ~ ~ ~ loot mb:item/king_slime/king_slime_loot_bag
schedule function mb:boss/king_slime/technical/loot_bag_owner 1t append

schedule function mb:boss/king_slime/technical/reset/reset 1t append

# Prevents King Slime children from dealing damage
effect give @a[distance=..30] resistance 2 4 true

playsound mb:entity.king_slime.death master @a[distance=..16]