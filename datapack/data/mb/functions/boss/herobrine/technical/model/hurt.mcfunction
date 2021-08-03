############################################################
# Description: Changes color to HurtTime
############################################################

data modify entity @s ArmorItems[3].tag.display.color set value 14586514
data modify entity @s HandItems[0].tag.display.color set value 14586514
playsound minecraft:entity.generic.hurt master @a[distance=..16]