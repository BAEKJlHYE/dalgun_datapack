execute if block 21 64 358 minecraft:stone_button[powered=true] run scoreboard players set @a elevator_on_off 0
execute if block 21 64 358 minecraft:stone_button[powered=true] run scoreboard players set @a elevator_up_down 1
execute if block 21 64 358 minecraft:stone_button[powered=true] run setblock 21 64 358 minecraft:stone_button[powered=false,facing=south]

execute if block 21 82 358 minecraft:stone_button[powered=true] run scoreboard players set @a elevator_on_off 0
execute if block 21 82 358 minecraft:stone_button[powered=true] run scoreboard players set @a elevator_up_down 0
execute if block 21 82 358 minecraft:stone_button[powered=true] run setblock 21 82 358 minecraft:stone_button[powered=false,facing=south]