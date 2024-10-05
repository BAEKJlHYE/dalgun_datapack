# 초반 세팅
execute as @a[scores={elevator_move_timer=1}] at @s run playsound minecraft:elevator.ting voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=1}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=1}] run summon minecraft:text_display 22 65.5 354.9 {Tags:["elva_floor"],text:'[{"text":"1F","color":"#c7a844"}]',Rotation:[-180F,0F]}

# 문 열기
execute as @a[scores={elevator_move_timer=40}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=40}] at @s run playsound minecraft:elevator.noti_open voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=80}] run fill 22 63 355 22 64 355 minecraft:air
execute as @a[scores={elevator_move_timer=80}] run setblock 22 64 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=80}] run setblock 22 63 355 minecraft:iron_door[open=true,half=lower]

# 문 닫기
execute as @a[scores={elevator_move_timer=110}] run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:2,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={elevator_move_timer=140}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=140}] at @s run playsound minecraft:elevator.noti_close voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=140}] run tp @a 22 63 353 0 35
execute as @a[scores={elevator_move_timer=150}] run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:1,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={elevator_move_timer=180}] run fill 22 63 355 22 64 355 minecraft:air
execute as @a[scores={elevator_move_timer=180}] run setblock 22 64 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=180}] run setblock 22 63 355 minecraft:iron_door[open=false,half=lower]

# 올라가는 효과음
execute as @a[scores={elevator_move_timer=200}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=200}] at @s run playsound minecraft:elevator.going voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=210}] run setblock 22 64 356 minecraft:black_concrete

# 층수 변경
execute as @a[scores={elevator_move_timer=230}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=230}] run summon minecraft:text_display 22 65.5 354.9 {Tags:["elva_floor"],text:'[{"text":"2F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=260}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=260}] run summon minecraft:text_display 22 65.5 354.9 {Tags:["elva_floor"],text:'[{"text":"3F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=290}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=290}] run summon minecraft:text_display 22 65.5 354.9 {Tags:["elva_floor"],text:'[{"text":"4F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=320}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=320}] run summon minecraft:text_display 22 65.5 354.9 {Tags:["elva_floor"],text:'[{"text":"5F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=320}] run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"5F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=320}] run tp @a 22 81 353 0 -35

# 문 열기
execute as @a[scores={elevator_move_timer=340}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=340}] at @s run playsound minecraft:elevator.noti_open voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=380}] run fill 22 81 355 22 82 355 minecraft:air
execute as @a[scores={elevator_move_timer=380}] run setblock 22 82 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=380}] run setblock 22 81 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=380}] run setblock 22 64 356 minecraft:air
execute as @a[scores={elevator_move_timer=380}] run item replace entity @a weapon.offhand with minecraft:air

# 문 닫기
execute as @a[scores={elevator_move_timer=480}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=480}] at @s run playsound minecraft:elevator.noti_close voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=520}] run fill 22 81 355 22 82 355 minecraft:air
execute as @a[scores={elevator_move_timer=520}] run setblock 22 82 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=520}] run setblock 22 81 355 minecraft:iron_door[open=false,half=lower]

# 세팅 초기화
execute as @a[scores={elevator_move_timer=540}] run setblock 21 63 365 minecraft:air
execute as @a[scores={elevator_move_timer=541}] run scoreboard players set @a elevator_move_timer 0

