############################################################
# Description: Summons Minion Bee
############################################################

execute at @e[type=bee,tag=mb.queen_bee.AI] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon bee ~ ~ ~ {Health:10f,DeathLootTable:"null",AngerTime:999999,Tags:["mb.queen_bee.minion","mb.minion_bee","mb.queen_bee.bee_modify","mb.queen_bee.cleanup"],CustomName:'{"text":"Minion Bee","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Attributes:[{Name:"generic.max_health",Base:10},{Name:"generic.follow_range",Base:100},{Name:"generic.attack_damage",Base:2}]}

schedule function mb:boss/queen_bee/master_mode/attacks/minion_bee 15s append