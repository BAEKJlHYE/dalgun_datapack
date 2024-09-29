execute unless score @s aj.elevator_button.rig_loaded = @s aj.elevator_button.rig_loaded run function animated_java:elevator_button/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:elevator_button/zzzzzzzz/animations/tick
function #animated_java:elevator_button/on_tick/as_root