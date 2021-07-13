############################################################
# Description: Forceload chunk remove
############################################################

execute at @a[tag=mb.soulbound.chunk] run forceload remove ~ ~
tag @a remove mb.soulbound.chunk