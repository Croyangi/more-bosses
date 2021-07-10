############################################################
# Description: Voodoo Doll entity tick
############################################################

execute as @s[nbt={HurtTime:10s}] at @s run function mb:item/voodoo_doll/entity/damage
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 1 normal

schedule function mb:item/voodoo_doll/entity/loop 1t replace