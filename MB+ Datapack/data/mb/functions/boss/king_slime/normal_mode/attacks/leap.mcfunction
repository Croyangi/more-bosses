############################################################
# Description: Heals King Slime
############################################################

data merge entity @e[type=slime,tag=mb.king_slime,limit=1] {Motion:[0.0,2.0,0.0]}

schedule function mb:boss/king_slime/normal_mode/attacks/leap 10s