scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.elevator_button_2.export_version dummy
scoreboard objectives add aj.elevator_button_2.rig_loaded dummy
scoreboard players set $aj.elevator_button_2.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.elevator_button_2.export_version aj.i 1141007080
scoreboard players reset * aj.elevator_button_2.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.elevator_button_2.root] run function animated_java:elevator_button_2/zzzzzzzz/on_load