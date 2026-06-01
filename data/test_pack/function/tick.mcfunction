# Runs every game tick (20 times per second).

# Fire on_join once for any player whose login was not yet handled this session.
execute as @a unless score @s tp_leave = @s tp_seen run function test_pack:on_join
