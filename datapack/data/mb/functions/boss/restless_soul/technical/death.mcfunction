############################################################
# Description: Runs when Restless Soul is defeated
############################################################

kill @s
function mb:boss/technical/boss/global_defeat

tellraw @a [{"translate":"chat.mb.restless_soul","color":"dark_purple","bold":true},{"text":" "},{"translate":"chat.mb.boss.defeat","color":"white"}]
playsound mb:entity.boss.death master @a ~ ~ ~ 1 1 1

execute as @a[scores={mb.speedrunTimer=1}] run tellraw @s [{"translate":"chat.mb.boss.timer","color":"white","bold":true},{"text":" "},{"translate":"chat.mb.restless_soul","color":"dark_purple"},{"text":": ","color":"white"},{"score":{"name":"seconds","objective":"MB.timer"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"miliseconds","objective":"MB.timer"},"color":"yellow"},{"text":"s","color":"yellow"}]

execute as @a[scores={MB.difficulty=0}] run advancement grant @s only mb:minecraft/free_the_souls
execute as @a[scores={MB.difficulty=1}] run advancement grant @s only mb:minecraft/etherealness
execute as @a[advancements={mb:technical/player_hurt=false}] run advancement grant @s only mb:minecraft/flawless_restless_soul

tag @a[advancements={mb:technical/boss/restless_soul/hurt_restless_soul=true}] add mb.restless_soul.player_attacked
execute as @a[tag=mb.restless_soul.player_attacked] run loot spawn ~ ~ ~ loot mb:item/restless_soul/loot_bag
schedule function mb:boss/restless_soul/technical/loot_bag_owner 1t append

playsound mb:entity.restless_soul.death master @a[distance=..16]

schedule function mb:boss/restless_soul/technical/reset/reset 1t append