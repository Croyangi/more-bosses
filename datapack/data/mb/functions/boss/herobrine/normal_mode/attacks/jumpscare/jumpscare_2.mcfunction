############################################################
# Description: Jumpscare attack variation 2
############################################################

execute at @e[type=wandering_trader,tag=herobrine] run execute as @a[distance=..10] run title @s times 0 0 50
execute at @e[type=wandering_trader,tag=herobrine] run execute as @a[distance=..10] run title @a title [{"text":"\uf001","font":"mb:herobrine_jumpscare","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"          ","font":"minecraft:default"}]