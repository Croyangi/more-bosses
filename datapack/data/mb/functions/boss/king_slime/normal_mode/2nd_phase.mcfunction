############################################################
# Description: Runs when boss reaches 2nd phase
############################################################

execute at @e[type=slime,tag=mb.king_slime] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:3,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute at @e[type=slime,tag=mb.king_slime] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:3,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute at @e[type=slime,tag=mb.king_slime] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:3,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

# Second phase model
item replace entity @e[type=minecraft:armor_stand,tag=mb.king_slime.crown] armor.head with diamond_hoe{CustomModelData:100001}