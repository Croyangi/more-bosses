############################################################
# Description: Used Hive Rattle
############################################################

playsound mb:item.hive_rattle.used master @a[distance=..16]

# Prince wandering_trader
scoreboard players operation .search mb.hive_rat.UUID = @s mb.hive_rat.UUID
execute as @e[type=wandering_trader,tag=mb.hive_rattle.bruce] if score @s mb.hive_rat.UUID = .search mb.hive_rat.UUID run tp @s ~ -1000 ~
execute as @e[type=wandering_trader,tag=mb.hive_rattle.bruce] if score @s mb.hive_rat.UUID = .search mb.hive_rat.UUID run kill @s
execute as @s[scores={mb.hive_rat.tog=0}] at @s run function mb:item/hive_rattle/link
item replace entity @s[scores={mb.hive_rat.tog=0}] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"translate":"item.mb.hive_rattle","color":"yellow","italic":false}',Lore:['{"translate":"item.mb.tag.summon","color":"dark_gray","italic":true}','{"text":" "}','{"translate":"item.mb.hive_rattle.lore","color":"dark_green","italic":false}','{"translate":"item.mb.summon.empty_tag","color":"white","italic":false}','{"translate":"pack.mb","color":"dark_purple","italic":true}']},CustomModelData:133025} 1

# Toggle
scoreboard players add @s mb.hive_rat.tog 1
item replace entity @s[scores={mb.hive_rat.tog=2..}] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"translate":"item.mb.hive_rattle","color":"yellow","italic":false}',Lore:['{"translate":"item.mb.tag.summon","color":"dark_gray","italic":true}','{"text":" "}','{"translate":"item.mb.hive_rattle.lore","color":"dark_green","italic":false}','{"translate":"item.mb.summon.full_tag","color":"white","italic":false}','{"translate":"pack.mb","color":"dark_purple","italic":true}']},CustomModelData:133026} 1
execute as @s[scores={mb.hive_rat.tog=2..}] run scoreboard players set @s mb.hive_rat.tog 0