execute unless score @s aj.enchovy.rig_loaded = @s aj.enchovy.rig_loaded run function animated_java:enchovy/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:enchovy/zzzzzzzz/animations/tick
function #animated_java:enchovy/on_tick/as_root