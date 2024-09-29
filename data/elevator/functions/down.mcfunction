# 엘리베이터 버튼 인터랙션 제거 (동선 꼬임 방지)
execute as @a[scores={elevator_move_timer=1}] run kill @e[type=minecraft:interaction,tag=elva_btn]

# 효과음
execute as @a[scores={elevator_move_timer=1}] at @s run playsound minecraft:elevator.noti_down voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=20}] at @s run playsound minecraft:elevator.going voice @s ~ ~ ~

#execute as @a[scores={elevator_move_timer=140}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=140}] at @s run playsound minecraft:elevator.ting voice @s ~ ~ ~

# 층 이동
execute as @a[scores={elevator_move_timer=160}] run scoreboard players set @a elevator_floor_diff 0
execute as @a[scores={elevator_move_timer=160}] run scoreboard players operation @a elevator_floor_diff = @p elevator_current_floor
execute as @a[scores={elevator_move_timer=160}] run scoreboard players operation @a elevator_floor_diff -= @p elevator_target_floor

execute as @a if score @s elevator_move_timer matches 160 if score @s elevator_floor_diff matches 1 at @s run tp @s ~ ~-6 ~ ~ ~
execute as @a if score @s elevator_move_timer matches 160 if score @s elevator_floor_diff matches 2 at @s run tp @s ~ ~-12 ~ ~ ~
execute as @a if score @s elevator_move_timer matches 160 if score @s elevator_floor_diff matches 3 at @s run tp @s ~ ~-18 ~ ~ ~

execute as @a[scores={elevator_move_timer=180}] run stopsound @a voice
execute as @a if score @s elevator_move_timer matches 180 if score @s elevator_target_floor matches 1 run playsound minecraft:elevator.noti_first voice @s ~ ~ ~
execute as @a if score @s elevator_move_timer matches 180 if score @s elevator_target_floor matches 2 run playsound minecraft:elevator.noti_second voice @s ~ ~ ~
execute as @a if score @s elevator_move_timer matches 180 if score @s elevator_target_floor matches 3 run playsound minecraft:elevator.noti_third voice @s ~ ~ ~
execute as @a if score @s elevator_move_timer matches 180 if score @s elevator_target_floor matches 4 run playsound minecraft:elevator.noti_fourth voice @s ~ ~ ~

# 문 열림
execute as @a[scores={elevator_move_timer=220}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=220}] at @s run playsound minecraft:elevator.noti_open voice @s ~ ~ ~

execute as @a[scores={elevator_move_timer=260}] run fill 22 63 355 23 64 355 minecraft:air
execute as @a[scores={elevator_move_timer=260}] run fill 22 69 355 23 70 355 minecraft:air
execute as @a[scores={elevator_move_timer=260}] run fill 22 75 355 23 76 355 minecraft:air
execute as @a[scores={elevator_move_timer=260}] run fill 22 81 355 23 82 355 minecraft:air

execute as @a[scores={elevator_move_timer=260}] run setblock 22 64 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=260}] run setblock 22 63 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=260}] run setblock 23 64 355 minecraft:iron_door[open=true,half=upper,hinge=right]
execute as @a[scores={elevator_move_timer=260}] run setblock 23 63 355 minecraft:iron_door[open=true,half=lower,hinge=right]

execute as @a[scores={elevator_move_timer=260}] run setblock 22 70 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=260}] run setblock 22 69 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=260}] run setblock 23 70 355 minecraft:iron_door[open=true,half=upper,hinge=right]
execute as @a[scores={elevator_move_timer=260}] run setblock 23 69 355 minecraft:iron_door[open=true,half=lower,hinge=right]

execute as @a[scores={elevator_move_timer=260}] run setblock 22 76 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=260}] run setblock 22 75 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=260}] run setblock 23 76 355 minecraft:iron_door[open=true,half=upper,hinge=right]
execute as @a[scores={elevator_move_timer=260}] run setblock 23 75 355 minecraft:iron_door[open=true,half=lower,hinge=right]

execute as @a[scores={elevator_move_timer=260}] run setblock 22 82 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=260}] run setblock 22 81 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=260}] run setblock 23 82 355 minecraft:iron_door[open=true,half=upper,hinge=right]
execute as @a[scores={elevator_move_timer=260}] run setblock 23 81 355 minecraft:iron_door[open=true,half=lower,hinge=right]

# 문 닫힘
execute as @a[scores={elevator_move_timer=320}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=320}] at @s run playsound minecraft:elevator.noti_close voice @s ~ ~ ~

execute as @a[scores={elevator_move_timer=360}] run fill 22 63 355 23 64 355 minecraft:air
execute as @a[scores={elevator_move_timer=360}] run fill 22 69 355 23 70 355 minecraft:air
execute as @a[scores={elevator_move_timer=360}] run fill 22 75 355 23 76 355 minecraft:air
execute as @a[scores={elevator_move_timer=360}] run fill 22 81 355 23 82 355 minecraft:air

execute as @a[scores={elevator_move_timer=360}] run setblock 22 64 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=360}] run setblock 22 63 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_move_timer=360}] run setblock 23 64 355 minecraft:iron_door[open=false,half=upper,hinge=right]
execute as @a[scores={elevator_move_timer=360}] run setblock 23 63 355 minecraft:iron_door[open=false,half=lower,hinge=right]

execute as @a[scores={elevator_move_timer=360}] run setblock 22 70 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=360}] run setblock 22 69 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_move_timer=360}] run setblock 23 70 355 minecraft:iron_door[open=false,half=upper,hinge=right]
execute as @a[scores={elevator_move_timer=360}] run setblock 23 69 355 minecraft:iron_door[open=false,half=lower,hinge=right]

execute as @a[scores={elevator_move_timer=360}] run setblock 22 76 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=360}] run setblock 22 75 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_move_timer=360}] run setblock 23 76 355 minecraft:iron_door[open=false,half=upper,hinge=right]
execute as @a[scores={elevator_move_timer=360}] run setblock 23 75 355 minecraft:iron_door[open=false,half=lower,hinge=right]

execute as @a[scores={elevator_move_timer=360}] run setblock 22 82 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=360}] run setblock 22 81 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_move_timer=360}] run setblock 23 82 355 minecraft:iron_door[open=false,half=upper,hinge=right]
execute as @a[scores={elevator_move_timer=360}] run setblock 23 81 355 minecraft:iron_door[open=false,half=lower,hinge=right]

# 세팅 초기화
execute as @a[scores={elevator_move_timer=380}] run setblock 21 64 365 minecraft:air
execute as @a[scores={elevator_move_timer=380}] run function elevator:set_interactions
execute as @a[scores={elevator_move_timer=381}] run scoreboard players set @a elevator_move_timer 0