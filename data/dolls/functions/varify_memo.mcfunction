# 인터랙션 클릭 초기화
data remove entity @e[type=minecraft:interaction,tag=memo_doll_interaction,limit=1] interaction

# 인형을 들고 있지 않을 경우
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{Tags:["memo_doll"]}}}] run function dolls:no_doll_in_hand

# 인형을 들고 있을 경우
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{Tags:["memo_doll"]}}}] run function dolls:install_memo