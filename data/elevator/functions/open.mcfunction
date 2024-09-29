# 엘리베이터 버튼 인터랙션 제거 (동선 꼬임 방지)
execute as @a[scores={elevator_open_timer=1}] run kill @e[type=minecraft:interaction,tag=elva_btn]

# 효과음
execute as @a[scores={elevator_open_timer=1}] at @s run playsound minecraft:elevator.coming voice @s ~ ~ ~

execute as @a[scores={elevator_open_timer=60}] run stopsound @a voice
execute as @a[scores={elevator_open_timer=60}] at @s run playsound minecraft:elevator.ting voice @s ~ ~ ~

# 문 열림
execute as @a[scores={elevator_open_timer=100}] run stopsound @a voice
execute as @a[scores={elevator_open_timer=100}] at @s run playsound minecraft:elevator.noti_open voice @s ~ ~ ~

execute as @a[scores={elevator_open_timer=140}] run fill 22 63 355 23 64 355 minecraft:air
execute as @a[scores={elevator_open_timer=140}] run fill 22 69 355 23 70 355 minecraft:air
execute as @a[scores={elevator_open_timer=140}] run fill 22 75 355 23 76 355 minecraft:air
execute as @a[scores={elevator_open_timer=140}] run fill 22 81 355 23 82 355 minecraft:air

execute as @a[scores={elevator_open_timer=140}] run setblock 22 64 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_open_timer=140}] run setblock 22 63 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_open_timer=140}] run setblock 23 64 355 minecraft:iron_door[open=true,half=upper,hinge=right]
execute as @a[scores={elevator_open_timer=140}] run setblock 23 63 355 minecraft:iron_door[open=true,half=lower,hinge=right]

execute as @a[scores={elevator_open_timer=140}] run setblock 22 70 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_open_timer=140}] run setblock 22 69 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_open_timer=140}] run setblock 23 70 355 minecraft:iron_door[open=true,half=upper,hinge=right]
execute as @a[scores={elevator_open_timer=140}] run setblock 23 69 355 minecraft:iron_door[open=true,half=lower,hinge=right]

execute as @a[scores={elevator_open_timer=140}] run setblock 22 76 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_open_timer=140}] run setblock 22 75 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_open_timer=140}] run setblock 23 76 355 minecraft:iron_door[open=true,half=upper,hinge=right]
execute as @a[scores={elevator_open_timer=140}] run setblock 23 75 355 minecraft:iron_door[open=true,half=lower,hinge=right]

execute as @a[scores={elevator_open_timer=140}] run setblock 22 82 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_open_timer=140}] run setblock 22 81 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_open_timer=140}] run setblock 23 82 355 minecraft:iron_door[open=true,half=upper,hinge=right]
execute as @a[scores={elevator_open_timer=140}] run setblock 23 81 355 minecraft:iron_door[open=true,half=lower,hinge=right]

# 문 닫힘
execute as @a[scores={elevator_open_timer=200}] run stopsound @a voice
execute as @a[scores={elevator_open_timer=200}] at @s run playsound minecraft:elevator.noti_close voice @s ~ ~ ~

execute as @a[scores={elevator_open_timer=240}] run fill 22 63 355 23 64 355 minecraft:air
execute as @a[scores={elevator_open_timer=240}] run fill 22 69 355 23 70 355 minecraft:air
execute as @a[scores={elevator_open_timer=240}] run fill 22 75 355 23 76 355 minecraft:air
execute as @a[scores={elevator_open_timer=240}] run fill 22 81 355 23 82 355 minecraft:air

execute as @a[scores={elevator_open_timer=240}] run setblock 22 64 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_open_timer=240}] run setblock 22 63 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_open_timer=240}] run setblock 23 64 355 minecraft:iron_door[open=false,half=upper,hinge=right]
execute as @a[scores={elevator_open_timer=240}] run setblock 23 63 355 minecraft:iron_door[open=false,half=lower,hinge=right]

execute as @a[scores={elevator_open_timer=240}] run setblock 22 70 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_open_timer=240}] run setblock 22 69 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_open_timer=240}] run setblock 23 70 355 minecraft:iron_door[open=false,half=upper,hinge=right]
execute as @a[scores={elevator_open_timer=240}] run setblock 23 69 355 minecraft:iron_door[open=false,half=lower,hinge=right]

execute as @a[scores={elevator_open_timer=240}] run setblock 22 76 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_open_timer=240}] run setblock 22 75 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_open_timer=240}] run setblock 23 76 355 minecraft:iron_door[open=false,half=upper,hinge=right]
execute as @a[scores={elevator_open_timer=240}] run setblock 23 75 355 minecraft:iron_door[open=false,half=lower,hinge=right]

execute as @a[scores={elevator_open_timer=240}] run setblock 22 82 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_open_timer=240}] run setblock 22 81 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_open_timer=240}] run setblock 23 82 355 minecraft:iron_door[open=false,half=upper,hinge=right]
execute as @a[scores={elevator_open_timer=240}] run setblock 23 81 355 minecraft:iron_door[open=false,half=lower,hinge=right]

# 세팅 초기화
execute as @a[scores={elevator_open_timer=260}] run setblock 21 63 365 minecraft:air
execute as @a[scores={elevator_open_timer=260}] run function elevator:set_interactions
execute as @a[scores={elevator_open_timer=261}] run scoreboard players set @a elevator_open_timer 0