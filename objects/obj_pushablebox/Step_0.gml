if speed>0 then speed--
if !place_meeting(x,y,prnt_actor)&&!place_meeting(x,y,prnt_enemy){
while place_meeting(x,y+vspeed,obj_obstacle)||place_meeting(x,y+vspeed,obj_pushablebox)||place_meeting(x,y+vspeed,prnt_enemy){
	vspeed = -vspeed
	if vspeed<1 then break
}

while place_meeting(x+hspeed,y,obj_obstacle)||place_meeting(x+hspeed,y,obj_pushablebox)||place_meeting(x+hspeed,y,prnt_enemy){
	hspeed = -hspeed
	if hspeed < 1 then break
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle)||place_meeting(x+hspeed,y+vspeed,obj_pushablebox)||place_meeting(x+hspeed,y+vspeed,prnt_enemy){
	speed --
	hspeed = -hspeed
	vspeed = -vspeed
	if hspeed<1||vspeed<1 then break
}
}
if speed<0 then speed =0