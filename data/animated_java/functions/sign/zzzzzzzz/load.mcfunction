scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.sign.export_version dummy
scoreboard objectives add aj.sign.rig_loaded dummy
scoreboard players set $aj.sign.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.sign.export_version aj.i -220099048
scoreboard players reset * aj.sign.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.sign.root] run function animated_java:sign/zzzzzzzz/on_load