show_debug_message("start "+ string(playerSeen))
directionToPlayer = point_direction(x,y,obj_player.x,obj_player.y)
distanceToPlayer = distance_to_object(obj_player)

if playerSeen=1{
speed=0
dir = directionToPlayer
}

//playerseen 0 unaware, 1, noticed, 2, investigating, 3, running, 4, lost player
//direction = directionToPlayer
//
if(playerSeen<3)&&((directionToPlayer > dir-angle && directionToPlayer < dir+angle)or(directionToPlayer > 360+dir-angle && directionToPlayer < 360+dir+angle)){
if collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,true,true)=noone    {
lastDirectionToPlayer = directionToPlayer
if playerSeen = 0 then playerSeen = 1
if ticka = -1 ticka=60
else if ticka>0{
ticka--
if playerSeen=2 then ticka=0
if ticka=0{playerSeen=3;ticka=-1}
}
} else{
	
	 playerSeen = 0
if ticka!=-1{
playerSeen=2	
}

    }
}else{
	if playerSeen =1 then playerSeen = 0
if ticka!=-1{
playerSeen=2	
}

}

switch(playerSeen){
	
case 1: 
speed=0;
seen2tick=0;
seen4tick=0;
break;
case 2:
speed = 3;
//PATHFIND TO lastplayerlocation
direction = lastDirectionToPlayer;
hspeed = round(hspeed);
vspeed = round(vspeed);
seen2tick++
if seen2tick=120 { playerSeen=0; direction = direction-180;seen2tick=0;}
break;
case 3:
direction = directionToPlayer
lastDirectionToPlayer=directionToPlayer
if (!(collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,true,true)=noone)&&((directionToPlayer > dir-angle && directionToPlayer < dir+angle)or(directionToPlayer > 360+dir-angle && directionToPlayer < 360+dir+angle))) {
playerSeen = 4;

break;
}
speed = 8;
direction=directionToPlayer
hspeed = round(hspeed);
vspeed = round(vspeed);
case 4:
seen4tick++
if seen4tick=120 then {playerSeen=2; seen4tick=0;}
speed = 5;
//PATHFIND TO lastplayerlocation

direction = lastDirectionToPlayer;
//lastDirectionToPlayer = directionToPlayer
hspeed = round(hspeed);
vspeed = round(vspeed);
break;
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
*/
if playerSeen <2{
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
} else{
	while place_meeting(x,y+vspeed,obj_obstacle){
    vspeed -= sign(vspeed)
    
}

while place_meeting(x+hspeed,y,obj_obstacle){
    hspeed -= sign(hspeed)
    
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle){
    speed --
    
    hspeed = floor(abs(hspeed))sign(hspeed)
    vspeed = floor(abs(vspeed))sign(vspeed)
}
}

//at the end of everything
image_angle=0
if speed!=0 then dir = direction
//while abs(direction) > 360{
//direction -= 360sign(direction)
//}
show_debug_message("end "+ string(playerSeen))