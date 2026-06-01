# Runs every game tick (20 times per second).

# Fire on_join once for any player whose login was not yet handled this session.
execute as @a unless score @s tp_leave = @s tp_seen run function test_pack:on_join

# Run the haunt check independently for each player (per-player random timing).
execute as @a at @s run function test_pack:haunt
