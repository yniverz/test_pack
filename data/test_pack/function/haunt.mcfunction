# Runs every tick for each player individually (as @s, at their position).
# Each player has their own approach state, so scares are never synchronized.

# If an approach is already in progress, advance it (play the next, closer step).
execute if score @s tp_appr matches 1.. run function test_pack:approach_step

# Otherwise, roll a chance to start a new approach.
# Roll 1..1800: on average a scare roughly every ~90 seconds per player.
# Lower the upper bound for more frequent scares, raise it for rarer ones.
execute unless score @s tp_appr matches 1.. run function test_pack:haunt_roll
