scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:elevator_button_2/on_summon/as_rig_entities
execute if entity @s[tag=aj.elevator_button_2.bone] run function #animated_java:elevator_button_2/zzzzzzzz/on_summon/as_bones

