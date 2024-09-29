setblock 22 64 365 minecraft:air
setblock 22 65 365 minecraft:air
setblock 22 66 365 minecraft:air

setblock 21 64 365 minecraft:redstone_block

execute if score @p elevator_target_floor > @p elevator_current_floor run setblock 22 64 365 minecraft:redstone_block
execute if score @p elevator_target_floor < @p elevator_current_floor run setblock 22 65 365 minecraft:redstone_block
execute if score @p elevator_target_floor = @p elevator_current_floor run setblock 22 66 365 minecraft:redstone_block