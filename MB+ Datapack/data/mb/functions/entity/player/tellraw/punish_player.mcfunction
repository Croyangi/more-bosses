############################################################
# Description: Punishes player for granting all advancements
############################################################

# Technical
title @s times 20 400 20
title @s title {"translate":"chat.mb.punish_player","color":"red","bold":true}

# Advancement
advancement revoke @s only mb:technical/punish_player