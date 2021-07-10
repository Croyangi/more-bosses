############################################################
# Description: When all players die during boss fight
############################################################

# Technical
scoreboard players set @a MBbossID 0
scoreboard players set @a MB.deaths 0

# Kill boss
data merge entity @e[type=minecraft:wandering_trader,tag=herobrine,limit=1] {DeathLootTable:"null"}
tp @e[type=wandering_trader,tag=herobrine] ~ -1000 ~
kill @e[type=wandering_trader,tag=herobrine]

# Effects
tellraw @a [{"text":"Herobrine ","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"has killed every player!","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1 1
function mb:boss/herobrine/technical/dialogue/fail/rng

# Reset
function mb:boss/herobrine/technical/reset/reset