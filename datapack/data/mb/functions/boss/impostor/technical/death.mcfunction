############################################################
# Description: Runs when Impostor is defeated
############################################################

kill @s
function mb:boss/technical/boss/global_defeat

tellraw @a [{"translate":"chat.mb.impostor","color":"red","bold":true},{"text":" "},{"translate":"chat.mb.boss.defeat","color":"white"}]
playsound mb:entity.boss.death master @a ~ ~ ~ 1 1 1

execute as @a[scores={mb.speedrunTimer=1}] run tellraw @s [{"translate":"chat.mb.boss.timer","color":"white","bold":true},{"text":" "},{"translate":"chat.mb.impostor","color":"red"},{"text":": ","color":"white"},{"score":{"name":"seconds","objective":"MB.timer"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"miliseconds","objective":"MB.timer"},"color":"yellow"},{"text":"s","color":"yellow"}]

execute as @a[scores={MB.difficulty=0}] run advancement grant @s only mb:minecraft/sussed_out
execute as @a[scores={MB.difficulty=1}] run advancement grant @s only mb:minecraft/2000_iq

tag @a[advancements={mb:technical/boss/impostor/hurt_impostor=true}] add mb.impostor.player_attacked
execute as @a[tag=mb.impostor.player_attacked] run loot spawn ~ ~ ~ loot mb:item/impostor/loot_bag
schedule function mb:boss/impostor/technical/loot_bag_owner 1t append

function mb:boss/impostor/technical/reset/reset