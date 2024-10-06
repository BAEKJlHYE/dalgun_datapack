scoreboard objectives add elevator_move_timer dummy
scoreboard players set @a elevator_move_timer 0

scoreboard objectives add elevator_up_down dummy
scoreboard players set @a elevator_up_down -1

scoreboard objectives add elevator_on_off dummy
scoreboard players set @a elevator_on_off -1


kill @e[tag=elva_up]
kill @e[tag=elva_down]

summon minecraft:text_display 21 64.3 358.2 {Tags:["elva_up"],text:'[{"text":"▲"}]',background:0}
summon minecraft:text_display 21 82.3 358.2 {Tags:["elva_down"],text:'[{"text":"▼"}]',background:0}

#summon minecraft:text_display -554 2.3 -428.8 {Tags:["elva_up"],text:'[{"text":"▲"}]',background:0}
#summon minecraft:text_display -554 1.3 -428.8 {Tags:["elva_down"],text:'[{"text":"▼"}]',background:0}