############################################################
# Description: Runs whenever a player rejoins a world
############################################################

# Boss Fail
scoreboard players set player.count MB.dummy1 0
execute as @a run scoreboard players add player.count MB.dummy1 1
execute as @a[tag=mb.king_slime.active] unless score player.count MB.dummy1 matches 2.. run function mb:boss/king_slime/technical/fail
execute as @a[tag=mb.queen_bee.active] unless score player.count MB.dummy1 matches 2.. run function mb:boss/queen_bee/technical/fail
execute as @a[tag=mb.restless_soul.active] unless score player.count MB.dummy1 matches 2.. run function mb:boss/restless_soul/technical/fail

scoreboard players set @s MB.join.world 0