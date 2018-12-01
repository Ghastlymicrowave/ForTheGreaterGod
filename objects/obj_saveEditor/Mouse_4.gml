/// @description Insert description here
// You can write your code in this editor
room_plan = 0

i = 0
while(i<=ds_list_size(global.editorlist)){
ii=0
room_plan = string(room_plan)+": "
repeat(6){
room_plan = string(room_plan)+string(ds_list_find_value(i,ii))+", "
ii++
}
i++
room_plan = string(room_plan)+"|"+string(i)
}
show_debug_message(room_plan);