# teleport 전 블럭 설치/제거
execute as @a[scores={loading_timer=1}] run setblock -1779 81 -1450 minecraft:barrier
execute as @a[scores={loading_timer=265}] run setblock -1779 81 -1450 minecraft:air

# 페이드 인/아웃
execute as @a[scores={loading_timer=1}] run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:2,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={loading_timer=70}] run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:1,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={loading_timer=185}] run item replace entity @a weapon.offhand with minecraft:golden_pickaxe{CustomModelData:2,display:{Name:"{\"text\":\"\"}"}}
execute as @a[scores={loading_timer=265}] run item replace entity @a weapon.offhand with minecraft:air

# 투명 효과 (tp 후 캐릭터 겹침 방지)
execute as @a[scores={loading_timer=30}] run effect give @a minecraft:invisibility infinite 1 true
execute as @a[scores={loading_timer=135}] run effect clear @a minecraft:invisibility

# 이동 안내 멘트
execute as @a[scores={loading_timer=10}] run title @a title {"bold":true,"text":"곧 이동됩니다.","color":"yellow"}
execute as @a[scores={loading_timer=10}] run title @a subtitle {"text":"움직이지 마십시오.","color":"gray"}
execute as @a[scores={loading_timer=10}] run title @a times 0 40 20
execute as @a[scores={loading_timer=195}] run title @a title {"bold":true,"text":"용사 마을","color":"#a24ede"}
execute as @a[scores={loading_timer=195}] run title @a times 0 40 40

