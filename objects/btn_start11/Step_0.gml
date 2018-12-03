if point_in_rectangle(mouse_x,mouse_y,x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2){
//change sprite index
if mouse_check_button_pressed(mb_left){
room=rm_editor_2
global.editorlist= ds_list_create()
}
}