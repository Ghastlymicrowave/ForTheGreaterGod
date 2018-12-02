/// @description Insert description here
// You can write your code in this editor
distanceToPlayer = distance_to_object(obj_player)
if(distanceToPlayer<=30&&image_index=1){image_index=0
	if(place_meeting(x,y,prnt_actor)){image_index = 1}
}else if(distanceToPlayer<=30&&image_index=0){image_index = 1
	if(place_meeting(x,y,prnt_actor)){image_index=0}
}