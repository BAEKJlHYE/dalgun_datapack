# 인형 설치 안내 문구 삭제
kill @e[tag=jiekie_doll_seat_desc]
kill @e[tag=velvet_doll_seat_desc]
kill @e[tag=memo_doll_seat_desc]
kill @e[tag=sign_doll_seat_desc]
kill @e[tag=enchovy_doll_seat_desc]
kill @e[tag=geumpyung_doll_seat_desc]
kill @e[tag=eutnuh_doll_seat_desc]

# 인형 설치 안내 문구 생성
summon minecraft:text_display 14 64.5 357 {Tags:["jiekie_doll_seat_desc"],text:'[{"bold":true,"text":"첫 번째 인형","color":"#82c290"},{"bold":true,"text":"을 들고","color":"#ffffff"}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 14 64.2 357 {Tags:["jiekie_doll_seat_desc"],text:'[{"bold":true,"text":"우클릭하세요."}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 11 64.5 357 {Tags:["velvet_doll_seat_desc"],text:'[{"bold":true,"text":"두 번째 인형","color":"#7d6f82"},{"bold":true,"text":"을 들고","color":"#ffffff"}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 11 64.2 357 {Tags:["velvet_doll_seat_desc"],text:'[{"bold":true,"text":"우클릭하세요."}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 8 64.5 357 {Tags:["memo_doll_seat_desc"],text:'[{"bold":true,"text":"세 번째 인형","color":"#858585"},{"bold":true,"text":"을 들고","color":"#ffffff"}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 8 64.2 357 {Tags:["memo_doll_seat_desc"],text:'[{"bold":true,"text":"우클릭하세요."}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 5 64.5 357 {Tags:["sign_doll_seat_desc"],text:'[{"bold":true,"text":"네 번째 인형","color":"#e0df90"},{"bold":true,"text":"을 들고","color":"#ffffff"}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 5 64.2 357 {Tags:["sign_doll_seat_desc"],text:'[{"bold":true,"text":"우클릭하세요."}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 2 64.5 357 {Tags:["enchovy_doll_seat_desc"],text:'[{"bold":true,"text":"다섯 번째 인형","color":"#a2d5de"},{"bold":true,"text":"을 들고","color":"#ffffff"}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display 2 64.2 357 {Tags:["enchovy_doll_seat_desc"],text:'[{"bold":true,"text":"우클릭하세요."}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display -1 64.5 357 {Tags:["geumpyung_doll_seat_desc"],text:'[{"bold":true,"text":"여섯 번째 인형","color":"#d15e5e"},{"bold":true,"text":"을 들고","color":"#ffffff"}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display -1 64.2 357 {Tags:["geumpyung_doll_seat_desc"],text:'[{"bold":true,"text":"우클릭하세요."}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display -4 64.5 357 {Tags:["eutnuh_doll_seat_desc"],text:'[{"bold":true,"text":"일곱 번째 인형","color":"#6477b5"},{"bold":true,"text":"을 들고","color":"#ffffff"}]',Rotation:[-180F,0F],see_through:0b,background:0}
summon minecraft:text_display -4 64.2 357 {Tags:["eutnuh_doll_seat_desc"],text:'[{"bold":true,"text":"우클릭하세요."}]',Rotation:[-180F,0F],see_through:0b,background:0}

# npc 삭제
kill @e[tag=aj.jiekie.rig_entity]
kill @e[tag=aj.velvet.rig_entity]
kill @e[tag=aj.memo.rig_entity]
kill @e[tag=aj.sign.rig_entity]
kill @e[tag=aj.enchovy.rig_entity]
kill @e[tag=aj.geumpyung.rig_entity]
kill @e[tag=aj.eutnuh.rig_entity]

# npc 한 줄 문구 삭제
kill @e[tag=jiekie_doll_desc]
kill @e[tag=velvet_doll_desc]
kill @e[tag=memo_doll_desc]
kill @e[tag=sign_doll_desc]
kill @e[tag=enchovy_doll_desc]
kill @e[tag=geumpyung_doll_desc]
kill @e[tag=eutnuh_doll_desc]

# 인터랙션 삭제
kill @e[type=minecraft:interaction,tag=jiekie_doll_interaction]
kill @e[type=minecraft:interaction,tag=velvet_doll_interaction]
kill @e[type=minecraft:interaction,tag=memo_doll_interaction]
kill @e[type=minecraft:interaction,tag=sign_doll_interaction]
kill @e[type=minecraft:interaction,tag=enchovy_doll_interaction]
kill @e[type=minecraft:interaction,tag=geumpyung_doll_interaction]
kill @e[type=minecraft:interaction,tag=eutnuh_doll_interaction]

# 인터랙션 생성
summon minecraft:interaction 14 63 357 {Tags:["jiekie_doll_interaction"]}
summon minecraft:interaction 11 63 357 {Tags:["velvet_doll_interaction"]}
summon minecraft:interaction 8 63 357 {Tags:["memo_doll_interaction"]}
summon minecraft:interaction 5 63 357 {Tags:["sign_doll_interaction"]}
summon minecraft:interaction 2 63 357 {Tags:["enchovy_doll_interaction"]}
summon minecraft:interaction -1 63 357 {Tags:["geumpyung_doll_interaction"]}
summon minecraft:interaction -4 63 357 {Tags:["eutnuh_doll_interaction"]}

# 인형 아이템 제공
function dolls:give