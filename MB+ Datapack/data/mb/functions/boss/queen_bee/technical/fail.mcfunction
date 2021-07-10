############################################################
# Description: When all players die during boss fight
############################################################

data merge entity @e[type=minecraft:slime,tag=mb.queen_bee.hitbox,limit=1] {DeathLootTable:"null"}
tp @e[type=bee,tag=mb.queen_bee.AI] ~ -1000 ~
kill @e[tag=mb.queen_bee]

tellraw @a [{"translate":"chat.mb.queen_bee","color":"yellow","bold":true},{"text":" "},{"translate":"chat.mb.boss.fail","color":"white"}]
playsound mb:entity.boss.fail master @a ~ ~ ~ 1 1 1

schedule function mb:boss/queen_bee/technical/reset/reset 1t append