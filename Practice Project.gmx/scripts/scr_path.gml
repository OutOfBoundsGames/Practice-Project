if instance_exists(obj_finish)
{
var target,map,path,spd,obstacles,follow;
finder=argument0;
target=argument1;
spd=argument2;
obstacles=argument3;
map=mp_grid_create(0,0,room_width/64,room_height/64,64,64);
path=path_add();
mp_grid_add_instances(map,obstacles,false);
follow=mp_grid_path(map,path,finder.x,finder.y,target.x,target.y,0);
path_start(path,spd,0,false);
return follow;
return map;
}
