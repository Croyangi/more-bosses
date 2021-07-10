############################################################
# Description: When all players die during boss fight
############################################################

data merge entity @e[type=minecraft:wandering_trader,tag=mb.restless_soul,limit=1] {DeathLootTable:"null"}
tp @e[type=wandering_trader,tag=mb.restless_soul] ~ -1000 ~
kill @e[type=wandering_trader,tag=mb.restless_soul]

tellraw @a [{"translate":"chat.mb.restless_soul","color":"dark_purple","bold":true},{"text":" "},{"translate":"chat.mb.boss.fail","color":"white"}]
playsound mb:entity.boss.fail master @a ~ ~ ~ 1 1 1

schedule function mb:boss/restless_soul/technical/reset/reset 1t append