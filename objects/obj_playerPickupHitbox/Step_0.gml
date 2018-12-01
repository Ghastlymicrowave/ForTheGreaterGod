x=obj_player.x
y=obj_player.y
speed=25
direction = point_direction(x,y,mouse_x,mouse_y)
motion_set(direction,speed)

image_xscale = (x<mouse_x)*2-1

if place_meeting(x,y,obj_throwableThing)&&mouse_check_button(mb_left){
var throw =instance_place(x,y,obj_throwableThing)
throw.held =1
obj_player.holding=1
}