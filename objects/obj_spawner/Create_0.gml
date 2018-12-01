/// @description Insert description here
// You can write your code in thi

objType = "obj_obstacle"
i = ds_list_size(global.editorlist)
relX = x-obj_roombox.x
relY = y-obj_roombox.y
ds_list_add(global.editorlist,objType,relX,relY,image_xscale,image_yscale,image_angle)