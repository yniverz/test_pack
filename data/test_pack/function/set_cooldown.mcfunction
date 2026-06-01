# Pick a random delay until this player's next scare.
# 10 minutes = 10 * 60 * 20 = 12000 ticks
# 20 minutes = 20 * 60 * 20 = 24000 ticks
execute store result score @s tp_cool run random value 12000..24000
