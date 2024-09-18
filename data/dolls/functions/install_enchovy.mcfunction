# 인형 설치 안내 문구 삭제
kill @e[tag=enchovy_doll_seat_desc]

# 플레이어에게서 인형 아이템 삭제
clear @s minecraft:stick{Tags:["enchovy_doll"]}

# 인터랙션 삭제
kill @e[type=minecraft:interaction,tag=enchovy_doll_interaction]

# npc 생성
function animated_java:enchovy/summon

# 한 줄 문구 생성
summon minecraft:text_display 2 64.8 357 {Tags:["enchovy_doll_desc"],text:'[{"text":"><^,⋗ {thank uwu)"}]',Rotation:[-180F,0F],see_through:0b,background:0}

# 입자 생성
particle minecraft:dust 61 108 184 1 2 63 357 1 1 1 1 100 force

# 효과음
playsound minecraft:entity.firework_rocket.twinkle_far voice @a ~ ~ ~ 1 1