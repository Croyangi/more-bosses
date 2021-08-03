############################################################
# Description: Runs when Herobrine is defeated
############################################################

kill @s
function mb:boss/technical/boss/global_defeat

tellraw @a [{"translate":"chat.mb.herobrine","color":"red","bold":true},{"text":" "},{"translate":"chat.mb.boss.defeat","color":"white"}]
playsound mb:entity.boss.death master @a ~ ~ ~ 1 1 1

execute as @a[scores={mb.speedrunTimer=1}] run tellraw @s [{"translate":"chat.mb.boss.timer","color":"white","bold":true},{"text":" "},{"translate":"chat.mb.herobrine","color":"red"},{"text":": ","color":"white"},{"score":{"name":"seconds","objective":"MB.timer"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"miliseconds","objective":"MB.timer"},"color":"yellow"},{"text":"s","color":"yellow"}]

execute as @a[scores={MB.difficulty=0}] run advancement grant @s only mb:minecraft/removed_herobrine
execute as @a[scores={MB.difficulty=1}] run advancement grant @s only mb:minecraft/myth_busted
execute as @a[advancements={mb:technical/player_hurt=false}] run advancement grant @s only mb:minecraft/flawless_herobrine

tag @a[advancements={mb:technical/boss/herobrine/hurt_herobrine=true}] add mb.herobrine.player_attacked
execute as @a[tag=mb.herobrine.player_attacked] run loot spawn ~ ~ ~ loot mb:item/herobrine/loot_bag
schedule function mb:boss/herobrine/technical/loot_bag_owner 1t append

playsound mb:entity.herobrine.death master @a[distance=..16]

schedule function mb:boss/herobrine/technical/reset/reset 1t append