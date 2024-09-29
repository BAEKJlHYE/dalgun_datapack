# 항상 활성화
function elevator:click_interactions
function elevator:open

# 소스 내 활성화 코드 존재
scoreboard players add @a elevator_open_timer 1
scoreboard players add @a elevator_move_timer 1
function elevator:up
function elevator:down
function elevator:equal