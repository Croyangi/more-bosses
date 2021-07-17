############################################################
# Description: Shrink Expand end
############################################################

schedule clear mb:boss/king_slime/normal_mode/attacks/shrink_expand/tick
data merge entity @e[type=slime,tag=mb.king_slime,limit=1] {NoAI:0b}
kill @e[type=armor_stand,tag=mb.king_slime.marker]
item replace entity @e[type=minecraft:armor_stand,tag=mb.king_slime.crown] armor.head with diamond_hoe{CustomModelData:133001}