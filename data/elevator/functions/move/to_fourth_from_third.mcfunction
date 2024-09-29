# 인터랙션 클릭 초기화
data remove entity @e[type=minecraft:interaction,tag=elva_btn_3_4,limit=1] interaction

scoreboard players set @a elevator_target_floor 4
scoreboard players set @a elevator_current_floor 3

function elevator:move/reset_activated