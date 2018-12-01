vinput= keyboard_check(ord("S")) - keyboard_check(ord("W"))  
hinput= keyboard_check(ord("D")) - keyboard_check(ord("A"))


//if image_angle > 360 then image_angle -= 360
if ((abs(vinput))||(abs(hinput))){
	if spd <8 then spd ++
	if !keyboard_check(vk_shift){
	if spd > 3 then spd = 5} else
if lastvinput=0 && lasthinput=0{
	spd = 5
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
if spd > spd{
while speed > spd {
speed --
}
vspeed = floor(vspeed)
hspeed = floor(hspeed)
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

