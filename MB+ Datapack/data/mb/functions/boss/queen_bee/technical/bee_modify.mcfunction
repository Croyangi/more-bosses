############################################################
# Description: Modifies bee's data
############################################################

data merge entity @s {AngerTime:999999}
data merge entity @s {HasStung:0}
data modify entity @s AngryAt set from entity @p UUID
effect clear @s poison