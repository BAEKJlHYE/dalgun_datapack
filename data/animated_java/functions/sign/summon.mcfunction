summon minecraft:item_display 5 63 357 {id:"minecraft:item_display",Tags:["aj.new","aj.sign.rig_entity","aj.sign.bone","aj.sign.bone.group","aj.new","aj.sign.rig_entity","aj.sign.root","aj.rig_root"],transformation:[-1.675f,0f,2.0512833885718166e-16f,-7.654042494670958e-18f,0f,1.675f,0f,-0.4375f,-2.0512833885718166e-16f,0f,-1.675f,0.0625f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:2}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"sign\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"group\",\"color\":\"yellow\"},\"]\"]]",height:33.2f,width:13.2f}
execute as @e[type=minecraft:item_display,tag=aj.sign.root,tag=aj.new,limit=1,distance=..0.1] run function animated_java:sign/zzzzzzzz/summon/as_root