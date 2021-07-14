############################################################
# Description: Wisp in a Lantern
############################################################

playsound mb:item.wisp_in_a_lantern.used master @a[distance=..16]

# Wispy
scoreboard players operation .search mb.wisp_lan.UUID = @s mb.wisp_lan.UUID
execute as @e[type=vex,tag=mb.wisp_in_a_lantern.wispy] if score @s mb.wisp_lan.UUID = .search mb.wisp_lan.UUID run tp @s ~ -1000 ~
execute as @e[type=vex,tag=mb.wisp_in_a_lantern.wispy] if score @s mb.wisp_lan.UUID = .search mb.wisp_lan.UUID run kill @s
execute as @s[scores={mb.wisp_lan.tog=0}] at @s run function mb:item/wisp_in_a_lantern/link
item replace entity @s[scores={mb.wisp_lan.tog=0}] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"translate":"item.mb.wisp_in_a_lantern","color":"yellow","italic":false}',Lore:['{"translate":"item.mb.tag.summon","color":"dark_gray","italic":true}','{"text":" "}','{"translate":"item.mb.wisp_in_a_lantern.lore","color":"dark_green","italic":false}','{"translate":"item.mb.summon.empty_tag","color":"white","italic":false}','{"translate":"pack.mb","color":"dark_purple","italic":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:133014} 1

# Toggle
scoreboard players add @s mb.wisp_lan.tog 1
item replace entity @s[scores={mb.wisp_lan.tog=2..}] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"translate":"item.mb.wisp_in_a_lantern","color":"yellow","italic":false}',Lore:['{"translate":"item.mb.tag.summon","color":"dark_gray","italic":true}','{"text":" "}','{"translate":"item.mb.wisp_in_a_lantern.lore","color":"dark_green","italic":false}','{"translate":"item.mb.summon.full_tag","color":"white","italic":false}','{"translate":"pack.mb","color":"dark_purple","italic":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:133015} 1
execute as @s[scores={mb.wisp_lan.tog=2..}] run scoreboard players set @s mb.wisp_lan.tog 0