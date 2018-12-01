buildList=ds_list_create()
ds_list_destroy(buildList)
buildList=ds_list_create()

#region layout
switch(argument[0]){
   case 1:
	ds_list_add(buildList,obj_obstacle, 192, 64, 1, 1, 0, obj_obstacle, 192, 160, 1, 1, 0, obj_obstacle, 192, 224, 1, 1, 0)
   break;
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