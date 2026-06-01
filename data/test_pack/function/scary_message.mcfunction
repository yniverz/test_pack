# Show a random scary line on the action bar (the text just above the hotbar).
execute store result score @s tp_msg run random value 1..8
execute if score @s tp_msg matches 1 run title @s actionbar {"text":"Don't turn around","color":"dark_red","italic":true}
execute if score @s tp_msg matches 2 run title @s actionbar {"text":"I'm right behind you","color":"dark_red","italic":true}
execute if score @s tp_msg matches 3 run title @s actionbar {"text":"Did you hear that?","color":"dark_red","italic":true}
execute if score @s tp_msg matches 4 run title @s actionbar {"text":"You're not alone","color":"dark_red","italic":true}
execute if score @s tp_msg matches 5 run title @s actionbar {"text":"It's getting closer","color":"dark_red","italic":true}
execute if score @s tp_msg matches 6 run title @s actionbar {"text":"Keep walking... Don't stop","color":"dark_red","italic":true}
execute if score @s tp_msg matches 7 run title @s actionbar {"text":"I can see you","color":"dark_red","italic":true}
execute if score @s tp_msg matches 8 run title @s actionbar {"text":"Run","color":"dark_red","italic":true,"bold":true}
