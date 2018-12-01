vinput= keyboard_check(ord("S")) - keyboard_check(ord("W"))  
hinput= keyboard_check(ord("D")) - keyboard_check(ord("A"))


if ((abs(vinput))||(abs(hinput))){
if spd <10 then spd ++	
if lastvinput=0 && lasthinput=0{
	spd = 5
}
lastvinput = vinput
lasthinput = hinput
} else{
if spd > 0 then spd --	
vinput = lastvinput
hinput = lasthinput
}

vspeed = vinput * spd
hspeed = hinput * spd


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