scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.jiekie.export_version dummy
scoreboard objectives add aj.jiekie.rig_loaded dummy
scoreboard players set $aj.jiekie.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.jiekie.export_version aj.i -847904372
scoreboard players reset * aj.jiekie.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.jiekie.root] run function animated_java:jiekie/zzzzzzzz/on_load