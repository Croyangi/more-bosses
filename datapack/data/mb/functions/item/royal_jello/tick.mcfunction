############################################################
# Description: Royal Jello teleport tick
############################################################

execute unless entity @a[distance=..10] run function mb:item/royal_jello/teleport

schedule function mb:item/royal_jello/loop 1s replace