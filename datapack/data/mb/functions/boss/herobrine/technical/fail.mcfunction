############################################################
# Description: When all players die during boss fight
############################################################

data merge entity @e[type=minecraft:wandering_trader,tag=mb.herobrine,limit=1] {DeathLootTable:"null"}
tp @e[type=wandering_trader,tag=mb.herobrine] ~ -1000 ~
kill @e[type=wandering_trader,tag=mb.herobrine]

tellraw @a [{"translate":"chat.mb.herobrine","color":"red","bold":true},{"text":" "},{"translate":"chat.mb.boss.fail","color":"white"}]
playsound mb:entity.boss.fail master @a ~ ~ ~ 1 1 1

schedule function mb:boss/herobrine/technical/reset/reset 1t append