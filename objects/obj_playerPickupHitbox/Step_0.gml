x=obj_player.x
y=obj_player.y-7
speed=20
direction = point_direction(x,y,mouse_x,mouse_y)
//motion_set(direction,speed)
x+=hspeed
y+=vspeed
speed=0
image_xscale = (x<mouse_x)*2-1

if place_meeting(x,y,obj_throwableThing)&&mouse_check_button_pressed(mb_left){
var throw =instance_place(x,y,obj_throwableThing)
throw.held =1
obj_player.holding=1
} else if place_meeting(x,y,obj_guard)&&mouse_check_button_pressed(mb_left)&&obj_player.holding=0{
	
	var guard = instance_place(x,y,obj_guard)
	with (guard){
    instance_change(obj_corpse,1)
	speed = 8
	direction=obj_playerPickupHitbox.direction
	}
}