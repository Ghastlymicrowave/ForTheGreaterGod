show_debug_message("start "+ string(playerSeen))
directionToPlayer = point_direction(x,y,obj_player.x,obj_player.y)
distanceToPlayer = distance_to_object(obj_player)

if playerSeen=1||playerSeen=3{
speed=0
dir = directionToPlayer
}

if knockbackTime>0 then knockbackTime--
if	dazedtime>0 then dazedtime--
	if dazedtime>0{
playerSeen=1
speed=0
}

//playerseen 0 unaware, 1, noticed, 2, investigating, 3, running, 4, lost player
//direction = directionToPlayer
//

if(playerSeen<3||playerSeen=4)&&((directionToPlayer > dir-angle && directionToPlayer < dir+angle)or(directionToPlayer > 360+dir-angle && directionToPlayer < 360+dir+angle)){
if collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,true,true)=noone &&collision_line(x,y,obj_player.x,obj_player.y,obj_pushablebox,true,true)=noone  &&collision_line(x,y,obj_player.x,obj_player.y,obj_throwableBox,true,true)=noone{

//if(playerSeen<2||playerSeen=4)&&((directionToPlayer > dir-angle && directionToPlayer < dir+angle)or(directionToPlayer > 360+dir-angle && directionToPlayer < 360+dir+angle)){
	//if((!(collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,1,1)=noone)&&(!(collision_line(x,y,obj_player.x,obj_player.y,obj_pushablebox,true,true)=noone))&&(!(collision_line(x,y,obj_player.x,obj_player.y,obj_throwableBox,true,true)=noone))&&
	//if(!(collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,true,true)=noone)){
//if !(collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,1,1)=noone &&!collision_line(x,y,obj_player.x,obj_player.y,obj_pushablebox,true,true)=noone  &&!collision_line(x,y,obj_player.x,obj_player.y,obj_throwableBox,true,true)=noone)&&(!(collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,true,true)=noone)){
lastDirectionToPlayer = directionToPlayer
if playerSeen = 0 then playerSeen = 1
if ticka = -1 then ticka=60
else if ticka>0{
ticka--
if playerSeen=2 then ticka=0
if ticka=0{playerSeen=3;ticka=-1}
}
} else{
	if playerSeen!=2&&playerSeen!=4{
	 playerSeen = 0}
if ticka>0{
ticka=-1
playerSeen=2	
}

    }
}else{
	if playerSeen =1 then playerSeen = 0
if ticka>0{
	ticka=-1
playerSeen=2	
}

}
if playerSeen!=2 then seen2tick=0;
if playerSeen!=4 then seen4tick=0;
switch(playerSeen){
case 0:
speed = 2
break;
case 1: 
firerate=20
speed=0;

break;
case 2:
firerate=20
speed = 2;
//PATHFIND TO lastplayerlocation
direction = lastDirectionToPlayer;
hspeed = round(hspeed);
vspeed = round(vspeed);
seen2tick++
if seen2tick=120 { playerSeen=0; direction = direction-180;seen2tick=0;}
break;
case 3:
speed = 0
if distanceToPlayer > 600 then speed = 8 else {speed = 0
direction = directionToPlayer
lastDirectionToPlayer=directionToPlayer

if firerate = 0{
var proj = instance_create_depth(x,y,0,obj_projectile)
proj.direction = directionToPlayer
proj.speed = 18
firerate=20
} else{
firerate --	
}

if !(collision_line(x,y,obj_player.x,obj_player.y,obj_obstacle,true,true)=noone &&collision_line(x,y,obj_player.x,obj_player.y,obj_pushablebox,true,true)=noone  &&collision_line(x,y,obj_player.x,obj_player.y,obj_throwableBox,true,true)=noone) {
playerSeen = 4;
lastDirectionToPlayer=directionToPlayer
break;
}

direction=directionToPlayer
//	hspeed = round(hspeed);
//vspeed = round(vspeed);
break;
}
break;
case 4:
firerate=50
seen4tick++
if seen4tick=120 then {playerSeen=2; seen4tick=0;}
speed = 3;
//PATHFIND TO lastplayerlocation

direction = lastDirectionToPlayer;
//lastDirectionToPlayer = directionToPlayer
//hspeed = round(hspeed);
//vspeed = round(vspeed);
break;
}

if tick = -1&&place_meeting(x,y,prnt_trigger)&&playerSeen=0{
	trigger = instance_place(x,y,prnt_trigger)
	tick = 8
	
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

if place_meeting(x,y,obj_throwableThing){
	
	var throw = instance_place(x,y,obj_throwableThing)
	if throw.speed !=0{
	knockbackTime=20
	dazedtime=240
	knockbackDir= throw.direction}
}



if dazedtime>0{
playerSeen=1
speed=0
direction = knockbackDir
}
if knockbackTime > 0 {
speed = knockbackTime	
}
if playerSeen <2&&knockbackTime=0{
while place_meeting(x,y+vspeed,obj_obstacle){
    //vspeed -= sign(vspeed)
	//y-=vspeed
    direction-=15
	
}

while place_meeting(x+hspeed,y,obj_obstacle){
    //hspeed -= sign(hspeed)
    direction-=15
	
	//x-=hspeed
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle){
    //speed --
    direction-=15
	//speed --
    
   
	//x-=hspeed
	//y-=vspeed
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



//if place_meeting(x+hspeed,y+vspeed,obj_throwableThing){
//	var throw = instance_place(x+hspeed,y+vspeed,obj_throwableThing)
//		if throw.held =0&& throw.bounced=0{
//		throw.speed=speed+5
//		throw.direction= dir
//		throw.bounced++
//		spd =0
//		speed=0
//		if speed <0 then speed =0
//		hspeed = floor(abs(hspeed))*sign(hspeed)
//	vspeed = floor(abs(vspeed))*sign(vspeed)}
	
//}