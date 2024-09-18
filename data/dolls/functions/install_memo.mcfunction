# 인형 설치 안내 문구 삭제
kill @e[tag=memo_doll_seat_desc]

# 플레이어에게서 인형 아이템 삭제
clear @s minecraft:stick{Tags:["memo_doll"]}

# 인터랙션 삭제
kill @e[type=minecraft:interaction,tag=memo_doll_interaction]

# npc 생성
function animated_java:memo/summon

# 한 줄 문구 생성
summon minecraft:text_display 8 64.8 357 {Tags:["memo_doll_desc"],text:'[{"bold":true,"text":"앞으로 "},{"bold":true,"text":"잘 부탁드립니다 !","color":"#858585"}]',Rotation:[-180F,0F],see_through:0b,background:0}

# 입자 생성
particle minecraft:dust 61 108 184 1 8 63 357 1 1 1 1 100 force

# 효과음
playsound minecraft:entity.firework_rocket.twinkle_far voice @a ~ ~ ~ 1 1