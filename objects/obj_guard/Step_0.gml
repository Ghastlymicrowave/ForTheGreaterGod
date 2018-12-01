show_debug_message("start")
directionToPlayer = point_direction(x,y,obj_player.x,obj_player.y)
distanceToPlayer = distance_to_object(obj_player)

//direction = directionToPlayer

if((directionToPlayer > dir-angle && directionToPlayer < dir+angle)or(directionToPlayer > 360+dir-angle && directionToPlayer < 360+dir+angle)){
if collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,true,true)=noone    {

playerSeen = 1
} else{

playerSeen = 0
    }
}else{

playerSeen = 0
}


/*
if tick>0{
    tick--

    if tick = 0{

    if place_meeting(trigger.x,trigger.y,tri_moveTriggerRight){speed=0;hspeed=5}
    else if place_meeting(trigger.x,trigger.y,tri_moveTriggerLeft){speed=0;hspeed=-5}
    else if place_meeting(trigger.x,trigger.y,tri_moveTriggerUp){speed=0;vspeed=-5}
    else if place_meeting(trigger.x,trigger.y,tri_moveTriggerDown){speed=0;vspeed=5}
    }

    } else{ tick = -1}
/

while place_meeting(x,y+vspeed,obj_obstacle){
    //vspeed -= sign(vspeed)
    direction-=15
}

while place_meeting(x+hspeed,y,obj_obstacle){
    //hspeed -= sign(hspeed)
    direction-=15
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle){
    //speed --
    direction-=15
    //hspeed = floor(abs(hspeed))sign(hspeed)
    //vspeed = floor(abs(vspeed))sign(vspeed)
}


//at the end of everything
image_angle=0
if speed!=0 then dir = direction
//while abs(direction) > 360{
//direction -= 360sign(direction)
//}