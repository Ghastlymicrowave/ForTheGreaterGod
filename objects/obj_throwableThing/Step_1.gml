if held =1{
	
x= obj_playerPickupHitbox.x+obj_playerPickupHitbox.hspeed
y = obj_playerPickupHitbox.y+obj_playerPickupHitbox.vspeed


if mouse_check_button_pressed(mb_right){

direction = obj_playerPickupHitbox.direction
speed = 15
if !place_meeting(x+hspeed*2,y+vspeed*2,obj_obstacle){
x+=hspeed*2
y+=vspeed*2
obj_player.holding=0
held = 0
obj_cameraFollowing.screenshake +=20
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
	vspeed = -vspeed
	speed--
	speed=round(speed)
}

while place_meeting(x+hspeed,y,obj_obstacle){
	hspeed =-hspeed
	speed--
	speed=round(speed)
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle){
	speed --
	hspeed =-hspeed
	vspeed = -vspeed
	speed=round(speed)
}
}
if speed <1&& speed>-1 then speed = 0
bounced=0 
