# Runs every tick for each player individually (as @s, at their position).
# Each player rolls their own random number, so scares are never synchronized.

# Roll 1..1800: on average a footstep event roughly every ~90 seconds per player.
# Lower the upper bound for more frequent scares, raise it for rarer ones.
execute store result score @s tp_rng run random value 1..1800
execute if score @s tp_rng matches 1 run function test_pack:scare_footsteps
