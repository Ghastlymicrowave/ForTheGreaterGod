if point_in_rectangle(mouse_x,mouse_y,x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2){
//change sprite index
if mouse_check_button_pressed(mb_left){
	global.fullscreen=!(global.fullscreen)
	window_set_fullscreen(global.fullscreen)
	ini_open("save.dat")
	ini_write_real("data","fullscreen",global.fullscreen)
	ini_close()
}
}