/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_ext(spr_line,0,x,y,3000,1,direction-angle,c_white,1)
draw_sprite_ext(spr_line,0,x,y,3000,1,direction+angle,c_white,1)
if(playerSeen){
	draw_line_color(x,y,obj_player.x,obj_player.y,c_red,c_red)
}else{
	draw_line_color(x,y,obj_player.x,obj_player.y,c_green,c_green)
}