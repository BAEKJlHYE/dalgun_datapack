execute unless score @s aj.velvet.rig_loaded = @s aj.velvet.rig_loaded run function animated_java:velvet/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:velvet/zzzzzzzz/animations/tick
function #animated_java:velvet/on_tick/as_root