if held =1{
	
x= obj_playerPickupHitbox.x+obj_playerPickupHitbox.hspeed
y = obj_playerPickupHitbox.y+obj_playerPickupHitbox.vspeed


if mouse_check_button_pressed(mb_right){

direction = obj_playerPickupHitbox.direction
speed = 15
if !place_meeting(x+hspeed,y+vspeed,prnt_actor){
x+=hspeed
y+=vspeed
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
while place_meeting(x,y+vspeed,prnt_actor){
	vspeed -=sign(vspeed)
	speed--
	speed=round(speed)
}

while place_meeting(x+hspeed,y,prnt_actor){
	hspeed -=sign(hspeed)
	speed--
	speed=round(speed)
}

while place_meeting(x+hspeed,y+vspeed,prnt_actor){
	speed --
	hspeed -=sign(hspeed)
	vspeed -=sign(vspeed)
	speed=round(speed)
}
}
if speed <1&& speed>-1 then speed = 0
bounced=0 
