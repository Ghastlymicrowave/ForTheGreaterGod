buildList=ds_list_create()
ds_list_destroy(buildList)
buildList=ds_list_create()

#region layouts
switch(argument[0]){
   case 1:
	ds_list_add(buildList,obj_obstacle, 0, 0, 1, 1, 0, obj_obstacle, 16, 0, 1, 1, 0, obj_obstacle, 32, 0, 1, 1, 0, obj_obstacle, 48, 0, 1, 1, 0, obj_obstacle, 64, 0, 1, 1, 0, obj_obstacle, 80, 0, 1, 1, 0, obj_obstacle, 96, 0, 1, 1, 0, obj_obstacle, 0, 16, 1, 1, 0, obj_obstacle, 0, 32, 1, 1, 0, obj_obstacle, 0, 48, 1, 1, 0, obj_obstacle, 0, 64, 1, 1, 0, obj_obstacle, 0, 80, 1, 1, 0, obj_obstacle, 0, 96, 1, 1, 0, obj_obstacle, 0, 112, 1, 1, 0, obj_obstacle, 0, 128, 1, 1, 0, obj_obstacle, 0, 144, 1, 1, 0, obj_obstacle, 0, 160, 1, 1, 0, obj_obstacle, 0, 176, 1, 1, 0, obj_obstacle, 0, 192, 1, 1, 0, obj_obstacle, 0, 208, 1, 1, 0, obj_obstacle, 0, 224, 1, 1, 0, obj_obstacle, 0, 240, 1, 1, 0, obj_obstacle, 0, 256, 1, 1, 0, obj_obstacle, 0, 272, 1, 1, 0, obj_obstacle, 0, 288, 1, 1, 0, obj_obstacle, 0, 304, 1, 1, 0, obj_obstacle, 16, 304, 1, 1, 0, obj_obstacle, 32, 304, 1, 1, 0, obj_obstacle, 48, 304, 1, 1, 0, obj_obstacle, 64, 304, 1, 1, 0, obj_obstacle, 80, 304, 1, 1, 0, obj_obstacle, 96, 304, 1, 1, 0, obj_obstacle, 112, 304, 1, 1, 0, obj_obstacle, 128, 304, 1, 1, 0, obj_obstacle, 176, 304, 1, 1, 0, obj_obstacle, 208, 304, 1, 1, 0, obj_obstacle, 224, 304, 1, 1, 0, obj_obstacle, 240, 304, 1, 1, 0, obj_obstacle, 256, 304, 1, 1, 0, obj_obstacle, 272, 304, 1, 1, 0, obj_obstacle, 288, 304, 1, 1, 0, obj_obstacle, 304, 304, 1, 1, 0, obj_obstacle, 192, 304, 1, 1, 0, obj_obstacle, 304, 288, 1, 1, 0, obj_obstacle, 304, 272, 1, 1, 0, obj_obstacle, 304, 256, 1, 1, 0, obj_obstacle, 304, 240, 1, 1, 0, obj_obstacle, 304, 224, 1, 1, 0, obj_obstacle, 304, 208, 1, 1, 0, obj_obstacle, 304, 192, 1, 1, 0, obj_obstacle, 304, 176, 1, 1, 0, obj_obstacle, 304, 160, 1, 1, 0, obj_obstacle, 304, 144, 1, 1, 0, obj_obstacle, 304, 128, 1, 1, 0, obj_obstacle, 304, 112, 1, 1, 0, obj_obstacle, 304, 96, 1, 1, 0, obj_obstacle, 304, 80, 1, 1, 0, obj_obstacle, 304, 64, 1, 1, 0, obj_obstacle, 304, 48, 1, 1, 0, obj_obstacle, 304, 32, 1, 1, 0, obj_obstacle, 304, 16, 1, 1, 0, obj_obstacle, 304, 0, 1, 1, 0, obj_obstacle, 288, 0, 1, 1, 0, obj_obstacle, 272, 0, 1, 1, 0, obj_obstacle, 256, 0, 1, 1, 0, obj_obstacle, 240, 0, 1, 1, 0, obj_obstacle, 224, 0, 1, 1, 0, obj_obstacle, 208, 0, 1, 1, 0, obj_obstacle, 192, 0, 1, 1, 0, obj_obstacle, 176, 0, 1, 1, 0, obj_obstacle, 128, 0, 1, 1, 0, obj_obstacle, 112, 0, 1, 1, 0, obj_door, 144, 320, 1, -1, 0, obj_door, 144, 0, 1, 1, 0, obj_throwableBox, 272, 272, 2, 2, 0, obj_pushableboxheavy, 64, 240, 2, 2, 0, obj_obstacle, 112, 80, 1, 1, 0, obj_obstacle, 256, 80, 1, 1, 0, obj_obstacle, 240, 96, 1, 1, 0, obj_obstacle, 240, 128, 1, 1, 0, obj_obstacle, 240, 112, 1, 1, 0, obj_obstacle, 240, 80, 1, 1, 0, obj_obstacle, 224, 80, 1, 1, 0, obj_obstacle, 208, 80, 1, 1, 0, obj_obstacle, 192, 80, 1, 1, 0, obj_obstacle, 176, 80, 1, 1, 0, obj_obstacle, 160, 80, 1, 1, 0, obj_obstacle, 144, 80, 1, 1, 0, obj_obstacle, 128, 80, 1, 1, 0, obj_obstacle, 112, 96, 1, 1, 0, obj_obstacle, 112, 112, 1, 1, 0, obj_obstacle, 112, 128, 1, 1, 0, obj_obstacle, 96, 128, 1, 1, 0, obj_obstacle, 176, 128, 1, 1, 0, obj_obstacle, 240, 176, 1, 1, 0, obj_obstacle, 240, 192, 1, 1, 0, obj_obstacle, 240, 208, 1, 1, 0, obj_obstacle, 240, 224, 1, 1, 0, obj_obstacle, 240, 240, 1, 1, 0, obj_obstacle, 176, 176, 1, 1, 0, obj_obstacle, 176, 192, 1, 1, 0, obj_obstacle, 176, 208, 1, 1, 0, obj_obstacle, 176, 224, 1, 1, 0, obj_obstacle, 176, 240, 1, 1, 0, obj_obstacle, 112, 176, 1, 1, 0, obj_obstacle, 96, 176, 1, 1, 0, obj_obstacle, 16, 128, 1, 1, 0, obj_obstacle, 176, 288, 1, 1, 0, obj_obstacle, 240, 288, 1, 1, 0, obj_obstacle, 224, 288, 1, 1, 0, obj_obstacle, 208, 288, 1, 1, 0, obj_obstacle, 192, 288, 1, 1, 0, obj_obstacle, 32, 128, 1, 1, 0, obj_obstacle, 48, 128, 1, 1, 0, obj_obstacle, 48, 176, 1, 1, 0, obj_obstacle, 32, 176, 1, 1, 0, obj_obstacle, 16, 176, 1, 1, 0, obj_guardStill, 31, 155, 1, 1, 0, obj_guard, 224, 112, 1, 1, 0, tri_moveTriggerDown, 208, 96, 0.25, 0.25, 0, tri_moveTriggerDown, 224, 96, 0.25, 0.25, 0, tri_moveTriggerUp, 224, 272, 0.25, 0.25, 0, tri_moveTriggerUp, 208, 272, 0.25, 0.25, 0, obj_guardStill, 32, 31, 1, 1, 0, )
	break;
 
#region 0a
//0a: 1x1 room with doors at top and bottom
   case "0a1":
	ds_list_add(buildList,obj_obstacle, 0, 0, 1, 1, 0, obj_obstacle, 16, 0, 1, 1, 0, obj_obstacle, 32, 0, 1, 1, 0, obj_obstacle, 48, 0, 1, 1, 0, obj_obstacle, 64, 0, 1, 1, 0, obj_obstacle, 80, 0, 1, 1, 0, obj_obstacle, 96, 0, 1, 1, 0, obj_obstacle, 0, 16, 1, 1, 0, obj_obstacle, 0, 32, 1, 1, 0, obj_obstacle, 0, 48, 1, 1, 0, obj_obstacle, 0, 64, 1, 1, 0, obj_obstacle, 0, 80, 1, 1, 0, obj_obstacle, 0, 96, 1, 1, 0, obj_obstacle, 0, 112, 1, 1, 0, obj_obstacle, 0, 128, 1, 1, 0, obj_obstacle, 0, 144, 1, 1, 0, obj_obstacle, 0, 160, 1, 1, 0, obj_obstacle, 0, 176, 1, 1, 0, obj_obstacle, 0, 192, 1, 1, 0, obj_obstacle, 0, 208, 1, 1, 0, obj_obstacle, 0, 224, 1, 1, 0, obj_obstacle, 0, 240, 1, 1, 0, obj_obstacle, 0, 256, 1, 1, 0, obj_obstacle, 0, 272, 1, 1, 0, obj_obstacle, 0, 288, 1, 1, 0, obj_obstacle, 0, 304, 1, 1, 0, obj_obstacle, 16, 304, 1, 1, 0, obj_obstacle, 32, 304, 1, 1, 0, obj_obstacle, 48, 304, 1, 1, 0, obj_obstacle, 64, 304, 1, 1, 0, obj_obstacle, 80, 304, 1, 1, 0, obj_obstacle, 96, 304, 1, 1, 0, obj_obstacle, 112, 304, 1, 1, 0, obj_obstacle, 128, 304, 1, 1, 0, obj_obstacle, 176, 304, 1, 1, 0, obj_obstacle, 208, 304, 1, 1, 0, obj_obstacle, 224, 304, 1, 1, 0, obj_obstacle, 240, 304, 1, 1, 0, obj_obstacle, 256, 304, 1, 1, 0, obj_obstacle, 272, 304, 1, 1, 0, obj_obstacle, 288, 304, 1, 1, 0, obj_obstacle, 304, 304, 1, 1, 0, obj_obstacle, 192, 304, 1, 1, 0, obj_obstacle, 304, 288, 1, 1, 0, obj_obstacle, 304, 272, 1, 1, 0, obj_obstacle, 304, 256, 1, 1, 0, obj_obstacle, 304, 240, 1, 1, 0, obj_obstacle, 304, 224, 1, 1, 0, obj_obstacle, 304, 208, 1, 1, 0, obj_obstacle, 304, 192, 1, 1, 0, obj_obstacle, 304, 176, 1, 1, 0, obj_obstacle, 304, 160, 1, 1, 0, obj_obstacle, 304, 144, 1, 1, 0, obj_obstacle, 304, 128, 1, 1, 0, obj_obstacle, 304, 112, 1, 1, 0, obj_obstacle, 304, 96, 1, 1, 0, obj_obstacle, 304, 80, 1, 1, 0, obj_obstacle, 304, 64, 1, 1, 0, obj_obstacle, 304, 48, 1, 1, 0, obj_obstacle, 304, 32, 1, 1, 0, obj_obstacle, 304, 16, 1, 1, 0, obj_obstacle, 304, 0, 1, 1, 0, obj_obstacle, 288, 0, 1, 1, 0, obj_obstacle, 272, 0, 1, 1, 0, obj_obstacle, 256, 0, 1, 1, 0, obj_obstacle, 240, 0, 1, 1, 0, obj_obstacle, 224, 0, 1, 1, 0, obj_obstacle, 208, 0, 1, 1, 0, obj_obstacle, 192, 0, 1, 1, 0, obj_obstacle, 176, 0, 1, 1, 0, obj_obstacle, 128, 0, 1, 1, 0, obj_obstacle, 112, 0, 1, 1, 0, obj_door, 144, 320, 1, -1, 0, obj_door, 144, 0, 1, 1, 0, obj_guardStill, 104, 128, 1, 1, 0, obj_guardStill, 104, 192, 1, 1, 0, obj_guard, 26, 172, 1, 1, 0, tri_moveTriggerUp, 16, 176, 0.25, 0.25, 0, tri_moveTriggerRight, 16, 16, 0.25, 0.25, 0, tri_moveTriggerDown, 160, 16, 0.25, 0.25, 0, tri_moveTriggerLeft, 160, 48, 0.25, 0.25, 0, tri_moveTriggerDown, 48, 48, 0.25, 0.25, 0, tri_moveTriggerLeft, 48, 176, 0.25, 0.25, 0, obj_decorativeobject1, 256, 144, 1, 1, 0, )
   break;
   case "0a2":
	ds_list_add(buildList,obj_obstacle, 0, 0, 1, 1, 0, obj_obstacle, 16, 0, 1, 1, 0, obj_obstacle, 32, 0, 1, 1, 0, obj_obstacle, 48, 0, 1, 1, 0, obj_obstacle, 64, 0, 1, 1, 0, obj_obstacle, 80, 0, 1, 1, 0, obj_obstacle, 96, 0, 1, 1, 0, obj_obstacle, 0, 16, 1, 1, 0, obj_obstacle, 0, 32, 1, 1, 0, obj_obstacle, 0, 48, 1, 1, 0, obj_obstacle, 0, 64, 1, 1, 0, obj_obstacle, 0, 80, 1, 1, 0, obj_obstacle, 0, 96, 1, 1, 0, obj_obstacle, 0, 112, 1, 1, 0, obj_obstacle, 0, 128, 1, 1, 0, obj_obstacle, 0, 144, 1, 1, 0, obj_obstacle, 0, 160, 1, 1, 0, obj_obstacle, 0, 176, 1, 1, 0, obj_obstacle, 0, 192, 1, 1, 0, obj_obstacle, 0, 208, 1, 1, 0, obj_obstacle, 0, 224, 1, 1, 0, obj_obstacle, 0, 240, 1, 1, 0, obj_obstacle, 0, 256, 1, 1, 0, obj_obstacle, 0, 272, 1, 1, 0, obj_obstacle, 0, 288, 1, 1, 0, obj_obstacle, 0, 304, 1, 1, 0, obj_obstacle, 16, 304, 1, 1, 0, obj_obstacle, 32, 304, 1, 1, 0, obj_obstacle, 48, 304, 1, 1, 0, obj_obstacle, 64, 304, 1, 1, 0, obj_obstacle, 80, 304, 1, 1, 0, obj_obstacle, 96, 304, 1, 1, 0, obj_obstacle, 112, 304, 1, 1, 0, obj_obstacle, 128, 304, 1, 1, 0, obj_obstacle, 176, 304, 1, 1, 0, obj_obstacle, 208, 304, 1, 1, 0, obj_obstacle, 224, 304, 1, 1, 0, obj_obstacle, 240, 304, 1, 1, 0, obj_obstacle, 256, 304, 1, 1, 0, obj_obstacle, 272, 304, 1, 1, 0, obj_obstacle, 288, 304, 1, 1, 0, obj_obstacle, 304, 304, 1, 1, 0, obj_obstacle, 192, 304, 1, 1, 0, obj_obstacle, 304, 288, 1, 1, 0, obj_obstacle, 304, 272, 1, 1, 0, obj_obstacle, 304, 256, 1, 1, 0, obj_obstacle, 304, 240, 1, 1, 0, obj_obstacle, 304, 224, 1, 1, 0, obj_obstacle, 304, 208, 1, 1, 0, obj_obstacle, 304, 192, 1, 1, 0, obj_obstacle, 304, 176, 1, 1, 0, obj_obstacle, 304, 160, 1, 1, 0, obj_obstacle, 304, 144, 1, 1, 0, obj_obstacle, 304, 128, 1, 1, 0, obj_obstacle, 304, 112, 1, 1, 0, obj_obstacle, 304, 96, 1, 1, 0, obj_obstacle, 304, 80, 1, 1, 0, obj_obstacle, 304, 64, 1, 1, 0, obj_obstacle, 304, 48, 1, 1, 0, obj_obstacle, 304, 32, 1, 1, 0, obj_obstacle, 304, 16, 1, 1, 0, obj_obstacle, 304, 0, 1, 1, 0, obj_obstacle, 288, 0, 1, 1, 0, obj_obstacle, 272, 0, 1, 1, 0, obj_obstacle, 256, 0, 1, 1, 0, obj_obstacle, 240, 0, 1, 1, 0, obj_obstacle, 224, 0, 1, 1, 0, obj_obstacle, 208, 0, 1, 1, 0, obj_obstacle, 192, 0, 1, 1, 0, obj_obstacle, 176, 0, 1, 1, 0, obj_obstacle, 128, 0, 1, 1, 0, obj_obstacle, 112, 0, 1, 1, 0, obj_door, 144, 320, 1, -1, 0, obj_door, 144, 0, 1, 1, 0, obj_guardStill, 130, 35, 1, 1, 180, obj_guardStill, 174, 188, 1, 1, 0, obj_pushableboxheavy, 182, 248, 2, 2, 0, obj_pushableboxheavy, 147, 21, 2, 2, 0, obj_obstacle, 16, 208, 1, 1, 0, obj_obstacle, 192, 208, 1, 1, 0, obj_obstacle, 192, 224, 1, 1, 0, obj_obstacle, 16, 224, 1, 1, 0, obj_obstacle, 32, 208, 1, 1, 0, obj_obstacle, 32, 224, 1, 1, 0, obj_obstacle, 48, 208, 1, 1, 0, obj_obstacle, 64, 208, 1, 1, 0, obj_obstacle, 48, 224, 1, 1, 0, obj_obstacle, 64, 224, 1, 1, 0, obj_obstacle, 80, 208, 1, 1, 0, obj_obstacle, 80, 224, 1, 1, 0, obj_obstacle, 96, 208, 1, 1, 0, obj_obstacle, 96, 224, 1, 1, 0, obj_obstacle, 112, 208, 1, 1, 0, obj_obstacle, 112, 224, 1, 1, 0, obj_obstacle, 128, 208, 1, 1, 0, obj_obstacle, 128, 224, 1, 1, 0, obj_obstacle, 144, 208, 1, 1, 0, obj_obstacle, 144, 224, 1, 1, 0, obj_obstacle, 160, 208, 1, 1, 0, obj_obstacle, 160, 224, 1, 1, 0, obj_obstacle, 176, 208, 1, 1, 0, obj_obstacle, 176, 224, 1, 1, 0, obj_healthpack1, 80, 32, 1, 1, 0)
	break;
	case "0a3":
	ds_list_add(buildList,obj_obstacle, 0, 0, 1, 1, 0, obj_obstacle, 16, 0, 1, 1, 0, obj_obstacle, 32, 0, 1, 1, 0, obj_obstacle, 48, 0, 1, 1, 0, obj_obstacle, 64, 0, 1, 1, 0, obj_obstacle, 80, 0, 1, 1, 0, obj_obstacle, 96, 0, 1, 1, 0, obj_obstacle, 0, 16, 1, 1, 0, obj_obstacle, 0, 32, 1, 1, 0, obj_obstacle, 0, 48, 1, 1, 0, obj_obstacle, 0, 64, 1, 1, 0, obj_obstacle, 0, 80, 1, 1, 0, obj_obstacle, 0, 96, 1, 1, 0, obj_obstacle, 0, 112, 1, 1, 0, obj_obstacle, 0, 128, 1, 1, 0, obj_obstacle, 0, 144, 1, 1, 0, obj_obstacle, 0, 160, 1, 1, 0, obj_obstacle, 0, 176, 1, 1, 0, obj_obstacle, 0, 192, 1, 1, 0, obj_obstacle, 0, 208, 1, 1, 0, obj_obstacle, 0, 224, 1, 1, 0, obj_obstacle, 0, 240, 1, 1, 0, obj_obstacle, 0, 256, 1, 1, 0, obj_obstacle, 0, 272, 1, 1, 0, obj_obstacle, 0, 288, 1, 1, 0, obj_obstacle, 0, 304, 1, 1, 0, obj_obstacle, 16, 304, 1, 1, 0, obj_obstacle, 32, 304, 1, 1, 0, obj_obstacle, 48, 304, 1, 1, 0, obj_obstacle, 64, 304, 1, 1, 0, obj_obstacle, 80, 304, 1, 1, 0, obj_obstacle, 96, 304, 1, 1, 0, obj_obstacle, 112, 304, 1, 1, 0, obj_obstacle, 128, 304, 1, 1, 0, obj_obstacle, 176, 304, 1, 1, 0, obj_obstacle, 208, 304, 1, 1, 0, obj_obstacle, 224, 304, 1, 1, 0, obj_obstacle, 240, 304, 1, 1, 0, obj_obstacle, 256, 304, 1, 1, 0, obj_obstacle, 272, 304, 1, 1, 0, obj_obstacle, 288, 304, 1, 1, 0, obj_obstacle, 304, 304, 1, 1, 0, obj_obstacle, 192, 304, 1, 1, 0, obj_obstacle, 304, 288, 1, 1, 0, obj_obstacle, 304, 272, 1, 1, 0, obj_obstacle, 304, 256, 1, 1, 0, obj_obstacle, 304, 240, 1, 1, 0, obj_obstacle, 304, 224, 1, 1, 0, obj_obstacle, 304, 208, 1, 1, 0, obj_obstacle, 304, 192, 1, 1, 0, obj_obstacle, 304, 176, 1, 1, 0, obj_obstacle, 304, 160, 1, 1, 0, obj_obstacle, 304, 144, 1, 1, 0, obj_obstacle, 304, 128, 1, 1, 0, obj_obstacle, 304, 112, 1, 1, 0, obj_obstacle, 304, 96, 1, 1, 0, obj_obstacle, 304, 80, 1, 1, 0, obj_obstacle, 304, 64, 1, 1, 0, obj_obstacle, 304, 48, 1, 1, 0, obj_obstacle, 304, 32, 1, 1, 0, obj_obstacle, 304, 16, 1, 1, 0, obj_obstacle, 304, 0, 1, 1, 0, obj_obstacle, 288, 0, 1, 1, 0, obj_obstacle, 272, 0, 1, 1, 0, obj_obstacle, 256, 0, 1, 1, 0, obj_obstacle, 240, 0, 1, 1, 0, obj_obstacle, 224, 0, 1, 1, 0, obj_obstacle, 208, 0, 1, 1, 0, obj_obstacle, 192, 0, 1, 1, 0, obj_obstacle, 176, 0, 1, 1, 0, obj_obstacle, 128, 0, 1, 1, 0, obj_obstacle, 112, 0, 1, 1, 0, obj_door, 144, 320, 1, -1, 0, obj_door, 144, 0, 1, 1, 0, obj_guardStill, 243, 212, 1, 1, 180, obj_guardStill, 61, 163, 1, 1, 0, obj_throwableBox, 176, 272, 2, 2, 0, obj_pushableboxheavy, 256, 192, 2, 2, 0, obj_throwableBox, 112, 272, 2, 2, 0, obj_throwableBox, 64, 272, 2, 2, 0, obj_obstacle, 16, 80, 1, 1, 0, obj_obstacle, 32, 80, 1, 1, 0, obj_obstacle, 16, 96, 1, 1, 0, obj_obstacle, 32, 96, 1, 1, 0, obj_obstacle, 16, 112, 1, 1, 0, obj_obstacle, 32, 112, 1, 1, 0, obj_obstacle, 16, 128, 1, 1, 0, obj_obstacle, 32, 128, 1, 1, 0, obj_obstacle, 16, 144, 1, 1, 0, obj_obstacle, 32, 144, 1, 1, 0, obj_obstacle, 16, 160, 1, 1, 0, obj_obstacle, 32, 160, 1, 1, 0, obj_obstacle, 48, 128, 1, 1, 0, obj_obstacle, 48, 112, 1, 1, 0, obj_obstacle, 48, 96, 1, 1, 0, obj_obstacle, 48, 80, 1, 1, 0, obj_obstacle, 64, 80, 1, 1, 0, obj_obstacle, 64, 96, 1, 1, 0, obj_obstacle, 80, 80, 1, 1, 0, obj_obstacle, 80, 96, 1, 1, 0, obj_obstacle, 96, 80, 1, 1, 0, obj_obstacle, 96, 96, 1, 1, 0, obj_obstacle, 112, 80, 1, 1, 0, obj_obstacle, 112, 96, 1, 1, 0, obj_obstacle, 128, 80, 1, 1, 0, obj_obstacle, 128, 96, 1, 1, 0, obj_obstacle, 176, 80, 1, 1, 0, obj_obstacle, 176, 96, 1, 1, 0, obj_obstacle, 192, 80, 1, 1, 0, obj_obstacle, 192, 96, 1, 1, 0, obj_obstacle, 208, 80, 1, 1, 0, obj_obstacle, 208, 96, 1, 1, 0, obj_obstacle, 224, 80, 1, 1, 0, obj_obstacle, 224, 96, 1, 1, 0, obj_obstacle, 240, 80, 1, 1, 0, obj_obstacle, 240, 96, 1, 1, 0, obj_obstacle, 256, 80, 1, 1, 0, obj_obstacle, 256, 96, 1, 1, 0, obj_obstacle, 272, 80, 1, 1, 0, obj_obstacle, 272, 96, 1, 1, 0, obj_obstacle, 288, 80, 1, 1, 0, obj_obstacle, 288, 96, 1, 1, 0, obj_obstacle, 208, 144, 1, 1, 0, obj_obstacle, 224, 144, 1, 1, 0, obj_obstacle, 240, 144, 1, 1, 0, obj_obstacle, 240, 160, 1, 1, 0, obj_obstacle, 240, 176, 1, 1, 0 )
	break;
	case "0a4":
	ds_list_add(buildList,obj_obstacle, 0, 0, 1, 1, 0, obj_obstacle, 16, 0, 1, 1, 0, obj_obstacle, 32, 0, 1, 1, 0, obj_obstacle, 48, 0, 1, 1, 0, obj_obstacle, 64, 0, 1, 1, 0, obj_obstacle, 80, 0, 1, 1, 0, obj_obstacle, 96, 0, 1, 1, 0, obj_obstacle, 0, 16, 1, 1, 0, obj_obstacle, 0, 32, 1, 1, 0, obj_obstacle, 0, 48, 1, 1, 0, obj_obstacle, 0, 64, 1, 1, 0, obj_obstacle, 0, 80, 1, 1, 0, obj_obstacle, 0, 96, 1, 1, 0, obj_obstacle, 0, 112, 1, 1, 0, obj_obstacle, 0, 128, 1, 1, 0, obj_obstacle, 0, 144, 1, 1, 0, obj_obstacle, 0, 160, 1, 1, 0, obj_obstacle, 0, 176, 1, 1, 0, obj_obstacle, 0, 192, 1, 1, 0, obj_obstacle, 0, 208, 1, 1, 0, obj_obstacle, 0, 224, 1, 1, 0, obj_obstacle, 0, 240, 1, 1, 0, obj_obstacle, 0, 256, 1, 1, 0, obj_obstacle, 0, 272, 1, 1, 0, obj_obstacle, 0, 288, 1, 1, 0, obj_obstacle, 0, 304, 1, 1, 0, obj_obstacle, 16, 304, 1, 1, 0, obj_obstacle, 32, 304, 1, 1, 0, obj_obstacle, 48, 304, 1, 1, 0, obj_obstacle, 64, 304, 1, 1, 0, obj_obstacle, 80, 304, 1, 1, 0, obj_obstacle, 96, 304, 1, 1, 0, obj_obstacle, 112, 304, 1, 1, 0, obj_obstacle, 128, 304, 1, 1, 0, obj_obstacle, 176, 304, 1, 1, 0, obj_obstacle, 208, 304, 1, 1, 0, obj_obstacle, 224, 304, 1, 1, 0, obj_obstacle, 240, 304, 1, 1, 0, obj_obstacle, 256, 304, 1, 1, 0, obj_obstacle, 272, 304, 1, 1, 0, obj_obstacle, 288, 304, 1, 1, 0, obj_obstacle, 304, 304, 1, 1, 0, obj_obstacle, 192, 304, 1, 1, 0, obj_obstacle, 304, 288, 1, 1, 0, obj_obstacle, 304, 272, 1, 1, 0, obj_obstacle, 304, 256, 1, 1, 0, obj_obstacle, 304, 240, 1, 1, 0, obj_obstacle, 304, 224, 1, 1, 0, obj_obstacle, 304, 208, 1, 1, 0, obj_obstacle, 304, 192, 1, 1, 0, obj_obstacle, 304, 176, 1, 1, 0, obj_obstacle, 304, 160, 1, 1, 0, obj_obstacle, 304, 144, 1, 1, 0, obj_obstacle, 304, 128, 1, 1, 0, obj_obstacle, 304, 112, 1, 1, 0, obj_obstacle, 304, 96, 1, 1, 0, obj_obstacle, 304, 80, 1, 1, 0, obj_obstacle, 304, 64, 1, 1, 0, obj_obstacle, 304, 48, 1, 1, 0, obj_obstacle, 304, 32, 1, 1, 0, obj_obstacle, 304, 16, 1, 1, 0, obj_obstacle, 304, 0, 1, 1, 0, obj_obstacle, 288, 0, 1, 1, 0, obj_obstacle, 272, 0, 1, 1, 0, obj_obstacle, 256, 0, 1, 1, 0, obj_obstacle, 240, 0, 1, 1, 0, obj_obstacle, 224, 0, 1, 1, 0, obj_obstacle, 208, 0, 1, 1, 0, obj_obstacle, 192, 0, 1, 1, 0, obj_obstacle, 176, 0, 1, 1, 0, obj_obstacle, 128, 0, 1, 1, 0, obj_obstacle, 112, 0, 1, 1, 0, obj_door, 144, 320, 1, -1, 0, obj_door, 144, 0, 1, 1, 0, obj_throwableBox, 272, 272, 2, 2, 0, obj_pushableboxheavy, 64, 240, 2, 2, 0, obj_obstacle, 112, 80, 1, 1, 0, obj_obstacle, 256, 80, 1, 1, 0, obj_obstacle, 240, 96, 1, 1, 0, obj_obstacle, 240, 128, 1, 1, 0, obj_obstacle, 240, 112, 1, 1, 0, obj_obstacle, 240, 80, 1, 1, 0, obj_obstacle, 224, 80, 1, 1, 0, obj_obstacle, 208, 80, 1, 1, 0, obj_obstacle, 192, 80, 1, 1, 0, obj_obstacle, 176, 80, 1, 1, 0, obj_obstacle, 160, 80, 1, 1, 0, obj_obstacle, 144, 80, 1, 1, 0, obj_obstacle, 128, 80, 1, 1, 0, obj_obstacle, 112, 96, 1, 1, 0, obj_obstacle, 112, 112, 1, 1, 0, obj_obstacle, 112, 128, 1, 1, 0, obj_obstacle, 96, 128, 1, 1, 0, obj_obstacle, 176, 128, 1, 1, 0, obj_obstacle, 240, 176, 1, 1, 0, obj_obstacle, 240, 192, 1, 1, 0, obj_obstacle, 240, 208, 1, 1, 0, obj_obstacle, 240, 224, 1, 1, 0, obj_obstacle, 240, 240, 1, 1, 0, obj_obstacle, 176, 176, 1, 1, 0, obj_obstacle, 176, 192, 1, 1, 0, obj_obstacle, 176, 208, 1, 1, 0, obj_obstacle, 176, 224, 1, 1, 0, obj_obstacle, 176, 240, 1, 1, 0, obj_obstacle, 112, 176, 1, 1, 0, obj_obstacle, 96, 176, 1, 1, 0, obj_obstacle, 16, 128, 1, 1, 0, obj_obstacle, 176, 288, 1, 1, 0, obj_obstacle, 240, 288, 1, 1, 0, obj_obstacle, 224, 288, 1, 1, 0, obj_obstacle, 208, 288, 1, 1, 0, obj_obstacle, 192, 288, 1, 1, 0, obj_obstacle, 32, 128, 1, 1, 0, obj_obstacle, 48, 128, 1, 1, 0, obj_obstacle, 48, 176, 1, 1, 0, obj_obstacle, 32, 176, 1, 1, 0, obj_obstacle, 16, 176, 1, 1, 0, obj_guardStill, 31, 161, 1, 1, 0, obj_guard, 224, 112, 1, 1, 0, tri_moveTriggerRight, 208, 96, 0.25, 0.25, 0, tri_moveTriggerDown, 224, 96, 0.25, 0.25, 0, tri_moveTriggerLeft, 224, 272, 0.25, 0.25, 0, tri_moveTriggerUp, 208, 272, 0.25, 0.25, 0, obj_guardStill, 32, 31, 1, 1, 0, )
	break;
#endregion
	
}
#endregion
	
	
#region spawns
	i=0
    repeat(ds_list_size(buildList)/6){
	global.spawnID = ds_list_find_value(buildList,i)
	i++
	global.spawnXp = ds_list_find_value(buildList,i)
	i++
	global.spawnYp = ds_list_find_value(buildList,i)
	i++
	global.spawnXs = ds_list_find_value(buildList,i)
	i++
	global.spawnYs = ds_list_find_value(buildList,i)
	i++
	global.spawnR = ds_list_find_value(buildList,i)
	i++
	with instance_create_depth(x,y,0,global.spawnID){
		x+=global.spawnXp
		y+=global.spawnYp
		image_xscale = global.spawnXs
		image_yscale = global.spawnYs
		image_angle = global.spawnR
	}
	}
#endregion