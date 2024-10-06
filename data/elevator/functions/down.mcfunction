# 층수 변경
execute as @a[scores={elevator_move_timer=1}] if score @s elevator_up_down matches 0 run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=1}] if score @s elevator_up_down matches 0 run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"5F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=230}] if score @s elevator_up_down matches 0 run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=230}] if score @s elevator_up_down matches 0 run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"4F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=260}] if score @s elevator_up_down matches 0 run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=260}] if score @s elevator_up_down matches 0 run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"3F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=290}] if score @s elevator_up_down matches 0 run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=290}] if score @s elevator_up_down matches 0 run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"2F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=320}] if score @s elevator_up_down matches 0 run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=320}] if score @s elevator_up_down matches 0 run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"1F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=320}] if score @s elevator_up_down matches 0 run summon minecraft:text_display 22 65.5 354.9 {Tags:["elva_floor"],text:'[{"text":"1F","color":"#c7a844"}]',Rotation:[-180F,0F]}

# 효과음
execute as @a[scores={elevator_move_timer=1}] if score @s elevator_up_down matches 0 at @s run playsound minecraft:elevator.ting voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=40}] if score @s elevator_up_down matches 0 run stopsound @a voice
execute as @a[scores={elevator_move_timer=40}] if score @s elevator_up_down matches 0 at @s run playsound minecraft:elevator.noti_open voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=140}] if score @s elevator_up_down matches 0 run stopsound @a voice
execute as @a[scores={elevator_move_timer=140}] if score @s elevator_up_down matches 0 at @s run playsound minecraft:elevator.noti_close voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=200}] if score @s elevator_up_down matches 0 run stopsound @a voice
execute as @a[scores={elevator_move_timer=200}] if score @s elevator_up_down matches 0 at @s run playsound minecraft:elevator.going voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=340}] if score @s elevator_up_down matches 0 run stopsound @a voice
execute as @a[scores={elevator_move_timer=340}] if score @s elevator_up_down matches 0 at @s run playsound minecraft:elevator.noti_open voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=480}] if score @s elevator_up_down matches 0 run stopsound @a voice
execute as @a[scores={elevator_move_timer=480}] if score @s elevator_up_down matches 0 at @s run playsound minecraft:elevator.noti_close voice @s ~ ~ ~

# 문 열기/닫기
execute as @a[scores={elevator_move_timer=80}] if score @s elevator_up_down matches 0 run fill 22 81 355 22 82 355 minecraft:air
execute as @a[scores={elevator_move_timer=80}] if score @s elevator_up_down matches 0 run setblock 22 82 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=80}] if score @s elevator_up_down matches 0 run setblock 22 81 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=180}] if score @s elevator_up_down matches 0 run fill 22 81 355 22 82 355 minecraft:air
execute as @a[scores={elevator_move_timer=180}] if score @s elevator_up_down matches 0 run setblock 22 82 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=180}] if score @s elevator_up_down matches 0 run setblock 22 81 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_move_timer=380}] if score @s elevator_up_down matches 0 run fill 22 63 355 22 64 355 minecraft:air
execute as @a[scores={elevator_move_timer=380}] if score @s elevator_up_down matches 0 run setblock 22 64 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=380}] if score @s elevator_up_down matches 0 run setblock 22 63 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=520}] if score @s elevator_up_down matches 0 run fill 22 63 355 22 64 355 minecraft:air
execute as @a[scores={elevator_move_timer=520}] if score @s elevator_up_down matches 0 run setblock 22 64 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=520}] if score @s elevator_up_down matches 0 run setblock 22 63 355 minecraft:iron_door[open=false,half=lower]

# 페이드인/아웃
execute as @a[scores={elevator_move_timer=110}] if score @s elevator_up_down matches 0 run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:2,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={elevator_move_timer=150}] if score @s elevator_up_down matches 0 run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:1,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={elevator_move_timer=380}] if score @s elevator_up_down matches 0 run item replace entity @a weapon.offhand with minecraft:air

# 투명 효과 (tp 후 캐릭터 겹침 방지)
execute as @a[scores={elevator_move_timer=111}] if score @s elevator_up_down matches 0 run effect give @a minecraft:invisibility infinite 1 true
execute as @a[scores={elevator_move_timer=380}] if score @s elevator_up_down matches 0 run effect clear @a minecraft:invisibility

# 철문 앞 블럭 설치
execute as @a[scores={elevator_move_timer=210}] if score @s elevator_up_down matches 0 run setblock 22 82 356 minecraft:black_concrete
execute as @a[scores={elevator_move_timer=380}] if score @s elevator_up_down matches 0 run setblock 22 82 356 minecraft:air

