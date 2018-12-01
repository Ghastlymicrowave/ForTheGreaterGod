draw_self()
draw_sprite_ext(spr_line,0,x,y,300,1,direction-angle,c_white,1)
draw_sprite_ext(spr_line,0,x,y,300,1,direction+angle,c_white,1)
if(playerSeen){
	draw_line_color(x,y,obj_player.x,obj_player.y,c_red,c_red)
}else{
	draw_line_color(x,y,obj_player.x,obj_player.y,c_green,c_green)
}