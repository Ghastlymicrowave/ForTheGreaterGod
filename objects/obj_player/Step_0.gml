vinput= keyboard_check(ord("S")) - keyboard_check(ord("W"))  
hinput= keyboard_check(ord("D")) - keyboard_check(ord("A"))


//if image_angle > 360 then image_angle -= 360
if ((abs(vinput))||(abs(hinput))){
	if spd <8 then spd ++
	if !keyboard_check(vk_shift)||holding=1{
	if spd > 6 then spd = 6} else
if lastvinput=0 && lasthinput=0{
	spd = 6
}
lastvinput = vinput
lasthinput = hinput
} else{
if spd > 0 then spd =spd -1
else if spd <0 then spd =0
vinput = lastvinput
hinput = lasthinput
}

vspeed = vinput * spd
hspeed = hinput * spd

if speed > spd{
while speed > spd {
speed --
show_debug_message(string(speed) +" "+ string(spd))
}

vspeed = round(vspeed)
hspeed = round(hspeed)
}
if knockbackTime >0{
	
	direction =knockbackDir
	speed = knockbackTime
	spd = knockbackTime
	dir = knockbackDir
	hspeed=round(hspeed)
	vspeed=round(vspeed)
	knockbackTime--
}
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

if speed!=0 then dir = direction

if place_meeting(x+hspeed,y+vspeed,obj_throwableThing){
	var throw = instance_place(x+hspeed,y+vspeed,obj_throwableThing)
		if throw.held =0{
		throw.speed=speed+5
		throw.direction= dir
		spd =0
		speed=0
		if speed <0 then speed =0
		hspeed = floor(abs(hspeed))*sign(hspeed)
	vspeed = floor(abs(vspeed))*sign(vspeed)}
	
}

if place_meeting(x,y,obj_projectile)&&invulframes=0{
var proj = instance_place(x,y,obj_projectile)	
knockbackDir = proj.direction
knockbackTime=20
invulframes=60
}

if invulframes>0 then invulframes--