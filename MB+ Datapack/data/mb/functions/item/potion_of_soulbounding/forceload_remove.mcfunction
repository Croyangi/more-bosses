############################################################
# Description: Forceload chunk remove
############################################################

execute at @a[tag=soulbound.chunk] run forceload remove ~ ~
tag @a remove soulbound.chunk