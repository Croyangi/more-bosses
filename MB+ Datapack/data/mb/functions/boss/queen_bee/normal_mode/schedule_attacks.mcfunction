############################################################
# Description: Schedules attacks
############################################################

execute at @e[type=bee,tag=mb.queen_bee.AI] run summon bee ~ ~ ~ {DeathLootTable:"null",AngerTime:999999,Tags:["mb.queen_bee.minion","mb.minion_bee","mb.queen_bee.bee_modify","mb.queen_bee.cleanup"],CustomName:'{"text":"Minion Bee","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

# Minion Bee
schedule function mb:boss/queen_bee/normal_mode/attacks/minion_bee 5s append

# Charge
schedule function mb:boss/queen_bee/normal_mode/attacks/charge/schedule 10s append

# Bee Drones
schedule function mb:boss/queen_bee/normal_mode/attacks/bee_drone/summon 15s append
schedule function mb:boss/queen_bee/normal_mode/attacks/bee_drone/homing_stinger/summon 16s append