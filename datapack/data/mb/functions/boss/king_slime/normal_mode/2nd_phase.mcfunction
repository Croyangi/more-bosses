############################################################
# Description: Runs when boss reaches 2nd phase
############################################################

execute at @e[type=slime,tag=mb.king_slime] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:3,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute at @e[type=slime,tag=mb.king_slime] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:3,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute at @e[type=slime,tag=mb.king_slime] if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run summon slime ~ ~ ~ {DeathLootTable:"mb:entities/king_slime/minion_slime",Size:3,CustomName:'{"text":"Minion Slime","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

# Shrink Expand
schedule function mb:boss/king_slime/normal_mode/attacks/shrink_expand/schedule 5s append

# Second phase model
item replace entity @e[type=minecraft:armor_stand,tag=mb.king_slime.crown] armor.head with diamond_hoe{CustomModelData:133001}