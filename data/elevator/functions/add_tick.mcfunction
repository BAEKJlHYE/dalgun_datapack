execute if score @p elevator_on_off matches -1 run scoreboard players set @a elevator_move_timer 0
execute if score @p elevator_on_off matches 0 run scoreboard players add @a elevator_move_timer 1