# 플레이어 움직임 통제
execute as @a[scores={elevator_move_timer=110}] if score @s elevator_up_down matches 0 at @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={elevator_move_timer=111}] if score @s elevator_up_down matches 0 at @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={elevator_move_timer=112}] if score @s elevator_up_down matches 0 at @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={elevator_move_timer=113}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=114}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=115}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=116}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=117}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=118}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=119}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=120}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=121}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=122}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=123}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=124}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=125}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=126}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=127}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=128}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=129}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=130}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=131}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=132}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=133}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=134}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=135}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=136}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=137}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=138}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=139}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=140}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=141}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=142}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=143}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=144}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=145}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=146}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=147}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=148}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=149}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=150}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=151}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=152}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=153}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=154}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=155}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=156}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=157}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=158}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=159}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=160}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=161}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=162}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=163}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=164}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=165}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=166}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=167}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=168}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=169}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=170}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=171}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=172}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=173}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=174}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=175}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=176}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=177}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=178}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=179}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=180}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=181}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=182}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=183}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=184}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=185}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=186}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=187}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=188}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=189}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=190}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=191}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=192}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=193}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=194}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=195}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=196}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=197}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=198}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=199}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=200}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=201}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=202}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=203}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=204}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=205}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=206}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=207}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=208}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=209}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=210}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -34.6818
execute as @a[scores={elevator_move_timer=211}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -34.3636
execute as @a[scores={elevator_move_timer=212}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -34.0454
execute as @a[scores={elevator_move_timer=213}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -33.7272
execute as @a[scores={elevator_move_timer=214}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -33.409
execute as @a[scores={elevator_move_timer=215}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -33.0908
execute as @a[scores={elevator_move_timer=216}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -32.7726
execute as @a[scores={elevator_move_timer=217}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -32.4544
execute as @a[scores={elevator_move_timer=218}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -32.1362
execute as @a[scores={elevator_move_timer=219}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -31.818
execute as @a[scores={elevator_move_timer=220}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -31.4998
execute as @a[scores={elevator_move_timer=221}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -31.1816
execute as @a[scores={elevator_move_timer=222}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -30.8634
execute as @a[scores={elevator_move_timer=223}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -30.5452
execute as @a[scores={elevator_move_timer=224}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -30.227
execute as @a[scores={elevator_move_timer=225}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -29.9088
execute as @a[scores={elevator_move_timer=226}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -29.5906
execute as @a[scores={elevator_move_timer=227}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -29.2724
execute as @a[scores={elevator_move_timer=228}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -28.9542
execute as @a[scores={elevator_move_timer=229}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -28.636
execute as @a[scores={elevator_move_timer=230}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -28.3178
execute as @a[scores={elevator_move_timer=231}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -27.9996
execute as @a[scores={elevator_move_timer=232}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -27.6814
execute as @a[scores={elevator_move_timer=233}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -27.3632
execute as @a[scores={elevator_move_timer=234}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -27.045
execute as @a[scores={elevator_move_timer=235}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -26.7268
execute as @a[scores={elevator_move_timer=236}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -26.4086
execute as @a[scores={elevator_move_timer=237}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -26.0904
execute as @a[scores={elevator_move_timer=238}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -25.7722
execute as @a[scores={elevator_move_timer=239}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -25.454
execute as @a[scores={elevator_move_timer=240}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -25.1358
execute as @a[scores={elevator_move_timer=241}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -24.8176
execute as @a[scores={elevator_move_timer=242}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -24.4994
execute as @a[scores={elevator_move_timer=243}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -24.1812
execute as @a[scores={elevator_move_timer=244}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -23.863
execute as @a[scores={elevator_move_timer=245}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -23.5448
execute as @a[scores={elevator_move_timer=246}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -23.2266
execute as @a[scores={elevator_move_timer=247}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -22.9084
execute as @a[scores={elevator_move_timer=248}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -22.5902
execute as @a[scores={elevator_move_timer=249}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -22.272
execute as @a[scores={elevator_move_timer=250}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -21.9538
execute as @a[scores={elevator_move_timer=251}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -21.6356
execute as @a[scores={elevator_move_timer=252}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -21.3174
execute as @a[scores={elevator_move_timer=253}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -20.9992
execute as @a[scores={elevator_move_timer=254}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -20.681
execute as @a[scores={elevator_move_timer=255}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -20.3628
execute as @a[scores={elevator_move_timer=256}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -20.0446
execute as @a[scores={elevator_move_timer=257}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -19.7264
execute as @a[scores={elevator_move_timer=258}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -19.4082
execute as @a[scores={elevator_move_timer=259}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -19.09
execute as @a[scores={elevator_move_timer=260}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -18.7718
execute as @a[scores={elevator_move_timer=261}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -18.4536
execute as @a[scores={elevator_move_timer=262}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -18.1354
execute as @a[scores={elevator_move_timer=263}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -17.8172
execute as @a[scores={elevator_move_timer=264}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -17.499
execute as @a[scores={elevator_move_timer=265}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -17.1808
execute as @a[scores={elevator_move_timer=266}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -16.8626
execute as @a[scores={elevator_move_timer=267}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -16.5444
execute as @a[scores={elevator_move_timer=268}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -16.2262
execute as @a[scores={elevator_move_timer=269}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -15.908
execute as @a[scores={elevator_move_timer=270}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -15.5898
execute as @a[scores={elevator_move_timer=271}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -15.2716
execute as @a[scores={elevator_move_timer=272}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -14.9534
execute as @a[scores={elevator_move_timer=273}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -14.6352
execute as @a[scores={elevator_move_timer=274}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -14.317
execute as @a[scores={elevator_move_timer=275}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -13.9988
execute as @a[scores={elevator_move_timer=276}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -13.6806
execute as @a[scores={elevator_move_timer=277}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -13.3624
execute as @a[scores={elevator_move_timer=278}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -13.0442
execute as @a[scores={elevator_move_timer=279}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -12.726
execute as @a[scores={elevator_move_timer=280}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -12.4078
execute as @a[scores={elevator_move_timer=281}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -12.0896
execute as @a[scores={elevator_move_timer=282}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -11.7714
execute as @a[scores={elevator_move_timer=283}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -11.4532
execute as @a[scores={elevator_move_timer=284}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -11.135
execute as @a[scores={elevator_move_timer=285}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -10.8168
execute as @a[scores={elevator_move_timer=286}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -10.4986
execute as @a[scores={elevator_move_timer=287}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -10.1804
execute as @a[scores={elevator_move_timer=288}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -9.86219999999999
execute as @a[scores={elevator_move_timer=289}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -9.544
execute as @a[scores={elevator_move_timer=290}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -9.2258
execute as @a[scores={elevator_move_timer=291}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -8.9076
execute as @a[scores={elevator_move_timer=292}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -8.5894
execute as @a[scores={elevator_move_timer=293}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -8.2712
execute as @a[scores={elevator_move_timer=294}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -7.953
execute as @a[scores={elevator_move_timer=295}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -7.6348
execute as @a[scores={elevator_move_timer=296}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -7.3166
execute as @a[scores={elevator_move_timer=297}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -6.9984
execute as @a[scores={elevator_move_timer=298}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -6.6802
execute as @a[scores={elevator_move_timer=299}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -6.362
execute as @a[scores={elevator_move_timer=300}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -6.0438
execute as @a[scores={elevator_move_timer=301}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -5.7256
execute as @a[scores={elevator_move_timer=302}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -5.4074
execute as @a[scores={elevator_move_timer=303}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -5.0892
execute as @a[scores={elevator_move_timer=304}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -4.771
execute as @a[scores={elevator_move_timer=305}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -4.4528
execute as @a[scores={elevator_move_timer=306}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -4.1346
execute as @a[scores={elevator_move_timer=307}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -3.8164
execute as @a[scores={elevator_move_timer=308}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -3.4982
execute as @a[scores={elevator_move_timer=309}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -3.18
execute as @a[scores={elevator_move_timer=310}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -2.8618
execute as @a[scores={elevator_move_timer=311}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -2.5436
execute as @a[scores={elevator_move_timer=312}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -2.2254
execute as @a[scores={elevator_move_timer=313}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -1.9072
execute as @a[scores={elevator_move_timer=314}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -1.589
execute as @a[scores={elevator_move_timer=315}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -1.2708
execute as @a[scores={elevator_move_timer=316}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -0.952599999999998
execute as @a[scores={elevator_move_timer=317}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -0.634399999999998
execute as @a[scores={elevator_move_timer=318}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -0.316199999999998
execute as @a[scores={elevator_move_timer=319}] if score @s elevator_up_down matches 0 run tp @a 22 81 353 0 -0.1
execute as @a[scores={elevator_move_timer=320}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=321}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=322}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=323}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=324}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=325}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=326}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=327}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=328}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=329}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=330}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=331}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=332}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=333}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=334}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=335}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=336}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=337}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=338}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=339}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=340}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=341}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=342}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=343}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=344}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=345}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=346}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=347}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=348}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=349}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=350}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=351}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=352}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=353}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=354}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=355}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=356}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=357}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=358}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=359}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=360}] if score @s elevator_up_down matches 0 run tp @a 22 63 353 0 0

# 조명 반짝거림
execute as @a[scores={elevator_move_timer=211}] if score @s elevator_up_down matches 0 run setblock 22 85 353 minecraft:air
execute as @a[scores={elevator_move_timer=241}] if score @s elevator_up_down matches 0 run setblock 22 85 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=251}] if score @s elevator_up_down matches 0 run setblock 22 85 353 minecraft:air
execute as @a[scores={elevator_move_timer=281}] if score @s elevator_up_down matches 0 run setblock 22 85 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=291}] if score @s elevator_up_down matches 0 run setblock 22 85 353 minecraft:air
execute as @a[scores={elevator_move_timer=321}] if score @s elevator_up_down matches 0 run setblock 22 85 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=311}] if score @s elevator_up_down matches 0 run setblock 22 67 353 minecraft:air
execute as @a[scores={elevator_move_timer=331}] if score @s elevator_up_down matches 0 run setblock 22 67 353 minecraft:sea_lantern

# 세팅 초기화
execute as @a[scores={elevator_move_timer=540}] if score @s elevator_up_down matches 0 run scoreboard players set @a elevator_on_off -1
execute as @a[scores={elevator_move_timer=540}] if score @s elevator_up_down matches 0 run scoreboard players set @a elevator_up_down -1