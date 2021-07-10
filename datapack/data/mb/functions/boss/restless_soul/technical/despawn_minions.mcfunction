############################################################
# Description: Despawns minions without drops
############################################################

data merge entity @s {DeathLootTable:"null"}
tp @s ~ -1000 ~
kill @s