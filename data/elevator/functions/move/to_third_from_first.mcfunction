# 인터랙션 클릭 초기화
data remove entity @e[type=minecraft:interaction,tag=elva_btn_1_3,limit=1] interaction

scoreboard players set @a elevator_target_floor 3
scoreboard players set @a elevator_current_floor 1

function elevator:move/reset_activated