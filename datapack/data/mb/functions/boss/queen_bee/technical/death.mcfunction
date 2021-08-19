############################################################
# Description: Runs when Queen Bee is defeated
############################################################

kill @s
function mb:boss/technical/boss/global_defeat

tellraw @a [{"translate":"chat.mb.queen_bee","color":"yellow","bold":true},{"text":" "},{"translate":"chat.mb.boss.defeat","color":"white"}]
playsound mb:entity.boss.death master @a ~ ~ ~ 1 1 1

execute as @a[scores={mb.speedrunTimer=1}] run tellraw @s [{"translate":"chat.mb.boss.timer","color":"white","bold":true},{"text":" "},{"translate":"chat.mb.queen_bee","color":"yellow"},{"text":": ","color":"white"},{"score":{"name":"seconds","objective":"MB.timer"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"miliseconds","objective":"MB.timer"},"color":"yellow"},{"text":"s","color":"yellow"}]

execute as @a[scores={mb.difficulty=0}] run advancement grant @s only mb:minecraft/sting_operation
execute as @a[scores={mb.difficulty=1}] run advancement grant @s only mb:minecraft/buzzkill
execute as @a[advancements={mb:technical/player_hurt=false}] run advancement grant @s only mb:minecraft/flawless_queen_bee

tag @a[advancements={mb:technical/boss/queen_bee/hurt_queen_bee=true}] add mb.queen_bee.player_attacked
execute as @a[tag=mb.queen_bee.player_attacked] run loot spawn ~ ~ ~ loot mb:item/queen_bee/loot_bag
schedule function mb:boss/queen_bee/technical/loot_bag_owner 1t append

playsound mb:entity.queen_bee.death master @a[distance=..16]

schedule function mb:boss/queen_bee/technical/reset/reset 1t append