############################################################
# Description: Runs whenever a player rejoins a world
############################################################

# Reschedule cooldowns
function mb:item/potion_of_soulbounding/loop
function mb:item/pollinator/loop
function mb:item/royal_jello/loop
function mb:item/slimey_spring/second_loop
function mb:item/slimey_spring/tick_loop
function mb:item/soul_leech/second_loop
function mb:item/soul_leech/tick_loop
function mb:item/etherealm/loop
function mb:item/boing_boots/loop
function mb:item/venom_quiver/loop
function mb:item/flower_on_a_stick/loop
function mb:item/spirit_blade/loop

# Boss Fail
scoreboard players set player.count MB.dummy1 0
execute as @a run scoreboard players add player.count MB.dummy1 1

execute as @a[tag=mb.king_slime.active] unless score player.count MB.dummy1 matches 2.. run function mb:boss/king_slime/technical/fail
execute as @a[tag=mb.queen_bee.active] unless score player.count MB.dummy1 matches 2.. run function mb:boss/queen_bee/technical/fail
execute as @a[tag=mb.restless_soul.active] unless score player.count MB.dummy1 matches 2.. run function mb:boss/restless_soul/technical/fail


scoreboard players set @s MB.join.world 0