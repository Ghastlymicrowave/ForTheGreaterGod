vinput= keyboard_check(ord("S")) - keyboard_check(ord("W"))  
hinput= keyboard_check(ord("D")) - keyboard_check(ord("A"))
//sprite_index=sp_idle
//if vinput>0 then sprite_index=sp_up
//if vinput<0 then sprite_index=sp_down
//if hinput>0 then sprite_index=sp_right
//if hinput<0 then sprite_index=sp_left
//if knockbacktime>0 then sprite_index=sp_hurt

//if image_angle > 360 then image_angle -= 360
if ((abs(vinput))||(abs(hinput))){
	if spd <8 then spd ++
	if !keyboard_check(vk_shift)||holding=1{
	if spd > 4 then spd = 4
	
} else{
		
	
if lastvinput=0 && lasthinput=0{
	spd = 6
}
if instance_exists(obj_guard){
obj_guard.angle=65}
if instance_exists(obj_guardStill){
obj_guardStill.angle=65}

	}
lastvinput = vinput
lasthinput = hinput
} else{
if spd > 0 then spd =spd -1
else if spd <0 then spd =0
vinput = lastvinput
hinput = lasthinput
}

if spd <7{
if instance_exists(obj_guard){
obj_guard.angle=50}
if instance_exists(obj_guardStill){
obj_guardStill.angle=50}	
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


//pushable box
if place_meeting(x+hspeed,y+vspeed,obj_pushablebox){
	var throw = instance_place(x+hspeed,y+vspeed,obj_pushablebox)
		if place_meeting(x+hspeed,y+vspeed,obj_pushableboxheavy){
		throw.speed=speed+1}else{
		throw.speed=speed+4
		}
		throw.direction= dir
		spd =0
		speed=0
		if speed <0 then speed =0
		hspeed = floor(abs(hspeed))*sign(hspeed)
	vspeed = floor(abs(vspeed))*sign(vspeed)}
	


if place_meeting(x,y,obj_projectile)&&invulframes=0&&hp>0{
var proj = instance_place(x,y,obj_projectile)	
obj_cameraFollowing.screenshake +=20
knockbackDir = proj.direction
knockbackTime=15
invulframes=60
hp--;
}

if invulframes>0 then invulframes--

if hp<1{
	
speed=0
if !instance_exists(obj_deathMessage){
instance_create_depth(x,y,-500,obj_deathMessage)}
}


if keyboard_check_pressed(ord("F")){
global.fullscreen=!(global.fullscreen)
ini_open("save.dat")
	ini_write_real("data","fullscreen",global.fullscreen)	
ini_close()
	window_set_fullscreen(global.fullscreen)
}

if place_meeting(x,y,obj_healthpack)&&hp<2&&hp>0{
	hp++
	var pack instance_place(x,y,obj_healthpack)
	instance_destroy(pack)
}