# 이동 중 멘트
execute as @a[scores={loading_timer=85}] run title @a actionbar {"bold":true,"text":"퀘","color":"yellow"}
execute as @a[scores={loading_timer=90}] run title @a actionbar {"bold":true,"text":"퀘스","color":"yellow"}
execute as @a[scores={loading_timer=95}] run title @a actionbar {"bold":true,"text":"퀘스트","color":"yellow"}
execute as @a[scores={loading_timer=100}] run title @a actionbar {"bold":true,"text":"퀘스트 ","color":"yellow"}
execute as @a[scores={loading_timer=105}] run title @a actionbar {"bold":true,"text":"퀘스트 장","color":"yellow"}
execute as @a[scores={loading_timer=110}] run title @a actionbar {"bold":true,"text":"퀘스트 장소","color":"yellow"}
execute as @a[scores={loading_timer=115}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로","color":"yellow"}
execute as @a[scores={loading_timer=120}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 ","color":"yellow"}
execute as @a[scores={loading_timer=125}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이","color":"yellow"}
execute as @a[scores={loading_timer=130}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이동","color":"yellow"}
execute as @a[scores={loading_timer=135}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이동 중","color":"yellow"}
execute as @a[scores={loading_timer=140}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이동 중 ","color":"yellow"}
execute as @a[scores={loading_timer=145}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이동 중 .","color":"yellow"}
execute as @a[scores={loading_timer=150}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이동 중 . ","color":"yellow"}
execute as @a[scores={loading_timer=155}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이동 중 . .","color":"yellow"}
execute as @a[scores={loading_timer=160}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이동 중 . . ","color":"yellow"}
execute as @a[scores={loading_timer=165}] run title @a actionbar {"bold":true,"text":"퀘스트 장소로 이동 중 . . .","color":"yellow"}
execute as @a[scores={loading_timer=170}] run title @a actionbar {"text":""}

# 브금
execute as @a[scores={loading_timer=5}] at @s run playsound minecraft:bgm.kids master @s ~ ~ ~ 0.2 1 0

# 텔레포트
execute as @a[scores={loading_timer=1}] at @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={loading_timer=2}] at @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={loading_timer=3}] at @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={loading_timer=4}] at @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={loading_timer=5}] at @s run tp @s ~ ~ ~ ~ ~
execute as @a[scores={loading_timer=60}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=61}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=62}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=63}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=64}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=65}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=66}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=67}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=68}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=69}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=70}] run tp @a -1779 82 -1450 -25 25
execute as @a[scores={loading_timer=71}] run tp @a -1779 82 -1450 -24.3077 25
execute as @a[scores={loading_timer=72}] run tp @a -1779 82 -1450 -23.6154 25
execute as @a[scores={loading_timer=73}] run tp @a -1779 82 -1450 -22.9231 25
execute as @a[scores={loading_timer=74}] run tp @a -1779 82 -1450 -22.2308 25
execute as @a[scores={loading_timer=75}] run tp @a -1779 82 -1450 -21.5385 25
execute as @a[scores={loading_timer=76}] run tp @a -1779 82 -1450 -20.8462 25
execute as @a[scores={loading_timer=77}] run tp @a -1779 82 -1450 -20.1539 25
execute as @a[scores={loading_timer=78}] run tp @a -1779 82 -1450 -19.4616 25
execute as @a[scores={loading_timer=79}] run tp @a -1779 82 -1450 -18.7693 25
execute as @a[scores={loading_timer=80}] run tp @a -1779 82 -1450 -18.077 25
execute as @a[scores={loading_timer=81}] run tp @a -1779 82 -1450 -17.3847 25
execute as @a[scores={loading_timer=82}] run tp @a -1779 82 -1450 -16.6924 25
execute as @a[scores={loading_timer=83}] run tp @a -1779 82 -1450 -16.0001 25
execute as @a[scores={loading_timer=84}] run tp @a -1779 82 -1450 -15.3078 25
execute as @a[scores={loading_timer=85}] run tp @a -1779 82 -1450 -14.6155 25
execute as @a[scores={loading_timer=86}] run tp @a -1779 82 -1450 -13.9232 25
execute as @a[scores={loading_timer=87}] run tp @a -1779 82 -1450 -13.2309 25
execute as @a[scores={loading_timer=88}] run tp @a -1779 82 -1450 -12.5386 25
execute as @a[scores={loading_timer=89}] run tp @a -1779 82 -1450 -11.8463 25
execute as @a[scores={loading_timer=90}] run tp @a -1779 82 -1450 -11.154 25
execute as @a[scores={loading_timer=91}] run tp @a -1779 82 -1450 -10.4617 25
execute as @a[scores={loading_timer=92}] run tp @a -1779 82 -1450 -9.76940000000001 25
execute as @a[scores={loading_timer=93}] run tp @a -1779 82 -1450 -9.07710000000001 25
execute as @a[scores={loading_timer=94}] run tp @a -1779 82 -1450 -8.38480000000001 25
execute as @a[scores={loading_timer=95}] run tp @a -1779 82 -1450 -7.69250000000001 25
execute as @a[scores={loading_timer=96}] run tp @a -1779 82 -1450 -7.00020000000001 25
execute as @a[scores={loading_timer=97}] run tp @a -1779 82 -1450 -6.30790000000001 25
execute as @a[scores={loading_timer=98}] run tp @a -1779 82 -1450 -5.61560000000001 25
execute as @a[scores={loading_timer=99}] run tp @a -1779 82 -1450 -4.92330000000001 25
execute as @a[scores={loading_timer=100}] run tp @a -1779 82 -1450 -4.23100000000001 25
execute as @a[scores={loading_timer=101}] run tp @a -1779 82 -1450 -3.53870000000001 25
execute as @a[scores={loading_timer=102}] run tp @a -1779 82 -1450 -2.84640000000001 25
execute as @a[scores={loading_timer=103}] run tp @a -1779 82 -1450 -2.15410000000001 25
execute as @a[scores={loading_timer=104}] run tp @a -1779 82 -1450 -1.46180000000001 25
execute as @a[scores={loading_timer=105}] run tp @a -1779 82 -1450 -0.769500000000011 25
execute as @a[scores={loading_timer=106}] run tp @a -1779 82 -1450 -0.0772000000000108 25
execute as @a[scores={loading_timer=107}] run tp @a -1779 82 -1450 0.615099999999989 25
execute as @a[scores={loading_timer=108}] run tp @a -1779 82 -1450 1.30739999999999 25
execute as @a[scores={loading_timer=109}] run tp @a -1779 82 -1450 1.99969999999999 25
execute as @a[scores={loading_timer=110}] run tp @a -1779 82 -1450 2.69199999999999 25
execute as @a[scores={loading_timer=111}] run tp @a -1779 82 -1450 3.38429999999999 25
execute as @a[scores={loading_timer=112}] run tp @a -1779 82 -1450 4.07659999999999 25
execute as @a[scores={loading_timer=113}] run tp @a -1779 82 -1450 4.76889999999999 25
execute as @a[scores={loading_timer=114}] run tp @a -1779 82 -1450 5.46119999999999 25
execute as @a[scores={loading_timer=115}] run tp @a -1779 82 -1450 6.15349999999999 25
execute as @a[scores={loading_timer=116}] run tp @a -1779 82 -1450 6.84579999999999 25
execute as @a[scores={loading_timer=117}] run tp @a -1779 82 -1450 7.53809999999999 25
execute as @a[scores={loading_timer=118}] run tp @a -1779 82 -1450 8.23039999999999 25
execute as @a[scores={loading_timer=119}] run tp @a -1779 82 -1450 8.92269999999999 25
execute as @a[scores={loading_timer=120}] run tp @a -1779 82 -1450 9.61499999999999 25
execute as @a[scores={loading_timer=121}] run tp @a -1779 82 -1450 10.3073 25
execute as @a[scores={loading_timer=122}] run tp @a -1779 82 -1450 10.9996 25
execute as @a[scores={loading_timer=123}] run tp @a -1779 82 -1450 11.6919 25
execute as @a[scores={loading_timer=124}] run tp @a -1779 82 -1450 12.3842 25
execute as @a[scores={loading_timer=125}] run tp @a -1779 82 -1450 13.0765 25
execute as @a[scores={loading_timer=126}] run tp @a -1779 82 -1450 13.7688 25
execute as @a[scores={loading_timer=127}] run tp @a -1779 82 -1450 14.4611 25
execute as @a[scores={loading_timer=128}] run tp @a -1779 82 -1450 15.1534 25
execute as @a[scores={loading_timer=129}] run tp @a -1779 82 -1450 15.8457 25
execute as @a[scores={loading_timer=130}] run tp @a -1779 82 -1450 16.538 25
execute as @a[scores={loading_timer=131}] run tp @a -1779 82 -1450 17.2303 25
execute as @a[scores={loading_timer=132}] run tp @a -1779 82 -1450 17.9226 25
execute as @a[scores={loading_timer=133}] run tp @a -1779 82 -1450 18.6149 25
execute as @a[scores={loading_timer=134}] run tp @a -1779 82 -1450 19.3072 25
execute as @a[scores={loading_timer=135}] run tp @a -1779 82 -1450 20 25
execute as @a[scores={loading_timer=135}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=136}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=137}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=138}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=139}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=140}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=141}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=142}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=143}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=144}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=145}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=146}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=147}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=148}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=149}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=150}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=151}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=152}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=153}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=154}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=155}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=156}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=157}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=158}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=159}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=160}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=161}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=162}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=163}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=164}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=165}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=166}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=167}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=168}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=169}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=170}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=171}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=172}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=173}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=174}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=175}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=176}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=177}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=178}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=179}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=180}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=181}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=182}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=183}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=184}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=185}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=186}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=187}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=188}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=189}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=190}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=191}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=192}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=193}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=194}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=195}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=196}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=197}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=198}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=199}] run tp @a -1779 82 -1450 20 25 
execute as @a[scores={loading_timer=200}] run tp @a 4 63 341 90 0 

# 세팅 초기화
execute as @a[scores={loading_timer=280}] run scoreboard players set @a loading_on_off -1