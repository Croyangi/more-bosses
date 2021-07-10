############################################################
# Description: When all players die during boss fight
############################################################

data merge entity @e[type=minecraft:husk,tag=mb.impostor,limit=1] {DeathLootTable:"null"}
tp @e[type=husk,tag=mb.impostor] ~ -1000 ~
kill @e[type=husk,tag=mb.impostor]

tellraw @a [{"translate":"chat.mb.impostor","color":"red","bold":true},{"text":" "},{"translate":"chat.mb.boss.fail","color":"white"}]
playsound mb:entity.boss.fail master @a ~ ~ ~ 1 1 1

function mb:boss/impostor/technical/reset/reset