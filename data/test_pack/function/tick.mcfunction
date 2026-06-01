# Runs every game tick (20 times per second).

# Count ticks; every 200 ticks (10 seconds) show an actionbar message.
scoreboard players add #seconds tp_timer 1
execute if score #seconds tp_timer matches 200.. run function test_pack:announce

# Fire on_join once for any player whose login was not yet handled this session.
execute as @a unless score @s tp_leave = @s tp_seen run function test_pack:on_join
