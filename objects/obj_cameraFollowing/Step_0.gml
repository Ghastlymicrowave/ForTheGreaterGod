hspd = obj_cameraPlace.x-x
vspd = obj_cameraPlace.y-y

hspeed = hspd /8
vspeed = vspd /8

if screenshake>0{
	
	//960 x 540
	
	camera_set_view_size(view_camera[0],960/(screenshake/2),540/(screenshake/2))
	
	x+= (1-2*(random(1))) * random(screenshake+1)
	y+= (1-2*(random(1))) * random(screenshake+1)
	screenshake=screenshake*0.8
	if screenshake<1 then screenshake=0
}

if keyboard_check_pressed(ord("G")) then screenshake +=20