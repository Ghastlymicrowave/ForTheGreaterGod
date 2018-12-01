x=obj_player.x+obj_player.hspeed
y=obj_player.y+obj_player.vspeed
speed=25
direction = obj_player.dir
x+=hspeed
y+=vspeed
speed=0


if place_meeting(x,y,obj_throwableThing)&&mouse_check_button(mb_left){
var throw =instance_place(x,y,obj_throwableThing)
throw.held =1
obj_player.holding=1
}