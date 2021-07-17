############################################################
# Description: Shrink Expand tick
############################################################

execute if score mb.king_slime.shrink_expand mb.dummy1 matches 31..50 as @e[type=slime,tag=mb.king_slime] run function mb:boss/king_slime/master_mode/attacks/shrink_expand/size/shrink
execute if score mb.king_slime.shrink_expand mb.dummy1 matches 30 as @e[type=slime,tag=mb.king_slime] run function mb:boss/king_slime/master_mode/attacks/shrink_expand/teleport
execute if score mb.king_slime.shrink_expand mb.dummy1 matches 20 run effect clear @e[type=slime,tag=mb.king_slime] invisibility
execute if score mb.king_slime.shrink_expand mb.dummy1 matches 1..20 as @e[type=slime,tag=mb.king_slime] run function mb:boss/king_slime/master_mode/attacks/shrink_expand/size/expand
execute if score mb.king_slime.shrink_expand mb.dummy1 matches ..0 run function mb:boss/king_slime/master_mode/attacks/shrink_expand/end
scoreboard players remove mb.king_slime.shrink_expand mb.dummy1 1

schedule function mb:boss/king_slime/master_mode/attacks/shrink_expand/tick 1t replace