hspd = obj_cameraPlace.x-x
vspd = obj_cameraPlace.y-y

hspeed = hspd /8
vspeed = vspd /8

if screenshake>0{
	
	//960 x 540
	screenScale = screenshake/18
	if screenScale<1 then screenScale=1
	camera_set_view_size(view_camera[0],960/(screenScale),540/(screenScale))
	
	x+= (1-2*(random(1))) * random(screenshake+1)
	y+= (1-2*(random(1))) * random(screenshake+1)
	screenshake=screenshake*0.9
	if screenshake<1 then screenshake=0
}

//if keyboard_check_pressed(ord("G")) then screenshake +=20