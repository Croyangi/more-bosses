############################################################
# Description: Runs when boss reaches 2nd phase
############################################################

execute at @e[type=bee,tag=mb.queen_bee.AI] run summon bee ~ ~ ~ {DeathLootTable:"null",AngerTime:999999,Tags:["mb.queen_bee.minion","mb.minion_bee","mb.queen_bee.bee_modify","mb.queen_bee.cleanup"],CustomName:'{"text":"Minion Bee","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute at @e[type=bee,tag=mb.queen_bee.AI] run summon bee ~ ~ ~ {DeathLootTable:"null",AngerTime:999999,Tags:["mb.queen_bee.minion","mb.minion_bee","mb.queen_bee.bee_modify","mb.queen_bee.cleanup"],CustomName:'{"text":"Minion Bee","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute at @e[type=bee,tag=mb.queen_bee.AI] run summon bee ~ ~ ~ {DeathLootTable:"null",AngerTime:999999,Tags:["mb.queen_bee.minion","mb.minion_bee","mb.queen_bee.bee_modify","mb.queen_bee.cleanup"],CustomName:'{"text":"Minion Bee","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

# Honey Spill
schedule function mb:boss/queen_bee/normal_mode/attacks/honey_spill/summon 1s append

# Stinger Rain
schedule function mb:boss/queen_bee/normal_mode/attacks/stinger_rain/schedule 5s append

# Second phase model
item replace entity @e[tag=mb.queen_bee.model] armor.head with minecraft:leather_horse_armor{CustomModelData:133005}