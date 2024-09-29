scoreboard objectives add elevator_current_floor dummy
scoreboard players set @a elevator_current_floor 1

scoreboard objectives add elevator_open_timer dummy
scoreboard players set @a elevator_open_timer 0

scoreboard objectives add elevator_target_floor dummy
scoreboard players set @a elevator_target_floor 1

scoreboard objectives add elevator_move_timer dummy
scoreboard players set @a elevator_move_timer 0

scoreboard objectives add elevator_floor_diff dummy
scoreboard players set @a elevator_floor_diff 0