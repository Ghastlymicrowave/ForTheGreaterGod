show_debug_message("start")
directionToPlayer = point_direction(x,y,obj_player.x,obj_player.y)

//direction = directionToPlayer

if (directionToPlayer > dir-angle && directionToPlayer < dir+angle){
if collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,true,true)=noone	{
	
	show_debug_message("seen")
} else{
	show_debug_message("hidden1")
	}
}else{
show_debug_message("hidden2")
}




if tick = -1{
if place_meeting(x+hspeed,y+vspeed,prnt_trigger){
	tick=30
	trigger =instance_place(x+hspeed,y+vspeed,prnt_trigger)
	speed =0
}
}

if tick>0{
	tick--
	
	if tick = 0{
		
	if place_meeting(trigger.x,trigger.y,tri_moveTriggerRight){speed=0;hspeed=5}	
	else if place_meeting(trigger.x,trigger.y,tri_moveTriggerLeft){speed=0;hspeed=-5}
	else if place_meeting(trigger.x,trigger.y,tri_moveTriggerUp){speed=0;vspeed=-5}
	else if place_meeting(trigger.x,trigger.y,tri_moveTriggerDown){speed=0;vspeed=5}
	}
	
	} else{ tick = -1}


while place_meeting(x,y+vspeed,obj_obstacle){
	vspeed -= sign(vspeed)
}

while place_meeting(x+hspeed,y,obj_obstacle){
	hspeed -= sign(hspeed)
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle){
	speed --
	hspeed = floor(abs(hspeed))*sign(hspeed)
	vspeed = floor(abs(vspeed))*sign(vspeed)	 
}


//at the end of everything
image_angle=0
if speed!=0 then dir = direction
//while abs(direction) > 360{
//direction -= 360*sign(direction)	
//}