# 층수 변경
execute as @a[scores={elevator_move_timer=1}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=1}] run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"5F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=230}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=230}] run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"4F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=260}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=260}] run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"3F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=290}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=290}] run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"2F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=320}] run kill @e[tag=elva_floor]
execute as @a[scores={elevator_move_timer=320}] run summon minecraft:text_display 22 83.5 354.9 {Tags:["elva_floor"],text:'[{"text":"1F","color":"#c7a844"}]',Rotation:[-180F,0F]}
execute as @a[scores={elevator_move_timer=320}] run summon minecraft:text_display 22 65.5 354.9 {Tags:["elva_floor"],text:'[{"text":"1F","color":"#c7a844"}]',Rotation:[-180F,0F]}

# 효과음
execute as @a[scores={elevator_move_timer=1}] at @s run playsound minecraft:elevator.ting voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=40}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=40}] at @s run playsound minecraft:elevator.noti_open voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=140}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=140}] at @s run playsound minecraft:elevator.noti_close voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=200}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=200}] at @s run playsound minecraft:elevator.going voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=340}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=340}] at @s run playsound minecraft:elevator.noti_open voice @s ~ ~ ~
execute as @a[scores={elevator_move_timer=480}] run stopsound @a voice
execute as @a[scores={elevator_move_timer=480}] at @s run playsound minecraft:elevator.noti_close voice @s ~ ~ ~

# 문 열기/닫기
execute as @a[scores={elevator_move_timer=80}] run fill 22 81 355 22 82 355 minecraft:air
execute as @a[scores={elevator_move_timer=80}] run setblock 22 82 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=80}] run setblock 22 81 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=180}] run fill 22 81 355 22 82 355 minecraft:air
execute as @a[scores={elevator_move_timer=180}] run setblock 22 82 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=180}] run setblock 22 81 355 minecraft:iron_door[open=false,half=lower]
execute as @a[scores={elevator_move_timer=380}] run fill 22 63 355 22 64 355 minecraft:air
execute as @a[scores={elevator_move_timer=380}] run setblock 22 64 355 minecraft:iron_door[open=true,half=upper]
execute as @a[scores={elevator_move_timer=380}] run setblock 22 63 355 minecraft:iron_door[open=true,half=lower]
execute as @a[scores={elevator_move_timer=520}] run fill 22 63 355 22 64 355 minecraft:air
execute as @a[scores={elevator_move_timer=520}] run setblock 22 64 355 minecraft:iron_door[open=false,half=upper]
execute as @a[scores={elevator_move_timer=520}] run setblock 22 63 355 minecraft:iron_door[open=false,half=lower]

# 페이드인/아웃
execute as @a[scores={elevator_move_timer=110}] run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:2,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={elevator_move_timer=150}] run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:1,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={elevator_move_timer=380}] run item replace entity @a weapon.offhand with minecraft:air

# 투명 효과 (tp 후 캐릭터 겹침 방지)
execute as @a[scores={elevator_move_timer=111}] run effect give @a minecraft:invisibility infinite 1 true
execute as @a[scores={elevator_move_timer=380}] run effect clear @a minecraft:invisibility

# 철문 앞 블럭 설치
execute as @a[scores={elevator_move_timer=210}] run setblock 22 82 356 minecraft:black_concrete
execute as @a[scores={elevator_move_timer=380}] run setblock 22 82 356 minecraft:air

