if speed>0 then speed--

while place_meeting(x,y+vspeed,obj_obstacle)||place_meeting(x,y+vspeed,obj_pushablebox){
	vspeed = -vspeed
}

while place_meeting(x+hspeed,y,obj_obstacle)||place_meeting(x+hspeed,y,obj_pushablebox){
	hspeed = -hspeed
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle)||place_meeting(x+hspeed,y+vspeed,obj_pushablebox){
	speed --
	hspeed = -hspeed
	vspeed = -vspeed
}

if speed<0 then speed =0