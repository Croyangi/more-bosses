############################################################
# Description: Summons Minion Slimes
############################################################

execute at @e[type=slime,tag=mb.king_slime] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:3,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute at @e[type=slime,tag=mb.king_slime] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:2,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute at @e[type=slime,tag=mb.king_slime] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:1,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

schedule function mb:boss/king_slime/master_mode/attacks/minion_slime 15s