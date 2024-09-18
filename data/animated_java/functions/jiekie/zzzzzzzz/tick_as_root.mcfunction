execute unless score @s aj.jiekie.rig_loaded = @s aj.jiekie.rig_loaded run function animated_java:jiekie/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:jiekie/zzzzzzzz/animations/tick
function #animated_java:jiekie/on_tick/as_root