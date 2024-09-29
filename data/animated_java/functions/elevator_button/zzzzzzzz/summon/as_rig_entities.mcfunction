scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:elevator_button/on_summon/as_rig_entities
execute if entity @s[tag=aj.elevator_button.bone] run function #animated_java:elevator_button/zzzzzzzz/on_summon/as_bones

