############################################################
# Description: When all players die during boss fight
############################################################

data merge entity @e[type=minecraft:slime,tag=mb.king_slime,limit=1] {DeathLootTable:"null"}
tp @e[type=slime,tag=mb.king_slime] ~ -1000 ~
kill @e[type=slime,tag=mb.king_slime]

tellraw @a [{"translate":"chat.mb.king_slime","color":"green","bold":true},{"text":" "},{"translate":"chat.mb.boss.fail","color":"white"}]
playsound mb:entity.boss.fail master @a ~ ~ ~ 1 1 1

schedule function mb:boss/king_slime/technical/reset/reset 1t append