# 플레이어 움직임 통제
execute as @a[scores={elevator_move_timer=141}] run tp @a 22 63 353 0 34.611
execute as @a[scores={elevator_move_timer=142}] run tp @a 22 63 353 0 34.222
execute as @a[scores={elevator_move_timer=143}] run tp @a 22 63 353 0 33.833
execute as @a[scores={elevator_move_timer=144}] run tp @a 22 63 353 0 33.444
execute as @a[scores={elevator_move_timer=145}] run tp @a 22 63 353 0 33.055
execute as @a[scores={elevator_move_timer=146}] run tp @a 22 63 353 0 32.666
execute as @a[scores={elevator_move_timer=147}] run tp @a 22 63 353 0 32.277
execute as @a[scores={elevator_move_timer=148}] run tp @a 22 63 353 0 31.888
execute as @a[scores={elevator_move_timer=149}] run tp @a 22 63 353 0 31.499
execute as @a[scores={elevator_move_timer=150}] run tp @a 22 63 353 0 31.11
execute as @a[scores={elevator_move_timer=151}] run tp @a 22 63 353 0 30.721
execute as @a[scores={elevator_move_timer=152}] run tp @a 22 63 353 0 30.332
execute as @a[scores={elevator_move_timer=153}] run tp @a 22 63 353 0 29.943
execute as @a[scores={elevator_move_timer=154}] run tp @a 22 63 353 0 29.554
execute as @a[scores={elevator_move_timer=155}] run tp @a 22 63 353 0 29.165
execute as @a[scores={elevator_move_timer=156}] run tp @a 22 63 353 0 28.776
execute as @a[scores={elevator_move_timer=157}] run tp @a 22 63 353 0 28.387
execute as @a[scores={elevator_move_timer=158}] run tp @a 22 63 353 0 27.998
execute as @a[scores={elevator_move_timer=159}] run tp @a 22 63 353 0 27.609
execute as @a[scores={elevator_move_timer=160}] run tp @a 22 63 353 0 27.22
execute as @a[scores={elevator_move_timer=161}] run tp @a 22 63 353 0 26.831
execute as @a[scores={elevator_move_timer=162}] run tp @a 22 63 353 0 26.442
execute as @a[scores={elevator_move_timer=163}] run tp @a 22 63 353 0 26.053
execute as @a[scores={elevator_move_timer=164}] run tp @a 22 63 353 0 25.664
execute as @a[scores={elevator_move_timer=165}] run tp @a 22 63 353 0 25.275
execute as @a[scores={elevator_move_timer=166}] run tp @a 22 63 353 0 24.886
execute as @a[scores={elevator_move_timer=167}] run tp @a 22 63 353 0 24.497
execute as @a[scores={elevator_move_timer=168}] run tp @a 22 63 353 0 24.108
execute as @a[scores={elevator_move_timer=169}] run tp @a 22 63 353 0 23.719
execute as @a[scores={elevator_move_timer=170}] run tp @a 22 63 353 0 23.33
execute as @a[scores={elevator_move_timer=171}] run tp @a 22 63 353 0 22.941
execute as @a[scores={elevator_move_timer=172}] run tp @a 22 63 353 0 22.552
execute as @a[scores={elevator_move_timer=173}] run tp @a 22 63 353 0 22.163
execute as @a[scores={elevator_move_timer=174}] run tp @a 22 63 353 0 21.774
execute as @a[scores={elevator_move_timer=175}] run tp @a 22 63 353 0 21.385
execute as @a[scores={elevator_move_timer=176}] run tp @a 22 63 353 0 20.996
execute as @a[scores={elevator_move_timer=177}] run tp @a 22 63 353 0 20.607
execute as @a[scores={elevator_move_timer=178}] run tp @a 22 63 353 0 20.218
execute as @a[scores={elevator_move_timer=179}] run tp @a 22 63 353 0 19.829
execute as @a[scores={elevator_move_timer=180}] run tp @a 22 63 353 0 19.44
execute as @a[scores={elevator_move_timer=181}] run tp @a 22 63 353 0 19.051
execute as @a[scores={elevator_move_timer=182}] run tp @a 22 63 353 0 18.662
execute as @a[scores={elevator_move_timer=183}] run tp @a 22 63 353 0 18.273
execute as @a[scores={elevator_move_timer=184}] run tp @a 22 63 353 0 17.884
execute as @a[scores={elevator_move_timer=185}] run tp @a 22 63 353 0 17.495
execute as @a[scores={elevator_move_timer=186}] run tp @a 22 63 353 0 17.106
execute as @a[scores={elevator_move_timer=187}] run tp @a 22 63 353 0 16.717
execute as @a[scores={elevator_move_timer=188}] run tp @a 22 63 353 0 16.328
execute as @a[scores={elevator_move_timer=189}] run tp @a 22 63 353 0 15.939
execute as @a[scores={elevator_move_timer=190}] run tp @a 22 63 353 0 15.55
execute as @a[scores={elevator_move_timer=191}] run tp @a 22 63 353 0 15.161
execute as @a[scores={elevator_move_timer=192}] run tp @a 22 63 353 0 14.772
execute as @a[scores={elevator_move_timer=193}] run tp @a 22 63 353 0 14.383
execute as @a[scores={elevator_move_timer=194}] run tp @a 22 63 353 0 13.994
execute as @a[scores={elevator_move_timer=195}] run tp @a 22 63 353 0 13.605
execute as @a[scores={elevator_move_timer=196}] run tp @a 22 63 353 0 13.216
execute as @a[scores={elevator_move_timer=197}] run tp @a 22 63 353 0 12.827
execute as @a[scores={elevator_move_timer=198}] run tp @a 22 63 353 0 12.438
execute as @a[scores={elevator_move_timer=199}] run tp @a 22 63 353 0 12.049
execute as @a[scores={elevator_move_timer=200}] run tp @a 22 63 353 0 11.66
execute as @a[scores={elevator_move_timer=201}] run tp @a 22 63 353 0 11.271
execute as @a[scores={elevator_move_timer=202}] run tp @a 22 63 353 0 10.882
execute as @a[scores={elevator_move_timer=203}] run tp @a 22 63 353 0 10.493
execute as @a[scores={elevator_move_timer=204}] run tp @a 22 63 353 0 10.104
execute as @a[scores={elevator_move_timer=205}] run tp @a 22 63 353 0 9.71500000000002
execute as @a[scores={elevator_move_timer=206}] run tp @a 22 63 353 0 9.32600000000002
execute as @a[scores={elevator_move_timer=207}] run tp @a 22 63 353 0 8.93700000000002
execute as @a[scores={elevator_move_timer=208}] run tp @a 22 63 353 0 8.54800000000002
execute as @a[scores={elevator_move_timer=209}] run tp @a 22 63 353 0 8.15900000000002
execute as @a[scores={elevator_move_timer=210}] run tp @a 22 63 353 0 7.77000000000002
execute as @a[scores={elevator_move_timer=211}] run tp @a 22 63 353 0 7.38100000000002
execute as @a[scores={elevator_move_timer=212}] run tp @a 22 63 353 0 6.99200000000002
execute as @a[scores={elevator_move_timer=213}] run tp @a 22 63 353 0 6.60300000000002
execute as @a[scores={elevator_move_timer=214}] run tp @a 22 63 353 0 6.21400000000002
execute as @a[scores={elevator_move_timer=215}] run tp @a 22 63 353 0 5.82500000000002
execute as @a[scores={elevator_move_timer=216}] run tp @a 22 63 353 0 5.43600000000002
execute as @a[scores={elevator_move_timer=217}] run tp @a 22 63 353 0 5.04700000000002
execute as @a[scores={elevator_move_timer=218}] run tp @a 22 63 353 0 4.65800000000002
execute as @a[scores={elevator_move_timer=219}] run tp @a 22 63 353 0 4.26900000000002
execute as @a[scores={elevator_move_timer=220}] run tp @a 22 63 353 0 3.88000000000002
execute as @a[scores={elevator_move_timer=221}] run tp @a 22 63 353 0 3.49100000000002
execute as @a[scores={elevator_move_timer=222}] run tp @a 22 63 353 0 3.10200000000002
execute as @a[scores={elevator_move_timer=223}] run tp @a 22 63 353 0 2.71300000000002
execute as @a[scores={elevator_move_timer=224}] run tp @a 22 63 353 0 2.32400000000002
execute as @a[scores={elevator_move_timer=225}] run tp @a 22 63 353 0 1.93500000000002
execute as @a[scores={elevator_move_timer=226}] run tp @a 22 63 353 0 1.54600000000002
execute as @a[scores={elevator_move_timer=227}] run tp @a 22 63 353 0 1.15700000000002
execute as @a[scores={elevator_move_timer=228}] run tp @a 22 63 353 0 0.768000000000017
execute as @a[scores={elevator_move_timer=229}] run tp @a 22 63 353 0 0.379000000000017
execute as @a[scores={elevator_move_timer=230}] run tp @a 22 63 353 0 -0.00999999999998336
execute as @a[scores={elevator_move_timer=231}] run tp @a 22 63 353 0 -0.398999999999983
execute as @a[scores={elevator_move_timer=232}] run tp @a 22 63 353 0 -0.787999999999983
execute as @a[scores={elevator_move_timer=233}] run tp @a 22 63 353 0 -1.17699999999998
execute as @a[scores={elevator_move_timer=234}] run tp @a 22 63 353 0 -1.56599999999998
execute as @a[scores={elevator_move_timer=235}] run tp @a 22 63 353 0 -1.95499999999998
execute as @a[scores={elevator_move_timer=236}] run tp @a 22 63 353 0 -2.34399999999998
execute as @a[scores={elevator_move_timer=237}] run tp @a 22 63 353 0 -2.73299999999998
execute as @a[scores={elevator_move_timer=238}] run tp @a 22 63 353 0 -3.12199999999998
execute as @a[scores={elevator_move_timer=239}] run tp @a 22 63 353 0 -3.51099999999998
execute as @a[scores={elevator_move_timer=240}] run tp @a 22 63 353 0 -3.89999999999998
execute as @a[scores={elevator_move_timer=241}] run tp @a 22 63 353 0 -4.28899999999998
execute as @a[scores={elevator_move_timer=242}] run tp @a 22 63 353 0 -4.67799999999999
execute as @a[scores={elevator_move_timer=243}] run tp @a 22 63 353 0 -5.06699999999999
execute as @a[scores={elevator_move_timer=244}] run tp @a 22 63 353 0 -5.45599999999999
execute as @a[scores={elevator_move_timer=245}] run tp @a 22 63 353 0 -5.84499999999999
execute as @a[scores={elevator_move_timer=246}] run tp @a 22 63 353 0 -6.23399999999999
execute as @a[scores={elevator_move_timer=247}] run tp @a 22 63 353 0 -6.62299999999999
execute as @a[scores={elevator_move_timer=248}] run tp @a 22 63 353 0 -7.01199999999999
execute as @a[scores={elevator_move_timer=249}] run tp @a 22 63 353 0 -7.40099999999999
execute as @a[scores={elevator_move_timer=250}] run tp @a 22 63 353 0 -7.78999999999999
execute as @a[scores={elevator_move_timer=251}] run tp @a 22 63 353 0 -8.17899999999999
execute as @a[scores={elevator_move_timer=252}] run tp @a 22 63 353 0 -8.56799999999999
execute as @a[scores={elevator_move_timer=253}] run tp @a 22 63 353 0 -8.95699999999999
execute as @a[scores={elevator_move_timer=254}] run tp @a 22 63 353 0 -9.34599999999998
execute as @a[scores={elevator_move_timer=255}] run tp @a 22 63 353 0 -9.73499999999998
execute as @a[scores={elevator_move_timer=256}] run tp @a 22 63 353 0 -10.124
execute as @a[scores={elevator_move_timer=257}] run tp @a 22 63 353 0 -10.513
execute as @a[scores={elevator_move_timer=258}] run tp @a 22 63 353 0 -10.902
execute as @a[scores={elevator_move_timer=259}] run tp @a 22 63 353 0 -11.291
execute as @a[scores={elevator_move_timer=260}] run tp @a 22 63 353 0 -11.68
execute as @a[scores={elevator_move_timer=261}] run tp @a 22 63 353 0 -12.069
execute as @a[scores={elevator_move_timer=262}] run tp @a 22 63 353 0 -12.458
execute as @a[scores={elevator_move_timer=263}] run tp @a 22 63 353 0 -12.847
execute as @a[scores={elevator_move_timer=264}] run tp @a 22 63 353 0 -13.236
execute as @a[scores={elevator_move_timer=265}] run tp @a 22 63 353 0 -13.625
execute as @a[scores={elevator_move_timer=266}] run tp @a 22 63 353 0 -14.014
execute as @a[scores={elevator_move_timer=267}] run tp @a 22 63 353 0 -14.403
execute as @a[scores={elevator_move_timer=268}] run tp @a 22 63 353 0 -14.792
execute as @a[scores={elevator_move_timer=269}] run tp @a 22 63 353 0 -15.181
execute as @a[scores={elevator_move_timer=270}] run tp @a 22 63 353 0 -15.57
execute as @a[scores={elevator_move_timer=271}] run tp @a 22 63 353 0 -15.959
execute as @a[scores={elevator_move_timer=272}] run tp @a 22 63 353 0 -16.348
execute as @a[scores={elevator_move_timer=273}] run tp @a 22 63 353 0 -16.737
execute as @a[scores={elevator_move_timer=274}] run tp @a 22 63 353 0 -17.126
execute as @a[scores={elevator_move_timer=275}] run tp @a 22 63 353 0 -17.515
execute as @a[scores={elevator_move_timer=276}] run tp @a 22 63 353 0 -17.904
execute as @a[scores={elevator_move_timer=277}] run tp @a 22 63 353 0 -18.293
execute as @a[scores={elevator_move_timer=278}] run tp @a 22 63 353 0 -18.682
execute as @a[scores={elevator_move_timer=279}] run tp @a 22 63 353 0 -19.071
execute as @a[scores={elevator_move_timer=280}] run tp @a 22 63 353 0 -19.46
execute as @a[scores={elevator_move_timer=281}] run tp @a 22 63 353 0 -19.849
execute as @a[scores={elevator_move_timer=282}] run tp @a 22 63 353 0 -20.238
execute as @a[scores={elevator_move_timer=283}] run tp @a 22 63 353 0 -20.627
execute as @a[scores={elevator_move_timer=284}] run tp @a 22 63 353 0 -21.016
execute as @a[scores={elevator_move_timer=285}] run tp @a 22 63 353 0 -21.405
execute as @a[scores={elevator_move_timer=286}] run tp @a 22 63 353 0 -21.794
execute as @a[scores={elevator_move_timer=287}] run tp @a 22 63 353 0 -22.183
execute as @a[scores={elevator_move_timer=288}] run tp @a 22 63 353 0 -22.572
execute as @a[scores={elevator_move_timer=289}] run tp @a 22 63 353 0 -22.961
execute as @a[scores={elevator_move_timer=290}] run tp @a 22 63 353 0 -23.35
execute as @a[scores={elevator_move_timer=291}] run tp @a 22 63 353 0 -23.739
execute as @a[scores={elevator_move_timer=292}] run tp @a 22 63 353 0 -24.128
execute as @a[scores={elevator_move_timer=293}] run tp @a 22 63 353 0 -24.517
execute as @a[scores={elevator_move_timer=294}] run tp @a 22 63 353 0 -24.906
execute as @a[scores={elevator_move_timer=295}] run tp @a 22 63 353 0 -25.295
execute as @a[scores={elevator_move_timer=296}] run tp @a 22 63 353 0 -25.684
execute as @a[scores={elevator_move_timer=297}] run tp @a 22 63 353 0 -26.073
execute as @a[scores={elevator_move_timer=298}] run tp @a 22 63 353 0 -26.462
execute as @a[scores={elevator_move_timer=299}] run tp @a 22 63 353 0 -26.851
execute as @a[scores={elevator_move_timer=300}] run tp @a 22 63 353 0 -27.24
execute as @a[scores={elevator_move_timer=301}] run tp @a 22 63 353 0 -27.629
execute as @a[scores={elevator_move_timer=302}] run tp @a 22 63 353 0 -28.018
execute as @a[scores={elevator_move_timer=303}] run tp @a 22 63 353 0 -28.407
execute as @a[scores={elevator_move_timer=304}] run tp @a 22 63 353 0 -28.796
execute as @a[scores={elevator_move_timer=305}] run tp @a 22 63 353 0 -29.185
execute as @a[scores={elevator_move_timer=306}] run tp @a 22 63 353 0 -29.574
execute as @a[scores={elevator_move_timer=307}] run tp @a 22 63 353 0 -29.963
execute as @a[scores={elevator_move_timer=308}] run tp @a 22 63 353 0 -30.352
execute as @a[scores={elevator_move_timer=309}] run tp @a 22 63 353 0 -30.741
execute as @a[scores={elevator_move_timer=310}] run tp @a 22 63 353 0 -31.13
execute as @a[scores={elevator_move_timer=311}] run tp @a 22 63 353 0 -31.519
execute as @a[scores={elevator_move_timer=312}] run tp @a 22 63 353 0 -31.908
execute as @a[scores={elevator_move_timer=313}] run tp @a 22 63 353 0 -32.297
execute as @a[scores={elevator_move_timer=314}] run tp @a 22 63 353 0 -32.686
execute as @a[scores={elevator_move_timer=315}] run tp @a 22 63 353 0 -33.075
execute as @a[scores={elevator_move_timer=316}] run tp @a 22 63 353 0 -33.464
execute as @a[scores={elevator_move_timer=317}] run tp @a 22 63 353 0 -33.853
execute as @a[scores={elevator_move_timer=318}] run tp @a 22 63 353 0 -34.242
execute as @a[scores={elevator_move_timer=319}] run tp @a 22 63 353 0 -34.631

# 조명 반짝거림
execute as @a[scores={elevator_move_timer=211}] run setblock 22 67 353 minecraft:air
execute as @a[scores={elevator_move_timer=241}] run setblock 22 67 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=251}] run setblock 22 67 353 minecraft:air
execute as @a[scores={elevator_move_timer=281}] run setblock 22 67 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=291}] run setblock 22 67 353 minecraft:air
execute as @a[scores={elevator_move_timer=321}] run setblock 22 67 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=311}] run setblock 22 85 353 minecraft:air
execute as @a[scores={elevator_move_timer=331}] run setblock 22 85 353 minecraft:sea_lantern