/// @description Insert description here
// You can write your code in this editor
room_plan = ""

ii=0
repeat(ds_list_size(global.editorlist)){
room_plan = string(room_plan)+string(ds_list_find_value(global.editorlist,ii))+", "
ii++
}
show_debug_message(room_plan);