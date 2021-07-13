############################################################
# Description: Calculates Slimey Spring cooldown
############################################################

# Experimental cooldown method, measures the time between initial and last click, subtracting it from the cooldown
# Incredibly optimized, but uses a ton of scoreboards, might need further testing
# Could possibly link between markers to store data


#scoreboard players operation last.time mb.temp = @s mb.temp
#scoreboard players operation @s mb.temp = @s test
#scoreboard players operation current.time mb.temp = @s mb.temp
#execute store result score time.between mb.temp run scoreboard players operation current.time mb.temp -= last.time mb.temp
#scoreboard players operation @s mb.slimey_s.cool -= time.between mb.temp
#execute as @s[scores={mb.slimey_s.cool=..0}] run function mb:item/slimey_spring/used