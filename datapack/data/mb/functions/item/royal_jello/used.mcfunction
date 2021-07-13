############################################################
# Description: Royal Jello
############################################################

playsound mb:item.royal_jello.used master @a[distance=..16]

# Prince Slime
scoreboard players operation .search royal_jello.UUID = @s royal_jello.UUID
execute as @e[type=slime,tag=mb.royal_jello.prince_slime] if score @s royal_jello.UUID = .search royal_jello.UUID run tp @s ~ -1000 ~
execute as @e[type=slime,tag=mb.royal_jello.prince_slime] if score @s royal_jello.UUID = .search royal_jello.UUID run kill @s
execute as @s[scores={royal_jello.tog=0}] at @s run function mb:item/royal_jello/link
item replace entity @s[scores={royal_jello.tog=0}] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"translate":"item.mb.royal_jello","color":"yellow","italic":false}',Lore:['{"translate":"item.mb.tag.summon","color":"dark_gray","italic":true}','{"text":" "}','{"translate":"item.mb.royal_jello.lore","color":"dark_green","italic":false}','{"translate":"item.mb.summon.empty_tag","color":"white","italic":false}','{"translate":"pack.mb","color":"dark_purple","italic":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:133004} 1

# Toggle
scoreboard players add @s royal_jello.tog 1
item replace entity @s[scores={royal_jello.tog=2..}] weapon.mainhand with carrot_on_a_stick{display:{Name:'{"translate":"item.mb.royal_jello","color":"yellow","italic":false}',Lore:['{"translate":"item.mb.tag.summon","color":"dark_gray","italic":true}','{"text":" "}','{"translate":"item.mb.royal_jello.lore","color":"dark_green","italic":false}','{"translate":"item.mb.summon.full_tag","color":"white","italic":false}','{"translate":"pack.mb","color":"dark_purple","italic":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:133005} 1
execute as @s[scores={royal_jello.tog=2..}] run scoreboard players set @s royal_jello.tog 0