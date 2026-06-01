# Runs every game tick (20 times per second).

# Count ticks; every 200 ticks (10 seconds) show an actionbar message.
scoreboard players add #seconds tp_timer 1
execute if score #seconds tp_timer matches 200.. run function test_pack:announce
