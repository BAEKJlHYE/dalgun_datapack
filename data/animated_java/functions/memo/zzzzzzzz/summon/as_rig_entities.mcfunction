scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:memo/on_summon/as_rig_entities
execute if entity @s[tag=aj.memo.bone] run function #animated_java:memo/zzzzzzzz/on_summon/as_bones

