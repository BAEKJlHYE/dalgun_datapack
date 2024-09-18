# 스코어보드 리셋
scoreboard players set @s break_pot 0

# 파밍용 도자기인 경우
execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot",tag:{BlockEntityTag:{sherds:["minecraft:prize_pottery_sherd","minecraft:prize_pottery_sherd","minecraft:prize_pottery_sherd","minecraft:prize_pottery_sherd"]}}}}] run function pots:give

# 도자기 제거
kill @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}]