hspd = obj_cameraPlace.x-x
vspd = obj_cameraPlace.y-y

hspeed = hspd /8
vspeed = vspd /8

if screenshake>0{
	
	x+= (1-2*(random(1))) * random(screenshake+1)
	y+= (1-2*(random(1))) * random(screenshake+1)
	screenshake--
	
}

if keyboard_check_pressed(ord("G")) then screenshake +=20