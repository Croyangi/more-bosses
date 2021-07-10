############################################################
# Description: Flower on a Stick used
############################################################

# Technical
tag @s add flowerStick
scoreboard players set @a flowerStick.anim 2

# Cool Bee Mount RNG
scoreboard players set @s flowerStick.rng 0
scoreboard players set @s[predicate=mb:chance/one_fiftieth] flowerStick.rng 1

# Bee Mount link
execute at @s[scores={flowerStick.tog=0}] run function mb:item/flower_on_a_stick/link

# Technical
scoreboard players add @s flowerStick.tog 1
execute as @s[scores={flowerStick.tog=2..}] run function mb:item/flower_on_a_stick/despawn

# Effects
playsound mb:item.flower_on_a_stick.used master @s ~ ~ ~ 1 1 1

# Advancment
advancement grant @s only mb:minecraft/flight_of_the_bumblebee
advancement grant @s[scores={flowerStick.rng=1}] only mb:minecraft/bad_to_the_bee

schedule function mb:item/flower_on_a_stick/loop 1t append