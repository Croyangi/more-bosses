############################################################
# Description: Triggers whenever a boss is summoned
############################################################

scoreboard players set @a mb.deaths 0
scoreboard players set total.deaths mb.deaths 0
scoreboard players set @a MB.timer 0
scoreboard players set boss.health mb.dummy1 0
advancement revoke @a only mb:technical/player_hurt