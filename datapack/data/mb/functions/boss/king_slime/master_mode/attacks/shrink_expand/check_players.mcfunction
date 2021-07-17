############################################################
# Description: Checks players nearby
############################################################

execute at @p run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Motion:[0.0,-5.0,0.0],Tags:["mb.king_slime.cleanup","mb.king_slime.marker"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:133031}}]}
data merge entity @e[type=slime,tag=mb.king_slime,limit=1] {NoAI:1b,Silent:1b}
scoreboard players set mb.king_slime.shrink_expand mb.dummy1 50
item replace entity @e[type=minecraft:armor_stand,tag=mb.king_slime.crown] armor.head with air
function mb:boss/king_slime/master_mode/attacks/shrink_expand/tick