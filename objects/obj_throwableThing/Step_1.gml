if held =1{
	
x= obj_playerPickupHitbox.x+obj_playerPickupHitbox.hspeed
y = obj_playerPickupHitbox.y+obj_playerPickupHitbox.vspeed


if mouse_check_button_pressed(mb_right)&&!place_meeting(x,y,obj_obstacle){

direction = obj_playerPickupHitbox.direction
speed = 15
if !place_meeting(x+hspeed*2,y+vspeed*2,obj_obstacle){
x+=hspeed*2
y+=vspeed*2
obj_player.holding=0
held = 0
} else{
speed=0
direction=0
}
}
}
if speed >0&&held=0 {
if ticka=0{
speed --
ticka=1
}else {
ticka--	
}
if bounced=1 then speed=0
while place_meeting(x,y+vspeed,obj_obstacle){
	vspeed -=sign(vspeed)
	speed--
	speed=round(speed)
	obj_cameraFollowing.screenshake =10
}

while place_meeting(x+hspeed,y,obj_obstacle){
	hspeed -=sign(hspeed)
	speed--
	speed=round(speed)
	obj_cameraFollowing.screenshake =10
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle){
	speed --
	hspeed -=sign(hspeed)
	vspeed -=sign(vspeed)
	speed=round(speed)
	obj_cameraFollowing.screenshake =10
}
}
if speed <1&& speed>-1 then speed = 0
bounced=0 
