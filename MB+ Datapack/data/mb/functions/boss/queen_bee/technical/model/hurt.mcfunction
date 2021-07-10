############################################################
# Description: Changes color to HurtTime
############################################################

data modify entity @e[type=armor_stand,tag=mb.queen_bee.model,limit=1] ArmorItems[3].tag.display.color set value 14586514
playsound mb:entity.queen_bee.hurt master @a[distance=..16] ~ ~ ~