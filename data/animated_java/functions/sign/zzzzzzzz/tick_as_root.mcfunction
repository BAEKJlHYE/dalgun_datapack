execute unless score @s aj.sign.rig_loaded = @s aj.sign.rig_loaded run function animated_java:sign/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:sign/zzzzzzzz/animations/tick
function #animated_java:sign/on_tick/as_root