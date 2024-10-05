scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:maintenance_sign/on_summon/as_rig_entities
execute if entity @s[tag=aj.maintenance_sign.bone] run function #animated_java:maintenance_sign/zzzzzzzz/on_summon/as_bones

