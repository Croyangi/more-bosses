############################################################
# Description: Makes Prince Slime bounce
############################################################

data merge entity @s {Motion:[0.0,0.4,0.0]}
particle block slime_block ~ ~ ~ 0 0 0 1 10 normal
playsound mb:item.royal_jello.prince_slime.bounce master @a[distance=..16] ~ ~ ~ .05 1 1