# 플레이어 움직임 통제
execute as @a[scores={elevator_move_timer=113}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=114}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=115}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=116}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=117}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=118}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=119}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=120}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=121}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=122}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=123}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=124}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=125}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=126}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=127}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=128}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=129}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=130}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=131}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=132}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=133}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=134}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=135}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=136}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=137}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=138}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=139}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=140}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=141}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=142}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=143}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=144}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=145}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=146}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=147}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=148}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=149}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=150}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=151}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=152}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=153}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=154}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=155}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=156}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=157}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=158}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=159}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=160}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=161}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=162}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=163}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=164}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=165}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=166}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=167}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=168}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=169}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=170}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=171}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=172}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=173}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=174}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=175}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=176}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=177}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=178}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=179}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=180}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=181}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=182}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=183}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=184}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=185}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=186}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=187}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=188}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=189}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=190}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=191}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=192}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=193}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=194}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=195}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=196}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=197}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=198}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=199}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=200}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=201}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=202}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=203}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=204}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=205}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=206}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=207}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=208}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=209}] run tp @a 22 81 353 0 -35
execute as @a[scores={elevator_move_timer=210}] run tp @a 22 81 353 0 -34.6818
execute as @a[scores={elevator_move_timer=211}] run tp @a 22 81 353 0 -34.3636
execute as @a[scores={elevator_move_timer=212}] run tp @a 22 81 353 0 -34.0454
execute as @a[scores={elevator_move_timer=213}] run tp @a 22 81 353 0 -33.7272
execute as @a[scores={elevator_move_timer=214}] run tp @a 22 81 353 0 -33.409
execute as @a[scores={elevator_move_timer=215}] run tp @a 22 81 353 0 -33.0908
execute as @a[scores={elevator_move_timer=216}] run tp @a 22 81 353 0 -32.7726
execute as @a[scores={elevator_move_timer=217}] run tp @a 22 81 353 0 -32.4544
execute as @a[scores={elevator_move_timer=218}] run tp @a 22 81 353 0 -32.1362
execute as @a[scores={elevator_move_timer=219}] run tp @a 22 81 353 0 -31.818
execute as @a[scores={elevator_move_timer=220}] run tp @a 22 81 353 0 -31.4998
execute as @a[scores={elevator_move_timer=221}] run tp @a 22 81 353 0 -31.1816
execute as @a[scores={elevator_move_timer=222}] run tp @a 22 81 353 0 -30.8634
execute as @a[scores={elevator_move_timer=223}] run tp @a 22 81 353 0 -30.5452
execute as @a[scores={elevator_move_timer=224}] run tp @a 22 81 353 0 -30.227
execute as @a[scores={elevator_move_timer=225}] run tp @a 22 81 353 0 -29.9088
execute as @a[scores={elevator_move_timer=226}] run tp @a 22 81 353 0 -29.5906
execute as @a[scores={elevator_move_timer=227}] run tp @a 22 81 353 0 -29.2724
execute as @a[scores={elevator_move_timer=228}] run tp @a 22 81 353 0 -28.9542
execute as @a[scores={elevator_move_timer=229}] run tp @a 22 81 353 0 -28.636
execute as @a[scores={elevator_move_timer=230}] run tp @a 22 81 353 0 -28.3178
execute as @a[scores={elevator_move_timer=231}] run tp @a 22 81 353 0 -27.9996
execute as @a[scores={elevator_move_timer=232}] run tp @a 22 81 353 0 -27.6814
execute as @a[scores={elevator_move_timer=233}] run tp @a 22 81 353 0 -27.3632
execute as @a[scores={elevator_move_timer=234}] run tp @a 22 81 353 0 -27.045
execute as @a[scores={elevator_move_timer=235}] run tp @a 22 81 353 0 -26.7268
execute as @a[scores={elevator_move_timer=236}] run tp @a 22 81 353 0 -26.4086
execute as @a[scores={elevator_move_timer=237}] run tp @a 22 81 353 0 -26.0904
execute as @a[scores={elevator_move_timer=238}] run tp @a 22 81 353 0 -25.7722
execute as @a[scores={elevator_move_timer=239}] run tp @a 22 81 353 0 -25.454
execute as @a[scores={elevator_move_timer=240}] run tp @a 22 81 353 0 -25.1358
execute as @a[scores={elevator_move_timer=241}] run tp @a 22 81 353 0 -24.8176
execute as @a[scores={elevator_move_timer=242}] run tp @a 22 81 353 0 -24.4994
execute as @a[scores={elevator_move_timer=243}] run tp @a 22 81 353 0 -24.1812
execute as @a[scores={elevator_move_timer=244}] run tp @a 22 81 353 0 -23.863
execute as @a[scores={elevator_move_timer=245}] run tp @a 22 81 353 0 -23.5448
execute as @a[scores={elevator_move_timer=246}] run tp @a 22 81 353 0 -23.2266
execute as @a[scores={elevator_move_timer=247}] run tp @a 22 81 353 0 -22.9084
execute as @a[scores={elevator_move_timer=248}] run tp @a 22 81 353 0 -22.5902
execute as @a[scores={elevator_move_timer=249}] run tp @a 22 81 353 0 -22.272
execute as @a[scores={elevator_move_timer=250}] run tp @a 22 81 353 0 -21.9538
execute as @a[scores={elevator_move_timer=251}] run tp @a 22 81 353 0 -21.6356
execute as @a[scores={elevator_move_timer=252}] run tp @a 22 81 353 0 -21.3174
execute as @a[scores={elevator_move_timer=253}] run tp @a 22 81 353 0 -20.9992
execute as @a[scores={elevator_move_timer=254}] run tp @a 22 81 353 0 -20.681
execute as @a[scores={elevator_move_timer=255}] run tp @a 22 81 353 0 -20.3628
execute as @a[scores={elevator_move_timer=256}] run tp @a 22 81 353 0 -20.0446
execute as @a[scores={elevator_move_timer=257}] run tp @a 22 81 353 0 -19.7264
execute as @a[scores={elevator_move_timer=258}] run tp @a 22 81 353 0 -19.4082
execute as @a[scores={elevator_move_timer=259}] run tp @a 22 81 353 0 -19.09
execute as @a[scores={elevator_move_timer=260}] run tp @a 22 81 353 0 -18.7718
execute as @a[scores={elevator_move_timer=261}] run tp @a 22 81 353 0 -18.4536
execute as @a[scores={elevator_move_timer=262}] run tp @a 22 81 353 0 -18.1354
execute as @a[scores={elevator_move_timer=263}] run tp @a 22 81 353 0 -17.8172
execute as @a[scores={elevator_move_timer=264}] run tp @a 22 81 353 0 -17.499
execute as @a[scores={elevator_move_timer=265}] run tp @a 22 81 353 0 -17.1808
execute as @a[scores={elevator_move_timer=266}] run tp @a 22 81 353 0 -16.8626
execute as @a[scores={elevator_move_timer=267}] run tp @a 22 81 353 0 -16.5444
execute as @a[scores={elevator_move_timer=268}] run tp @a 22 81 353 0 -16.2262
execute as @a[scores={elevator_move_timer=269}] run tp @a 22 81 353 0 -15.908
execute as @a[scores={elevator_move_timer=270}] run tp @a 22 81 353 0 -15.5898
execute as @a[scores={elevator_move_timer=271}] run tp @a 22 81 353 0 -15.2716
execute as @a[scores={elevator_move_timer=272}] run tp @a 22 81 353 0 -14.9534
execute as @a[scores={elevator_move_timer=273}] run tp @a 22 81 353 0 -14.6352
execute as @a[scores={elevator_move_timer=274}] run tp @a 22 81 353 0 -14.317
execute as @a[scores={elevator_move_timer=275}] run tp @a 22 81 353 0 -13.9988
execute as @a[scores={elevator_move_timer=276}] run tp @a 22 81 353 0 -13.6806
execute as @a[scores={elevator_move_timer=277}] run tp @a 22 81 353 0 -13.3624
execute as @a[scores={elevator_move_timer=278}] run tp @a 22 81 353 0 -13.0442
execute as @a[scores={elevator_move_timer=279}] run tp @a 22 81 353 0 -12.726
execute as @a[scores={elevator_move_timer=280}] run tp @a 22 81 353 0 -12.4078
execute as @a[scores={elevator_move_timer=281}] run tp @a 22 81 353 0 -12.0896
execute as @a[scores={elevator_move_timer=282}] run tp @a 22 81 353 0 -11.7714
execute as @a[scores={elevator_move_timer=283}] run tp @a 22 81 353 0 -11.4532
execute as @a[scores={elevator_move_timer=284}] run tp @a 22 81 353 0 -11.135
execute as @a[scores={elevator_move_timer=285}] run tp @a 22 81 353 0 -10.8168
execute as @a[scores={elevator_move_timer=286}] run tp @a 22 81 353 0 -10.4986
execute as @a[scores={elevator_move_timer=287}] run tp @a 22 81 353 0 -10.1804
execute as @a[scores={elevator_move_timer=288}] run tp @a 22 81 353 0 -9.86219999999999
execute as @a[scores={elevator_move_timer=289}] run tp @a 22 81 353 0 -9.544
execute as @a[scores={elevator_move_timer=290}] run tp @a 22 81 353 0 -9.2258
execute as @a[scores={elevator_move_timer=291}] run tp @a 22 81 353 0 -8.9076
execute as @a[scores={elevator_move_timer=292}] run tp @a 22 81 353 0 -8.5894
execute as @a[scores={elevator_move_timer=293}] run tp @a 22 81 353 0 -8.2712
execute as @a[scores={elevator_move_timer=294}] run tp @a 22 81 353 0 -7.953
execute as @a[scores={elevator_move_timer=295}] run tp @a 22 81 353 0 -7.6348
execute as @a[scores={elevator_move_timer=296}] run tp @a 22 81 353 0 -7.3166
execute as @a[scores={elevator_move_timer=297}] run tp @a 22 81 353 0 -6.9984
execute as @a[scores={elevator_move_timer=298}] run tp @a 22 81 353 0 -6.6802
execute as @a[scores={elevator_move_timer=299}] run tp @a 22 81 353 0 -6.362
execute as @a[scores={elevator_move_timer=300}] run tp @a 22 81 353 0 -6.0438
execute as @a[scores={elevator_move_timer=301}] run tp @a 22 81 353 0 -5.7256
execute as @a[scores={elevator_move_timer=302}] run tp @a 22 81 353 0 -5.4074
execute as @a[scores={elevator_move_timer=303}] run tp @a 22 81 353 0 -5.0892
execute as @a[scores={elevator_move_timer=304}] run tp @a 22 81 353 0 -4.771
execute as @a[scores={elevator_move_timer=305}] run tp @a 22 81 353 0 -4.4528
execute as @a[scores={elevator_move_timer=306}] run tp @a 22 81 353 0 -4.1346
execute as @a[scores={elevator_move_timer=307}] run tp @a 22 81 353 0 -3.8164
execute as @a[scores={elevator_move_timer=308}] run tp @a 22 81 353 0 -3.4982
execute as @a[scores={elevator_move_timer=309}] run tp @a 22 81 353 0 -3.18
execute as @a[scores={elevator_move_timer=310}] run tp @a 22 81 353 0 -2.8618
execute as @a[scores={elevator_move_timer=311}] run tp @a 22 81 353 0 -2.5436
execute as @a[scores={elevator_move_timer=312}] run tp @a 22 81 353 0 -2.2254
execute as @a[scores={elevator_move_timer=313}] run tp @a 22 81 353 0 -1.9072
execute as @a[scores={elevator_move_timer=314}] run tp @a 22 81 353 0 -1.589
execute as @a[scores={elevator_move_timer=315}] run tp @a 22 81 353 0 -1.2708
execute as @a[scores={elevator_move_timer=316}] run tp @a 22 81 353 0 -0.952599999999998
execute as @a[scores={elevator_move_timer=317}] run tp @a 22 81 353 0 -0.634399999999998
execute as @a[scores={elevator_move_timer=318}] run tp @a 22 81 353 0 -0.316199999999998
execute as @a[scores={elevator_move_timer=319}] run tp @a 22 81 353 0 -0.1
execute as @a[scores={elevator_move_timer=320}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=321}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=322}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=323}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=324}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=325}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=326}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=327}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=328}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=329}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=330}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=331}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=332}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=333}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=334}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=335}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=336}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=337}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=338}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=339}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=340}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=341}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=342}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=343}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=344}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=345}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=346}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=347}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=348}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=349}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=350}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=351}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=352}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=353}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=354}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=355}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=356}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=357}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=358}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=359}] run tp @a 22 63 353 0 0
execute as @a[scores={elevator_move_timer=360}] run tp @a 22 63 353 0 0

# 조명 반짝거림
execute as @a[scores={elevator_move_timer=211}] run setblock 22 85 353 minecraft:air
execute as @a[scores={elevator_move_timer=241}] run setblock 22 85 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=251}] run setblock 22 85 353 minecraft:air
execute as @a[scores={elevator_move_timer=281}] run setblock 22 85 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=291}] run setblock 22 85 353 minecraft:air
execute as @a[scores={elevator_move_timer=321}] run setblock 22 85 353 minecraft:sea_lantern
execute as @a[scores={elevator_move_timer=311}] run setblock 22 67 353 minecraft:air
execute as @a[scores={elevator_move_timer=331}] run setblock 22 67 353 minecraft:sea_lantern

# 세팅 초기화
execute as @a[scores={elevator_move_timer=540}] run setblock 21 63 365 minecraft:air
execute as @a[scores={elevator_move_timer=541}] run scoreboard players set @a elevator_move_timer 0