# 인형 설치 안내 문구 삭제
kill @e[tag=sign_doll_seat_desc]

# 플레이어에게서 인형 아이템 삭제
clear @s minecraft:stick{Tags:["sign_doll"]}

# 인터랙션 삭제
kill @e[type=minecraft:interaction,tag=sign_doll_interaction]

# npc 생성
function animated_java:sign/summon

# 한 줄 문구 생성
summon minecraft:text_display 5 65.3 357 {Tags:["sign_doll_desc"],text:'[{"text":"\\uE000","font":"default"}]',Rotation:[-180F,0F],see_through:0b,background:0}

# 입자 생성
particle minecraft:dust 61 108 184 1 5 63 357 1 1 1 1 100 force

# 효과음
playsound minecraft:entity.firework_rocket.twinkle_far voice @a ~ ~ ~ 1 1