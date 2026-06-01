# Runs once each time a player logs in (executed as that player, @s).

# Mark this login as handled so the message only shows once per join.
scoreboard players operation @s tp_seen = @s tp_leave

# --- Custom welcome for a specific user --------------------------------
# Change "PlayerName" below to the exact (case-sensitive) Minecraft
# username you want the special greeting for.
execute if entity @s[name="EmmaMai2004"] run tellraw @a {"text":"👑 The Queen has arrived ❤","color":"light_purple","bold":true}
execute if entity @s[name="EmmaMai2004"] run title @s title {"text":"Welcome back ❤","color":"light_purple"}

# --- Default greeting for everyone else --------------------------------
execute unless entity @s[name="EmmaMai2004"] run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" joined the game","color":"gray"}]
